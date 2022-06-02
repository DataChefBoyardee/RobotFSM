----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2022 03:08:00 PM
-- Design Name: 
-- Module Name: robotFSM_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity robotFSM_tb is
generic(	
        x : integer := 5;
	    y : integer := 5
);
end robotFSM_tb;
    
architecture Behavioral of robotFSM_tb is
        signal we, done, error :  std_logic := '0';
        signal start, reset, clk : std_logic := '0';
        signal addr_x : std_logic_vector (x-1 downto 0) := "00000";
        signal addr_y : std_logic_vector (y-1 downto 0) := "00000";
        signal din : std_logic_vector (2 downto 0) := "000";
        signal dout : std_logic_vector (2 downto 0) := "000";
        signal dout_path : std_logic_vector(1 downto 0) := "00";
        signal dout_oled : std_logic_vector(1 downto 0) := "00";
        signal start_x, start_y, goal_x, goal_y : integer := 0;
        signal moves : integer := 0;
        signal moves_mem : integer:= 0;
        signal j : integer := 0;
        
begin
    uut: entity work.memory(Behavioral)
        port map (
            we => we,
            reset => reset,
            clk => clk, 
            dout => dout,
            din => din,
            addr_x => addr_x,
            addr_y => addr_y,
            dout_path => dout_path,
            done => done,
            dout_oled => dout_oled,
            goal_x => goal_x,
            goal_y => goal_y,
            start => start,
            moves => moves,
            moves_mem => moves_mem
        );
        
    uuut: entity work.robotFSM(Behavioral)
        port map (
            we => we,
            reset => reset,
            clk => clk, 
            dout => dout,
            dout_path => dout_path,
            din => din,
            addr_x => addr_x,
            addr_y => addr_y,
            start => start,
            done => done,
            error => error,
            start_x => start_x,
            start_y => start_y
        );
    process
    begin
        clk <= '0';
        wait for 1 ns;
        clk <= '1';
        wait for 1 ns;
    end process;
    
    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process;

    process
        variable i : integer := 0;
    begin
        start_x <= 0;
        start_y <= 4;
        goal_x <= 4;
        goal_y <= 0;
        wait for 15 ns;
        start <= '1';
        wait for 5 ns;
        start <= '0';
        moves_mem <= j;
        wait for 5 ns;
        j <= j + 1;
    end process;
            
   
end Behavioral;
