
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.qr_pack.all;

entity faultify_top is
  generic (
    numInj : integer := 56;
    numIn  : integer := 10;
    numOut : integer := 10);
  port (
    aclk    : in  std_logic;            -- interface clock
    arst_n  : in  std_logic;            -- interface reset
    clk     : in  std_logic;            -- simulation clock (slow)
    clk_x32 : in  std_logic;            -- prng clock (fast)
    -- Write channel
    awvalid : in  std_logic;
    awaddr  : in  std_logic_vector(31 downto 0);
    wvalid  : in  std_logic;
    wdata   : in  std_logic_vector(31 downto 0);
    -- Read channel
    arvalid : in  std_logic;
    araddr  : in  std_logic_vector(31 downto 0);
    rvalid  : out std_logic;
    rdata   : out std_logic_vector(31 downto 0)
    );
  attribute syn_hier                 : string;
  attribute syn_hier of faultify_top : entity is "hard";
end faultify_top;


architecture behav of faultify_top is

  component qr_wrapper_wrapper_stimuli
    port (
      clk            : in  std_logic;
      rst_n          : in  std_logic;
      reduced_matrix : out std_logic;
      start          : out std_logic;
      request_out    : out std_logic;
      valid_out      : in  std_logic;
      ready          : in  std_logic;
      in_A_r         : out std_logic_vector(N_G*WORD_WIDTH_G - 1 downto 0);
      in_A_i         : out std_logic_vector(N_G*WORD_WIDTH_G - 1 downto 0));
  end component;
  
  component flag_cdc
    port (
      clkA         : in  std_logic;
      clkB         : in  std_logic;
      FlagIn_clkA  : in  std_logic;
      FlagOut_clkB : out std_logic;
      rst_n        : in  std_logic);
  end component;

  component faultify_simulator
    generic (
      numInj : integer;
      numIn  : integer;
      numOut : integer);
    port (
      clk            : in  std_logic;
      clk_m          : in  std_logic;
      circ_ce        : in  std_logic;
      circ_rst       : in  std_logic;
      test           : out std_logic_vector(31 downto 0);
      testvector     : in  std_logic_vector(numIn-1 downto 0);
      resultvector_o : out std_logic_vector(numOut-1 downto 0);
      resultvector_f : out std_logic_vector(numOut-1 downto 0);
      seed_in_en     : in  std_logic;
      seed_in        : in  std_logic;
      prob_in_en     : in  std_logic;
      prob_in        : in  std_logic;
      shift_en       : in  std_logic;
      rst_n          : in  std_logic);
  end component;

  component lfsr
    generic (
      width : integer;
      seed  : integer);
    port (
      clk      : in  std_logic;
      rand_out : out std_logic_vector(width-1 downto 0));
  end component;

  type   vector is array (0 to numOut-1) of std_logic_vector(31 downto 0);
  signal errorSum    : vector;
  signal errorSumReg : vector;
  signal errorSumReg_cdc_0 : vector;
  signal errorSumReg_cdc_1 : vector;

  signal errorVec      : std_logic_vector(numOut-1 downto 0);
  signal cnt           : integer;
  signal cnt_cdc_0     : integer;
  signal cnt_cdc_1     : integer;
  -- Asymmetric ram larger than 36 bit not supported in synplify I-2013
  --type   seed_ram_matr is array (0 to numInj-1) of std_logic_vector(63 downto 0);
  --signal seed_ram : seed_ram_matr;
  -- workaround 2 32-bit rams
  type   seed_ram_matr is array (0 to numInj-1) of std_logic_vector(31 downto 0);
  signal seed_ram_low  : seed_ram_matr;
  signal seed_ram_high : seed_ram_matr;


  --subtype seed_ram_matr_word_t is std_logic_vector(63 downto 0);
  --type seed_ram_matr_memory_t is array (0 to numInj-1) of seed_ram_matr_word_t;
  --signal seed_ram : seed_ram_matr_memory_t;

  type   prob_ram_matr is array (0 to numInj-1) of std_logic_vector(31 downto 0);
  signal prob_ram : prob_ram_matr;

  type reg_type is record
    control        : std_logic_vector(31 downto 0);
    status         : std_logic_vector(31 downto 0);
    pe_location    : std_logic_vector(31 downto 0);
    pe_seed_low    : std_logic_vector(31 downto 0);
    pe_seed_high   : std_logic_vector(31 downto 0);
    pe_probability : std_logic_vector(31 downto 0);
    output         : std_logic_vector(31 downto 0);
    ovalid         : std_logic;
    simtime        : std_logic_vector(31 downto 0);
    sel_soe        : std_logic_vector(31 downto 0);
    adr_soe        : std_logic_vector(31 downto 0);
    awaddr         : std_logic_vector(31 downto 0);
    test           : std_logic_vector(31 downto 0);
    circreset      : std_logic_vector(31 downto 0);
    cnt_tmp        : std_logic_vector(31 downto 0);
    sumoferrors    : vector;
  end record;

  signal busy_loading        : std_logic;
  signal busy_simulating     : std_logic;
  signal busy_loading_reg    : std_logic_vector(1 downto 0);
  signal busy_simulating_reg : std_logic_vector(1 downto 0);
  signal sim_done            : std_logic;

  signal r : reg_type;

  type   load_fsm_states is (IDLE, LOADSEED, LOADPROB);
  signal l_state : load_fsm_states;

  type   sim_states is (IDLE, DELAY_Z, DELAY, SIMULATION, DELAY2, DELAY3, DELAY4, FREE_SIMULATION);
  signal s_state : sim_states;

  signal testvector     : std_logic_vector(numIn-1 downto 0);
  signal resultvector_o : std_logic_vector(numOut-1 downto 0);
  signal resultvector_f : std_logic_vector(numOut-1 downto 0);
  signal seed_in_en     : std_logic;
  signal seed_in        : std_logic;
  signal prob_in_en     : std_logic;
  signal prob_in        : std_logic;
  signal shift_en       : std_logic;
  signal shift_en_l     : std_logic;
  signal shift_en_s     : std_logic;

  signal load_seed_prob                  : std_logic;
  signal start_simulation                : std_logic;
  signal start_free_simulation : std_logic;

  signal stop_simulation : std_logic;

  signal circ_ce, circ_rst, circ_rst_sim : std_logic;

  signal tvec : std_logic_vector(127 downto 0);
  signal test : std_logic_vector(31 downto 0);

  signal rst_cdc, rst_cdc_n : std_logic;
  
