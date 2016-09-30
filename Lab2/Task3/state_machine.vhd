library ieee;
use ieee.std_logic_1164.all;

entity state_machine is
	port (
		clock, resetb, drawb, xdone, ydone : in std_logic;
		initx, inity, loady, loadx, plot, initc : out std_logic;
		colour : out std_logic_vector(2 downto 0);
		octant : out std_logic_vector(3 downto 0)
	);
end state_machine;

architecture behaviour of state_machine is
	type state_type is (idle, run_x_line, increment_y, clear_done, init_circle,
								oct1, oct2, oct3, oct4, oct5, oct6, oct7, oct8, circ_done);
	signal state : state_type;
	constant BLACK : std_logic_vector(2 downto 0) := "000";
	constant BLUE  : std_logic_vector(2 downto 0) := "001";
	
begin
	process(clock,resetb)
	begin
		if resetb = '0' then
			state <= idle;
			colour <= BLACK;
		elsif rising_edge(clock) then
			case state is
			when idle =>
				initx <= '1';
				inity <= '1';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				initc <= '0';
				state <= run_x_line;
			when run_x_line =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '1';
				plot  <= '1';
				initc <= '0';
				state <= run_x_line;
				if ydone = '1' then
					state <= clear_done;	
				elsif xdone = '1' then
					state <= increment_y;
				end if;
			when increment_y =>
				initx <= '1';
				inity <= '0';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				initc <= '0';
				state <= run_x_line;
			when clear_done =>
				initx <= '1';
				inity <= '1';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				initc <= '0';
				if drawb = '0' then
					state <= init_circle;
				else
					state <= clear_done;
				end if;
				
			when init_circle =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '0';
				colour <= BLUE;
				initc <= '1';
				state <= oct1;
				
			when oct1 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0001";
				state <= oct2;
				
			when oct2 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0010";
				state <= oct3;
				
			when oct3 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0011";
				state <= oct4;
				
			when oct4 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0100";
				state <= oct5;
				
			when oct5 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0101";
				state <= oct6;
				
			when oct6 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0110";
				state <= oct7;
				
			when oct7 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "0111";
				state <= oct8;
				
			when oct8 =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '1';
				initc <= '0';
				octant <= "1000";
				state <= circ_done;
				
			when circ_done =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '0';
				plot  <= '0';
				initc <= '0';
				octant <= "0000";
				state <= circ_done;
				
				
				
			end case;
		end if;
	end process;
end behaviour;