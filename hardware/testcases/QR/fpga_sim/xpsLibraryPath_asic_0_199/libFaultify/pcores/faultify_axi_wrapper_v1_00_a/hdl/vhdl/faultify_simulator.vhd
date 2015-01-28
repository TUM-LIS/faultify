library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;

entity faultify_simulator is
  generic (
    numInj : integer := 56;
    numIn  : integer := 10;
    numOut : integer := 10);
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
end faultify_simulator;

-- 866:0

architecture behav of faultify_simulator is

  component faultify_binomial_gen
    generic (
      width : integer);
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
  end component;

  component circuit_under_test
    port (
      clk             : in  std_logic;
      rst             : in  std_logic;
      testvector      : in  std_logic_vector(numIn-1 downto 0);
      resultvector    : out std_logic_vector(numOut-1 downto 0);
      injectionvector : in  std_logic_vector(1440-1 downto 0));
  end component;

  component golden_circuit
    port (
      clk          : in  std_logic;
      rst          : in  std_logic;
      testvector   : in  std_logic_vector(numIn-1 downto 0);
      resultvector : out std_logic_vector(numOut-1 downto 0));
  end component;

  signal injectionvector       : std_logic_vector(numInj-1 downto 0);
  signal injectionvector_reg   : std_logic_vector(numInj-1 downto 0);
  signal injectionvector_reg_o : std_logic_vector(numInj-1 downto 0);

  signal seed_chain : std_logic_vector(numInj downto 0);
  signal prob_chain : std_logic_vector(numInj downto 0);

  signal rst      : std_logic;
  signal clk_ce_m : std_logic;

  signal testvector_reg : std_logic_vector(numIn-1 downto 0);

  attribute syn_noprune                            : boolean;
  attribute syn_noprune of circuit_under_test_inst : label is true;
  attribute syn_noprune of golden_circuit_inst     : label is true;
  attribute xc_props                               : string;
  attribute xc_props of circuit_under_test_inst    : label is "KEEP_HIERARCHY=TRUE";
  attribute xc_props of golden_circuit_inst        : label is "KEEP_HIERARCHY=TRUE";

signal   injectionvector_reg_cat : std_logic_vector(1440-1 downto 0);
  
begin  -- behav

  rst <= not rst_n;

  -----------------------------------------------------------------------------
  -- debug...
  -----------------------------------------------------------------------------

--  resultvector_f <= (others => '1');
--  resultvector_o <= (others => '1');
  cgate : bufgce
    port map (
      I  => clk_m,
      O  => clk_ce_m,
      CE => circ_ce);

  process (clk_ce_m, rst_n)
  begin  -- process
    if rst_n = '0' then                 -- asynchronous reset (active low)
      testvector_reg <= (others => '0');
    elsif clk_ce_m'event and clk_ce_m = '1' then  -- rising clock edge
      testvector_reg <= testvector;
    end if;
  end process;

  circuit_under_test_inst : circuit_under_test
    port map (
      clk             => clk_ce_m,
      rst             => circ_rst,
      testvector      => testvector_reg,
      resultvector    => resultvector_f,
      injectionvector => injectionvector_reg_cat);

  injectionvector_reg_cat(199 downto 0) <= injectionvector_reg;
  injectionvector_reg_cat(1440-1 downto 200) <= (others => '0');
  
  golden_circuit_inst : golden_circuit
    port map (
      clk          => clk_ce_m,
      rst          => circ_rst,
      testvector   => testvector_reg,
      resultvector => resultvector_o
      );

  seed_chain(0) <= seed_in;
  prob_chain(0) <= prob_in;

  prsn_loop : for i in 0 to numInj-1 generate
    prsn_top_1 : faultify_binomial_gen
      generic map (
        width => 32)
      port map (
        clk            => clk,
        rst_n          => rst_n,
        seed_in_en     => seed_in_en,
        seed_in        => seed_chain(i),
        seed_out_c     => seed_chain(i+1),
        prob_in_en     => prob_in_en,
        prob_in        => prob_chain(i),
        prob_out_c     => prob_chain(i+1),
        shift_en       => shift_en,
        data_out       => injectionvector(i),
        data_out_valid => open);
  end generate prsn_loop;

  reg : process (clk_ce_m, rst_n)
  begin  -- process reg
    if rst_n = '0' then                 -- asynchronous reset (active low)
      injectionvector_reg <= (others => '0');
      --injectionvector_reg_o <= (others => '0');
      --test                  <= (others => '0');
    elsif clk_ce_m'event and clk_ce_m = '1' then  -- rising clock edge
      injectionvector_reg <= injectionvector;
      --injectionvector_reg <= (others => '0');
      --test                <= injectionvector_reg_o(31 downto 0);
      --injectionvector_reg_o(31 downto 0) <= injectionvector_reg_o(31 downto 0) or (resultvector_f(31 downto 0) xor resultvector_o(31 downto 0));
    end if;
  end process reg;
  

end behav;