begin  -- behav

  -----------------------------------------------------------------------------
  -- PRNG shifting
  -----------------------------------------------------------------------------
  shift_en <= shift_en_l or shift_en_s;
  -----------------------------------------------------------------------------
  -- Testvector
  -----------------------------------------------------------------------------
  --testvector <= (others => '0');
  --lfsr_1 : lfsr
  --  generic map (
  --    width => 128,
  --    seed  => 3498327)
  --  port map (
  --    clk      => clk,
  --    rand_out => tvec);


  qr_wrapper_wrapper_stimuli_1: qr_wrapper_wrapper_stimuli
    port map (
      clk            => clk,
      rst_n          => not circ_rst,
      reduced_matrix => testvector(0),
      start          => testvector(1),
      request_out    => testvector(2),
      valid_out      => resultvector_o(0),
      ready          => resultvector_o(1),
      in_A_r         => testvector(50 downto 3),
      in_A_i         => testvector(98 downto 51));
  
    testvector(110 downto 99) <= (others => '0');
  --testvector <= tvec(numIn-1 downto 0);
  -----------------------------------------------------------------------------
  -- Simulator
  -----------------------------------------------------------------------------

  circ_rst <= circ_rst_sim when r.circreset(0) = '1' else '0';

  faultify_simulator_1 : faultify_simulator
    generic map (
      numInj => numInj,
      numIn  => numIn,
      numOut => numOut)
    port map (
      clk            => clk_x32,
      clk_m          => clk,
      circ_ce        => circ_ce,
      circ_rst       => circ_rst,
      test           => test,
      testvector     => testvector,
      resultvector_o => resultvector_o,
      resultvector_f => resultvector_f,
      seed_in_en     => seed_in_en,
      seed_in        => seed_in,
      prob_in_en     => prob_in_en,
      prob_in        => prob_in,
      shift_en       => shift_en,
      rst_n          => arst_n);


