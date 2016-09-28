
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity task2 is
  port(CLOCK_50            : in  std_logic;
       KEY                 : in  std_logic_vector(3 downto 0);
       SW                  : in  std_logic_vector(17 downto 0);
       VGA_R, VGA_G, VGA_B : out std_logic_vector(9 downto 0);  -- The outs go to VGA controller
       VGA_HS              : out std_logic;
       VGA_VS              : out std_logic;
       VGA_BLANK           : out std_logic;
       VGA_SYNC            : out std_logic;
       VGA_CLK             : out std_logic);
end task2;

architecture rtl of task2 is


  -- Some constants that might be useful for you

  constant SCREEN_WIDTH  : positive := 160;
  constant SCREEN_HEIGHT : positive := 120;

  constant BLACK : std_logic_vector(2 downto 0) := "000";
  constant BLUE  : std_logic_vector(2 downto 0) := "001";
  constant GREEN : std_logic_vector(2 downto 0) := "010";
  constant YELLOW : std_logic_vector(2 downto 0) := "110";
  constant RED   : std_logic_vector(2 downto 0) := "100";
  constant WHITE : std_logic_vector(2 downto 0) := "111";

  --Component from the Verilog file: vga_adapter.v
  component vga_adapter
    generic(RESOLUTION : string);
    port (resetn                                       : in  std_logic;
          clock                                        : in  std_logic;
          colour                                       : in  std_logic_vector(2 downto 0);
          x                                            : in  std_logic_vector(7 downto 0);
          y                                            : in  std_logic_vector(6 downto 0);
          plot                                         : in  std_logic;
          VGA_R, VGA_G, VGA_B                          : out std_logic_vector(9 downto 0);
          VGA_HS, VGA_VS, VGA_BLANK, VGA_SYNC, VGA_CLK : out std_logic);
  end component;
  
  --Component for the x-axis pixel controller
  component xaxis_controller
    port (
		clock_50, loadx, initx 	: in std_logic;
		xdone 						: out std_logic;
		x_address 					: out std_logic_vector(7 downto 0) -- x axis value, need 8 bits.
	 );
  end component;
  
  --Component for the y-axis pixel controller
  component yaxis_controller
    port (
		clock_50, loady, inity 	: in std_logic;
		ydone 						: out std_logic;
		y_address 					: out std_logic_vector(6 downto 0) -- y axis value, need 8 bits.
	 );
  end component;

  --To VGA adapter
  signal resetn : std_logic;
  signal x      : std_logic_vector(7 downto 0);
  signal y      : std_logic_vector(6 downto 0);
  signal colour : std_logic_vector(2 downto 0);
  signal plot   : std_logic;
  
  signal x_done : std_logic;
  signal y_done : std_logic;
  signal load_x : std_logic;
  signal load_y : std_logic;
  
begin
  
  resetn <= KEY(3);
  x      <= SW(7 downto 0);
  --y      <= SW(14 downto 8);
  colour <= RED;
  --plot   <= not KEY(0);
  load_x <= '1';
  load_y <= '1';
  
  -- instantiate vga adapter
  
	vga_u0 : vga_adapter
		generic map(RESOLUTION => "160x120") 
		port map(resetn    => resetn,
					clock     => CLOCK_50,
					colour    => colour,
					x         => x,
					y         => y,
					plot      => not plot,
					VGA_R     => VGA_R,
					VGA_G     => VGA_G,
					VGA_B     => VGA_B,
					VGA_HS    => VGA_HS,
					VGA_VS    => VGA_VS,
					VGA_BLANK => VGA_BLANK,
					VGA_SYNC  => VGA_SYNC,
					VGA_CLK   => VGA_CLK);
					

  -- Your code to fill the screen goes here
  
	y_axis : yaxis_controller
		port map(inity => '0',
					clock_50 => CLOCK_50,
					loady => load_y,
					ydone => plot,
					y_address => y);
  
--	x_axis : xaxis_controller
--		port map(initx => resetn, -- reset low
--					clock_50 => CLOCK_50,
--					loadx => load_x,
--					xdone => x_done,
--					x_address => x);
  
  
end RTL;


