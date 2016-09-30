-- circle datapath 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity circle_datapath is
	port (
		clock_50, reset 					: in std_logic;
		center_x, center_y			 	: in std_logic_vector(7 downto 0);
		radius 								: in std_logic_vector(7 downto 0);
		octant 								: in std_logic_vector(3 downto 0);
		x_address 							: out std_logic_vector(7 downto 0); -- x axis value, need 8 bits.
		y_address 							: out std_logic_vector(6 downto 0) -- y axis value, need 7 bits.
	);
end entity;

architecture rtl of circle_datapath is
	-- Init local vars for drawing circle.
	signal offset_x, offset_y : std_logic_vector(7 downto 0);
	signal crit : signed(7 downto 0);
	
begin

	process(clock_50, reset)
	begin
	
		if reset = '1' then
			offset_y <= "00000000";
			offset_x <= radius;
			crit <= 1 - signed(radius);
		elsif (offset_y <= offset_x) then
			
			if octant = "0001" then
				x_address <= std_logic_vector(unsigned(center_x) + unsigned(offset_x));
				y_address <= std_logic_vector(resize(unsigned(center_y) + unsigned(offset_y), y_address'length));
			
--				x_address <= std_logic_vector(unsigned(center_x) + 1);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+1, y_address'length));
			
			elsif octant = "0010" then
				x_address <= std_logic_vector(unsigned(center_x) + unsigned(offset_y));
				y_address <= std_logic_vector(resize(unsigned(center_y) + unsigned(offset_x), y_address'length));

--				x_address <= std_logic_vector(unsigned(center_x) + 1);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+1, y_address'length));
			
			elsif octant = "0011" then
				x_address <= std_logic_vector(unsigned(center_x) - unsigned(offset_x));
				y_address <= std_logic_vector(resize(unsigned(center_y) + unsigned(offset_y), y_address'length));

--				x_address <= std_logic_vector(unsigned(center_x) + 2);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+2, y_address'length));
			
			elsif octant = "0100" then
				x_address <= std_logic_vector(unsigned(center_x) - unsigned(offset_y));
				y_address <= std_logic_vector(resize(unsigned(center_y) + unsigned(offset_x), y_address'length));
			
			
--				x_address <= std_logic_vector(unsigned(center_x) + 3);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+3, y_address'length));
			
			elsif octant = "0101" then
				x_address <= std_logic_vector(unsigned(center_x) - unsigned(offset_x));
				y_address <= std_logic_vector(resize(unsigned(center_y) - unsigned(offset_y), y_address'length));
			
			
--				x_address <= std_logic_vector(unsigned(center_x) + 4);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+4, y_address'length));
			
			elsif octant = "0110" then
				x_address <= std_logic_vector(unsigned(center_x) - unsigned(offset_y));
				y_address <= std_logic_vector(resize(unsigned(center_y) - unsigned(offset_x), y_address'length));
			
--				x_address <= std_logic_vector(unsigned(center_x) + 5);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+5, y_address'length));
			
			elsif octant = "0111" then
				x_address <= std_logic_vector(unsigned(center_x) + unsigned(offset_x));
				y_address <= std_logic_vector(resize(unsigned(center_y) - unsigned(offset_y), y_address'length));


--				x_address <= std_logic_vector(unsigned(center_x) + 6);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+6, y_address'length));
			
			elsif octant = "1000" then
				x_address <= std_logic_vector(unsigned(center_x) + unsigned(offset_y));
				y_address <= std_logic_vector(resize(unsigned(center_y) - unsigned(offset_x), y_address'length));

--				x_address <= std_logic_vector(unsigned(center_x) + 7);
--				y_address <= std_logic_vector(resize(unsigned(center_y)+7, y_address'length));

			end if;
			
--			offset_y <= std_logic_vector(unsigned(offset_y) + 1);
--			
--			if (crit <= 0) then
--				crit <= resize(crit + 2 * signed(offset_y) + 1, crit'length);
----			else
----				offset_x <= std_logic_vector(unsigned(offset_x) - 1);
----				crit <= resize(crit + 2 * (signed(offset_y) - signed(offset_x)) + 1, crit'length);
--			end if;
			
		end if;
			
			
	
	end process;

end rtl;