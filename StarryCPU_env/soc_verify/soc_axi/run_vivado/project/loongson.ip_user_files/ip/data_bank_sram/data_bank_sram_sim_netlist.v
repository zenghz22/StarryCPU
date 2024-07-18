// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 17 18:17:47 2024
// Host        : LAPTOP-76HLJIEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/1Learn/24Summer/Lxb/StarryCPU/StarryCPU_env/soc_verify/soc_axi/run_vivado/project/loongson.runs/data_bank_sram_synth_1/data_bank_sram_sim_netlist.v
// Design      : data_bank_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_bank_sram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module data_bank_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_bank_sram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  data_bank_sram_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19744)
`pragma protect data_block
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
5PGlGvKQmvJhioZxXoK/eA7ob3xneA==
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
