library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rams_no_change is
port (  clk : in std_logic;
        we : in std_logic;
        en : in std_logic;
        addr : in std_logic_vector(5 downto 0);
        di : in std_logic_vector(15 downto 0);
        do : out std_logic_vector(15 downto 0)
      );
end rams_no_change;


architecture syn of rams_no_change is
    type ram_type is array (0 to 63) of std_logic_vector (15 downto 0);
    signal RAM: ram_type;
begin
    process (clk)
    begin
        if clk'event and clk = '1' then
            if en = '1' then
                if we = '1' then
                    RAM(conv_integer(addr)) <= di;
                else
                    do <= RAM( conv_integer(addr));
                end if;
            end if;
        end if;
    end process;
end syn;
