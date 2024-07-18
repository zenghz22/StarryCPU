// IF Stage
module if_stage(
    input       clk,
    input       reset,
    input       br_taken,
    input[31:0] br_target,
    output[31:0]if_pc
);
reg  [31:0] if_pc_reg;
wire [31:0] seq_pc;
wire [31:0] nextpc;

assign if_pc           =if_pc_reg;
assign seq_pc       = if_pc + 3'h4;
assign nextpc       = br_taken ? br_target : seq_pc;

always @(posedge clk) begin
    if (reset)
        if_pc_reg <= 32'h1bfffffc;
    else
        if_pc_reg <= nextpc;
end
endmodule