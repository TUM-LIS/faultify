library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.approximationTable.all;

entity static_approximation_wrapper is
  
  generic (
    numInj : integer := 268;
    numIn  : integer := 70;
    numOut : integer := 41);

  port (
    clk             : in  std_logic;
    rst             : in  std_logic;
    injectionVector : in  std_logic_vector(numInj-1 downto 0);
    testVector      : in  std_logic_vector(numIn-1 downto 0);
    resultVector    : out std_logic_vector(numOut-1 downto 0));

end entity static_approximation_wrapper;



architecture struct of static_approximation_wrapper is

  component circuit_under_test is
    port (
      clk             : in  std_logic;
      rst             : in  std_logic;
      testvector      : in  std_logic_vector(numIn-1 downto 0);
      resultvector    : out std_logic_vector(numOut-1 downto 0);
      injectionvector : in  std_logic_vector(numInj-1 downto 0));
  end component circuit_under_test;
  
begin  -- architecture struct

  circuit_under_test_1 : circuit_under_test
    port map (
      clk             => clk,
      rst             => rst,
      testvector      => testvector,
      resultvector    => resultvector,
      injectionvector => approximationVector);

end architecture struct;
