library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC);
end entity;

----------------------------------------------------------
architecture rtl of Mux8Way is
begin
-- Dado o tamanho da equação, preferi fazer o mux determinando as condições para a saída.
 q <= a when (sel = "000") else
      b when (sel = "001") else
      c when (sel = "010") else
      d when (sel = "011") else
      e when (sel = "100") else
      f when (sel = "101") else
      g when (sel = "110") else
      h when (sel = "111");

end rtl;
