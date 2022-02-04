----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.01.2022 11:12:02
-- Design Name: 
-- Module Name: machineA - Behavioral
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

entity machineA is
  Port (
        clk : in std_logic;
        a : out std_logic
   );
end machineA;

architecture Behavioral of machineA is
type state_t is (S0, S1, S2);
signal state_reg : state_t;
begin

process (clk)
begin
if clk'event and clk='0' then
    case state_reg is
        when S0 => 
        when S1 => 
        when S2 => 
        when others =>
    end case;
end if;
end process;


end Behavioral;
