--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:09:30 11/28/2023
-- Design Name:   
-- Module Name:   /home/student1/bsadhra/COE 758/SimpleVideoGame/testpong.vhd
-- Project Name:  SimpleVideoGame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_driver
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testpong IS
END testpong;
 
ARCHITECTURE behavior OF testpong IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_driver
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         out_clk_half : OUT  std_logic;
         h_sync : OUT  std_logic;
         v_sync : OUT  std_logic;
         Rout : OUT  std_logic_vector(7 downto 0);
         Gout : OUT  std_logic_vector(7 downto 0);
         Bout : OUT  std_logic_vector(7 downto 0);
         SW0 : IN  std_logic;
         SW1 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal SW0 : std_logic := '0';
   signal SW1 : std_logic := '0';

 	--Outputs
   signal out_clk_half : std_logic;
   signal h_sync : std_logic;
   signal v_sync : std_logic;
   signal Rout : std_logic_vector(7 downto 0);
   signal Gout : std_logic_vector(7 downto 0);
   signal Bout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_driver PORT MAP (
          clk => clk,
          rst => rst,
          out_clk_half => out_clk_half,
          h_sync => h_sync,
          v_sync => v_sync,
          Rout => Rout,
          Gout => Gout,
          Bout => Bout,
          SW0 => SW0,
          SW1 => SW1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