-------------------------------------------------------------------------------
-- One Process Flow
-------------------------------------------------------------------------------
  register_process : process (aclk, arst_n)
  begin  -- process register_process
    if arst_n = '0' then                  -- asynchronous reset (active low)
      r.control        <= (others => '0');
      r.status         <= (others => '0');
      r.pe_probability <= (others => '0');
      r.pe_seed_high   <= (others => '0');
      r.pe_seed_low    <= (others => '0');
      r.pe_location    <= (others => '0');
      r.ovalid         <= '0';
      r.simtime        <= (others => '0');
      r.sel_soe        <= (others => '0');
      r.adr_soe        <= (others => '0');
      r.sumoferrors    <= (others => (others => '0'));
      r.output         <= (others => '0');
    elsif aclk'event and aclk = '1' then  -- rising clock edge

      r.control <= (others => '0');

      if awvalid = '1' then
        r.awaddr <= awaddr;
      end if;
      if wvalid = '1' then
        if r.awaddr = x"00000000" then
          r.control <= wdata;
        elsif r.awaddr = x"00000001" then
          r.pe_location <= wdata;
        elsif r.awaddr = x"00000002" then
          r.pe_seed_low <= wdata;
        elsif r.awaddr = x"00000003" then
          r.pe_seed_high <= wdata;
        elsif r.awaddr = x"00000004" then
          r.pe_probability <= wdata;
        elsif r.awaddr = x"00000005" then
          r.cnt_tmp <= std_logic_vector(to_unsigned(cnt_cdc_1, 32));
          r.adr_soe <= wdata;
        elsif r.awaddr = x"00000007" then
          r.simtime <= wdata;
        elsif r.awaddr = x"00000009" then
          r.circreset <= wdata;
        end if;
      end if;

      if arvalid = '1' then
        if araddr = x"0000000F" then
          r.output <= r.status;
        elsif araddr = x"00000001" then
          r.output <= r.pe_location;
        elsif araddr = x"00000002" then
          r.output <= r.pe_seed_low;
        elsif araddr = x"00000003" then
          r.output <= r.pe_seed_high;
        elsif araddr = x"00000004" then
          r.output <= r.pe_probability;
        elsif araddr = x"00000006" then
          r.output <= r.sel_soe;
        elsif araddr = x"00000008" then
          r.output <= r.test;
        elsif araddr = x"0000000A" then
          r.output <= r.cnt_tmp;
        end if;
        r.ovalid <= '1';
      else
        r.ovalid <= '0';
      end if;

      if busy_loading_reg(1) = '1' then
        r.status(0) <= '1';
      else
        r.status(0) <= '0';
      end if;
	  if busy_simulating_reg(1) = '1' then
        r.status(1) <= '1';
      else
        r.status(1) <= '0';
      end if;


      r.sel_soe <= r.sumoferrors(to_integer(unsigned(r.adr_soe)));
      rdata         <= r.output;
      rvalid        <= r.ovalid;
      r.sumoferrors <= errorSumReg_cdc_1;
      r.test        <= errorSum(0);
    end if;
  end process register_process;


  -----------------------------------------------------------------------------
  -- simple clock domain crossing
  -----------------------------------------------------------------------------
  process (aclk, arst_n)
  begin  -- process
    if arst_n = '0' then                  -- asynchronous reset (active low)
      busy_simulating_reg <= (others => '0');
      busy_loading_reg    <= (others => '0');
    elsif aclk'event and aclk = '1' then  -- rising clock edge
      busy_simulating_reg(0) <= busy_simulating;
      busy_loading_reg(0)    <= busy_loading;
      busy_simulating_reg(1) <= busy_simulating_reg(0);
      busy_loading_reg(1)    <= busy_loading_reg(0);
      cnt_cdc_0              <= cnt;
      cnt_cdc_1              <= cnt_cdc_0;
      errorSumReg_cdc_0      <= errorSumReg;
      errorSumReg_cdc_1      <= errorSumReg_cdc_0;
    end if;
  end process;

-------------------------------------------------------------------------------
-- Store seeed/prob
-------------------------------------------------------------------------------
  store_seed : process (aclk, arst_n)
  begin  -- process store_seed
    if arst_n = '0' then                -- asynchronous reset (active low)

    elsif aclk'event and aclk = '1' then  -- rising clock edge
      if r.control(0) = '1' then
        -- Synplify bug workaround
        --seed_ram(to_integer(unsigned(r.pe_location))) <= r.pe_seed_high & r.pe_seed_low;
        seed_ram_low(to_integer(unsigned(r.pe_location)))  <= r.pe_seed_low;
        seed_ram_high(to_integer(unsigned(r.pe_location))) <= r.pe_seed_high;

        prob_ram(to_integer(unsigned(r.pe_location))) <= r.pe_probability;
      end if;
    end if;
  end process store_seed;

