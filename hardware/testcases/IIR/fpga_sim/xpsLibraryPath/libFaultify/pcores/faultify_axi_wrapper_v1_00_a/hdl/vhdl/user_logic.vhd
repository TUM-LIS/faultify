------------------------------------------------------------------------------
-- user_logic.vhd - entity/architecture pair
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          user_logic.vhd
-- Version:           1.00.a
-- Description:       User logic.
-- Date:              Fri May 16 15:25:24 2014 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------

-- DO NOT EDIT BELOW THIS LINE --------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;

-- DO NOT EDIT ABOVE THIS LINE --------------------

--USER libraries added here

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_NUM_REG                    -- Number of software accessible registers
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--
-- Definition of Ports:
--   Bus2IP_Clk                   -- Bus to IP clock
--   Bus2IP_Resetn                -- Bus to IP reset
--   Bus2IP_Data                  -- Bus to IP data bus
--   Bus2IP_BE                    -- Bus to IP byte enables
--   Bus2IP_RdCE                  -- Bus to IP read chip enable
--   Bus2IP_WrCE                  -- Bus to IP write chip enable
--   IP2Bus_Data                  -- IP to Bus data bus
--   IP2Bus_RdAck                 -- IP to Bus read transfer acknowledgement
--   IP2Bus_WrAck                 -- IP to Bus write transfer acknowledgement
--   IP2Bus_Error                 -- IP to Bus error response
------------------------------------------------------------------------------

entity user_logic is
  generic
    (
      -- ADD USER GENERICS BELOW THIS LINE ---------------
      --USER generics added here
      -- ADD USER GENERICS ABOVE THIS LINE ---------------

      -- DO NOT EDIT BELOW THIS LINE ---------------------
      -- Bus protocol parameters, do not add to or delete
      C_NUM_REG    : integer := 32;
      C_SLV_DWIDTH : integer := 32
      -- DO NOT EDIT ABOVE THIS LINE ---------------------
      );
  port
    (
      -- ADD USER PORTS BELOW THIS LINE ------------------
      --USER ports added here
      faultify_clk_fast : in std_logic;
      -- ADD USER PORTS ABOVE THIS LINE ------------------

      -- DO NOT EDIT BELOW THIS LINE ---------------------
      -- Bus protocol ports, do not add to or delete
      Bus2IP_Clk    : in  std_logic;
      Bus2IP_Resetn : in  std_logic;
      Bus2IP_Data   : in  std_logic_vector(C_SLV_DWIDTH-1 downto 0);
      Bus2IP_BE     : in  std_logic_vector(C_SLV_DWIDTH/8-1 downto 0);
      Bus2IP_RdCE   : in  std_logic_vector(C_NUM_REG-1 downto 0);
      Bus2IP_WrCE   : in  std_logic_vector(C_NUM_REG-1 downto 0);
      IP2Bus_Data   : out std_logic_vector(C_SLV_DWIDTH-1 downto 0);
      IP2Bus_RdAck  : out std_logic;
      IP2Bus_WrAck  : out std_logic;
      IP2Bus_Error  : out std_logic
      -- DO NOT EDIT ABOVE THIS LINE ---------------------
      );

  attribute MAX_FANOUT : string;
  attribute SIGIS      : string;

  attribute SIGIS of Bus2IP_Clk    : signal is "CLK";
  attribute SIGIS of Bus2IP_Resetn : signal is "RST";

