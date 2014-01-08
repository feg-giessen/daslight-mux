----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:14 01/06/2014 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( buttons_in : in  STD_LOGIC_VECTOR (47 downto 0);
           he10_out : inout  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture behavioral of top is

component mux is
    Port ( buttons : in  STD_LOGIC_VECTOR (48 downto 1);
           he10 : out STD_LOGIC_VECTOR (8 downto 1));
end component;

	Signal buttons_temp : STD_LOGIC_VECTOR (48 downto 1);
	Signal he10_temp : STD_LOGIC_VECTOR (8 downto 1);
	
begin

BUTTONS_MAP:
	for i in 1 to 48 generate
		buttons_temp(i) <= not buttons_in(i-1);
	end generate;
	
HE10_MAP:
	for i in 0 to 7 generate
		he10_out(i) <= '0' when (he10_temp(i + 1) = '1') else 'Z';
	end generate;

MUX1:
	mux Port Map(buttons_temp, he10_temp);

end behavioral;