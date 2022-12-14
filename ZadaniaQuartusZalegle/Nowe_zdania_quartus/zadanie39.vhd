entity zadanie39 is
	port(
		d,c,r : in bit;
			q : out bit);
end zadanie39;

architecture beh of zadanie39 is
begin
	process(c,r)
		begin
			if r ='1' then q <= '0';
				elsif (c'event and c = '1') then q <= d;
			end if;
	end process;
end beh;
	