-----------------------------------------------------------------------------
-- Seed/prob loading FSM
-----------------------------------------------------------------------------

  flag_cdc_1 : flag_cdc
    port map (
      clkA         => aclk,
      clkB         => clk_x32,
      FlagIn_clkA  => r.control(1),
      FlagOut_clkB => load_seed_prob,
      rst_n        => arst_n);

  seed_prob_loading : process (clk_x32, arst_n)
    variable cnt_seed : integer range 0 to 64;
    variable cnt_inj  : integer range 0 to numInj;
    variable cnt_prob : integer range 0 to 32;

  begin  -- process seed_prob_loading
    if arst_n = '0' then                -- asynchronous reset (active low)
      l_state      <= IDLE;
      seed_in      <= '0';
      seed_in_en   <= '0';
      prob_in      <= '0';
      prob_in_en   <= '0';
      shift_en_l   <= '0';
      busy_loading <= '0';
    elsif clk_x32'event and clk_x32 = '1' then  -- rising clock edge
      case l_state is
        when IDLE =>
          cnt_seed     := 0;
          cnt_inj      := 0;
          cnt_prob     := 0;
          busy_loading <= '0';
          seed_in_en   <= '0';
          prob_in_en   <= '0';
          shift_en_l   <= '0';
          if load_seed_prob = '1' then
            busy_loading <= '1';
            l_state      <= LOADSEED;
          end if;
        when LOADSEED =>
          if cnt_seed < 64 then
            shift_en_l <= '1';
            seed_in_en <= '1';
            -- not working in synplify I-2013
            --seed_in    <= seed_ram(cnt_inj)(cnt_seed);
            --
            if cnt_seed < 32 then
              seed_in <= seed_ram_low(cnt_inj)(cnt_seed);
            else
              seed_in <= seed_ram_high(cnt_inj)(cnt_seed-32);
            end if;

            cnt_seed := cnt_seed + 1;
          end if;
          if cnt_seed = 64 then
            cnt_seed := 0;
            cnt_inj  := cnt_inj + 1;
          end if;
          if cnt_inj = numInj then
            l_state <= LOADPROB;
            --seed_in_en <= '0';
            cnt_inj := 0;
          end if;
        when LOADPROB =>
          seed_in_en <= '0';
          if cnt_prob < 32 then
            prob_in_en <= '1';
            prob_in    <= prob_ram(cnt_inj)(cnt_prob);
            cnt_prob   := cnt_prob + 1;
          end if;
          if cnt_prob = 32 then
            cnt_prob := 0;
            cnt_inj  := cnt_inj + 1;
          end if;
          if cnt_inj = numInj then
            l_state <= IDLE;
            cnt_inj := 0;
            --prob_in_en <= '0';
          end if;

      end case;
    end if;
  end process seed_prob_loading;


