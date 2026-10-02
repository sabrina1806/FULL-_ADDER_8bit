----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:42:09 10/01/2026 
-- Design Name: 
-- Module Name:    FULL_ADDER_8bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FULL_ADDER_8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end FULL_ADDER_8bit;

architecture Behavioral of FULL_ADDER_8bit is
 signal temp : STD_LOGIC_VECTOR (8 downto 0);

begin
 temp <= ('0' & A) + ('0' & B) + Cin;
 Sum <= temp(7 downto 0);
 Cout <= temp(8);


end Behavioral;

