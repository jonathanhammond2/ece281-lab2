----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 04:33:30 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is

end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

component sevenseg_decoder is
     port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal sw : std_logic_vector(3 downto 0);
signal seg : std_logic_vector(6 downto 0);

begin

my_sevenseg_decoder : sevenseg_decoder
	port map (
	   i_Hex => sw,
	   o_seg_n => seg
	);
	
process
begin 
        sw <= x"0"; wait for 10 ns;
            assert seg = "1000000" report "error on x0" severity failure;
        sw <= x"1"; wait for 10 ns;
            assert seg = "1111001" report "error on x1" severity failure;
        sw <= x"2"; wait for 10 ns;
            assert seg = "0100100" report "error on x2" severity failure;
        sw <= x"3"; wait for 10 ns;
            assert seg = "0110000" report "error on x3" severity failure;
        sw <= x"4"; wait for 10 ns;
            assert seg = "0011001" report "error on x4" severity failure;
        sw <= x"5"; wait for 10 ns;
            assert seg = "0010010" report "error on x5" severity failure;
        sw <= x"6"; wait for 10 ns;
            assert seg = "0000010" report "error on x6" severity failure;
        sw <= x"7"; wait for 10 ns;
            assert seg = "1111000" report "error on x7" severity failure;
        sw <= x"8"; wait for 10 ns;
            assert seg = "0000000" report "error on x8" severity failure;
        sw <= x"9"; wait for 10 ns;
            assert seg = "0011000" report "error on x9" severity failure;
        sw <= x"A"; wait for 10 ns;
            assert seg = "0001000" report "error on xA" severity failure;
        sw <= x"B"; wait for 10 ns;
            assert seg = "0000011" report "error on xB" severity failure;
        sw <= x"C"; wait for 10 ns;
            assert seg = "0100111" report "error on xC" severity failure;
        sw <= x"D"; wait for 10 ns;
            assert seg = "0100001" report "error on xD" severity failure;
        sw <= x"E"; wait for 10 ns;
            assert seg = "0000110" report "error on xE" severity failure;
        sw <= x"F"; wait for 10 ns;
            assert seg = "0001110" report "error on xF" severity failure;
                        



      
      



end test_bench;



