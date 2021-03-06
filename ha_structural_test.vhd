--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:27 09/05/2020
-- Design Name:   
-- Module Name:   E:/DSD Projects/half_adder_structural/ha_structural_test.vhd
-- Project Name:  half_adder_structural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder_structural_source
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
 
ENTITY ha_structural_test IS
END ha_structural_test;
 
ARCHITECTURE behavior OF ha_structural_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder_structural_source
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder_structural_source PORT MAP (
          a => a,
          b => b,
          sum => sum,
          carry => carry
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 5 ns;	
		a<='0'; b<='0';

wait for 5 ns;	
		a<='0'; b<='1';


wait for 5 ns;	
		a<='1'; b<='0';

wait for 5 ns;	
		a<='1'; b<='1';

  --    wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
