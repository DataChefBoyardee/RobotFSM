----------------------------------------------------------------------------------
-- Company: Deez
-- Engineer: Nuts
-- 
-- Create Date: 03/29/2022 06:21:52 PM
-- Design Name: I, Robot
-- Module Name: memory - Behavioral
-- Project Name: Claymore Boomba j7
-- Target Devices: All of them
-- Tool Versions: What tools?
-- Description: It just works.
-- 
-- Dependencies: Joe Mamma
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
  generic(
    x : integer := 5;
    y : integer := 5
  );
    
  Port ( 
    din : out std_logic_vector(2 downto 0) := "000";
    we, reset, clk, done : in std_logic := '0';
    dout : in std_logic_vector(2 downto 0) := "000";
    dout_path : in integer := 0;
    dout_oled : out std_logic_vector (1 downto 0) := "00";
    addr_x : in std_logic_vector(x-1 downto 0) := "00000";
    addr_y : in std_logic_vector(y-1 downto 0) := "00000";
    moves : out integer := 0;
    moves_mem : in integer := 0;
    goal_x, goal_y : integer := 0;
    start : in std_logic := '0'
  );
end memory;

architecture Behavioral of memory is
    type ram_type is array (x-1 downto 0, y-1 downto 0) of std_logic_vector (2 downto 0);
    signal RAM : ram_type := ((others => (others => "000")));
    
begin
    process (clk)
    variable i : integer := 0;
    variable j : integer := 0;
        begin
            if start = '1' then
                RAM (goal_x, goal_y) <= "011";
                RAM (x-1, y-4) <= "010";
                RAM (x-4, y-3) <= "010";
                RAM (x-4, y-4) <= "010";
                RAM (x-4, y-5) <= "010";
            end if;
            if rising_edge(clk) then
                if we = '1' then
                    i := i + 1;
                    moves <= i;
                    RAM(conv_integer(addr_x), conv_integer(addr_y)) <= dout;
                    din <= dout;
                else
                    din <= RAM(conv_integer(addr_x), (conv_integer(addr_y)));
                end if;
            end if;
    end process;
end Behavioral;
