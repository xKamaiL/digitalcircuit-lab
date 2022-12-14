library ieee;
use ieee.std_logic_1164.all;

entity processor is
	port (
		data_in : in std_logic_vector(8 downto 0);
		reset_n, clk, run : in std_logic;
		done : buffer std_logic;
		busWires: buffer std_logic_vector(8 downto 0);
		ADDR, DOUT : out std_logic_vector(8 downto 0); -- new 
		Wr_en : out std_logic; -- write en for RAM
		reg_2,reg_4,reg_5,reg_7,reg_1, reg_0, reg_IR, reg_3 : out std_logic_vector(8 downto 0);
		debug_pr_in, debug_addrIn : out std_logic;
		pc_v : out std_logic_vector(8 downto 0);
		Tstep_Q : out std_logic_vector(3 downto 0)
	);
end processor;


architecture bhv of processor is
	component d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	component counter is
		generic ( k : natural := 4; n : natural := 4 );
		port (
			clock, en, reset_n, data_in  : in std_logic;
			data : in std_logic_vector(n-1 downto 0);
			Q : out std_logic_vector(n - 1 downto 0)
		);
	end component;
	component mux8bit is
		port (
			busWires : out std_logic_vector(8 downto 0);
			data_in : in std_logic_vector(8 downto 0);
			R0to7out : in std_logic_vector(0 to 7);
			Dout, Gout : in std_logic;
			Din, r0,r1,r2,r3,r4,r5,r6,r7,G : in std_logic_vector(8 downto 0)
		);
	end component;
	component dec3to8 is
		port (
			w : in std_logic_vector(2 downto 0);
			en : in std_logic;
			y : out std_logic_vector(0 to 7)
		);
	end component;
	component regn is 
		generic (n : integer := 9);
		port (
		r : in std_logic_vector(n-1 downto 0);
		reset_n, Rin, clk : in std_logic;
		Q : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
	component control_unit is
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
			Gout,Gin,Ain, AddSub, AddrIn, DoutIn, pc_incr, Wr_en : out std_logic
		);
	end component;
	component add_sub is 
		generic ( n : natural := 9);
		port (
			A, B : in std_logic_vector(n-1 downto 0);
			add_sub, reset : in std_logic;
			v : out std_logic_vector(n-1 downto 0)
		);
	end component;
	-- signal for enable of register
	signal r0,r1,r2,r3,r4,r5,r6,pc_value,A,G : std_logic_vector(8 downto 0);
	signal IRin, DinOut, Gout, Ain, Gin, W_D : std_logic;
	signal IR : std_logic_vector(1 to 9);
	signal I : std_logic_vector(1 to 3);
	signal Rin, Xreg, Yreg, R0toR7out : std_logic_vector(0 to 7);
	signal instruction_set : std_logic_vector(1 to 3);
	signal addsub, pc_incr, ADDRin, DoutIn : std_logic;
	signal sum_result : std_logic_vector(8 downto 0);
begin
	
	ir0: regn port map(data_in,reset_n, IRin, clk, IR);

					
	reg0: regn port map (busWires,reset_n, Rin(0), clk, r0);
	reg1: regn port map (busWires,reset_n, Rin(1), clk, r1);
	reg2: regn port map (busWires,reset_n, Rin(2), clk, r2);
	reg3: regn port map (busWires,reset_n, Rin(3), clk, r3);
	reg4: regn port map (busWires,reset_n, Rin(4), clk, r4);
	reg5: regn port map (busWires,reset_n, Rin(5), clk, r5);
	reg6: regn port map (busWires,reset_n, Rin(6), clk, r6);
	-- incr_pc
	pc0: counter generic map (n => 9, k => 511) port map (clk, pc_incr, reset_n, Rin(7), BusWires, pc_value);
	
	regA: regn port map(busWires,reset_n, Ain, clk, A);
	addsub0: add_sub port map (A, BusWires, addsub,reset_n, sum_result);
	regG: regn port map(sum_result,reset_n, Gin, clk, G);
	
	regAddr: regn port map(busWires,reset_n, ADDRin, clk, ADDR);
	regDout: regn port map(busWires,reset_n, DoutIn, clk, DOUT);
	
	reg_IR <= IR;
	reg_2 <= r2;
	reg_4 <= r4;
	reg_5 <= r5;
	reg_7 <= pc_value;
	reg_1 <= r1; 
	reg_0 <= r0;
	reg_IR <= IR;
	reg_3 <= r3;
	
	I <= IR(1 to 3);
	
	decX: dec3to8 port map(IR(4 to 6), '1', Xreg);
	dexY: dec3to8 port map(IR(7 to 9), '1', Yreg);
	mux0: mux8bit port map(busWires, data_in, R0toR7out, DinOut, Gout,data_in, r0,r1,r2,r3,r4,r5,r6,pc_value,G);
	
	fsm: control_unit port 
			map(
				reset_n, 
				clk, 
				run, 
				I, 
				Xreg,
				Yreg,
				Rin, 
				IRin,
				DinOut, 
				R0toR7out,
				done,
				Tstep_Q,
				G,
				Gout,
				Gin,
				Ain, 
				addsub,
				ADDRin,
				DoutIn,
				pc_incr,
				w_D
			);
			
	ff0: d_ff port map(clk,W_D, wr_en);
	debug_addrIn <= AddRin;
	debug_pr_in <= pc_incr;
	pc_v <= pc_value;

end bhv;