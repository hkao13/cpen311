-- y-axis controller
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity yaxis_controller is
	port (
		clock_50, loady, inity : in std_logic;
		ydone : out std_logic;
		y_address : out std_logic_vector(6 downto 0) -- y axis value, need 8 bits.
	);
end entity;

architecture behaviorial of yaxis_controller is
-- define a few constants for y start and end locations
constant y_start : std_logic_vector(6 downto 0) := "0000000"; -- start y-location, 0
constant y_end : std_logic_vector(6 downto 0) := std_logic_vector(to_unsigned(119, 7)); -- end y-location, 119

signal y_value : std_logic_vector(6 downto 0) := "0000000" ;

begin

	process(clock_50)
	variable yp : unsigned(6 downto 0);
	begin
	
	if rising_edge(clock_50) then
		
		if (loady = '1') then
			
			yp := unsigned(y_value);
			
			if (inity = '1') then
				yp := unsigned(y_start);
			else
				yp := yp + 1;
			end if;
		end if;
		
		y_value <= std_logic_vector(yp);
		y_address <= std_logic_vector(yp);
		
		ydone <= '0';
		if (yp >= unsigned(y_end)) then
			ydone <= '1';
			y_value <= y_start;
		end if;
		
	end if;
	
	end process;

end architecture;