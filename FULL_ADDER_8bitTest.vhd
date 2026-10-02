--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:29 10/01/2026
-- Design Name:   
-- Module Name:   /home/ise/FULL_ADDER_8bit/FULL_ADDER_8BIT_TEST.vhd
-- Project Name:  FULL_ADDER_8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FULL_ADDER_8bit
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
 
ENTITY FULL_ADDER_8BIT_TEST IS
END FULL_ADDER_8BIT_TEST;
 
ARCHITECTURE behavior OF FULL_ADDER_8BIT_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULL_ADDER_8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULL_ADDER_8bit PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      A <= "00000001"; B <= "00000001"; Cin <= '0'; wait for 100 ns;
		A <= "00000101"; B <= "00000011"; Cin <= '0'; wait for 100 ns;
		A <= "00001111"; B <= "00000001"; Cin <= '0'; wait for 100 ns;
		A <= "00110011"; B <= "00001100"; Cin <= '0'; wait for 100 ns;
		A <= "01010101"; B <= "10101010"; Cin <= '0'; wait for 100 ns;
		A <= "11111111"; B <= "00000001"; Cin <= '0'; wait for 100 ns;
		A <= "11111111"; B <= "11111111"; Cin <= '0'; wait for 100 ns;
		A <= "10101010"; B <= "01010101"; Cin <= '1'; wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
