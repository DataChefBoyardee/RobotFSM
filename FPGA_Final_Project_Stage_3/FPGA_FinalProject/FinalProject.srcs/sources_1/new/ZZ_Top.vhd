----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2022 05:42:17 PM
-- Design Name: 
-- Module Name: wrapper - Behavioral
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

entity ZZ_Top is
generic (   
    x : integer := 5;
    y : integer := 5
);
  Port ( start : in std_logic;
         clk : in std_logic;
         error : std_logic;
         reset : in std_logic;
         done : out std_logic;
         dout_oled : out std_logic_vector(1 downto 0);
         moves, moves_mem : integer;
         addr_y : in std_logic_vector(y-1 downto 0);
         addr_x : in std_logic_vector(x-1 downto 0) );
end ZZ_Top;

architecture Behavioral of ZZ_Top is
    signal we : std_logic;
    signal dout, din : std_logic_vector(2 downto 0);
    signal dout_path : std_logic_vector(1 downto 0);
begin
Memory : entity work.memory(Behavioral)
        port map (we => we, reset => reset, clk => clk, dout => dout, din => din, addr_x => addr_x, addr_y => addr_y,
                 dout_path => dout_path, done => done, dout_oled => dout_oled, moves_mem => moves_mem, moves => moves);
        
Robot_FSM : entity work.robotFSM(Behavioral)
        port map (we => we, reset => reset, clk => clk,  dout => dout, dout_path => dout_path, din => din,
                    addr_x => addr_x, addr_y => addr_y, start => start, done => done, error => error);


end Behavioral;
