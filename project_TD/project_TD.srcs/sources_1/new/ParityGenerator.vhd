----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.02.2022 10:35:46
-- Design Name: 
-- Module Name: ParityGenerator - Behavioral
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

entity ParityGenerator is
    generic (
            n : integer := 10
    );
    Port ( mot_in : in STD_LOGIC_VECTOR (n downto 0);
           parity_out : out STD_LOGIC;
           clk : in STD_LOGIC);
end ParityGenerator;

architecture Behavioral of ParityGenerator is
signal outs : std_logic_vector (n-1 downto 0);
begin

outs(0) <= mot_in(0) xor mot_in(1);

generator : for I in 1 to n-1 generate
    outs(I) <= outs(I-1) xor mot_in(I+1);
end generate;

parity_out <= outs(n-1);

end Behavioral;
