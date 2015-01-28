library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity faultify_binomial_gen is
  
  generic (
    width : integer := 32);
  port (
    clk            : in  std_logic;
    rst_n          : in  std_logic;
    seed_in_en     : in  std_logic;
    seed_in        : in  std_logic;
    seed_out_c     : out std_logic;
    prob_in_en     : in  std_logic;
    prob_in        : in  std_logic;
    prob_out_c     : out std_logic;
    shift_en       : in  std_logic;
    data_out       : out std_logic;
    data_out_valid : out std_logic);

end faultify_binomial_gen;



architecture behav of faultify_binomial_gen is


  signal prob_srl : std_logic_vector(width-1 downto 0);
  signal prsn_srl : std_logic_vector(63 downto 0);

  signal prsn_srl_in : std_logic;
  signal prob_srl_in : std_logic;

  type     TapPointArray is array (3 downto 0) of integer;
  constant Tap      : TapPointArray := (63, 62, 60, 59);
  signal   par_fdbk : std_logic;

  signal cnt : integer range 0 to width;

  signal prsn_out, prob_out, done : std_logic;
  
begin  -- behav

  process (clk, rst_n)
  begin  -- process
    if rst_n = '0' then                 -- asynchronous reset (active low)
      --prob_srl <= (others => '0');
      --prsn_srl <= (others => '0');
    elsif clk'event and clk = '1' then  -- rising clock edge
      if shift_en = '1' then
        prob_srl <= prob_srl_in & prob_srl(prob_srl'high downto 1);
        prsn_srl <= prsn_srl(prsn_srl'high-1 downto 0) & prsn_srl_in;
      end if;
    end if;
  end process;

  prsn_srl_in <= seed_in when seed_in_en = '1' else par_fdbk;
  prob_srl_in <= prob_in when prob_in_en = '1' else prob_srl(prob_srl'low);
  par_fdbk    <= prsn_srl(Tap(0)) xor prsn_srl(Tap(1)) xor prsn_srl(Tap(2)) xor prsn_srl(Tap(3));


  prob_out   <= prob_srl(prob_srl'low);
  prsn_out   <= prsn_srl(prsn_srl'high);
  prob_out_c <= prob_out;
  seed_out_c <= prsn_out;

  process (clk, rst_n)
  begin  -- process
    if rst_n = '0' then                 -- asynchronous reset (active low)
      cnt      <= 0;
      data_out <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      if shift_en = '1' then
        cnt <= cnt + 1;
        if cnt < width and done = '0' then
          if (prsn_out = '0') and (prob_out = '1') then
            data_out <= '1';
            done     <= '1';
            --data_out_valid <= '1';
          elsif prsn_out = '1' and prob_out = '0' then
            data_out <= '0';
            done     <= '1';
            --data_out_valid <= '1';
          else
            done <= '0';
            --data_out <= '0';
            --data_out_valid <= '0';
          end if;
        end if;
        if cnt = width -1 then
          done <= '0';
          cnt  <= 0;
          --data_out_valid <= '0';
        end if;
        --if done = '1' then
        --data_out_valid <= '0';
        --end if;
      end if;
    end if;
  end process;
  

end;
