module mycpu_top(
  input  wire        clk,
  input  wire        resetn,
  // inst sram interface
  output wire        inst_sram_en,
  output wire [3:0]  inst_sram_we,
  output wire [31:0] inst_sram_addr,
  output wire [31:0] inst_sram_wdata,
  input  wire [31:0] inst_sram_rdata,
  // data sram interface
  output wire        data_sram_en, 
  output wire [3:0]  data_sram_we,
  output wire [31:0] data_sram_addr,
  output wire [31:0] data_sram_wdata,
  input  wire [31:0] data_sram_rdata,
  // trace debug interface
  output wire [31:0] debug_wb_pc,
  output wire [ 3:0] debug_wb_rf_we,
  output wire [ 4:0] debug_wb_rf_wnum,
  output wire [31:0] debug_wb_rf_wdata
);

assign inst_sram_en=1'b1;
assign data_sram_en=1'b1;

reg reset;
reg valid;
always @(posedge clk) reset <= ~resetn;

always @(posedge clk) begin
    if (reset) begin
        valid <= 1'b0;
    end
    else begin
        valid <= 1'b1;
    end
end

//IF STAGE
wire [31:0] if_pc;
wire        id_br_taken;
wire [31:0] id_br_target;      
assign inst_sram_we = 1'b0;
assign inst_sram_addr = if_pc;
assign inst_sram_wdata = 32'b0;

if_stage if_stage(
    .clk        (clk),
    .reset      (reset),
    .br_taken   (id_br_taken),
    .br_target  (id_br_target),
    .if_pc      (if_pc)
);


// IF/ID
reg [31:0]  if_id_pc;
//reg [31:0] if_id_inst;
wire [31:0] if_id_inst;
assign if_id_inst = inst_sram_rdata;
always @(posedge clk) begin
    if (reset) begin
        if_id_pc <= 32'h1bfffffc;
        //if_id_inst <= 32'h02800000;
    end else begin
        if_id_pc <= if_pc;
        //if_id_inst <= inst_sram_rdata;
    end
end

//ID STAGE
wire [31:0] id_pc;
wire [31:0] id_inst;
wire [11:0] id_alu_op;
wire        id_load_op;
wire        id_src2_is_imm;
wire        id_res_from_mem;
wire        id_gr_we;
wire        id_mem_we;
wire [4:0]  id_dest;
wire [31:0] id_rj_value;
wire [31:0] id_rkd_value;
wire [31:0] id_imm;

wire        wb_gr_we;
wire [4:0]  wb_dest;
wire [31:0] wb_final_result;

assign id_pc =if_id_pc;
assign id_inst=if_id_inst;

id_stage id_stage(
    .clk            (clk),
    .reset          (reset),
    //输入 from IF/ID
    .id_pc          (id_pc),
    .id_inst        (id_inst),
    //输入 from WB
    .wb_gr_we       (wb_gr_we),
    .wb_dest        (wb_dest),
    .wb_final_result(wb_final_result),
    //输出   to ID/EX
    .alu_op         (id_alu_op),
    .load_op        (id_load_op),
    .src2_is_imm    (id_src2_is_imm),
    .res_from_mem   (id_res_from_mem),
    .gr_we          (id_gr_we),
    .mem_we         (id_mem_we),
    .dest           (id_dest),  //写回的寄存器编号
    .rj_value       (id_rj_value),
    .rkd_value      (id_rkd_value),
    .imm            (id_imm),
    //输出   to IF
    .br_taken       (id_br_taken),
    .br_target      (id_br_target)
);
assign debug_wb_pc = wb_pc;
assign debug_wb_rf_we ={4{wb_gr_we}};
assign debug_wb_rf_wnum=wb_dest;
assign debug_wb_rf_wdata=wb_final_result;

//ID/EX
reg [31:0]  id_ex_pc;
reg [11:0]  id_ex_alu_op;
reg         id_ex_load_op;
reg         id_ex_src2_is_imm;
reg         id_ex_res_from_mem;
reg         id_ex_gr_we;
reg         id_ex_mem_we;
reg [4:0]   id_ex_dest;
reg [31:0]  id_ex_rj_value;
reg [31:0]  id_ex_rkd_value;
reg [31:0]  id_ex_imm;

always @(posedge clk) begin
    if (reset) begin
        id_ex_pc <= 32'h1bfffffc;
        id_ex_alu_op <= 0;  
        id_ex_load_op <= 0;  
        id_ex_src2_is_imm <= 0;  
        id_ex_res_from_mem <= 0;  
        id_ex_gr_we <= 0;  
        id_ex_mem_we <= 0;   
        id_ex_dest <= 0;  
        id_ex_rj_value <= 0;  
        id_ex_rkd_value <= 0;  
        id_ex_imm <= 0;  
    end else begin
        id_ex_pc <= id_pc;
        id_ex_alu_op <= id_alu_op;  
        id_ex_load_op <= id_load_op;  
        id_ex_src2_is_imm <= id_src2_is_imm;  
        id_ex_res_from_mem <= id_res_from_mem;   
        id_ex_gr_we <= id_gr_we;  
        id_ex_mem_we <= id_mem_we;   
        id_ex_dest <= id_dest;  
        id_ex_rj_value <= id_rj_value;  
        id_ex_rkd_value <= id_rkd_value;  
        id_ex_imm <= id_imm;  
    end
