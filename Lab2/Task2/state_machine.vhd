library ieee;
use ieee.std_logic_1164.all;

entity state_machine is
	port (
		clock, resetb, xdone, ydone : in std_logic;
		initx, inity, loady, loadx, plot : out std_logic
	);
end state_machine;

architecture behaviour of state_machine is
	type state_type is (idle, run_x_line, increment_y, done);
	signal state : state_type;
begin
	process(clock,resetb)
	begin
		if resetb = '0' then
			state <= idle;
		elsif rising_edge(clock) then
			case state is
			when idle =>
				initx <= '1';
				inity <= '1';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				state <= run_x_line;
			when run_x_line =>
				initx <= '0';
				inity <= '0';
				loady <= '0';
				loadx <= '1';
				plot  <= '1';
				state <= run_x_line;
				if ydone = '1' then
					state <= done;	
				elsif xdone = '1' then
					state <= increment_y;
				end if;
			when increment_y =>
				initx <= '1';
				inity <= '0';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				state <= run_x_line;
			when done =>
				initx <= '1';
				inity <= '1';
				loady <= '1';
				loadx <= '1';
				plot  <= '0';
				state <= done;
			end case;
		end if;
	end process;
end behaviour;