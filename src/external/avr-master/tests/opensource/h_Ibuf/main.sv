// Instruction queue controller.
//
// Author: Fabio Somenzi <Fabio@Colorado.EDU>
//
// Derived from description in Kaufmann, Martin, and Pixley's paper.
// Modified by: Rajdeep Mukherjee <rajdeep.mukherjee@cs.ox.ac.uk>
module main(clock,iqLoads,exeReady,opsReady,flush,
	  load0,load1,load2,issue0,issue1,valid);
    input	 clock;
//     input [0:1]	 iqLoads;
//     input [0:1]	 exeReady;
//     input [0:2]	 opsReady;
//     input [0:2]	 flush;
//     output [0:1] load0;
//     output [0:1] load1;
//     output [0:1] load2;
//     output [0:2] issue0;
//     output [0:2] issue1;
//     output [0:2] valid;
    input [1:0]	 iqLoads;
    input [1:0]	 exeReady;
    input [2:0]	 opsReady;
    input [2:0]	 flush;
    output [1:0] load0;
    output [1:0] load1;
    output [1:0] load2;
    output [2:0] issue0;
    output [2:0] issue1;
    output [2:0] valid;

    // valid says if the queue entries hold instructions or are empty.
//     reg [0:2]	 valid;
    reg [2:0]	 valid;
    // qAge encodes the relative age of the queue entries.
    // qAge[0] == 1 means valid[0] == 1 and either valid[1] == 0 or
    // the 0-th entry is older than the 1-st entry.
    // Likewise, qAge[1] compares the 0-th and 2-nd entry, and qAge[2]
    // compares the 1-st and 2-nd entry.
//     reg [0:2]	 qAge;
    reg [2:0]	 qAge;

    // Initial state: empty queue.
    initial begin
	qAge = 3'd0;
	valid = 3'd0;
    end

    // Loading instructions to queue slots:
    // The lowest-indexed free entries are preferred.
    // Dispatch port 0 has precedence over dispatch port 1.
    assign load0[0] = ~valid[0] & iqLoads[0];
    assign load0[1] = ~valid[0] & ~iqLoads[0] & iqLoads[1];
    assign load1[0] = ~valid[1] & valid[0] & iqLoads[0];
    assign load1[1] = ~valid[1] & iqLoads[1] & ~(load0[1] | load1[0]);
    assign load2[0] = ~valid[2] & valid[1] & valid[0] & iqLoads[0];
    assign load2[1] = ~valid[2] & iqLoads[1] &
	~(load2[0] | load0[1] | load1[1]);
    // Issuing instructions to the execution units.
    // Execution unit 0 has precedence over execution unit 1.
    // Older instructions are issued first.
    assign issue0[0] = exeReady[0] & opsReady[0] & valid[0] &
	(qAge[0] | ~opsReady[1]) & (qAge[1] | ~opsReady[2]);
    assign issue0[1] = exeReady[0] & opsReady[1] & valid[1] &
	(~qAge[0] | ~opsReady[0]) & (qAge[2] | ~opsReady[2]);
    assign issue0[2] = exeReady[0] & opsReady[2] & valid[2] &
	(~qAge[1] | ~opsReady[0]) & (qAge[2] | ~opsReady[1]);
    assign issue1[0] = exeReady[1] & opsReady[0] & valid[0] &
	(qAge[0] | ~opsReady[1] | issue0[1]) &
	(qAge[1] | ~opsReady[2] | issue0[2]) & ~issue0[0];
    assign issue1[1] = exeReady[1] & opsReady[1] & valid[1] &
	(~qAge[0] | ~opsReady[0] | issue0[0]) &
	(qAge[2] | ~opsReady[2] | issue0[2]) & ~issue0[1];
    assign issue1[2] = exeReady[1] & opsReady[2] & valid[2] &
	(~qAge[1] | ~opsReady[0] | issue0[0]) &
	(qAge[2] | ~opsReady[1] | issue0[1]) & ~issue0[2];

    // Next values of the valid bits;
    wire nv0 = ~flush[0] & (valid[0] & ~(issue0[0] | issue1[0]) | load0);
    wire nv1 = ~flush[1] & (valid[1] & ~(issue0[1] | issue1[1]) | load1);
    wire nv2 = ~flush[2] & (valid[2] & ~(issue0[2] | issue1[2]) | load2);

    always @ (posedge clock) begin
	valid[0] = nv0;
	valid[1] = nv1;
	valid[2] = nv2;
	qAge[0] = nv0 & (~nv1 | qAge[0] | ~valid[1]);
	qAge[1] = nv0 & (~nv2 | qAge[1] | ~valid[2]);
	qAge[2] = nv1 & (~nv2 | qAge[2] | ~valid[2]);
    end // always @ (posedge clock)

// assert property (!((qAge[0]==0 || qAge[1]==1 || qAge[2]==0) &&
// (qAge[0]==1 || qAge[1]==0 || qAge[2]==1) &&
// (!(qAge[0]==1) ||  valid[0]==1) &&
// (!(qAge[1]==1) || valid[0]==1) &&
// (!(qAge[2]==1) || valid[1]==1) &&
// (!(valid[0]==1 && valid[1]==0) || qAge[0]==1) &&
// (!(valid[0]==1 && valid[2]==0) || qAge[1]==1) &&
// (!(valid[1]==1 && valid[2]==0) || qAge[2]==1)));

// wire prop = (!((qAge[0]==0 || qAge[1]==1 || qAge[2]==0) &&
// (qAge[0]==1 || qAge[1]==0 || qAge[2]==1) &&
// (!(qAge[0]==1) ||  valid[0]==1) &&
// (!(qAge[1]==1) || valid[0]==1) &&
// (!(qAge[2]==1) || valid[1]==1) &&
// (!(valid[0]==1 && valid[1]==0) || qAge[0]==1) &&
// (!(valid[0]==1 && valid[2]==0) || qAge[1]==1) &&
// (!(valid[1]==1 && valid[2]==0) || qAge[2]==1)));

// Safety properties from paper "Kaufman M., Martin A., Pixley C. (1998) Design constraints in symbolic model checking. 
// In: Hu A.J., Vardi M.Y. (eds) Computer Aided Verification. CAV 1998. Lecture Notes in Computer Science, 
//vol 1427. Springer, Berlin, Heidelberg"

wire prop1 = valid[0] || !qAge[0];
wire prop2 = !(valid[0] && !valid[1]) || qAge[0];
wire prop = prop1 && prop2;

wire prop_neg = !prop;
assert property ( prop );

endmodule // iqc
