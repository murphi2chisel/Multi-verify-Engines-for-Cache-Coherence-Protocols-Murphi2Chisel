// Very Simple Architecture 16-bit. Revision A.
//
// Author: Fabio Somenzi <Fabio@Colorado.EDU>

// This very simple microprocessor is vaguely inspired to Hennessy and
// Patterson's DLX. It has been further simplified to make it amenable
// to reachability analysis.
//
// This processor has no pipelining and no interrupts.
// The instruction sets consists of a handful of must-have:
//     LW
//     SW
//     BEQZ
//     ADD(I)  [i.e., both ADD and ADDI]
//     SUB(I)
//     AND
//     OR
//     XOR
//     SRL
//
// All instructions are 16 bits and they have one of two formats (width of
// the fields in parentheses):
//
// R-format: opcode (3) source1 (2) source2 (2) destination (2) function (7)
// I-format: opcode (3) source1 (2) destination (2) immediate (9)
//
// The R-format instructions are: ADD, SUB, AND, OR, XOR, SRL. 
// The other instructions are I-format.
//
// There are 3 general-purpose 16-bit registers (R1, R2, R3) that can act as
// source or destinations for the various instructions. R0 is always 0.
//
// All instructions execute in exactly 5 clock cycles.
// The program counter has only 12 bits to reduce the sequential depth
// of the FSM.

module main(clock,PC,instruction,ALUOutput,datain,dataout,wr);
    input	  clock;		// master clock
    output [11:0] PC;			// instruction cache address
//     input [0:15]  instruction;		// intruction cache data
    input [15:0]  instruction;		// intruction cache data
    output [15:0] ALUOutput;		// data cache address
    input [15:0]  datain;		// data input bus
    output [15:0] dataout;		// data output bus
    output	  wr;

    reg [15:0]	  Registers[0:3];	// regiter file
    reg [11:0]	  PC;			// program counter
    reg [11:0]	  NPC;			// next program counter
//     reg [0:15]	  IR;			// instruction register
    reg [15:0]	  IR;			// instruction register
    reg [15:0]	  A;			// first ALU operand
    reg [15:0]	  B;			// second ALU operand
    reg [15:0]	  ALUOutput;		// ALU output register
    reg		  Cond;			// comparison result
    reg [15:0]	  LMD;			// load memory data register
    reg [2:0]	  State;		// state for non-pipelined unit
    integer	  i;			// loop index

    // Interesting fields of the instruction register.
//     wire [2:0]	  opcode = IR[0:2];
//     wire [1:0]	  adFld1 = IR[3:4];
//     wire [1:0]	  adFld2 = IR[5:6];
//     wire [1:0]	  adFld3 = IR[7:8];
//     wire [8:0]	  immFld = IR[7:15];
//     wire [6:0]	  funFld = IR[9:15];
    wire [2:0]	  opcode = IR[2:0];
    wire [1:0]	  adFld1 = IR[4:3];
    wire [1:0]	  adFld2 = IR[6:5];
    wire [1:0]	  adFld3 = IR[8:7];
    wire [8:0]	  immFld = IR[15:7];
    wire [6:0]	  funFld = IR[15:9];

    // Control states.
    parameter	  IF = 3'd0,		// instruction fetch
		  ID = 3'd1,		// instruction decode
		  EX = 3'd2,		// execution
		  MEM = 3'd3,		// memory access
		  WB = 3'd4;		// write-back

    // Opcodes.
    parameter	  LW    = 3'd0,
		  SW    = 3'd1,
		  BEQZ  = 3'd2,
		  ALUop = 3'd3,
		  ADDI  = 3'd4,
		  SUBI  = 3'd5;

    // ALU function codes.
    parameter	  ADD = 7'd0,
		  SUB = 7'd1,
		  AND = 7'd2,
		  OR  = 7'd3,
		  XOR = 7'd4,
		  SRL = 7'd5;

    // Decoding of the instruction type.
    wire	  memRef = opcode == LW || opcode == SW;
    wire	  regRegALU = opcode == ALUop;
    wire	  regImmALU = opcode == ADDI || opcode == SUBI;
    wire	  branch = opcode == BEQZ;
    // Immediate operand with sign extension.
    wire [15:0]	  Imm = {{8{immFld[8]}},immFld[7:0]};

    // Combinational outputs.
    assign dataout = B;
    assign wr = (State == MEM) & (opcode == SW);

    // Initial state: all zero.
    initial begin
	for (i = 0; i < 4; i = i + 1)
	    Registers[i] = 16'd0;
	PC = 12'd0;
	NPC = 12'd0;
	IR = 16'd0;
	A = 16'd0;
	B = 16'd0;
	ALUOutput = 16'd0;
	Cond = 1'd0;
	LMD = 16'd0;
	State = IF;
    end // initial begin

    always @ (posedge clock) begin
	case (State)
	  IF: begin
	      NPC = PC + 12'd2;
	      IR = instruction;
	  end // case: IF
	  ID: begin
	      A = Registers[adFld1];
	      B = Registers[adFld2];
	  end // case: ID
	  EX: begin
	      if (memRef) begin
		  ALUOutput = A + Imm;
	      end // if (memRef)
	      else if (regRegALU) begin
		  if (funFld == ADD)
		      ALUOutput = A + B;
		  else if (funFld == SUB)
		      ALUOutput = A - B;
		  else if (funFld == AND)
		      ALUOutput = A & B;
		  else if (funFld == OR)
		      ALUOutput = A | B;
		  else if (funFld == XOR)
		      ALUOutput = A ^ B;
		  else if (funFld == SRL)
		      ALUOutput = {1'd0,A[15:1]};
	      end // if (regRegALU)
	      else if (regImmALU) begin
		  if (opcode == ADDI)
		      ALUOutput = A + Imm;
		  else if (opcode == SUBI)
		      ALUOutput = A - Imm;
	      end // if (regImmALU)
	      else if (branch) begin
		  ALUOutput = {4'd0,NPC} + {Imm,1'b0};
		  Cond = A == 16'd0;
	      end // if (branch)
	  end // case: EX
	  MEM: begin
	      if (memRef) begin
		  if (opcode == LW)
		      LMD = datain;
	      end // if (memRef)
	      if (branch) begin
		  if (Cond)
		      PC = ALUOutput[11:0];
		  else
		      PC = NPC;
	      end else begin
		  PC = NPC;
	      end // else: !if(branch)
	  end // case: MEM
	  WB: begin
	      if (regRegALU) begin
		  if (adFld3 != 2'd0)
		      Registers[adFld3] = ALUOutput;
	      end else if (regImmALU) begin
		  if (adFld2 != 2'd0)
		      Registers[adFld2] = ALUOutput;
	      end else if (opcode == LW) begin
		  if (adFld2 != 2'd0)
		      Registers[adFld2] = LMD;
	      end
	  end // case: WB
	endcase // case (State)
	// State update.
	if (State == 3'd4)
	    State = 3'd0;
	else
	    State = State + 3'd1;
    end // always @ (posedge clock)


    // #PASS: The program counter is always aligned on a half-word boundary.
    assert property (PC[0]==0 && NPC[0]==0);

    // #PASS: Register R0 is never written.
    assert property (Registers[0]==0);

    // #PASS: The state is between 0 and 4.
    assert property (State[2]==0 || State[1:0]==0);

wire prop_1 =  (PC[0]==0 && NPC[0]==0);
wire prop_2 = (Registers[0]==0);
wire prop_3 = (State[2]==0 || State[1:0]==0);
wire prop = prop_1 && prop_2 && prop_3;
wire prop_neg = !prop;
assert property ( prop );
endmodule // vsa16a
