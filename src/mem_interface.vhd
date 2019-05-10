
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mem_interface is
    Port ( clk           : in  std_logic                     := '0';
            dcA          : out signed(10 downto 0);
            dcB          : out signed(10 downto 0);
            dcC          : out signed(10 downto 0);
            done         : out std_logic
    );
end mem_interface;

architecture Behavioral of mem_interface is
    
    component design_1_wrapper is
      port (
          BRAM_PORTB_0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )   := (others => '0');
          BRAM_PORTB_0_clk  : in STD_LOGIC                          := '0';
          BRAM_PORTB_0_din  : in STD_LOGIC_VECTOR ( 31 downto 0 )   := (others => '0');
          BRAM_PORTB_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 )  := (others => '0');
          BRAM_PORTB_0_en   : in STD_LOGIC                          := '0';
          BRAM_PORTB_0_rst  : in STD_LOGIC                          := '0';
          BRAM_PORTB_0_we   : in STD_LOGIC_VECTOR ( 3 downto 0 )    := (others => '0')
      );
    end component;
    
    
    -- Memory interface states
    type state_type is (STATE_RESET, STATE_SETUP,  STATE_LATCH, STATE_READY);
    signal state : state_type := STATE_READY;
    

    signal value_dcA : signed(10 downto 0) := (others => '0');
    signal value_dcB : signed(10 downto 0) := (others => '0');
    signal value_dcC : signed(10 downto 0) := (others => '0');

    -- Memory addressing
    signal addr        : std_logic_vector(31 downto 0) := x"00000000";

    -- Memory output
    signal data_out    : std_logic_vector(31 downto 0) := (others => '0');
    
    signal counter     : unsigned(1 downto 0);
   
begin

--  Memory state
memory_state_process: process (clk)
begin
   if rising_edge(clk) then
       -- State Reset
       if state = STATE_RESET then

            -- Reset memory address
            addr    <= (others => '0');
            counter <= "00";
                        
                        
            -- Clear done-flag
            done    <= '0';
    
            
            -- Change state
            state   <= STATE_SETUP;
       
       -- State Setup
       elsif state = STATE_SETUP then
            
            -- Update address
            addr(1 downto 0) <= std_logic_vector(counter);
            
            -- Increment memory counter
            counter <= counter + 1;
            
            
            -- Change state
            state   <= STATE_LATCH;
            

       -- State Latch
       elsif state = STATE_LATCH then

            -- Read from memory
            if counter = "01" then
                value_dcA <= signed(data_out(10 downto 0));
                --value_dcA <= "00000001000";
            elsif counter = "10" then
                value_dcB <= signed(data_out(10 downto 0));
                --value_dcB <= "00000011000";
            elsif counter = "11" then
                value_dcC <= signed(data_out(10 downto 0));
                --value_dcC <= "00000001100";
            end if;
            

           -- If max has been reached go into ready state
            if counter = "11" then    
                state   <= STATE_READY;
            else 
                
                state   <= STATE_SETUP;
            end if;            
         
       -- State Ready
       elsif state = STATE_READY then
            -- set outputs
            dcA  <= value_dcA;
            dcB  <= value_dcB;
            dcC  <= value_dcC;

            -- set done-flag
            done  <= '1';
            
            state   <= STATE_RESET;

       else
            state <= STATE_RESET;
       end if;
   end if;
end process;




-- Create instance of row component
design_1_wrapper0:design_1_wrapper
port map(
        BRAM_PORTB_0_addr   => addr,
        BRAM_PORTB_0_clk    => clk,
        BRAM_PORTB_0_dout   => data_out,
        BRAM_PORTB_0_en     => '1',
        BRAM_PORTB_0_din    => x"00000000",
        BRAM_PORTB_0_we     => "0000"
        
);

end Behavioral;
