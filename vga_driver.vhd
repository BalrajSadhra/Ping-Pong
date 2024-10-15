library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_driver is
	Port (
    	clk      	: in  STD_LOGIC;
    	rst      	: in  STD_LOGIC;
    	out_clk_half : out STD_LOGIC;
    	h_sync   	: out STD_LOGIC;
    	v_sync   	: out STD_LOGIC;
    	Rout     	: out STD_LOGIC_VECTOR(7 downto 0);
    	Gout     	: out STD_LOGIC_VECTOR(7 downto 0);
    	Bout     	: out STD_LOGIC_VECTOR(7 downto 0);
    	SW0      	: in  STD_LOGIC; -- paddle left
    	SW1      	: in  STD_LOGIC  -- paddle right
	);
end vga_driver;

architecture Behavioral of vga_driver is
	signal clk_half : std_logic := '0';
	constant HD : integer := 639;
	constant HFP : integer := 16;
	constant HSP : integer := 96;
	constant HBP : integer := 48;
    
	constant VD : integer := 479;
	constant VFP : integer := 10;
	constant VSP : integer := 2;
	constant VBP : integer := 33;
    
	signal h_pos : integer := 0;
	signal v_pos : integer := 0;
    
     signal increment : integer := 0;
    
	signal video_on : std_logic := '0';
    
     -- Paddle Signals
	--SIGNAL paddle_h1  : INTEGER RANGE 0 TO 640 := 40;
	SIGNAL paddle_v1  : INTEGER RANGE 0 TO 480 := 200;
	--SIGNAL paddle_h2  : INTEGER RANGE 0 TO 640 := 600;
	SIGNAL paddle_v2  : INTEGER RANGE 0 TO 480 := 200;

	-- Ball signals
	SIGNAL ball_pos_h1 : INTEGER RANGE 0 TO 640 := 305;
	SIGNAL ball_pos_v1 : INTEGER RANGE 0 TO 480 := 240;
	SIGNAL ball_up 	: STD_LOGIC := '0';
	SIGNAL ball_right  : STD_LOGIC := '1';
	SIGNAL start_game  : STD_LOGIC := '1';
   SIGNAL ball_speedx : INTEGER := 2; -- 4
   SIGNAL ball_speedy : INTEGER := 2; -- 4
    
begin

clk_div: process(clk)
begin
	if(rising_edge(clk)) then
    	clk_half <= not clk_half;
   	   out_clk_half <= clk_half;
	end if;
end process;

horizontal_pos_counter: process(clk_half, rst)
begin
	if(rst = '1') then
    	h_pos <=0;
	elsif(rising_edge(clk_half)) then
    	if(h_pos = HD+ HFP + HSP + HBP) then
        	h_pos <= 0;
    	else
        	h_pos <= h_pos + 1;
    	end if;
	end if;
end process;

vertical_pos_counter: process(clk_half, rst)
begin
	if(rst = '1') then
    	v_pos <=0;
	elsif(rising_edge(clk_half)) then
    	if(h_pos = HD+ HFP + HSP + HBP) then
        	if(v_pos = VD + VFP + VSP + VBP) then
            	v_pos <= 0;
        	else
            	v_pos <= v_pos + 1;
        	end if;
    	end if;
	end if;
end process;

horizontal_sync: process(clk_half, rst, h_pos)
begin
	if(rst = '1') then
    	h_sync <= '0';
	elsif(rising_edge(clk_half)) then
    	if((h_pos <= (HD+HFP)) OR (h_pos > (HD + HFP + HSP))) then
        	h_sync <= '1';
    	else
        	h_sync <= '0';
    	end if;
	end if;
end process;

vertical_sync: process(clk_half, rst, v_pos)
begin
	if(rst = '1') then
    	v_sync <= '0';
	elsif(rising_edge(clk_half)) then
    	if((v_pos <= (VD+VFP)) or (v_pos > (VD + VFP + VSP))) then
        	v_sync <= '1';
    	else
        	v_sync <= '0';
    	end if;
	end if;
end process;

