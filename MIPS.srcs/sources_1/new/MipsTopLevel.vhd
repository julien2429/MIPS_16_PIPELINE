----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 12:32:30 PM
-- Design Name: 
-- Module Name: MipsTopLevel - Behavioral
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



entity MipsTopLevel is
    Port (
        clk : in std_logic;
        we : in std_logic;
        rst : in std_logic;
        DisplayCode: in STD_LOGIC_VECTOR (2 downto 0);
        DisplayControl: in std_logic;
        
        led : out STD_LOGIC_VECTOR (15 downto 0);    
        cat : out STD_LOGIC_VECTOR (6 downto 0);         
        an : out STD_LOGIC_VECTOR (3 downto 0)
    
     );
end MipsTopLevel;

architecture Behavioral of MipsTopLevel is 

component MainControl 
 Port (
       OpCode: in std_logic_vector(2 downto 0);
       RegDst: out std_logic;
       RegWrite: out std_logic;
       ExtOp: out std_logic;
       Jump: out std_logic;
       ALUSrc: out std_logic;
       branch: out std_logic;
       MemToReg: out std_logic;
       MemWrite: out std_logic
  );
end component MainControl;

component Instruction_Fetch 
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
end component Instruction_Fetch;

component MPG 
 Port ( btn : in std_logic;
        clk : in std_logic;
        
        enable: out std_logic
  );
end component MPG;

component instDec 
 Port (
    clk: in std_logic;
    inst: in std_logic_vector(15 downto 0);
    RegDst: in std_logic;
    RegWrite: in std_logic;
    ExtOp: in std_logic;
    writeData : in std_logic_vector(15 downto 0);
    readD1: out std_logic_vector(15 downto 0);
    readD2: out std_logic_vector(15 downto 0);
    extImm: out std_logic_vector(15 downto 0);    
    shift: out std_logic;
    func: out std_logic_vector(2 downto 0);
    write_address: in std_logic_vector(2 downto 0) ---am adaugat asta ca fac mux afara  
  );
end component instDec;

component ExecutionUnit 
    Port ( PCOut : in STD_LOGIC_VECTOR (15 downto 0);
           ReadD1 : in STD_LOGIC_VECTOR (15 downto 0);
           ReadD2 : in STD_LOGIC_VECTOR (15 downto 0);
           ExImm : in STD_LOGIC_VECTOR (15 downto 0);
           ALUSrc : in STD_LOGIC;
           ALUOp : in STD_LOGIC_VECTOR (2 downto 0);
           SA : in STD_LOGIC;
           Func : in STD_LOGIC_VECTOR (2 downto 0);
           
           ALURes : out STD_LOGIC_VECTOR (15 downto 0);
           BranchAdd : out STD_LOGIC_VECTOR (15 downto 0);
           Zero : out STD_LOGIC);
end component ExecutionUnit;

component DataMemory 
    Port ( Address : in STD_LOGIC_VECTOR (15 downto 0);
           WriteData : in STD_LOGIC_VECTOR (15 downto 0);
           MemWrite : in STD_LOGIC;
           clk : in STD_LOGIC;
           ReadData : out STD_LOGIC_VECTOR (15 downto 0));
end component DataMemory;

component seven_seg 
    Port ( digit_bus : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           cathode : out STD_LOGIC_VECTOR (6 downto 0);
           anode : out STD_LOGIC_VECTOR (3 downto 0));
end component seven_seg;

signal pc_src_after_and : std_logic;
signal zero : std_logic;
signal we_mpg : std_logic;
signal rst_mpg : std_logic;

signal jump_signal     :  std_logic;
signal branch_signal   :  std_logic;
signal ExtOp_signal    : std_logic;
signal ALUSrc_signal   : std_logic;
signal MemWrite_signal : std_logic;
signal MemToReg_signal : std_logic;
signal RegWrite_signal : std_logic;
signal RegDst_signal :std_logic;


signal branch_add : std_logic_vector(15 downto 0);
signal jump_add : std_logic_vector(15 downto 0);

signal instruction : std_logic_vector(15 downto 0);
signal pc_out : std_logic_vector(15 downto 0);

signal mem_to_reg_mux_value : std_logic_vector(15 downto 0);

signal read_data_1_out :std_logic_vector(15 downto 0);

