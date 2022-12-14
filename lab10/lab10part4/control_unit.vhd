library ieee;
use ieee.std_logic_1164.all;


entity control_unit is
	port (
		reset_n,clk : in std_logic;
		run : in std_logic;
		I : in std_logic_vector(2 downto 0); --
		Xreg, Yreg : in std_logic_vector(0 to 7); -- x,y register number
		Rin : out std_logic_vector(0 to 7); -- tell load state each register 0to8
		IRin, Dout : out std_logic; -- tell load instruction set to register
		R0toR7out : out std_logic_vector(0 to 7);
		done : buffer std_logic;
		Tstep_Q : out std_logic_vector(3 downto 0);
		Greg : in std_logic_vector(8 downto 0); -- value of G
		Gout,Gin,Ain, AddSub, ADDRin, DoutIn, pc_incr, Wr_en : out std_logic -- add/sub ops signal
	);
end control_unit;

architecture bhv of control_unit is
	type State_type is (T0,TX,TXX,T1,T2,T3); -- mv, mvi, add, sub
	signal y_Q, y_D : State_type;
	constant MV : std_logic_vector(2 downto 0) := "000";
	constant MVI : std_logic_vector(2 downto 0) := "001";
	constant ADD : std_logic_vector(2 downto 0) := "010";
	constant SUB : std_logic_vector(2 downto 0) := "011";
	-- a new instruction
	constant LOAD : std_logic_vector(2 downto 0) := "100";  -- Rx = *Ry;
	constant STORE : std_logic_vector(2 downto 0) := "101"; -- *Ry = 
	constant MVNZ : std_logic_vector(2 downto 0) := "110"; 
	constant PCReg : std_logic_vector(2 downto 0) := "111";
	constant PC_DATA : std_logic_vector(0 to 7) := "00000001";
	constant NONE : std_logic_vector(0 to 7) := "00000000";
begin 

	-- state table
	process (y_Q,run,done)
	begin
		case y_Q is
			when T0 => -- wait for run signal
				if run = '1' then 
					y_D <= TX;
				else
					y_D <= T0;
				end if;
			when TX => y_D <= TXX;
			when TXX => y_D <= T1;
			when T1 => -- load data into IR register
				if done = '1' then
					y_D <= T0;
				else
					y_D <= T2;
				end if;
 			when T2 =>
				if done = '1' then
					y_D <= T0;
				else
					y_D <= T3;
				end if;
			when T3 =>
				y_D <= T0;
		end case;
	end process;
	
	fsmff: process(clk,reset_n,y_D)
	begin
		if reset_n <= '0' then
			y_Q <= T0;
		else
			if rising_edge(clk) then
				 y_Q <= y_D;
			end if;
		end if;
	end process;
	
	controlsignals: process (y_Q, Xreg, Yreg,run)
	begin
		Gout <= '0'; Tstep_Q <= "0000"; Dout <= '0'; done <= '0'; Rin <= NONE;
		Gin <= '0';
		Wr_en <= '0'; R0toR7out <= NONE; ADDRin <= '0'; pc_incr <= '0'; 
		IRin <= '0'; DoutIn <= '0'; AddSub <= '0'; Ain <= '0';
		case y_Q is
			when T0 => 
				
				R0toR7out <= PC_DATA; -- data from PC out (R7) to ADDR register
				ADDRin <= '1'; -- sent an address from PC into ADDR
				pc_incr <= run;
				
			when TX => Tstep_Q <= "0001"; -- wait for RAM clock
			when TXX =>  -- load instruction on data-in into IR
				IRin <= '1';
				Tstep_Q <= "0010";
			when T1 => -- at T1
				Tstep_Q <= "0011";

				case I is
					when MV => -- copy Ry -> Rx
						R0toR7out <= Yreg;
						Rin <= Xreg;
						if Xreg = "111" then -- when move PC need
							ADDRin <= '1';
						end if;
						done <= '1';
					when MVI =>
						pc_incr <= '1';
						ADDRin <= '1';
						R0toR7out <= PC_DATA;
					when ADD | SUB => -- add or sub: load Rx into Areg
						R0toR7out <= Xreg; -- tell mux out Rx
						Ain <= '1'; -- tell A load data from BUS
					when LOAD | STORE =>
						R0toR7out <= Yreg; -- Addr that hold at Ry
						ADDrIn <= '1';
					when MVNZ =>
						done <= '1';
						if Greg /= "000000000" then
							R0toR7out <= Yreg;
							Rin <= Xreg;
							
							if Xreg = PCReg then -- when move PC need
								ADDRin <= '1';
							end if;
						end if;
					when others => null;
				end case;
			when T2 =>
				Tstep_Q <= "0101";
		
				case I is
					
					when MVI =>
						
					when LOAD =>
						-- wait for RAM
						-- Dout <= '1';
					when STORE => 
						DoutIn <= '1';
						Wr_en <= '1';
						R0toR7out <= Xreg;
					when ADD => 
						AddSub <= '0';
						Gin <= '1';
						R0toR7out <= Yreg;
					when SUB => 
						AddSub <= '1';
						Gin <= '1';
						R0toR7out <= Yreg;
					when others => null;
				end case;
				
			when T3 =>
				Tstep_Q <= "1001";
				done <= '1'; -- must done
				case I is
					when MVI =>
						done <= '1';
						Dout <= '1';
						Rin <= Xreg;
					when LOAD => 
						-- Dout <= '1';
						Rin <= Xreg;
					when ADD | SUB =>
						Rin <= Xreg;
						Gout <= '1';
					when others => null;
				end case;
		end case;
	end process;
end bhv;