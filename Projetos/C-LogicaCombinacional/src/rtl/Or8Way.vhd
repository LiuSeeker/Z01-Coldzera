library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
	--Declaração de portas
	port ( 
			--Saidas indo de A -> H
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			--Resultado
			q:   out STD_LOGIC);
end entity;
architecture jor of Or8Way is
begin
--Logica para Or8Way com todas as entradas
q <= a or b or c or d or e or f or g or h;
end jor;