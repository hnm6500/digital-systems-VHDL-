--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:41:23 02/26/2017
-- Design Name:   
-- Module Name:   C:/Users/hnm6500/Downloads/lab2_dsd2_hnm6500_NEW-20170225T181425Z-001/lab2_dsd2_hnm6500_NEW/Lab2/AND_GATE_TB.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AND_GATE
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
 
ENTITY AND_GATE_TB IS
END AND_GATE_TB;
 
ARCHITECTURE behavior OF AND_GATE_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND_GATE
    PORT(
         in_x : IN  std_logic_vector(1 downto 0);
         out_x : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_x : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal out_x : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND_GATE PORT MAP (
          in_x => in_x,
          out_x => out_x
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 
		tb : process
		begin
		

      wait;
   end process;

END;
