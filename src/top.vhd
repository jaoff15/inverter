library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity top is
    port ( clk          : in  std_logic := '0'
--           row          : out std_logic_vector(7 downto 0);
--           red          : out std_logic_vector(7 downto 0); 
--           green        : out std_logic_vector(7 downto 0);
--           blue         : out std_logic_vector(7 downto 0)        
        );
end top;

architecture Behavioral of top is

        component mem_interface is
        port(
            clk: in std_logic
        );
        end component;

--    component led_matrix is
--        port( 
--            clk     : in  std_logic;
--            row     : out std_logic_vector(7 downto 0);
--            red     : out std_logic_vector(7 downto 0);
--            green   : out std_logic_vector(7 downto 0);
--            blue    : out std_logic_vector(7 downto 0)
--            );
--    end component;

begin

--led_matrix0: led_matrix
--port map(
--    clk         => clk,
--    row         => row,
--    red         => red,
--    green       => green,
--    blue        => blue
--    );

mem_interface0: mem_interface
port map(
    clk => clk
);


end Behavioral;