-----------------------------------------------------------------------------
-- Simulation FSM
-----------------------------------------------------------------------------

  flag_cdc_2 : flag_cdc
    port map (
      clkA         => aclk,
      clkB         => clk,
      FlagIn_clkA  => r.control(2),
      FlagOut_clkB => start_simulation,
      rst_n        => arst_n);

  flag_cdc_3 : flag_cdc
    port map (
      clkA         => aclk,
      clkB         => clk,
      FlagIn_clkA  => r.control(3),
      FlagOut_clkB => start_free_simulation,
      rst_n        => arst_n);

  flag_cdc_4 : flag_cdc
    port map (
      clkA         => aclk,
      clkB         => clk,
      FlagIn_clkA  => r.control(4),
      FlagOut_clkB => stop_simulation,
      rst_n        => arst_n);

  rst_cdc : flag_cdc
    port map (
      clkA         => aclk,
      clkB         => clk,
      FlagIn_clkA  => not arst_n,
      FlagOut_clkB => rst_cdc,
      rst_n        => open);

  rst_cdc_n <= not rst_cdc;

  process (clk, rst_cdc_n)
    variable simtime   : integer;
    --variable cnt       : integer;
    variable cnt_delay : integer range 0 to 9;
  begin  -- process
    if clk'event and clk = '1' then     -- rising clock edge
      --resultvector_f_reg <= resultvector_f;
      --resultvector_o_reg <= resultvector_o;
      if rst_cdc_n = '0' then           -- asynchronous reset (active low)
        s_state         <= IDLE;
        errorVec        <= (others => '0');
        errorSum        <= (others => (others => '0'));
        circ_ce         <= '0';
        circ_rst_sim    <= '1';
        shift_en_s      <= '0';
        busy_simulating <= '0';
        sim_done        <= '0';
        errorSumReg     <= (others => (others => '0'));
      else
        case s_state is
          
          when IDLE =>
            sim_done        <= '0';
            circ_ce         <= '0';
            circ_rst_sim    <= '1';
            shift_en_s      <= '0';
            errorVec        <= (others => '0');
            --errorSum        <= errorSum;
            errorSum        <= (others => (others => '0'));
            --cnt             := 0;
            busy_simulating <= '0';
            cnt_delay       := 0;
            if start_simulation = '1' then
              cnt <= 0;
              busy_simulating <= '1';
              errorSum        <= (others => (others => '0'));
              errorSumReg     <= (others => (others => '0'));
              simtime         := to_integer(unsigned(r.simtime));
              s_state         <= DELAY_Z;
              circ_ce         <= '1';
              circ_rst_sim    <= '0';
              shift_en_s      <= '1';
            end if;
            if start_free_simulation = '1' then
              cnt <= 0;
              busy_simulating <= '1';
              errorSum        <= (others => (others => '0'));
              errorSumReg     <= (others => (others => '0'));
              s_state         <= FREE_SIMULATION;
              circ_ce         <= '1';
              circ_rst_sim    <= '0';
              shift_en_s      <= '1';
            end if;
            
          when DELAY_z =>
            cnt_delay := cnt_delay + 1;
            if cnt_delay = 9 then
              s_state <= DELAY;
            end if;
            
          when DELAY =>
            --circ_ce  <= '1';
            s_state  <= SIMULATION;
            errorVec <= (others => '0');
            errorSum <= (others => (others => '0'));
          when SIMULATION =>
            --circ_ce      <= '1';
            circ_rst_sim <= '0';
            shift_en_s   <= '1';
            -- collect errors
            errorVec     <= resultvector_o xor resultvector_f;
            for i in 0 to (numOut-1) loop
              if (errorVec(i) = '1') then
                errorSum(i) <= std_logic_vector(unsigned(errorSum(i)) + 1);
              end if;
            end loop;

            if cnt = simtime-1 then
              s_state      <= DELAY2;
              --sim_done   <= '1';
              circ_ce      <= '0';
              circ_rst_sim <= '1';
              shift_en_s   <= '0';
            end if;
            cnt <= cnt +1;
          when DELAY2 =>
            errorVec <= resultvector_o xor resultvector_f;
            for i in 0 to (numOut-1) loop
              if (errorVec(i) = '1') then
                errorSum(i) <= std_logic_vector(unsigned(errorSum(i)) + 1);
              end if;
            end loop;
            s_state <= DELAY3;
          when DELAY3 =>
            --errorVec <= resultvector_o xor resultvector_f;
            --for i in 0 to (numOut-1) loop
            --  if (errorVec(i) = '1') then
            --    errorSum(i) <= std_logic_vector(unsigned(errorSum(i)) + 1);
            --  end if;
            --end loop;
            s_state     <= DELAY4;
            errorSumReg <= errorSum;
            errorSum    <= (others => (others => '0'));
          when DELAY4 =>
            --errorVec <= resultvector_o xor resultvector_f;
            --for i in 0 to (numOut-1) loop
            --  if (errorVec(i) = '1') then
            --    errorSum(i) <= std_logic_vector(unsigned(errorSum(i)) + 1);
            --  end if;
            --end loop;
            s_state  <= IDLE;
            sim_done <= '1';
            --errorSumReg <= errorSum;



          when FREE_SIMULATION =>
            
            circ_rst_sim <= '0';
            shift_en_s   <= '1';
            -- collect errors
            errorVec     <= resultvector_o xor resultvector_f;
            for i in 0 to (numOut-1) loop
              if (errorVec(i) = '1') then
                errorSum(i) <= std_logic_vector(unsigned(errorSum(i)) + 1);
              end if;
            end loop;
            -- 
            errorSumReg <= errorSum;
            if stop_simulation = '1' then
              s_state      <= IDLE;
              sim_done     <= '1';
              circ_ce      <= '0';
              circ_rst_sim <= '1';
              shift_en_s   <= '0';
            end if;
            cnt <= cnt +1;

            
          when others =>
            s_state <= IDLE;
        end case;
      end if;
    end if;
  end process;


end behav;