end entity user_logic;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of user_logic is

  --USER signal declarations added here, as needed for user logic
  component faultify_top
    generic (
      numInj : integer;
      numIn  : integer;
      numOut : integer);
    port (
      aclk    : in  std_logic;
      arst_n  : in  std_logic;
      clk     : in  std_logic;
      clk_x32 : in  std_logic;
      awvalid : in  std_logic;
      awaddr  : in  std_logic_vector(31 downto 0);
      wvalid  : in  std_logic;
      wdata   : in  std_logic_vector(31 downto 0);
      arvalid : in  std_logic;
      araddr  : in  std_logic_vector(31 downto 0);
      rvalid  : out std_logic;
      rdata   : out std_logic_vector(31 downto 0));
  end component;


  ------------------------------------------
  -- Signals for user logic slave model s/w accessible register example
  ------------------------------------------
  signal register_write_data : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal register_read_data  : std_logic_vector(C_SLV_DWIDTH-1 downto 0);

  signal register_write_address : std_logic_vector(C_NUM_REG-1 downto 0);
  signal register_read_address  : std_logic_vector(C_NUM_REG-1 downto 0);

  signal slv_reg_write_sel : std_logic_vector(31 downto 0);
  signal slv_reg_read_sel  : std_logic_vector(31 downto 0);

  signal slv_ip2bus_data : std_logic_vector(C_SLV_DWIDTH-1 downto 0);
  signal slv_read_ack    : std_logic;
  signal slv_write_ack   : std_logic;

  signal faultify_read_valid         : std_logic;
  signal faultify_read_address_valid : std_logic;
  signal faultify_read_address       : std_logic_vector(31 downto 0);
  signal faultify_write_valid        : std_logic;

  signal counter, divide     : integer := 0;
  signal faultify_clk_slow_i : std_logic;
  

