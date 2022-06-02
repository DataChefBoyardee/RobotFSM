----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2022 02:20:00 PM
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_TEXTIO.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ZZ is
generic (   
    x : integer := 5;
    y : integer := 5
);

  Port ( 
    SW : in std_logic_vector (7 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    
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
            BTNR     : in std_logic 
            
    );
end ZZ;

architecture Behavioral of ZZ is
    signal counter : std_logic_vector(1 downto 0);
    signal init, start_x, start_y, destination_x, destination_y: std_logic_vector(7 downto 0);
    signal we, start, done, error : std_logic;
    signal din1, dout: std_logic_vector(2 downto 0);
    signal addr_x: std_logic_vector(x-1 downto 0);
    signal addr_y: std_logic_vector(y-1 downto 0);
    signal dout_path: std_logic_vector(1 downto 0);
    signal moves_mem: integer;
 
    signal din : std_logic_vector(7 downto 0);
    signal moves : integer;
    signal ready, valid, refresh : std_logic;
    signal dout_oled: std_logic_vector (1 downto 0);
    
    type state_t is (Idle, dxfer, disp, done_state, set_mem, read_mem, chk_mem);
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
   
   -- OLED controller
   oled : entity work.oled_ctrl(behavioral) 
       port map (  clk => clk, 
               reset => reset, 
               oled_sdin => oled_sdin,
               oled_sclk => oled_sclk,  
               oled_dc => oled_dc,
               oled_res => oled_res,
               oled_vbat => oled_vbat,
               oled_vdd => oled_vdd,
               start => start,
               ready=> ready,
               din => din, 
               valid => valid,
               refresh => refresh );
               
     uut: entity work.memory(Behavioral)
        port map (
            we => we,
            reset => reset,
            clk => clk, 
            dout => dout,
            din => din1,
            addr_x => addr_x,
            addr_y => addr_y,
            dout_path => dout_path,
            done => done,
            dout_oled => dout_oled,
            moves_mem => moves_mem,
            moves => moves
        );
        
    uuut: entity work.robotFSM(Behavioral)
        port map (
            we => we,
            reset => reset,
            clk => clk, 
            dout => dout,
            dout_path => dout_path,
            din => din1,
            addr_x => addr_x,
            addr_y => addr_y,
            start => start,
            done => done,
            error => error
        );
    process (clk)
        variable screen_row : integer range 0 to 3;
        variable screen_col : integer range 0 to 15;
        variable cur_row : integer range 0 to 4;
            begin
                if (rising_edge(clk)) then
                    if reset = '1' then
                        State <= Idle;
                        start <= '0';
                        refresh <= '0';
                        counter <= "00";
                        valid <= '0';
                        oled_screen <= ( 
                                        (x"40", x"41", x"42",  x"43", x"44", x"45", x"46",x"47", x"48", x"49", x"4A", x"4B", x"4C", x"4D", x"4E", x"4F"),
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
                  State <= Done_State;
               when Done_State => 
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
              when read_mem =>
              when set_mem =>
              when chk_mem =>
            end case;              
         end if;
      end if;
   end process;

    new_input_done <= '1' when State = Done_State else '0';
    
    --User SW and PB sampler.
    process (clk)
        variable State : state_t;
        variable input_change : std_logic;
        variable moves_num : integer;
        variable i : integer;
        variable dig_1: std_logic_vector(7 downto 0); 
        variable dig_2: std_logic_vector(7 downto 0); 
        variable dig_3: std_logic_vector(7 downto 0); 
    begin
        if rising_edge(clk) then
            if reset = '1' then
                new_input_disp <= (others => x"20");
                new_input_ready <= '0';
                moves_num := moves;
                i := 0;
                State := Idle;
            else
                case State is
                    when Idle =>
                        input_change := '1';
                        if btnu_db = '1' and counter = "00" then
                            start_x <= SW;
                            counter <= "01";
                        elsif btnu_db = '1' and counter = "01" then
                            start_y <= SW;
                            counter <= "10";
                        elsif btnu_db = '1' and counter = "10" then
                            destination_x <= SW;
                            counter <= "11";
                        elsif btnu_db = '1' and counter = "11" then    
                            destination_y <= SW;
                            counter <= "00";
                            State := read_mem;
                        end if;
                        
                    when read_mem =>
                        moves_mem <= i;
                        State := set_mem;
                    when set_mem =>
                        State := chk_mem; 
                    when chk_mem =>
                        if dout_oled = "00" then
                            new_input_disp <= (x"20", x"20", x"20", x"20", x"20", x"4E", x"4F", x"52", x"54", x"48", x"20", x"20", x"20", x"20", x"20", x"20"); --North
                        elsif dout_oled = "01" then
                            new_input_disp <= (x"20", x"20", x"20", x"20", x"20", x"45", x"41", x"53", x"54", x"20", x"20", x"20", x"20", x"20", x"20", x"20"); -- East 
                        elsif dout_oled = "10" then
                            new_input_disp <= (x"20", x"20", x"20", x"20", x"20", x"53", x"4F", x"55", x"54", x"48", x"20", x"20", x"20", x"20", x"20", x"20"); --South
                        elsif dout_oled = "11" then
                            new_input_disp <= (x"20", x"20", x"20", x"20", x"20", x"57", x"45", x"53", x"54", x"20", x"20", x"20", x"20", x"20", x"20", x"20");--West
                        end if;
                        if btnd_db = '1' then
                            i := i + 1;
                            State := read_mem;
                            if i = moves_mem then
                                State := Done_State;
                            end if;
                        end if;
                    when Done_State =>
                        dig_1 := (CONV_STD_LOGIC_VECTOR((i/16), 8));
                        dig_2 := (CONV_STD_LOGIC_VECTOR(((i mod 16) * 16), 8));
                        new_input_disp <= (x"20", x"20", x"20", x"20", x"20", dig_1, dig_2, x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20", x"20");
                    when dxfer =>
                    when disp =>
                end case;
            end if;
        end if;
    end process;

end Behavioral;
