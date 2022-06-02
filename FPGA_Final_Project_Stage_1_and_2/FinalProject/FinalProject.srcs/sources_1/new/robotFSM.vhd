----------------------------------------------------------------------------------
-- Company: Deez
-- Engineer: Nuts
-- 
-- Create Date: 03/30/2022 12:13:26 PM
-- Design Name: I, Robot
-- Module Name: robotFSM - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity robotFSM is
generic (   
    x : integer := 5;
    y : integer := 5
);

port(
        we, done, error : out std_logic;
        start, reset, clk : in std_logic;
        addr_x : out std_logic_vector (x-1 downto 0);
        addr_y : out std_logic_vector (y-1 downto 0);
        din : in std_logic_vector (2 downto 0);
        dout : out std_logic_vector (2 downto 0);
        dout_path : out string (1 to 5);
        start_x, start_y : in integer      
);
end robotFSM;

architecture Behavioral of robotFSM is
    type state_type is (init, check_N, update_check_N, read_check_N, set_check_N, check_E, update_check_E, set_check_E,
                        check_S, update_check_S, set_check_S,
                        check_W, update_check_W, set_check_W, update_pos, update_mem, set_mem, read_mem, 
                        update_check_WB, set_check_WB, check_WB, update_check_SB, set_check_SB, check_SB, 
                        update_check_EB, set_check_EB, check_EB, update_check_NB, set_check_NB,
                        check_NB, update_pos_B, update_mem_B, set_mem_B, read_mem_B, done_state, unreachable);
    signal state : state_type;
