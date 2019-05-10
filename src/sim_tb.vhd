

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_tb is
--  Port ( );
end sim_tb;

architecture Behavioral of sim_tb is
    component top       
            port (  
            clk          : in  std_logic := '0';
            red         : out STD_LOGIC_VECTOR (7 downto 0);
            green       : out STD_LOGIC_VECTOR (7 downto 0);
            blue        : out STD_LOGIC_VECTOR (7 downto 0);
            row         : out STD_LOGIC_VECTOR (7 downto 0)  
           );
    end component;
    signal clk : std_logic := '0';

begin

    uut: top PORT MAP (clk => clk); 
    
    clk <= not clk after 5 ns/2;

end Behavioral;
