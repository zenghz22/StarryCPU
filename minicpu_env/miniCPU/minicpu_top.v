/*我要实现add_w、addi_w、ld_w、st_w、bne这五个指令，这是我对它们的理解
add_w 
    rd=rj+rk
    opcode rk rj rd 
    17 5 5 5
addi_w
    rd=rj+符号扩展至32的si12
    opcode si12 rj rd
    10 12 5 5
ld_w
        vaddr = GR[rj] + SignExtend(si12, 32)
        AddressComplianceCheck(vaddr)
        paddr = AddressTranslation(vaddr)
        word = MemoryLoad(paddr, WORD)
GR[rd] = word

    opcode si12 rj rd
    10 12 5 5
st_w
        vaddr = GR[rj] + SignExtend(si12, 32)
        AddressComplianceCheck(vaddr)
        paddr = AddressTranslation(vaddr)
        MemoryStore(GR[rd][31:0], paddr, WORD)
    opcode si12 rj rd
    10 12 5 5
bne 
    不相等就跳转到PC+SignExtend({offs16, 2'b0}, 32)
    opcode offs rj rd
    6 16 5 5
    
*/
module minicpu_top(
    input  wire        clk,
    input  wire        resetn,//反转的reset，应该是一个键开关，按下为0
    //对指令存储器器
    output wire        inst_sram_we,//写使能信号
    output wire [31:0] inst_sram_addr,
    output wire [31:0] inst_sram_wdata,
    input  wire [31:0] inst_sram_rdata,
    //对数据存储器
    output wire        data_sram_we,//写使能信号
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata
);

reg         reset;
always @(posedge clk) reset <= ~resetn;

reg         valid;//为0时，表示进行reset
always @(posedge clk) begin
    if (reset) begin
        valid <= 1'b0;
    end
    else begin
        valid <= 1'b1;
    end
end

reg  [31:0] pc;//当前指令位于指令存储器的哪个地址
wire [31:0] nextpc;
   
wire [31:0] inst;

wire [ 5:0] op_31_26;
wire [ 3:0] op_25_22;
wire [ 1:0] op_21_20;
wire [ 4:0] op_19_15;
wire [63:0] op_31_26_d;//把n位的opcode译码成2^n位，大概是one-hot
wire [15:0] op_25_22_d;
wire [ 3:0] op_21_20_d;
wire [31:0] op_19_15_d;
wire [ 4:0] rd;//rd是目标寄存器
wire [ 4:0] rj;
wire [ 4:0] rk;
wire [11:0] i12;//指令中立即数有两种位宽，12和16
wire [15:0] i16;
//朴素的控制信号。。。
wire        inst_add_w;
wire        inst_addi_w;
wire        inst_ld_w;
wire        inst_st_w;
wire        inst_bne;

wire        src2_is_imm;//一个MUX，ALUSrc
wire        res_from_mem;//一个MUX，MemtoReg
wire        gr_we;//寄存器堆的写使能
wire        mem_we;//数据存储器的写使能
wire        src_reg_is_rd;//一个MUX，我是不是会用到rd作为运算的输入
wire [31:0] rj_value;
wire [31:0] rkd_value;

wire [ 4:0] rf_raddr1;
wire [ 4:0] rf_raddr2;
wire [31:0] rf_wdata;

wire        br_taken;//一个MUX，是否是branch
wire        rj_eq_rd;//一个信号，Zero？
wire [31:0] br_offs;//branch的偏移量
wire [31:0] br_target;//branch的目标

wire [31:0] imm;
wire [31:0] alu_src1;
wire [31:0] alu_src2;
wire [31:0] alu_result;
//以上是变量的声明，尽可能避免了使用reg，可以参考（

always @(posedge clk) begin
    if (reset) begin
        pc <= 32'h1bfffffc;     //trick: to make nextpc be 0x1c000000 during reset 这个很好啊
    end
    else begin
        pc <= nextpc;
    end
end
//取指阶段
assign inst_sram_we    = 1'b0;//你并不会边运行边创造指令（
assign inst_sram_addr  = pc;//我要从InstMem[PC]取当前指令
assign inst_sram_wdata = 32'b0;
assign inst            = inst_sram_rdata;
//译码阶段
assign op_31_26 = inst[31:26];
assign op_25_22 = inst[25:22];
assign op_21_20 = inst[21:20];
assign op_19_15 = inst[19:15];
assign rd       = inst[ 4: 0];
assign rj       = inst[ 9: 5];
assign rk       = inst[14:10];
assign i12      = inst[21:10];
assign i16      = inst[25:10];
//用了各种译码器来解码
decoder_6_64 u_dec0(.in(op_31_26 ), .co(op_31_26_d ));
decoder_4_16 u_dec1(.in(op_25_22 ), .co(op_25_22_d ));
decoder_2_4  u_dec2(.in(op_21_20 ), .co(op_21_20_d ));
decoder_5_32 u_dec3(.in(op_19_15 ), .co(op_19_15_d ));

assign inst_add_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h00];
assign inst_addi_w = op_31_26_d[6'h00] & op_25_22_d[4'ha];
assign inst_ld_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h2];
assign inst_st_w   = ;//在这里实现inst_st_w指令的译码
assign inst_bne    = op_31_26_d[6'h17];

assign src2_is_imm   = ;//在这里实现立即数选择信号
assign res_from_mem  = inst_ld_w;
assign gr_we         = inst_add_w | inst_ld_w | inst_addi_w;
assign mem_we        = inst_st_w;
assign src_reg_is_rd = inst_bne | inst_st_w;

assign rf_raddr1 = rj;
assign rf_raddr2 = src_reg_is_rd ? rd :rk;
regfile u_regfile(
    .clk    (clk      ),
    .raddr1 (         ),
    .rdata1 (rj_value),
    .raddr2 (         ),
    .rdata2 (rkd_value),
    .we     (gr_we    ),
    .waddr  (         ),
    .wdata  (rf_wdata )
    );//在空出的括号里完成引脚匹配

assign br_offs   = ;//在这里完成br_offs信号的生成
assign br_target = pc + br_offs;
assign rj_eq_rd  = (rj_value == rkd_value);
assign br_taken  = valid && inst_bne  && !rj_eq_rd;
assign nextpc    = ;//在这里实现nextpc信号的生成

assign imm      = {{20{i12[11]}},i12[11:0]};
assign alu_src1 = rj_value;
assign alu_src2 = ;//在这里实现alu_src2信号

assign alu_result = alu_src1+alu_src2;

assign data_sram_we    = mem_we;
assign data_sram_addr  = alu_result;
assign data_sram_wdata = rkd_value;

assign rf_wdata = ;//在这里完成写回寄存器值的选择

endmodule
                         
