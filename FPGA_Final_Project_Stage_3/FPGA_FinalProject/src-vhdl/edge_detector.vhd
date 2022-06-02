----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2019 08:52:16 AM
-- Design Name: 
-- Module Name: edge_detector - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity edge_detector is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           i : in STD_LOGIC;
           rising    : out std_logic;
           falling   : out std_logic);
end edge_detector;

architecture arch of edge_detector is
   signal sreg : std_logic;
begin
   process(clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then
            sreg <= '0';
         else
            sreg <= i;
         end if;
      end if;
   end process;
   rising <= '1' when i='1' and sreg='0' else
         '0';
   falling <= '1' when i = '0' and sreg = '1' else
               '0';
end arch;