signal read_data_2_out :std_logic_vector(15 downto 0);

signal ext_imm_out:std_logic_vector(15 downto 0);

signal shift_amount: std_logic;

signal opCode:std_logic_vector(2 downto 0);

signal alu_out :std_logic_vector(15 downto 0);

signal data_mem_out:std_logic_vector(15 downto 0);

signal ssd_value:std_logic_vector(15 downto 0);

---
--IF/ID
signal if_id_instruction: std_logic_vector(15 downto 0);
signal if_id_pc: std_logic_vector(15 downto 0);
signal if_id_pc_out: std_logic_vector(15 downto 0);

--ID/EX
signal id_ex_instruction: std_logic_vector(15 downto 0);
signal id_ex_read_d1:std_logic_vector(15 downto 0);
signal id_ex_read_d2:std_logic_vector(15 downto 0);
signal id_ex_ext_imm:std_logic_vector(15 downto 0);
signal id_ex_reg_dst_mux: std_logic_vector(2 downto 0);
signal id_ex_MemToReg:std_logic;
signal id_ex_RegWrite:std_logic;
signal id_ex_MemWrite:std_logic;
signal id_ex_Branch:std_logic;
signal id_ex_ALUOp:std_logic;
signal id_ex_ALUSrc:std_logic;
signal id_ex_RegDst:std_logic;
signal id_ex_shift: std_logic;
signal id_ex_pc_out:std_logic_vector(15 downto 0);
--EX/MEM
signal ex_mem_pc_out: std_logic_vector(15 downto 0);
signal ex_mem_instruction: std_logic_vector(15 downto 0);
signal ex_mem_branch_address: std_logic_vector(15 downto 0);
signal ex_mem_alu_out: std_logic_vector(15 downto 0);
signal ex_mem_write_data: std_logic_vector(15 downto 0);

signal ex_mem_reg_dst_mux: std_logic_vector(2 downto 0); --Aici ii implementat in main control
                                                          --trebuie mux facut 

signal ex_mem_read_d2:std_logic_vector(15 downto 0);
signal ex_mem_MemToReg:std_logic;
signal ex_mem_RegWrite:std_logic;
signal ex_mem_MemWrite:std_logic;
signal ex_mem_Branch:std_logic;
signal ex_mem_Zero:std_logic;


--MEM/WB
signal mem_wb_instruction: std_logic_vector(15 downto 0);
signal mem_wb_read_data: std_logic_vector(15 downto 0);
signal mem_wb_address: std_logic_vector(15 downto 0);
signal mem_wb_mux_address: std_logic_vector(15 downto 0);
signal mem_wb_reg_dst_mux: std_logic_vector(2 downto 0); --- am pus

signal mem_wb_MemToReg:std_logic;
signal mem_wb_RegWrite:std_logic;










begin
--mux wb 
mux_wb: process(mem_wb_MemToReg,mem_wb_address,mem_wb_read_data)
begin

    if mem_wb_MemToReg='0' then 
        mem_wb_mux_address <= mem_wb_address; --- nu e actually addresss
    else
         mem_wb_mux_address <= mem_wb_read_data;
    end if;

end process;



-- mux reg dst
mux_reg_dst: process(id_ex_RegDst,id_ex_instruction)
    begin
    if id_ex_RegDst= '0' then
        id_ex_reg_dst_mux<= id_ex_instruction(9 downto 7);
    else
        id_ex_reg_dst_mux<= id_ex_instruction(6 downto 4);
    end if;
end process;



