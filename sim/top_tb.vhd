library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.all;

entity top_tb is
    Port ( buttons_out : out  STD_LOGIC_VECTOR (47 downto 0);
           he10_out : inout STD_LOGIC_VECTOR (7 downto 0));
end top_tb;

architecture Behavioral of top_tb is
  component top is
    Port ( buttons_in : in  STD_LOGIC_VECTOR (47 downto 0);
           he10_out : inout  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal buttons : STD_LOGIC_VECTOR (47 downto 0);
signal he10 : STD_LOGIC_VECTOR (7 downto 0);

begin
  buttons_out <= buttons;
  he10_out <= he10;
  
  process 
    variable test : std_logic_vector(7 downto 0);
  begin
    for i in 0 to 47 loop
      buttons <= (i => '0', others => '1');
      
      wait for 1 ps;
      
      test := std_logic_vector(to_unsigned(i, test'length));
      test := not test;
      
      assert he10 = test
      report "Incorrect HE10 value"
      severity error;
      
    end loop;
    
    stop(2);
  end process;
  
  DUT: top Port MAP (buttons, he10);
    
end Behavioral;
