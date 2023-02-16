// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Nov  9 11:17:38 2022
// Host        : liara running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L95uM2CkhWTXDHv23iDrACxPmZckz0AygUN3+leAKwdS6OG4c4mgCSjf7xTTkDNyW9IeYkmJd6vc
Cur0Vq47JLjvX33O+7rKAz/vCgvS6HHUMP2Lm5a/yrZXGv1A4sg4NuTnDgm5okj0SiXbkLUKm81v
QsI1jhJpCz2KMY4EJz03pUQ3eKY9U9aGjm9BOeqgFHIA0t3updsbvfgfzn/suAg6sNPI5jSxYWjP
6W4pVAOhKBtrT4ovmHEbv1FPlfmefSXutfQGdOTsmE/aVXm+odQpSbtdtnbo8xVYiLlKQNDYefQE
M1HE32+JcArrw9m3bv0KLoVP+HXUdIap9Wh/Cw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BFz7uWWxhEJY8lxhLMOMKE/GlG9j+FwDlDBtJK1n+s4icCETmOHhn9HkqHZ4YyzwOTYLLasYKrQU
yawS4FoIKjZRDvttIGt/4PRhXRMwOg8uZnisJL5nT6HE5RgEwRTJZF/AeGB/06wMpcqzG6t/k3Z+
flEMhPG37bicQXGWqxEdZVE/uSI/GpV38tJImy8HDSugg7VS4WtOQ7VtHHioaZw9n4Vbp9AyCt5N
T6p1ibxxrvLwErmC9ZTOo8QGUuiX4+FD7Ry9bSr7+oeBW8eoAgItho0U4CHw351PBHoQkuCf9kMz
aEvDtYe9VEf06R6o4MIIOaz8fEnCETZ+lr8Qmg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18816)
`pragma protect data_block
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
nF21+s9h
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
