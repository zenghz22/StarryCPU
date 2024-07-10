// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jul  8 20:02:42 2024
// Host        : LAPTOP-76HLJIEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/1Learn/24Summer/Lxb/StarryCPU/mycpu_env/soc_verify/soc_dram/rtl/xilinx_ip/inst_ram/inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module inst_ram
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  inst_ram_dist_mem_gen_v8_0_15 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16352)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