begin

  slv_reg_write_sel <= Bus2IP_WrCE(31 downto 0);
  slv_reg_read_sel  <= Bus2IP_RdCE(31 downto 0);

  slv_write_ack <= Bus2IP_WrCE(0) or Bus2IP_WrCE(1) or Bus2IP_WrCE(2) or Bus2IP_WrCE(3) or Bus2IP_WrCE(4) or Bus2IP_WrCE(5) or Bus2IP_WrCE(6) or Bus2IP_WrCE(7) or Bus2IP_WrCE(8) or Bus2IP_WrCE(9) or Bus2IP_WrCE(10) or Bus2IP_WrCE(11) or Bus2IP_WrCE(12) or Bus2IP_WrCE(13) or Bus2IP_WrCE(14) or Bus2IP_WrCE(15) or Bus2IP_WrCE(16) or Bus2IP_WrCE(17) or Bus2IP_WrCE(18) or Bus2IP_WrCE(19) or Bus2IP_WrCE(20) or Bus2IP_WrCE(21) or Bus2IP_WrCE(22) or Bus2IP_WrCE(23) or Bus2IP_WrCE(24) or Bus2IP_WrCE(25) or Bus2IP_WrCE(26) or Bus2IP_WrCE(27) or Bus2IP_WrCE(28) or Bus2IP_WrCE(29) or Bus2IP_WrCE(30) or Bus2IP_WrCE(31);

  slv_read_ack <= faultify_read_valid;

  -- implement slave model software accessible register(s)
  SLAVE_REG_WRITE_PROC : process(Bus2IP_Clk) is
  begin

    if Bus2IP_Clk'event and Bus2IP_Clk = '1' then
      if Bus2IP_Resetn = '0' then
        register_write_data    <= (others => '0');
        register_write_address <= (others => '0');
        faultify_write_valid   <= '0';
      else

        faultify_write_valid <= slv_write_ack;


        case slv_reg_write_sel is
          when "10000000000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(0, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "01000000000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(1, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00100000000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(2, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00010000000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(3, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00001000000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(4, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000100000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(5, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000010000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(6, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000001000000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(7, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000100000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(8, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000010000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(9, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000001000000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(10, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000100000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(11, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000010000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(12, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000001000000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(13, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000100000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(14, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000010000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(15, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000001000000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(16, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000100000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(17, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000010000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(18, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000001000000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(19, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000100000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(20, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000010000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(21, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000001000000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(22, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000100000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(23, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000010000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(24, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000001000000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(25, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000100000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(26, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000010000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(27, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000001000" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(28, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000000100" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(29, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000000010" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(30, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when "00000000000000000000000000000001" =>
            for byte_index in 0 to (C_SLV_DWIDTH/8)-1 loop
              if (Bus2IP_BE(byte_index) = '1') then
                register_write_address                                  <= std_logic_vector(to_unsigned(31, 32));
                register_write_data(byte_index*8+7 downto byte_index*8) <= Bus2IP_Data(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          when others => null;
        end case;
      end if;
    end if;

  end process SLAVE_REG_WRITE_PROC;

  -- implement slave model software accessible register(s) read mux
  SLAVE_REG_READ_PROC : process(slv_reg_read_sel, faultify_read_valid) is
  begin
    faultify_read_address_valid <= '1';
    case slv_reg_read_sel is
      when "10000000000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(0, 32));
      when "01000000000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(1, 32));
      when "00100000000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(2, 32));
      when "00010000000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(3, 32));
      when "00001000000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(4, 32));
      when "00000100000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(5, 32));
      when "00000010000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(6, 32));
      when "00000001000000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(7, 32));
      when "00000000100000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(8, 32));
      when "00000000010000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(9, 32));
      when "00000000001000000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(10, 32));
      when "00000000000100000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(11, 32));
      when "00000000000010000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(12, 32));
      when "00000000000001000000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(13, 32));
      when "00000000000000100000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(14, 32));
      when "00000000000000010000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(15, 32));
      when "00000000000000001000000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(16, 32));
      when "00000000000000000100000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(17, 32));
      when "00000000000000000010000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(18, 32));
      when "00000000000000000001000000000000" => faultify_read_address <= std_logic_vector(to_unsigned(19, 32));
      when "00000000000000000000100000000000" => faultify_read_address <= std_logic_vector(to_unsigned(20, 32));
      when "00000000000000000000010000000000" => faultify_read_address <= std_logic_vector(to_unsigned(21, 32));
      when "00000000000000000000001000000000" => faultify_read_address <= std_logic_vector(to_unsigned(22, 32));
      when "00000000000000000000000100000000" => faultify_read_address <= std_logic_vector(to_unsigned(23, 32));
      when "00000000000000000000000010000000" => faultify_read_address <= std_logic_vector(to_unsigned(24, 32));
      when "00000000000000000000000001000000" => faultify_read_address <= std_logic_vector(to_unsigned(25, 32));
      when "00000000000000000000000000100000" => faultify_read_address <= std_logic_vector(to_unsigned(26, 32));
      when "00000000000000000000000000010000" => faultify_read_address <= std_logic_vector(to_unsigned(27, 32));
      when "00000000000000000000000000001000" => faultify_read_address <= std_logic_vector(to_unsigned(28, 32));
      when "00000000000000000000000000000100" => faultify_read_address <= std_logic_vector(to_unsigned(29, 32));
      when "00000000000000000000000000000010" => faultify_read_address <= std_logic_vector(to_unsigned(30, 32));
      when "00000000000000000000000000000001" => faultify_read_address <= std_logic_vector(to_unsigned(31, 32));
      when others                             => faultify_read_address <= (others => '0');
                                                 faultify_read_address_valid <= '0';
                                                 
    end case;

  end process SLAVE_REG_READ_PROC;

  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  IP2Bus_Data <= register_read_data when faultify_read_valid = '1' else
                 (others => '0');

  IP2Bus_WrAck <= slv_write_ack;
  IP2Bus_RdAck <= slv_read_ack;
  IP2Bus_Error <= '0';



-----------------------------------------------------------------------------
  -- clock divider 32 -> 1
  -----------------------------------------------------------------------------
  divide <= 32;
  process(Bus2IP_Clk, Bus2IP_Resetn)
  begin
    if Bus2IP_Resetn = '0' then
      counter             <= 0;
      faultify_clk_slow_i <= '0';
    elsif(rising_edge(Bus2IP_Clk)) then
      if(counter < divide/2-1) then
        counter             <= counter + 1;
        faultify_clk_slow_i <= '0';
      elsif(counter < divide-1) then
        counter             <= counter + 1;
        faultify_clk_slow_i <= '1';
      else
        faultify_clk_slow_i <= '0';
        counter             <= 0;
      end if;
    end if;
  end process;


  faultify_top_1 : faultify_top
    generic map (
      numInj => 346,
      numIn  => 19,
      numOut => 19)
    port map (
      aclk    => Bus2IP_Clk,
      arst_n  => Bus2IP_Resetn,
      clk     => faultify_clk_slow_i,
      clk_x32 => Bus2IP_Clk,
      awvalid => faultify_write_valid,
      awaddr  => register_write_address,
      wvalid  => faultify_write_valid,
      wdata   => register_write_data,
      arvalid => faultify_read_address_valid,
      araddr  => faultify_read_address,
      rvalid  => faultify_read_valid,
      rdata   => register_read_data);


end IMP;
