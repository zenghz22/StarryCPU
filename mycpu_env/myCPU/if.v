// IF Stage
module if_stage(
    input       clk,
    input       reset,

    input       br_taken,
    input[31:0] br_target,
    output      if_pc
);
reg  [31:0] if_pc;
wire [31:0] seq_pc;
wire [31:0] nextpc;
assign seq_pc       = pc + 3'h4;
assign nextpc       = br_taken ? br_target : seq_pc;

always @(posedge clk) begin
    if (reset)
        if_pc <= 32'h1bfffffc;
    else
        if_pc <= nextpc;
end