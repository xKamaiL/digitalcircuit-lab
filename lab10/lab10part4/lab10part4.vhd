library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity lab10part4 is
	port (
		sw9, key0, clk : in std_logic;
		hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6);
		-- ir_debug, d_r2, d_r3, d_r0, d_in, addr_v,busWires : out std_logic_vector(8 downto 0 );
		-- Tstep_Q : out std_logic_vector(3 downto 0);
		ledr : out std_logic_vector(8 downto 0)
	);
end lab10part4;


architecture bhv of lab10part4 is
	component d_ff is
		port (
			Clk, D  : in std_logic;
			Q : out std_logic
		);
	end component;
	component processor is
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
	end component;


	component ram128x9 IS
		port
		(
		address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
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
	component seg7_scroll is
		port (
			ResetN, clk, w: in std_logic;
			m : in std_logic_vector(2 downto 0);
			data_in : in std_logic_vector(3 downto 0); 
			hex5,hex4,hex3,hex2,hex1,hex0 : out std_logic_vector(0 to 6)
			
		);
	end component;
	signal  Resetn, Run, wr_en,w, led_en : std_logic;
	signal DIN,d_out : std_logic_vector(8 downto 0);
	signal A : std_logic_vector(8 downto 0);

	signal ir_debug, d_r2, d_r3, d_r0, d_in, addr_v,busWires :  std_logic_vector(8 downto 0 );
	signal Tstep_Q :  std_logic_vector(3 downto 0);

begin
	
	
	ff0: d_ff port map(clk,sw9, Run);
	
	Resetn <= key0;
	
	wr_en <= w and not( A(8) or A(7) );
	
	m0: ram128x9 port map(A(6 downto 0),clk,d_out,wr_en,DIN);

	
	led_en <= not( not(A(7)) or A(8) ) and w;
	
	leds0: regn port map(d_out,Resetn,led_en,clk,ledr);
	
	u0: seg7_scroll port map(Resetn,clk,w, A(2 downto 0),d_out(3 downto 0),hex5,hex4,hex3,hex2,hex1,hex0);
	d_in <= DIN;
	addr_v <= A;
	-- ledr <= A;
	p1: processor port 
		map(
			DIN,
			Resetn,
			clk,
			Run,
			open,
			busWires,
			A,  -- added
			d_out, -- added
			w,
			
			d_r2,
			open,
			open,
			
			open,
			open,
			d_r0,
			
			ir_debug,
			d_r3,
			open,
			open,
			open,
			Tstep_Q
		);

end bhv;