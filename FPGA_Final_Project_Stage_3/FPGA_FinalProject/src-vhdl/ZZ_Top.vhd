----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2019 11:49:08 AM
-- Design Name: 
-- Module Name: ZZ_Top - Behavioral
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

entity ZZ_Top is
generic (   
    x : integer := 5;
    y : integer := 5
);
port (  clk         : in std_logic;
        reset         : in std_logic;
            
            -- The following ports go to on-board OLED display
            oled_sdin   : out std_logic;
            oled_sclk   : out std_logic;
            oled_dc     : out std_logic;
            oled_res    : out std_logic;
            oled_vbat   : out std_logic;
            oled_vdd    : out std_logic;
            
            -- On-board LED
            led0     : out std_logic;
            led1     : out std_logic;
            led2     : out std_logic;
            led3     : out std_logic;
            led4     : out std_logic;
            led5     : out std_logic;
            led6     : out std_logic;
            led7     : out std_logic;

            -- On-Board push buttons
            BTND     : in std_logic;        
            BTNU     : in std_logic;        
            BTNL     : in std_logic;        
            BTNR     : in std_logic; 
            
            -- On-Board user switches
            sw0     : in std_logic;        
            sw1     : in std_logic;        
            sw2     : in std_logic;        
            sw3     : in std_logic;        
            sw4     : in std_logic;        
            sw5     : in std_logic;        
            sw6     : in std_logic;        
            sw7     : in std_logic        
            );
end ZZ_Top;

