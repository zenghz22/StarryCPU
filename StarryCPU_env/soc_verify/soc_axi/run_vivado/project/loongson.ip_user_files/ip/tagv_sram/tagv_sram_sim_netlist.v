// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 17 18:17:46 2024
// Host        : LAPTOP-76HLJIEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/1Learn/24Summer/Lxb/StarryCPU/StarryCPU_env/soc_verify/soc_axi/run_vivado/project/loongson.runs/tagv_sram_synth_1/tagv_sram_sim_netlist.v
// Design      : tagv_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_sram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module tagv_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [20:0]dina;
  wire [20:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.08085 mW" *) 
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
  (* C_INIT_FILE = "tagv_sram.mem" *) 
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
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tagv_sram_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20240)
`pragma protect data_block
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
JjjmFmc=
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
