-- x-axis controller
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity xaxis_controller is
	port (
		clock_50, loadx, initx : in std_logic;
		xdone : out std_logic;
		x_address : out std_logic_vector(7 downto 0) -- x axis value, need 8 bits.
	);
end entity;

architecture behaviorial of xaxis_controller is
-- define a few constants for x start and end locations
constant x_start : std_logic_vector(7 downto 0) := "00000000"; -- start x-location, 0
constant x_end : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(159, 8)); -- end x-location, 159

signal x_value : std_logic_vector(7 downto 0) := "00000000" ;

begin

	process(clock_50)
	variable xp : unsigned(7 downto 0);
	begin
	
	if rising_edge(clock_50) then
		
		if (loadx = '1') then
			
			xp := unsigned(x_value);
			
			if (initx = '1') then
				xp := unsigned(x_start);
			else
				xp := xp + 1;
			end if;
		end if;
		
		x_value <= std_logic_vector(xp);
		x_address <= std_logic_vector(xp);
		
		xdone <= '0';
		if (xp = unsigned(x_end)) then
			xdone <= '1';
			x_value <= x_start;
		end if;
		
	end if;
	
	end process;

end architecture;


