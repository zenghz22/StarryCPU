//if_id_inst
module mycpu_top(
  input  wire        clk,
  input  wire        resetn,
  // inst sram interface
  output wire        inst_sram_en
  output wire [3:0]  inst_sram_we,
  output wire [31:0] inst_sram_addr,
  output wire [31:0] inst_sram_wdata,
  input  wire [31:0] inst_sram_rdata,
  // data sram interface
  output wire        data_sram_en 
  output wire [3:0]  data_sram_we,
  output wire [31:0] data_sram_addr,
  output wire [31:0] data_sram_wdata,
  input  wire [31:0] data_sram_rdata,
  // trace debug interface
  output wire [31:0] debug_wb_pc,
  output wire [ 3:0] debug_wb_rf_we,
  output wire [ 4:0] debug_wb_rf_wnum,
  output wire [31:0] debug_wb_rf_wdata
)；
reg reset；
always @(posedge clk) reset <= ~resetn;

reg valid
always @(posedge clk) begin
    if (reset) begin
        valid <= 1'b0;
    end
    else begin
        valid <= 1'b1;
    end
end


// IF Stage
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

assign inst_sram_we = 1'b0;
assign inst_sram_addr = if_pc;
assign inst_sram_wdata = 32'b0;

reg [31:0] if_id_pc;
reg [31:0] if_id_inst;
always @(posedge clk) begin
    if (reset) begin
        if_id_pc <= 0;
        if_id_inst <= 0;
    end else begin
        if_id_pc <= if_pc;
        if_id_inst <= inst_sram_rdata;
    end
end


//ID Stage
reg  [31:0] id_pc;
wire [11:0] i12;
wire [19:0] i20;
wire [15:0] i16;
wire [25:0] i26;

always @(posedge clk) begin
      id_pc <= if_id_pc;
      i12 <= if_id_inst[21:10];
      i20 <= if_id_inst[24: 5];
      i16 <= if_id_inst[25:10];
      i26 <= {if_id_inst[ 9: 0], if_id_inst[25:10]};
end


wire [ 5:0] op_31_26;
wire [ 3:0] op_25_22;
wire [ 1:0] op_21_20;
wire [ 4:0] op_19_15;
wire [ 4:0] rd;
wire [ 4:0] rj;
wire [ 4:0] rk;

wire [63:0] op_31_26_d;
wire [15:0] op_25_22_d;
wire [ 3:0] op_21_20_d;
wire [31:0] op_19_15_d;

wire [ 4:0] rf_raddr1;
wire [31:0] rf_rdata1;
wire [ 4:0] rf_raddr2;
wire [31:0] rf_rdata2;
wire        rf_we   ;
wire [ 4:0] rf_waddr;
wire [31:0] rf_wdata;

wire        inst_add_w;
wire        inst_sub_w;
wire        inst_slt;
wire        inst_sltu;
wire        inst_nor;
wire        inst_and;
wire        inst_or;
wire        inst_xor;
wire        inst_slli_w;
wire        inst_srli_w;
wire        inst_srai_w;
wire        inst_addi_w;
wire        inst_ld_w;
wire        inst_st_w;
wire        inst_jirl;
wire        inst_b;
wire        inst_bl;
wire        inst_beq;
wire        inst_bne;
wire        inst_lu12i_w;

assign op_31_26  = if_id_inst[31:26];
assign op_25_22  = if_id_inst[25:22];
assign op_21_20  = if_id_inst[21:20];
assign op_19_15  = if_id_inst[19:15];

assign rd   = if_id_inst[ 4: 0];
assign rj   = if_id_inst[ 9: 5];
assign rk   = if_id_inst[14:10];

decoder_6_64 u_dec0(.in(op_31_26 ), .out(op_31_26_d ));
decoder_4_16 u_dec1(.in(op_25_22 ), .out(op_25_22_d ));
decoder_2_4  u_dec2(.in(op_21_20 ), .out(op_21_20_d ));
decoder_5_32 u_dec3(.in(op_19_15 ), .out(op_19_15_d ));

assign inst_add_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h00];
assign inst_sub_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h02];
assign inst_slt    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h04];
assign inst_sltu   = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h05];
assign inst_nor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h08];
assign inst_and    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h09];
assign inst_or     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0a];
assign inst_xor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0b];
assign inst_slli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h01];
assign inst_srli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h09];
assign inst_srai_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h11];
assign inst_addi_w = op_31_26_d[6'h00] & op_25_22_d[4'ha];
assign inst_ld_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h2];
assign inst_st_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h6];
assign inst_jirl   = op_31_26_d[6'h13];
assign inst_b      = op_31_26_d[6'h14];
assign inst_bl     = op_31_26_d[6'h15];
assign inst_beq    = op_31_26_d[6'h16];
assign inst_bne    = op_31_26_d[6'h17];
assign inst_lu12i_w= op_31_26_d[6'h05] & ~inst[25];

regfile u_regfile(
    .clk    (clk      ),
    .raddr1 (rf_raddr1),
    .rdata1 (rf_rdata1),
    .raddr2 (rf_raddr2),
    .rdata2 (rf_rdata2),
    .we     (rf_we    ),
    .waddr  (rf_waddr ),
    .wdata  (rf_wdata )
    );








//级间寄存器存储(参考)
//assign op_31_26  = inst[31:26];
//assign rd   = inst[ 4: 0];

// IF/ID Register
reg [31:0] if_id_pc;
reg [31:0] if_id_inst；

// ID/EX Register
reg  [31:0] id_ex_pc;
reg [31:0] id_ex_rj_value;
reg [31:0] id_ex_rkd_value;
reg [31:0] id_ex_inst;

// EX/MEM Register
reg [31:0] ex_mem_pc;
reg [31:0] ex_mem_rj_value;
reg [31:0] ex_mem_rkd_value;
reg [31:0] ex_mem_inst;

// MEM/WB Register
reg [31:0] mem_wb_pc;
reg [31:0] mem_wb_inst;

