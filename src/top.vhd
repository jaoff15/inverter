library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity top is
    port ( clk          : in  std_logic := '0';
--    sw          : in  std_logic_vector (3 downto 0);
    red         : out STD_LOGIC_VECTOR (7 downto 0);
    green       : out STD_LOGIC_VECTOR (7 downto 0);
    blue        : out STD_LOGIC_VECTOR (7 downto 0);
    row         : out STD_LOGIC_VECTOR (7 downto 0)  
        );
end top;

architecture Behavioral of top is
    -- Dual PWM generator
    component pwm_dual is
    Port (  
            clk             : in  std_logic;
            duty_cycle      : in  signed(10 downto 0);
            pwm_high        : out std_logic;
            pwm_low         : out std_logic;
            pwm_high_middle : out std_logic;
            pwm_low_middle  : out std_logic
           );
    end component;
    
    -- Single PWM generator
    component pwm_single is
        Port ( 
                clk          : in  std_logic;
                duty_cycle   : in  signed(10 downto 0);
                phase        : in  std_logic_vector (10 downto 0);
                pwm          : out std_logic
               );
    end component;
    
    -- Memory interface
    component mem_interface is
        Port ( 
                clk          : in  std_logic;
                dcA          : out signed(10 downto 0);
                dcB          : out signed(10 downto 0);
                dcC          : out signed(10 downto 0)
               );
    end component;
    
    
    -- ************ Signals ************   
    -- PWM freq
    signal pwm_freq             : std_logic;
    signal duty_cycle_signal    : signed(10 downto 0);
    
    signal signal_dcA           : signed(10 downto 0);
    signal signal_dcB           : signed(10 downto 0);
    signal signal_dcc           : signed(10 downto 0);
    
begin

-- Set row
row <= "11111110";



-- Phase 1. 
pwm_dual0:pwm_dual
port map(
           clk            => clk,
           duty_cycle     => signal_dcA, 
           pwm_high       => red(0),
           pwm_low        => red(2),
           pwm_high_middle=> red(4),
           pwm_low_middle => red(6)
);

-- Phase 2.
pwm_dual1:pwm_dual
port map(
           clk            => clk,
           duty_cycle     => signal_dcB,
           pwm_high       => green(0),
           pwm_low        => green(2),
           pwm_high_middle=> green(4),
           pwm_low_middle => green(6)
);

-- Phase 3
pwm_dual2:pwm_dual
port map(
           clk            => clk,
           duty_cycle     => signal_dcC,
           pwm_high       => blue(0),
           pwm_low        => blue(2),
           pwm_high_middle=> blue(4),
           pwm_low_middle => blue(6)
);

mem_interface0: mem_interface
port map(
    clk => clk,
    dcA  => signal_dcA,
    dcB  => signal_dcB,
    dcC  => signal_dcC
);


end Behavioral;