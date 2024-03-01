----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 02:25:31 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegDecoder_tb is
end sevenSegDecoder_tb;

architecture test_bench of sevenSegDecoder_tb is

 component sevenSegDecoder is
    port (
        i_D : in STD_LOGIC_VECTOR (3 downto 0);
        o_S : out STD_LOGIC_VECTOR (6 downto 0)
        ); 
        
    end component; 
    
        signal w_sw : std_logic_vector (3 downto 0) := "0000";
        signal w_seg : std_logic_vector (7 downto 0) := x"00";
begin

 sevenSegDecoder_uut: sevenSegDecoder
       port map(
        i_D => w_sw, 
        o_S => w_seg (6 downto 0)
        );


test_process : process 
	begin
	-- Place test cases here. The first two have been written for you
	    w_sw <= "0000"; wait for 10 ns;
            assert w_seg = x"40" report "error on 0" severity failure;
            
        w_sw <= "0001"; wait for 10 ns;
            assert w_seg = x"79" report "error on 1" severity failure; 
              
        w_sw <= "0010"; wait for 10 ns;
            assert w_seg = x"24" report "error on 2" severity failure;
            
        w_sw <= "0011"; wait for 10 ns;
            assert w_seg = x"30" report "error on 3" severity failure;
            
        w_sw <= "0100"; wait for 10 ns;
            assert w_seg = x"19" report "error on 4" severity failure;
            
        w_sw <= "0101"; wait for 10 ns;
            assert w_seg = x"12" report "error on 5" severity failure; 
              
        w_sw <= "0110"; wait for 10 ns;
            assert w_seg = x"02" report "error on 6" severity failure;
            
        w_sw <= "0111"; wait for 10 ns;
            assert w_seg = x"78" report "error on 7" severity failure;
            
        w_sw <= "1000"; wait for 10 ns;
            assert w_seg = "0000000" report "error on 8" severity failure;
            
        w_sw <= "1001"; wait for 10 ns;
            assert w_seg = x"18" report "error on 9" severity failure; 
              
        w_sw <= "1010"; wait for 10 ns;
            assert w_seg = x"08" report "error on A" severity failure;
            
        w_sw <= "1011"; wait for 10 ns;
            assert w_seg = x"03" report "error on B" severity failure;
              
        w_sw <= "1100"; wait for 10 ns;
           assert w_seg = x"27" report "error on C" severity failure; 
             
       w_sw <= "1101"; wait for 10 ns;
           assert w_seg = x"21" report "error on D" severity failure;
           
       w_sw <=  "1110"; wait for 10 ns;
           assert w_seg = x"06" report "error on E" severity failure;   
                           
        w_sw <= "1111"; wait for 10 ns;
           assert w_seg = "0011110" report "error on F" severity failure;
        
        report "Completed Testing";
                     
		wait; -- wait forever
	end process;	
	-----------------------------------------------------	
	
	end test_bench;



