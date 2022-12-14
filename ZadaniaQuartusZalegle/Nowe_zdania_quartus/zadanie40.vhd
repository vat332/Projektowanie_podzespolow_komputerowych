entity zadanie40 is
	port(
		t,c,r	:in bit;
			q	:out bit);
end zadanie40;

architecture beh of zadanie40 is
begin
	process (c,r)
		variable tq : bit;
	begin
		if r = '1' then tq := '0';
			elsif c'event and c = '1' and t = '1' then
			tq := not tq;
		end if;
		q <= tq;
	end process;
end beh;