-- refresh register
process(we)
begin

    if rising_edge(we_mpg) then
        ---passing the instruction
        if_id_instruction<=instruction;
        id_ex_instruction<=if_id_instruction;
        ex_mem_instruction<=id_ex_instruction;
        mem_wb_instruction<=ex_mem_instruction;
    
    
        --passing pc_out
        if_id_pc_out<=pc_out;
        id_ex_pc_out<=if_id_pc_out;
        
        --passing wb signals
        id_ex_MemToReg <=MemToReg_signal;
        id_ex_RegWrite <=RegWrite_signal;
        ex_mem_MemToReg<=id_ex_MemToReg;
        ex_mem_RegWrite <=id_ex_RegWrite ;
        mem_wb_MemToReg<=ex_mem_MemToReg;
        mem_wb_RegWrite <=ex_mem_RegWrite;
        
        --passing M signals
        id_ex_MemWrite <= MemWrite_signal;
        id_ex_Branch <= Branch_signal;
        ex_mem_MemWrite <= id_ex_MemWrite;
        ex_mem_Branch <= id_ex_Branch;  
        
        --passing ex signals
        -- id_ex_ALUOp<=ALUOp_signal; --- i don't have this
        id_ex_ALUSrc<=ALUSrc_signal;
        id_ex_RegDst<=RegDst_signal;
        
        
        --INSTRUCTION DECODE PART
        id_ex_read_d1<=read_data_1_out;
        id_ex_read_d2<=read_data_2_out;
        id_ex_ext_imm <= ext_imm_out;
        id_ex_shift<=shift_amount;
        id_ex_pc_out<=pc_out;
        
        --EXECUTION UNIT
        ex_mem_read_d2<=id_ex_read_d2;
        ex_mem_reg_dst_mux<=id_ex_reg_dst_mux;
        ex_mem_alu_out<=alu_out;
        ex_mem_zero<=zero;
        ex_mem_branch_address<= branch_add;
        
        
        --DATA MEMORY
        mem_wb_read_data<=data_mem_out;
        mem_wb_address<=ex_mem_alu_out;
        mem_wb_reg_dst_mux<=ex_mem_reg_dst_mux;
        
        
        --WRITE_BACK
        
        
        
        
    end if;
end process;





--MPG-URI

MPG_WE: MPG port map (we,clk,we_mpg);
MPG_RST: MPG port map (rst,clk,rst_mpg);

--MUX SI AND
 PC_SRC_AND: pc_src_after_and<= ex_mem_zero and ex_mem_branch; --schimbat


INSTR_FETCH: Instruction_Fetch port map ( we_mpg , rst_mpg ,clk , pc_src_after_and , jump_signal ,ex_mem_branch_address , jump_add, instruction, pc_out); --schimbat
    
MAIN_CONTROL: MainControl port map(if_id_instruction(15 downto 13), RegDst_signal, RegWrite_signal, ExtOp_signal, Jump_signal, ALUSrc_signal, branch_signal, MemToReg_signal, MemWrite_signal); --schimbat

INSTR_DECODE: instDec port map (clk, if_id_instruction ,RegDst_signal , mem_wb_RegWrite, ExtOp_signal ,mem_wb_mux_address , read_data_1_out, read_data_2_out, ext_imm_out , shift_amount , opCode, mem_wb_reg_dst_mux);

--EXECUTION_UNIT: ExecutionUnit port map ( pc_out ,read_data_1_out, read_data_2_out , ext_imm_out, ALUSrc_signal, instruction(15 downto 13), shift_amount, opCode, alu_out ,branch_add ,zero);

EXECUTION_UNIT: ExecutionUnit port map ( id_ex_pc_out ,id_ex_read_d1, id_ex_read_d2 , id_ex_ext_imm, id_ex_ALUSrc, id_ex_instruction(15 downto 13), shift_amount, id_ex_instruction(2 downto 0), alu_out ,branch_add ,zero);
DATA_MEMORY: DataMemory port map ( ex_mem_alu_out, ex_mem_read_d2, ex_mem_MemWrite, clk, data_mem_out);

seven_seg_val: process(DisplayCode , DisplayControl)
                begin
                    if(DisplayControl = '0') then
                        led <= "000000000" & jump_signal & branch_signal & ExtOp_signal & ALUSrc_signal & MemWrite_signal & MemToReg_signal & RegWrite_signal;
                     else
                         led <=instruction;
                    end if;
                    
                    case DisplayCode is
                        when "000" =>  ssd_value<= instruction;
                        when "001" => ssd_value<= pc_out;
                        when "010" => ssd_value<= read_data_1_out;
                        when "011" => ssd_value<= read_data_2_out;
                        when "100" => ssd_value<= ext_imm_out;
                        when "101" => ssd_value<= alu_out;
                        when "110" => ssd_value<= data_mem_out;
                            when others => ssd_value <= mem_wb_mux_address;
                     end case;
                   end process;
                        
ssd: seven_seg port map(ssd_value, clk, cat,an);                           
                             
end Behavioral; 