library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity zadanie36 is
    port (
         cout   :out std_logic_vector (7 downto 0);
         clk    :in  std_logic                    
		 );
end zadanie36;
 
architecture beh of zadanie36 is
signal count :std_logic_vector (7 downto 0);
 begin
    process (clk) begin
       if (rising_edge(clk)) then
		count <= count + 1;
       end if;
    end process;
     cout <= (count(7) & 
            (count(7) xor count(6)) & 
            (count(6) xor count(5)) & 
            (count(5) xor count(4)) & 
            (count(4) xor count(3)) & 
            (count(3) xor count(2)) & 
            (count(2) xor count(1)) & 
            (count(1) xor count(0)) ); 

end architecture;