begin
    process(clk) 
        constant bound_x : std_logic_vector (x-1 downto 0) := (others => '1');
        constant bound_y : std_logic_vector (y-1 downto 0) := (others => '1');
        variable curr_x, prev_x, next_x : std_logic_vector (x-1 downto 0) := (others => '0');
        variable curr_y, prev_y, next_y : std_logic_vector (y-1 downto 0) := (others => '0');
        variable pos_check : std_logic_vector (2 downto 0) := (others => '0');
    begin
    if (rising_edge(clk)) then
        if (reset = '1') then
            addr_x <= (others => '0');
            addr_y <= (others => '0');
            dout <= (others => '0');
            we <= '0';
            done <= '0';
            error <= '0';
            curr_x := (others => '0');
            curr_y := (others => '0');
            prev_x := (others => '0');
            prev_y := (others => '0');
            next_x := (others => '0');
            next_y := (others => '0');
        else
            case (state) is
                when init =>
                    curr_x := std_logic_vector(to_unsigned(start_x, x));
                    curr_y := std_logic_vector(to_unsigned(start_y, y));
                    addr_x <= std_logic_vector(to_unsigned(start_x, x));
                    addr_y <= std_logic_vector(to_unsigned(start_y, y));
                    if start = '1' then
                        state <= check_N;
                    end if;
                when update_check_N =>
                    if ((curr_y - 1) = bound_y) then
                        state <= update_check_E;
                    else
                        addr_y <= curr_y - 1;
                        state <= read_check_N;
                    end if;
                when read_check_N => 
                    state <= set_check_N;
                when set_check_N =>
                    state <= check_N;
                when check_N =>
                        if (din = "000") then
                            prev_y := curr_y;
                            next_y := curr_y - 1;
                            we <= '1';
                            dout_path <= "North";
                            state <= update_pos;
                        elsif (din = "010" or din = "001" or din = "100") then
                            addr_y <= curr_y;
                            state <= update_check_E;
                        elsif (din = "011") then
                           state <= done_state;
                        end if;
                when update_check_E =>
                    if ((curr_x + 1) >= x) then
                        state <= update_check_S;
                    else
                        addr_x <= curr_x + 1;
                        state <= set_check_E;
                    end if;
                when set_check_E =>
                    state <= check_E;
                when check_E =>
                       if (din = "000") then
                           prev_x := curr_x;
                           next_x := curr_x + 1;
                           we <= '1';
                           dout_path <= "East ";
                           state <= update_pos;
                       elsif (din = "010" or din = "001" or din = "100") then
                           addr_x <= curr_x;
                           state <= update_check_S;
                       elsif (din = "011") then
                           state <= done_state;
                       end if;
                when update_check_S =>
                    if ((curr_y + 1) >= y) then
                        addr_y <= curr_y;
                        state <= update_check_W;
                    else
                        addr_y <= curr_y + 1;
                        state <= set_check_S;
                    end if;
                when set_check_S =>
                    state <= check_S;
                when check_S =>
                        if (din = "000") then
                            prev_y := curr_y;
                            next_y := curr_y + 1;
                            we <= '1';
                            dout_path <= "South";
                            state <= update_pos;
                        elsif (din = "010" or din = "001" or din = "100") then
                            addr_y <= curr_y;
                            state <= update_check_W;
                        elsif (din = "011") then
                           state <= done_state;
                        end if;
                when update_check_W =>
                    if ((curr_x - 1) = bound_x) then
                        addr_x <= curr_x;
                        state <= update_check_SB;
                    else
                        addr_x <= curr_x - 1;
                        state <= set_check_W;
                    end if;
                when set_check_W =>
                    state <= check_W;
                when check_W =>
                        if (din = "000") then
                            prev_x := curr_x;
                            next_x := curr_x - 1;
                            we <= '1';
                            dout_path <= "West ";
                            state <= update_pos;
                        elsif (din = "010" or din = "001" or din = "100") then
                            state <= update_check_WB;
                        elsif (din = "011") then
                           state <= done_state;
                        end if;
                when update_check_WB =>
                if ((curr_x - 1) = bound_x) then
                        addr_x <= curr_x;
                        state <= update_check_SB;
                    else
                        addr_x <= curr_x - 1;
                        state <= set_check_WB;
                    end if;
                when set_check_WB =>
                    state <= check_WB;
                when check_WB =>
                        if (din = "000" or din = "011") then
                            state <= update_check_W;
                        elsif (din = "001") then 
                            prev_x := curr_x;
                            next_x := curr_x + 1;
                            we <= '1';
                            dout_path <= "West ";
                            state <= update_pos_B;
                        elsif (din = "010" or din = "100") then
                            addr_x <= curr_x;
                            state <= update_check_SB;
                        end if;
                when update_check_SB =>
                    if ((curr_y + 1) >= y) then
                        addr_y <= curr_y;
                        state <= update_check_EB;
                    else
                        addr_y <= curr_y + 1;
                        state <= set_check_SB;
                    end if;
                when set_check_SB =>
                    state <= check_SB;
                when check_SB =>
                        if (din = "000" or din = "011") then
                            state <= update_check_S;
                        elsif (din = "001") then 
                            prev_y := curr_y;
                            next_y := curr_y + 1;
                            we <= '1';
                            dout_path <= "South";
                            state <= update_pos_B;
                        elsif (din = "010" or din = "100") then
                            addr_x <= curr_x + 1;
                            addr_y <= curr_y;
                            state <= update_check_EB;
                        end if;
                when update_check_EB =>
                    if ((curr_x + 1) >= x) then
                        addr_x <= curr_x;
                        state <= update_check_NB;
                    else
                        addr_x <= curr_x + 1;
                        state <= set_check_EB;
                    end if;
                when set_check_EB =>
                    state <= check_EB;
                when check_EB =>
                        if (din = "000" or din = "011") then
                            state <= update_check_E;
                        elsif (din = "001") then 
                            prev_x := curr_x;
                            next_x := curr_x - 1;
                            we <= '1';
                            dout_path <= "East ";
                            state <= update_pos_B;
                        elsif (din = "010" or din = "100") then
                            addr_x <= curr_x - 1;
                            addr_y <= curr_y - 1;
                            state <= update_check_NB;
                        end if;
                when update_check_NB =>
                    if ((curr_y - 1) = bound_y) then
                        addr_y <= curr_y;
                        state <= unreachable;
                    else
                        addr_y <= curr_y - 1;
                        state <= set_check_NB;
                    end if;
                when set_check_NB =>
                    state <= check_NB;
                when check_NB =>
                        if (din = "000" or din = "011") then
                            state <= update_check_N;
                        elsif (din = "001") then 
                            prev_y := curr_y;
                            next_y := curr_y - 1;
                            addr_y <= prev_y;
                            addr_x <= prev_x;
                            we <= '1';
                            dout_path <= "North";
                            state <= update_pos_B;
                        elsif (din = "010" or din = "100") then
                            state <= unreachable;
                        end if;
                when update_pos_B =>
                    dout <= "100";
                    state <= update_mem_B;
                when update_mem_B => 
                    state <= set_mem_B;
                when set_mem_B =>
                    we <= '0';
                    curr_y := next_y;
                    curr_x := next_x;
                    addr_y <= curr_y;
                    addr_x <= curr_x;
                    state <= read_mem_B;
                when read_mem_B => 
                    state <= update_check_WB;
                when update_pos =>
                    dout <= "001";
                    state <= update_mem;
                when update_mem => 
                    state <= set_mem;
                when set_mem =>
                    we <= '0';
                    curr_y := next_y;
                    curr_x := next_x;
                    addr_y <= curr_y;
                    addr_x <= curr_x;
                    state <= read_mem;
                when read_mem => 
                    state <= update_check_N;
                when done_state =>
                    done <= '1';
                when unreachable =>
                    error <= '1';                  
            end case;
        end if;
    end if;
    end process;
end Behavioral;
