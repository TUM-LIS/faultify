library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.qr_pack.all;


entity qr_wrapper_wrapper_stimuli is
  port (
    clk            : in  std_logic;
    rst_n          : in  std_logic;
    reduced_matrix : out std_logic;  --! Divides by two the order of matrices involved
    start          : out std_logic;  --! Starts algorithm, beginning with reading of input ports
    request_out    : out std_logic;     --! Requests output vectors
    valid_out      : in  std_logic;  --! '1' if there is an available valid output
    ready          : in  std_logic;  --! '1' if the hardware is IDLE (waiting for start or request_out)
    in_A_r         : out std_logic_vector(N_G*WORD_WIDTH_G - 1 downto 0);
    in_A_i         : out std_logic_vector(N_G*WORD_WIDTH_G - 1 downto 0)
    );
end qr_wrapper_wrapper_stimuli;




architecture behav of qr_wrapper_wrapper_stimuli is

  type   fsm_type is (IDLE, START_STATE, D0, D1, D2, D3, WAIT_FOR_VALID, REQUEST_OUTPUT, WAIT_FOR_READY);
  signal state : fsm_type := IDLE;

  signal rand_out_1, rand_out_2 : std_logic_vector(N_G*WORD_WIDTH_G - 1 downto 0);
  component lfsr
    generic (
      width : integer;
      seed  : integer);
    port (
      clk      : in  std_logic;
      rand_out : out std_logic_vector(width-1 downto 0));
  end component;
  
begin  -- behav

  lfsr_1 : lfsr
    generic map (
      width => N_G*WORD_WIDTH_G,
      seed  => 24242309)
    port map (
      clk      => clk,
      rand_out => rand_out_1);

  lfsr_2 : lfsr
    generic map (
      width => N_G*WORD_WIDTH_G,
      seed  => 3246236)
    port map (
      clk      => clk,
      rand_out => rand_out_2);

  reduced_matrix <= '0';
  in_A_r         <= rand_out_1;
  in_A_i         <= rand_out_2;

  process (clk, rst_n)
  begin  -- process
    if rst_n = '0' then                 -- asynchronous reset (active low)
      state <= IDLE;
      start <= '0';
      request_out <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      case state is
        when IDLE =>
          if ready = '1' then
            state <= START_STATE;
          end if;
        when START_STATE =>
          start <= '1';
          state <= D0;
        when D0 =>
          start <= '0';
          state <= D1;
        when D1 =>
          state <= D2;
        when D2 =>
          state <= D3;
        when D3 =>
          state <= WAIT_FOR_VALID;
        when WAIT_FOR_VALID =>
          if ready = '1' then
            state <= REQUEST_OUTPUT;
          end if;
        when REQUEST_OUTPUT =>
          request_out <= '1';
          state       <= WAIT_FOR_READY;
        when WAIT_FOR_READY =>
          request_out <= '0';
          if ready = '1' then
            state <= START_STATE;
          end if;
      end case;
    end if;
  end process;




end behav;
