----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:17 09/04/2020 
-- Design Name: 
-- Module Name:    half_adder_structural_source - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder_structural_source is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half_adder_structural_source;

architecture structural of half_adder_structural_source is
component and_ha is
  Port( a: in std_logic;
        b: in std_logic;
        c: out std_logic);
end component;
component xor_ha is
Port (a : IN std_logic;
      b : IN std_logic;
		c: OUT std_logic);		  
end component;

signal s1: std_logic;

begin
lab1: xor_ha port map(a=>a,b=>b,c=>sum);
lab2: and_ha port map(a=>a,b=>b,c=>carry);
end structural;

