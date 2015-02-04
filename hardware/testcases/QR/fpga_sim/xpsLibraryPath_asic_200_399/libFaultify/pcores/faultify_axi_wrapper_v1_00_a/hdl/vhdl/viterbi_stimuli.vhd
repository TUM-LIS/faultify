library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.qr_pack.all;


entity viterbi_stimuli is
  port (
    clk            : in  std_logic;
    rst_n          : in  std_logic;

s_axis_input_tvalid : out std_logic;
		s_axis_input_tdata  : out std_logic_vector(31 downto 0);
		s_axis_input_tlast  : out std_logic;
		s_axis_input_tready : in std_logic;
	
		m_axis_output_tvalid : in std_logic;
		m_axis_output_tdata  : in std_logic;
		m_axis_output_tlast  : in std_logic;
		m_axis_output_tready : out std_logic;
	
		s_axis_ctrl_tvalid : out std_logic;
		s_axis_ctrl_tdata  : out std_logic_vector(31 downto 0);
		s_axis_ctrl_tlast  : out std_logic;
		s_axis_ctrl_tready : in std_logic
    );
end viterbi_stimuli;




architecture behav of viterbi_stimuli is

  type   fsm_type is (IDLE, START_STATE, );
  signal state : fsm_type := IDLE;

  signal rand_out_1, rand_out_2 : std_logic_vector(32-1 downto 0);
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
      width => 32,
      seed  => 242)
    port map (
      clk      => clk,
      rand_out => rand_out_1);

  lfsr_2 : lfsr
    generic map (
      width => 32,
      seed  => 324)
    port map (
      clk      => clk,
      rand_out => rand_out_2);


  in_A_r         <= rand_out_1(3 downto 0);
  in_A_i         <= rand_out_2(3 downto 0);

  process (clk, rst_n)
  begin  -- process
    if rst_n = '0' then                 -- asynchronous reset (active low)
      state <= IDLE;
      m_axis_ctrl_tlast  <= '0';
	m_axis_ctrl_tvalid <= '0';
	m_axis_ctrl_tdata  <= (others => '0');
m_axis_input_tlast  <= '0';
 m_axis_input_tvalid <= '0';
	m_axis_input_tdata  <= (others => '0');
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
