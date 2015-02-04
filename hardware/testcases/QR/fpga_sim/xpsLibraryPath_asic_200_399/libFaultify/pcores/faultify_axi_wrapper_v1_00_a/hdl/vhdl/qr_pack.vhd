----------------------------------------------------------------------------------
-- TU Kaiserslautern
-- Fachbereich Elektrotechnik und Informationstechnik
-- Package for global definitions of the QR decomposition hardware
-- by Gabriel Luca Nazar
-- July 2009
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package qr_pack is

------Global constants
constant WORD_WIDTH_G : integer := 12;
constant INT_BITS_G : integer := 4;
constant N_G : integer := 4;
constant LOG2_N_G : integer := 2;
constant LOG_WORD_WIDTH_G : integer := 4;
--IMPORTANT: When turning the Newton-Raphson iterations ON/OFF, remember to change the inv_sqrt.ucf file
--The "TS_Inv_Sqrt" constraint should be kept updated, according to the CYCLES_DURATION constant
constant USE_NEWTON_G : integer := 1; -- 1 to use one Newton-Raphson iteration. 0 to use none
constant SMALLER_POW2_WW : integer := 16; --Smaller power of two that is larger than WORD_WIDTH
constant MULT_CYCLES : integer := 3;

------Types
type vector is array (integer range <>) of std_logic_vector(WORD_WIDTH_G-1 downto 0);
type matrix is array (integer range <>) of vector(0 to N_G-1);
type log2_N_vec is array (integer range <>) of std_logic_vector(LOG2_N_G-1 downto 0);


--Selects the source of the vector input of the A and Q matrices register block
type vec_in_AQ_sel_type is (EXTERNAL, MULTIPLIER, SUBTRACTER);

--Selects if the source of a signal is EXTERNAL or comes from the FSM
type ext_or_fsm is (EXTERNAL, FSM);

--Selects the source of the single element input of the R matrix
type single_in_R_sel_type is (MULTIPLIER, INNER_PRODUCT);

--Selects the source of the b input (single element) of the vector multiplier block
type in_b_vec_mult_sel_type is (INNER_PRODUCT, INVERSE_SQRT);

--Used to activate the memory bypass for the inputs of the inner product ports
type bypass_or_mem is (BYPASS, MEM);
 
end qr_pack;