architecture Behavioral of ZZ_Top is
   signal start, ready, valid, refresh : std_logic;
   signal din : std_logic_vector(7 downto 0);
   
   type state_t is (Idle, dxfer, disp, Done, set_start_x, set_start_y, set_goal_x, set_goal_y, reached, steps, north, south, east, west, set_mem, read_mem, unreachable, stop, mem, arr, arr_local, arr_robot, steps1);
   signal State  : state_t;
   
    type oled_row is array(0 to 15) of std_logic_vector(7 downto 0);
     type oled_page is array (0 to 3) of oled_row;
        
     signal oled_screen : oled_page := ( 
                                         (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                                         (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                                         (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                                         (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F")
                                         );
   signal screen_change : std_logic;
   signal count : unsigned(25 downto 0);
   signal led_ctrl : std_logic_vector(7 downto 0);
   signal new_input_disp : oled_row;
   signal new_input_ready : std_logic;
   signal new_input_done : std_logic;
   
   signal btnu_db, btnd_db, btnl_db, btnr_db : std_logic;
   signal sw0_db, sw1_db, sw2_db, sw3_db, sw4_db, sw5_db, sw6_db, sw7_db : std_logic;
   signal sw0_r, sw1_r, sw2_r, sw3_r, sw4_r, sw5_r, sw6_r, sw7_r : std_logic;
   signal sw0_f, sw1_f, sw2_f, sw3_f, sw4_f, sw5_f, sw6_f, sw7_f : std_logic;
   signal error, done1, we, start_robot : std_logic;
   signal moves, moves_mem : integer;
   signal dout, din1 : std_logic_vector(2 downto 0);
   signal addr_y : std_logic_vector(y-1 downto 0);
   signal addr_x : std_logic_vector(x-1 downto 0);
   signal dout_oled : std_logic_vector(1 downto 0);
   signal dout_path : integer := 0;
   signal goal_x, goal_y, start_x, start_y : integer;
   type path_mem is array (255 downto 0) of integer range 0 to 3;
   signal path : path_mem := (others => 0);
   
begin
   -- PB debouncing
   db_btnu : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => BTNU, db => btnu_db);

   db_btnd : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => BTND, db => btnd_db);

   db_btnl : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => BTNL, db => btnl_db);

   db_btnr : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => BTNR, db => btnr_db);

   -- User SW debouncing
   db_sw0 : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => sw0, db => sw0_db);
      
   db_sw1 : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => sw1, db => sw1_db);
         
   db_sw2 : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => sw2, db => sw2_db);
         
   db_sw3 : entity work.debouncer(arch)
      port map(clk => clk, reset => reset, sw => sw3, db => sw3_db);
         
   db_sw4 : entity work.debouncer(arch)
       port map(clk => clk, reset => reset, sw => sw4, db => sw4_db);
         
    db_sw5 : entity work.debouncer(arch)
       port map(clk => clk, reset => reset, sw => sw5, db => sw5_db);
            
    db_sw6 : entity work.debouncer(arch)
       port map(clk => clk, reset => reset, sw => sw6, db => sw6_db);
            
    db_sw7 : entity work.debouncer(arch)
       port map(clk => clk, reset => reset, sw => sw7, db => sw7_db);
         
   -- Edge detection on the debounced SW 
   edge_sw0 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw0_db, rising => sw0_r, falling => sw0_f);
      
   edge_sw1 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw1_db, rising => sw1_r, falling => sw1_f);
         
   edge_sw2 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw2_db, rising => sw2_r, falling => sw2_f);
            
   edge_sw3 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw3_db, rising => sw3_r, falling => sw3_f);
             
   edge_sw4 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw4_db, rising => sw4_r, falling => sw4_f);
         
   edge_sw5 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw5_db, rising => sw5_r, falling => sw5_f);
            
   edge_sw6 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw6_db, rising => sw6_r, falling => sw6_f);
               
   edge_sw7 : entity work.edge_detector(arch)
      port map(clk => clk, reset => reset, i => sw7_db, rising => sw7_r, falling => sw7_f);
         
   
   -- OLED controller
   oled : entity work.oled_ctrl(behavioral) 
       port map (clk => clk, reset => reset,oled_sdin => oled_sdin,oled_sclk => oled_sclk,
                oled_dc => oled_dc,oled_res => oled_res,oled_vbat => oled_vbat, oled_vdd => oled_vdd,
               start => start,ready=> ready,din => din, valid => valid,refresh => refresh );
   -- memory and robot_FSM 
   Memory : entity work.memory(Behavioral)
        port map (we => we, reset => reset, clk => clk, dout => dout, din => din1, addr_x => addr_x, addr_y => addr_y, dout_path => dout_path, 
                 done => done1, dout_oled => dout_oled, moves_mem => moves_mem, moves => moves, goal_x => goal_x, goal_y => goal_y, start => start);
        
   Robot_FSM : entity work.robotFSM(Behavioral)
        port map (we => we, reset => reset, clk => clk,  dout => dout, dout_path => dout_path, din => din1, addr_x => addr_x, 
                    addr_y => addr_y, start => start_robot, done => done1, error => error, start_x => start_x, start_y => start_y);
               
   -- Test process for oled_ctrl
   process(clk)
      variable screen_row : integer range 0 to 3;
      variable screen_col : integer range 0 to 15;
      variable cur_row : integer range 0 to 4;
   begin
      if rising_edge(clk) then
         if reset = '1' then
            State <= Idle;
            start <= '0';
            refresh <= '0';
            valid <= '0';
            oled_screen <= ((x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                            (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                            (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
                            (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F")
                                                     );
         else
            case State is
               when Idle =>
                  start <= '1';
                  if ready = '1' then
                     screen_row := 0;
                     screen_col := 0;
                     State <= dxfer;
                  end if;
               when dxfer =>
                  if ready = '1' then
                     din <= oled_screen(screen_row)(screen_col);
                     valid <= '1';
                  end if;
                  if screen_row = 3 and screen_col = 15 then
                     State <= Disp;
                  else
                     if screen_col /= 15 then
                        screen_col := screen_col + 1;
                     else
                        screen_col := 0;
                        screen_row := screen_row + 1;
                     end if;
                  end if;
               when Disp =>
                  refresh <= '1';
                  valid <= '0';
                  State <= Done;
               when Done => 
                  --start <= '0';
                  refresh <= '0';
                  if new_input_ready = '1' then
                     if cur_row = 4 then
                        oled_screen(0) <= oled_screen(1);
                        oled_screen(1) <= oled_screen(2);
                        oled_screen(2) <= oled_screen(3);
                        oled_screen(3) <= new_input_disp;
                     else
                        oled_screen(cur_row) <= new_input_disp;
                        cur_row := cur_row + 1;
                     end if;
                     State <= Idle;
                  end if;
                when others =>
                    State <= State;
            end case;              
         end if;
      end if;
   end process;
   
   new_input_done <= '1' when State = Done else '0';
   

   
   -- User SW and PB sampler
   process(clk)
      variable State : state_t;
      variable input_change : std_logic;
      variable temp : std_logic_vector(7 downto 0);
      variable count : std_logic_vector(2 downto 0);
      variable chk : std_logic_vector(2 downto 0);
      variable start_btn, i, j: integer;
      variable digit1, digit2, digit3 : std_logic_vector(7 downto 0);
      variable path_in : integer;
   begin
        if rising_edge(clk) then
            if reset = '1' then
                new_input_disp <= (others => x"20");
                new_input_ready <= '0';
                input_change  := '0';
                count := "000";
                chk := "000";
                temp := "00000000";
                led_ctrl(0) <= '0';
                moves_mem <= 0;
                start_btn := 0;
                --done1 := '0';
                j := 0;
                led_ctrl(1) <= '0';
                i := 0;
                start_robot <= '0';
                State := set_start_x;
            else         
                case State is
                    when set_start_x =>
                        if count = "000" then
                            new_input_disp <= ( x"53", x"45", x"54",  x"20", x"53", x"54", x"41",x"52", x"54", x"20", x"58", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            count := "001";
                        end if;
                        if btnl_db = '1' then 
                            if sw0_r = '1' then temp(0) := '1';
                            elsif sw1_r = '1' then temp(1) := '1';
                            elsif sw2_r = '1' then temp(2) := '1';
                            elsif sw3_r = '1' then temp(3) := '1';
                            elsif sw4_r = '1' then temp(4) := '1';
                            elsif sw5_r = '1' then temp(5) := '1';
                            elsif sw6_r = '1' then temp(6) := '1';
                            elsif sw7_r = '1' then temp(7) := '1';
                            end if;
                            start_x <= conv_integer (temp);
                            temp := "00000000";
                            chk := "001";
                            --State := Done;
                        end  if;
                        State := Done;
                       
                    when set_start_y =>
                        if count = "001" then
                            new_input_disp <= (x"53", x"45", x"54",  x"20", x"53", x"54", x"41",x"52", x"54", x"20", x"59", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            count := "010";
                        end if;
                        if btnl_db = '1' then 
                            if sw0_r = '1' then temp(0) := '1';
                            elsif sw1_r = '1' then temp(1) := '1';
                            elsif sw2_r = '1' then temp(2) := '1';
                            elsif sw3_r = '1' then temp(3) := '1';
                            elsif sw4_r = '1' then temp(4) := '1';
                            elsif sw5_r = '1' then temp(5) := '1';
                            elsif sw6_r = '1' then temp(6) := '1';
                            elsif sw7_r = '1' then temp(7) := '1';
                            end if;
                            start_y <= conv_integer (temp);
                            temp := "00000000";
                            chk := "010";
                            --State := Done;
                        end if;
                        State := Done;                
                        
                    when set_goal_x =>
                        if count = "010" then
                            new_input_disp <= (x"53", x"45", x"54",  x"20", x"47", x"4F", x"41",x"4C", x"20", x"58", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            count := "011";
                        end if;
                        if btnl_db = '1' then 
                            if sw0_r = '1' then temp(0) := '1';
                            elsif sw1_r = '1' then temp(1) := '1';
                            elsif sw2_r = '1' then temp(2) := '1';
                            elsif sw3_r = '1' then temp(3) := '1';
                            elsif sw4_r = '1' then temp(4) := '1';
                            elsif sw5_r = '1' then temp(5) := '1';
                            elsif sw6_r = '1' then temp(6) := '1';
                            elsif sw7_r = '1' then temp(7) := '1';
                            end if;
                            start_x <= conv_integer (temp);
                            temp := "00000000";
                            chk := "011";
                            --State := Done;
                        end  if;
                        State := Done;
                        
                    when set_goal_y =>
                        if count = "011" then 
                            new_input_disp <= (x"53", x"45", x"54",  x"20", x"47", x"4F", x"41",x"4C", x"20", x"59", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            count := "100";
                        end if;
                        if btnl_db = '1' then 
                            if sw0_r = '1' then temp(0) := '1';
                            elsif sw1_r = '1' then temp(1) := '1';
                            elsif sw2_r = '1' then temp(2) := '1';
                            elsif sw3_r = '1' then temp(3) := '1';
                            elsif sw4_r = '1' then temp(4) := '1';
                            elsif sw5_r = '1' then temp(5) := '1';
                            elsif sw6_r = '1' then temp(6) := '1';
                            elsif sw7_r = '1' then temp(7) := '1';
                            end if;
                            goal_y <= conv_integer (temp);
                            temp := "00000000";
                            chk := "100";
                            --State := Done;
                        end if;
                        State := Done;

                    when Done =>
                        if new_input_done = '1' then
                            new_input_ready <= '0';
                            State := Disp;
                        end if;
                        
                    when Disp =>
                        if btnu_db = '0' and btnd_db = '0' and btnl_db = '0' and btnr_db = '0' then
                            if chk = "000" then State := set_start_x;
                            elsif chk = "001" then State := set_start_y;
                            elsif chk = "010" then State := set_goal_x;
                            elsif chk = "011" then State := set_goal_y;
                            elsif count = "100" then State := steps1;
                            else State := steps;
                            end if;
                        end if;
                        
                    when steps1 => 
                        new_input_disp <= (x"42", x"54", x"4E",  x"44", x"20", x"54", x"4F",x"20", x"53", x"54", x"41", x"52", x"54", x"20", x"20", x"20");
                        new_input_ready <= '1';
                        count := "101";
                        State := Done;
                        
                    when steps =>
                        if btnd_db = '1' then
                            start_robot <= '1';
                            --start_btn := 1;
                            State := arr_robot;
                        elsif (start_btn = 1) and (i = j) then
                            State := read_mem;
                        elsif done1 = '1' or error = '1' then State := Idle; 
                        else State := Disp;
                        end if;
                        
                    when arr_robot => 
                        start_btn := 1;
                        if we = '1' then
                            path(j) <= dout_path;
                            moves_mem <= j;
                            State := arr_local;
                        elsif done1 = '1' then State := Disp;
                        end if;
                        
                    when arr_local => 
                        State := arr;
                    
                    when arr => 
                        j := j + 1;
                        State := arr_robot;
                        
                    when read_mem =>
                        path_in := path(i);
                        State := mem;
                    
                    when mem =>
                        State := set_mem;
                        
                    when set_mem =>
                        i := i + 1;
                        if i < j then
                            state := Done;
                        else
                            State := north;
                        end if;
                        
                    when north =>
                        if path_in = 0 then
                            new_input_disp <= (x"4E", x"4F", x"52",  x"54", x"48", x"20", x"20", x"20", x"20",x"20", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            State := set_mem;
                        else
                            State := east;
                        end if;
                        
                    when east =>
                        if path_in = 1 then
                            new_input_disp <= (x"45", x"41", x"53",  x"54", x"20", x"20", x"20", x"20", x"20",x"20", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            State := set_mem;
                        else
                            State := south;
                        end if;
                        
                     when south =>
                        if path_in = 2 then
                            new_input_disp <= (x"53", x"4F", x"55",  x"54", x"48", x"20", x"20", x"20", x"20",x"20", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            State := set_mem;  
                        else 
                            State := west;
                        end if;
                           
                     when west =>
                        if path_in = 3 then
                            new_input_disp <= (x"57", x"45", x"53",  x"54", x"20", x"20", x"20", x"20", x"20",x"20", x"20", x"20", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            State := set_mem;
                        else
                            State := Disp;
                        end if;
                    
                    when Idle =>
                        if (moves_mem / 10) = 0 then digit1 := "00110000";
                        elsif (moves_mem / 10) = 1 then digit1 := "00110001";
                        elsif (moves_mem / 10) = 2 then digit1 := "00110010";
                        elsif (moves_mem / 10) = 3 then digit1 := "00110011";
                        elsif (moves_mem / 10) = 4 then digit1 := "00110100";
                        elsif (moves_mem / 10) = 5 then digit1 := "00110101";
                        elsif (moves_mem / 10) = 6 then digit1 := "00110110";
                        elsif (moves_mem / 10) = 7 then digit1 := "00110111";
                        elsif (moves_mem / 10) = 8 then digit1 := "00111000";
                        elsif (moves_mem / 10) = 9 then digit1 := "00111001";
                        end if;
                        if (moves_mem mod 10) = 0 then digit2 := "00110000";
                        elsif (moves_mem mod 10) = 1 then digit2 := "00110001";
                        elsif (moves_mem mod 10) = 2 then digit2 := "00110010";
                        elsif (moves_mem mod 10) = 3 then digit2 := "00110011";
                        elsif (moves_mem mod 10) = 4 then digit2 := "00110100";
                        elsif (moves_mem mod 10) = 5 then digit2 := "00110101";
                        elsif (moves_mem mod 10) = 6 then digit2 := "00110110";
                        elsif (moves_mem mod 10) = 7 then digit2 := "00110111";
                        elsif (moves_mem mod 10) = 8 then digit2 := "00111000";
                        elsif (moves_mem mod 10) = 9 then digit2 := "00111001";
                        end if;
                        State := dxfer;  
                        
                    when dxfer =>
                        if done1 = '1' and error = '0' then
                            State := reached;
                        elsif done1 =  '0' and error = '1' then 
                            State := unreachable;
                        end if;
                                 
                    when reached =>
                        if count = "101" then
                            new_input_disp <= (digit1, digit2,  x"20", x"53", x"54", x"45", x"50", x"53",x"20", x"54", x"41", x"4B", x"45", x"4E", x"20", x"20");
                            new_input_ready <= '1';
                            count := "110";
                            State := Done;
                        else
                            new_input_disp <= (x"47", x"4F", x"41",  x"4C", x"20", x"52", x"45", x"41", x"43",x"48", x"45", x"44", x"20", x"20", x"20", x"20");
                            new_input_ready <= '1';
                            led_ctrl(0) <= '1';
                            State := stop;
                        end if;
                        
                    when unreachable => 
                        if count = "101" then
                            new_input_disp <= (digit1, digit2,  x"20", x"53", x"54", x"45", x"50", x"53",x"20", x"54", x"41", x"4B", x"45", x"4E", x"20", x"20");
                            new_input_ready <= '1';
                            count := "110";
                            State := Done;
                        else
                            new_input_disp <= (x"47", x"4F", x"41",  x"4C", x"20", x"55", x"4E", x"52", x"45",x"41", x"43", x"48", x"41", x"42", x"4C", x"45");
                            new_input_ready <= '1';
                            led_ctrl(1) <= '1';
                            State := stop;
                        end if;
                        
                    when stop => 
                        if new_input_done = '1' then
                            new_input_ready <= '0';
                        end if;
                end case;
            end if;
        end if;
   end process;
   
   -- LED tester
   process(clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then 
            count <= (others => '0');
         else 
            count <= count + 1;
         end if;
      end if;
   end process;      
       
         
   led0 <= led_ctrl(0) or sw0;
   led1 <= led_ctrl(1) or sw1;
   led2 <= sw2;
   led3 <= sw3;
   led4 <= sw4;
   led5 <= sw5;
   led6 <= sw6;
   led7 <= sw7;  
 
end Behavioral;
