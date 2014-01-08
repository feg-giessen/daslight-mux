library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.all;

entity mux_tb is
    Port ( buttons_out : out  STD_LOGIC_VECTOR (48 downto 1);
           he10_out : out STD_LOGIC_VECTOR (8 downto 1));
end mux_tb;

architecture Behavioral of mux_tb is
  component mux is
    Port ( buttons : in  STD_LOGIC_VECTOR (48 downto 1);
           he10 : out STD_LOGIC_VECTOR (8 downto 1));
end component;

signal buttons : STD_LOGIC_VECTOR (48 downto 1);
signal he10 : STD_LOGIC_VECTOR (8 downto 1);

begin
  buttons_out <= buttons;
  he10_out <= he10;
  
  process begin
    for i in 1 to 48 loop
      buttons <= (i => '1', others => '0');
      
      wait for 1 ps;
      
      assert unsigned(he10) = i
      report "Incorrect HE10 value"
      severity error;
      
    end loop;
    
    stop(2);
  end process;
  
  DUT: mux Port MAP (buttons, he10);
    
end Behavioral;
