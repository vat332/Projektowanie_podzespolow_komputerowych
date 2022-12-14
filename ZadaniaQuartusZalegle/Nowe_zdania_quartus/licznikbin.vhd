library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; --biblioteka z dod. operacjami

entity licznikbin is
	generic(N: integer := 8); --sta³a, okresla ilosc bitow
	port(clk: in std_logic;
		 q: out std_logic_vector(N-1 downto 0));
end licznikbin;

architecture a1 of licznikbin is
	signal x : std_logic_vector(N -1 downto 0); --sygnal wewn. architektury
begin

	process(clk) --poczatek procesu z lista wrazliwosci, jesli potrzebne dodatkowe sygnaly to 
	--podajemy w nawiasie np: process(clk,rst) 
	variable y:std_logic_vector(N-1 downto 0):=(others => '0');--zmienna wewnatrz procesowa
	begin
	
	--if(rising_edge(clk)) then
	if(clk'event and clk ='1') then --wykrycie zbocza narastajacego
		x<=x+1; --wykorzystanie sygnalu wewn. architektury
		y:=y-1; --wykorzystanie zmiennej wewnatrz procesowej
	end if; --koniec warunku
	
	q<=y; --przypisanie zmiennej do sygnaly wyjsciowego
	end process; --koniec procesu
	
--q<=x; --przypisanie sygnalu wewn. architektury
	
end a1;