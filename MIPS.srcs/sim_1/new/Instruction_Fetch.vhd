library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity Instruction_Fetch is
 Port (  we : in std_logic;
         rst : in std_logic;
         clk : in std_logic;
         pc_src : in std_logic;
         jump: in std_logic;
         branch_address : in std_logic_vector(15 downto 0);
         jump_address : in std_logic_vector(15 downto 0);
         
         instruction : out std_logic_vector(15 downto 0);
         pc_out : out std_logic_vector(15 downto 0)
  );
end Instruction_Fetch;

architecture Behavioral of Instruction_Fetch is
type rom_memory is array(0 to 255) of std_logic_vector(15 downto 0);

signal rom : rom_memory := (


        B"001_000_001_0000000",  --X"2080"	--addi $1,$0,0
		B"001_000_010_0000001",	 --X"2101"	--addi $2,$0,1	
		B"001_000_011_0000000",	 --X"2180"	--addi $3,$0,0	
		B"001_000_100_0000001",	 --X"2201"	--addi $4,$0,1
		B"001_000_101_0000011",	 --X"2283"
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000" ,--NOP
		B"000_000_000_0000000" ,--NOP
		B"000_000_000_0000000" ,--NOP
		B"011_011_001_0000000", --X"6C80"   --sw $1,0($3)
		B"011_100_010_0000000", --X"7100"   --sw $2,0($4)
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"010_011_001_0000000", --X"4C80"   --lw $1,0($3)
		B"010_100_010_0000000", --X"5100"   --lw $2,0($4)
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_001_010_101_0_000", --X"0550" --add $5,$1,$2
		B"000_000_010_001_0_000", --X"0110" --add $1,$0,$2
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_101_010_0_000", --X"02A0" --add $2,$0,$5
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"000_000_000_0000000", --NOP
		B"111_0000000010111", --X"E017"       --j 24
others => x"2222"
);


signal pc : std_logic_vector(15 downto 0):=x"0000";
signal adder_pc: std_logic_vector(15 downto 0):=x"0000";
signal branch_mux_pc: std_logic_vector(15 downto 0):=x"0000";   
signal jump_mux_pc: std_logic_vector(15 downto 0):=x"0000"; 
signal jump_add : std_logic_vector(15 downto 0);
signal instr: std_logic_vector(15 downto 0);
begin

instr <= rom(conv_integer(pc));
instruction<=instr;
pc_out<=adder_pc;
--pc advance

adder_pc<=pc+'1';


jump_calc: process(instr)
        begin 
        jump_add<= "000" & instr(12 downto 0);
      end process;

pc_advance: process(clk,rst,we)
begin
    if rst='1' then
        pc<=x"0000";
    else
       if rising_edge(clk) then 
            if we='1' then 
                pc<=jump_mux_pc;
            end if;
       end if;
    end if;
end process;

--branch mux
branch_mux:process(adder_pc, branch_address,pc_src)
begin
    case pc_src is
        when '0' => branch_mux_pc <= adder_pc;
        when '1' => branch_mux_pc <= branch_address; 
        when others =>  branch_mux_pc<= x"0000";
    end case;
 end process;  

--jmp mux
jmp_mux:process(branch_mux_pc, jump_add,jump)
begin
    case jump is
        when '0' => jump_mux_pc <= branch_mux_pc;
        when '1' => jump_mux_pc <= jump_add;  
        when others =>  jump_mux_pc<= x"0000";
    end case;
 end process;


end Behavioral;