end
//EX STAGE
wire [31:0] ex_pc;
wire [31:0] ex_alu_result;
wire [31:0] ex_rkd_value;
wire [4:0 ] ex_dest;
wire        ex_res_from_mem;
wire        ex_gr_we;
wire        ex_mem_we ;
assign      ex_rkd_value = id_ex_rkd_value;
assign      ex_pc        = id_ex_pc;
assign      ex_res_from_mem=id_ex_res_from_mem;
assign      ex_gr_we     = id_ex_gr_we;
assign      ex_mem_we    = id_ex_mem_we;
assign      ex_dest      =id_ex_dest;

alu alu(
  //输入 from ID/EX
  .alu_op(id_ex_alu_op),
  .alu_src1(id_ex_rj_value),
  .alu_src2(id_ex_src2_is_imm?id_ex_imm:id_ex_rkd_value),
  //输出   to EX/MEM
  .alu_result(ex_alu_result)
);
 
// EX/MEM
reg [31:0]   ex_mem_pc;
reg [31:0]   ex_mem_alu_result;
reg [31:0]   ex_mem_rkd_value;
reg          ex_mem_res_from_mem;
reg          ex_mem_gr_we;
reg          ex_mem_mem_we ;
reg [4:0]    ex_mem_dest;
always @(posedge clk) begin
    if (reset) begin
        ex_mem_pc<=32'h1bfffffc;
        ex_mem_alu_result<=0;
        ex_mem_rkd_value<=0;
        ex_mem_res_from_mem<=0;
        ex_mem_gr_we<=0;
        ex_mem_mem_we<=0;
        ex_mem_dest<=0;
    end else begin
        ex_mem_pc<=ex_pc;
        ex_mem_alu_result<=ex_alu_result;
        ex_mem_rkd_value<=ex_rkd_value;
        ex_mem_res_from_mem<=ex_res_from_mem;
        ex_mem_gr_we<=ex_gr_we;
        ex_mem_mem_we<=ex_mem_we;
        ex_mem_dest<=ex_dest;  
    end
end

//MEM STAGE
wire [31:0] mem_pc;
wire [31:0] mem_alu_result;
wire [31:0] mem_rkd_value;
wire        mem_res_from_mem;
wire        mem_gr_we;
wire        mem_mem_we ;
wire [4:0]  mem_dest;

assign      mem_pc        = ex_mem_pc;
assign      mem_alu_result= ex_mem_alu_result;
assign      mem_rkd_value = ex_mem_rkd_value;
assign      mem_res_from_mem=ex_mem_res_from_mem;
assign      mem_gr_we     = ex_mem_gr_we;
assign      mem_mem_we    = ex_mem_mem_we;
assign      mem_dest      = ex_mem_dest;
assign      data_sram_we  = mem_mem_we;
assign      data_sram_addr= mem_alu_result;
assign      data_sram_wdata=mem_rkd_value;
wire [31:0] mem_result; 
assign      mem_result    =data_sram_rdata;

// MEM/WB Register
reg [31:0] mem_wb_pc;
reg [31:0] mem_wb_alu_result;
reg        mem_wb_res_from_mem;
reg        mem_wb_gr_we;
reg [4:0]  mem_wb_dest;
reg [31:0] mem_wb_mem_result;
always @(posedge clk) begin
    if (reset) begin
        mem_wb_pc<=32'h1bfffffc;
        mem_wb_alu_result<=0;
        mem_wb_res_from_mem<=0;
        mem_wb_gr_we<=0;
        mem_wb_mem_result<=0;
        mem_wb_dest<=0;
    end else begin
        mem_wb_pc<=mem_pc;
        mem_wb_alu_result<=mem_alu_result;
        mem_wb_res_from_mem<=mem_res_from_mem;
        mem_wb_gr_we<=mem_gr_we;  
        mem_wb_mem_result<=mem_result;
        mem_wb_dest<=mem_dest;
    end
end

//WB STAGE
wire [31:0] wb_pc;
wire [31:0] wb_alu_result;
wire        wb_res_from_mem;

wire [31:0] wb_mem_result;
assign      wb_pc = mem_wb_pc;
assign      wb_alu_result = mem_wb_alu_result;
assign      wb_res_from_mem = mem_wb_res_from_mem;
assign      wb_gr_we = mem_wb_gr_we;
assign      wb_dest = mem_wb_dest;
assign      wb_mem_result = mem_wb_mem_result;

assign      wb_final_result = wb_res_from_mem?wb_mem_result:wb_alu_result;
endmodule