video_enabled: process(clk_half, rst, h_pos, v_pos)
begin
	if(rst = '1') then
    	video_on <= '0';
	elsif(rising_edge(clk_half)) then
    	if(h_pos <= HD and v_pos <= VD) then
        	video_on <= '1';
    	else
        	video_on <= '0';
    	end if;
	end if;
end process;

draw: process(clk_half, rst, h_pos, v_pos, video_on)
begin
	if(rst = '1') then
    	Rout <= "00000000";
    	Gout <= "00000000";
    	Bout <= "00000000";
	elsif(rising_edge(clk_half)) then
    
   	   increment <= increment + 1;
   	   
   	   if(increment = 480000) then -- 480000
   	   
   			 if(SW0 = '1' and paddle_v1 >= 21) then -- Paddle 1 is below top border
   				 paddle_v1 <= (paddle_v1 - 2);
   			 
   			 elsif(SW0 = '0' and paddle_v1 <= 399) then -- Paddle 1 is above bottom border (460-paddle height(60))
   				 paddle_v1 <= (paddle_v1 + 2);
   			 
   			 end if;
   			 
   			 if(SW1 = '1' and paddle_v2 >= 21) then -- Paddle 2 is below top border
   				 paddle_v2 <= (paddle_v2 - 2);
   			 
   			 elsif(SW1 = '0' and paddle_v2 <= 399) then -- Paddle 2 is above bottom border
   				 paddle_v2 <= (paddle_v2 + 2);
   			 
   			 end if;
   			 
   			 if((ball_pos_h1 < 10) or ((ball_pos_h1+5) > 620)) then -- To reset the ball -- 10 620
   				 ball_pos_h1 <= 305;
   				 ball_pos_v1 <= 240;
   			 
				 -- If ball is between top and bottom of screen
   			 elsif(ball_pos_v1>20 and (ball_pos_v1+5) <= 465) then -- 460
   				 
					 -- If right side of ball hits either top right or bottom right border, reverse direction					 
   				 if(ball_pos_h1+5 > 610 and (ball_pos_v1 <= 200 or ball_pos_v1 > 290)) then
   					 ball_speedx <= -2;
   				 
					 -- If left side of ball hits either top left or bottom left border, reverse direction
					 elsif ((ball_pos_h1 < 20) and (ball_pos_v1 <= 200 or ball_pos_v1 > 290)) then
   					 ball_speedx <= 2;
   				 end if;

					 -- ball left side hits paddle and ball top side is lower than paddle bottom side and ball bottom side is below paddle top side
   				 -- Forward collision for paddle 1
					 if(ball_pos_h1 < 50 and ball_pos_v1 < paddle_v1 + 60 and ball_pos_v1 + 5 > paddle_v1) then 
   					 ball_speedx <= 2;
   				 end if;
					 
					 -- Top of paddle collision for paddle 1
					 --if (ball_pos_v1 >= paddle_v1 and ball_pos_h1 >= 40 and ball_pos_h1 <= 50) then
						--ball_speedx <= -2;
					 --end if;
   				 
					 -- Backwards collision for paddle 1
   				 if(ball_pos_h1 <= 40 and ball_pos_v1 < paddle_v1 + 60 and ball_pos_v1 + 5 > paddle_v1) then 
   					 ball_speedx <= -1; -- -2
   				 end if;
   				 
   				 -- forward collision for paddle 2
   				 if(ball_pos_h1+5 > 580 and ball_pos_v1 < paddle_v2 + 60 and ball_pos_v1 + 5 > paddle_v2) then 
   					 ball_speedx <= -2;
   				 end if;
   				 
					 -- backwards collision for paddle 2
   				 if(ball_pos_h1+5 > 590 and ball_pos_v1 < paddle_v2 + 60 and ball_pos_v1 + 5 > paddle_v2) then 
   					 ball_speedx <= 1; -- 2
   				 end if;
   				 
   				 
   				 if(ball_pos_v1+5 > 455) then -- Bottom border y position starts at 460
   					 ball_speedy <= -2;
   				 elsif(ball_pos_v1 < 25 and ball_pos_h1 > 20 and ball_pos_h1+5 < 610) then -- Top border y position ends at 20
						 ball_speedy <= 2;
   				 end if;
   									 
   				 ball_pos_h1 <= ball_pos_h1 + ball_speedx;
   				 ball_pos_v1 <= ball_pos_v1 + ball_speedy;
   			 
   			 end if;

   	   increment <= 0;
   	   end if;
    
    
    	if(video_on = '1') then
        	if((h_pos >= 10 and h_pos <= 20)) AND (v_pos >= 10 and v_pos <= 200)then --top left border
            	Rout <= "11111111";
            	Gout <= "11111111";
            	Bout <= "11111111";
   			 elsif((h_pos >= 20 and h_pos <= 610) AND (v_pos>=10 and v_pos <= 20)) then --top border -- h = 20, 610 v = 200, 300
            	Rout <= "11111111";
   				  Gout <= "11111111";
            	Bout <= "11111111";
   			 elsif((h_pos >= 610 and h_pos <= 620) AND (v_pos>=10 and v_pos <= 200)) then --top right border
            	Rout <= "11111111";
   				  Gout <= "11111111";
            	Bout <= "11111111";
   			 elsif((h_pos >= 10 and h_pos <= 20) AND (v_pos>=300 and v_pos <= 470)) then --bottom left border
            	Rout <= "11111111";
   				  Gout <= "11111111";
            	Bout <= "11111111";
   			 elsif((h_pos >= 20 and h_pos <= 610) AND (v_pos>=460 and v_pos <= 470)) then --bottom border
            	Rout <= "11111111";
   				  Gout <= "11111111";
            	Bout <= "11111111";
   			 elsif((h_pos >= 610 and h_pos <= 620) AND (v_pos>=300 and v_pos <= 470)) then --bottom right border
            	Rout <= "11111111";
   				  Gout <= "11111111";
            	Bout <= "11111111";
       	 
				 -- If h_pos is between ball left and right side AND v_pos is between ball top and bottom side
   			 elsif ((h_pos >= ball_pos_h1 AND h_pos <= ball_pos_h1 + 5) AND (v_pos >= ball_pos_v1 AND v_pos <= ball_pos_v1 + 5)) THEN
   				  -- If ball left side is past left border OR ball right side is past right border
					  if((ball_pos_h1 < 20 or ball_pos_h1 + 5 > 610) and (ball_pos_v1 > 200 and ball_pos_v1+5 < 300)) then	
   					  Rout <= "11111111";
   					  Gout <= "00000000";
   					  Bout <= "00000000";
   				  else
   					  Rout <= "11111111";
   					  Gout <= "11111111";
   					  Bout <= "00000000";
   				  end if;

   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 25 and v_pos < 75)) then -- Middle Jagged Lines
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";
   			 
   			 
   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 100 and v_pos < 150)) then
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";
   				 
   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 175 and v_pos < 225)) then
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";
   				 
   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 250 and v_pos < 300)) then
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";

   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 325 and v_pos < 375)) then
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";
   			 
   			 ELSIF ((h_pos > 315 and h_pos < 325) and (v_pos > 400 and v_pos < 445)) then
            	Rout <= "00000000";
            	Gout <= "00000000";
   				  Bout <= "00000000";
   			 
   				 
        	ELSIF ((h_pos >= 40 AND h_pos <= 50) AND (v_pos >= paddle_v1 AND v_pos <= paddle_v1 + 60)) THEN
               -- Paddle 1 color
            	Rout <= "00000000";
            	Gout <= "00000000";
   				Bout <= "11111111";
        	ELSIF ((h_pos >= 580 AND h_pos <= 590) AND (v_pos >= paddle_v2 AND v_pos <= paddle_v2 + 60)) THEN
               -- Paddle 2 color
            	Rout <= "10100000";
            	Gout <= "00100000";
            	Bout <= "11110000";
   				 
   			 else
            	Rout <= "00000000";
            	Gout <= "11111111";
            	Bout <= "00000000";
        	end if;
   			 
    	else
        	Rout <= "00000000";
        	Gout <= "00000000";
        	Bout <= "00000000";
    	end if;
	end if;
end process;

end Behavioral;
