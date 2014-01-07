----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:42:32 01/06/2014 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( buttons : in  STD_LOGIC_VECTOR (48 downto 1);
           he10 : out STD_LOGIC_VECTOR (8 downto 1));
end mux;

architecture Behavioral of mux is
begin

he10(1) <= buttons(1) or buttons(3) or buttons(5) 
		or buttons(7) or buttons(9) or buttons(11) 
		or buttons(13) or buttons(15) or buttons(17) 
		or buttons(19) or buttons(21) or buttons(23) 
		or buttons(25) or buttons(27) or buttons(29) 
		or buttons(31) or buttons(33) or buttons(35) 
		or buttons(37) or buttons(39) or buttons(41) 
		or buttons(43) or buttons(45) or buttons(47);
		
he10(2) <= buttons(2) or buttons(3) or buttons(6) 
		or buttons(7) or buttons(10) or buttons(11) 
		or buttons(14) or buttons(15) or buttons(18) 
		or buttons(19) or buttons(22) or buttons(23) 
		or buttons(26) or buttons(27) or buttons(30) 
		or buttons(31) or buttons(34) or buttons(35) 
		or buttons(38) or buttons(39) or buttons(42) 
		or buttons(43) or buttons(46) or buttons(47);

he10(3) <= buttons(4) or buttons(5) or buttons(6) or buttons(7) 
		or buttons(12) or buttons(13) or buttons(14) or buttons(15) 
		or buttons(20) or buttons(21) or buttons(22) or buttons(23) 
		or buttons(28) or buttons(29) or buttons(30) or buttons(31) 
		or buttons(36) or buttons(37) or buttons(38) or buttons(39) 
		or buttons(44) or buttons(45) or buttons(46) or buttons(47);

he10(4) <= buttons(8) or buttons(9) or buttons(10) or buttons(11) 
		or buttons(12) or buttons(13) or buttons(14) or buttons(15) 
		or buttons(24) or buttons(25) or buttons(26) or buttons(27) 
		or buttons(28) or buttons(29) or buttons(30) or buttons(31) 
		or buttons(40) or buttons(41) or buttons(42) or buttons(43) 
		or buttons(44) or buttons(45) or buttons(46) or buttons(47);

he10(5) <= buttons(16) or buttons(17) or buttons(18) or buttons(19) 
		or buttons(20) or buttons(21) or buttons(22) or buttons(23) 
		or buttons(24) or buttons(25) or buttons(26) or buttons(27) 
		or buttons(28) or buttons(29) or buttons(30) or buttons(31) 
		or buttons(48);

he10(6) <= buttons(32) or buttons(33) or buttons(34) or buttons(35) 
		or buttons(36) or buttons(37) or buttons(38) or buttons(39) 
		or buttons(40) or buttons(41) or buttons(42) or buttons(43) 
		or buttons(44) or buttons(45) or buttons(46) or buttons(47) 
		or buttons(48);

he10(7) <='0';
he10(8) <='0';


end Behavioral;

