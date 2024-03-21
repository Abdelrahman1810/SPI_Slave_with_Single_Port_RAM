// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Mar  4 01:15:39 2024
// Host        : DESKTOP-T2BOOTJ running 64-bit major release  (build 9200)
// Command     : write_verilog {F:/digital design/SPI - Project/SPI.v}
// Design      : instantiation
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    p_0_out,
    clk_IBUF_BUFG,
    rx_valid_reg,
    rx_valid_reg_0,
    SR,
    ADDRBWRADDR,
    Q,
    rst_n_IBUF,
    tx_valid_reg_0,
    \counter_reg[4] ,
    \counter_reg[4]_0 ,
    \counter_reg[4]_1 ,
    E);
  output tx_valid;
  output p_0_out;
  input clk_IBUF_BUFG;
  input rx_valid_reg;
  input rx_valid_reg_0;
  input [0:0]SR;
  input [7:0]ADDRBWRADDR;
  input [7:0]Q;
  input rst_n_IBUF;
  input tx_valid_reg_0;
  input \counter_reg[4] ;
  input \counter_reg[4]_0 ;
  input \counter_reg[4]_1 ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]E;
  wire MISO_i_5_n_0;
  wire MISO_i_6_n_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire \counter_reg[4] ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [0:0]dout0;
  wire p_0_out;
  wire rst_n_IBUF;
  wire rx_valid_reg;
  wire rx_valid_reg_0;
  wire tx_valid;
  wire tx_valid_reg_0;
  wire [7:0]w_addr;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_5
       (.I0(data3),
        .I1(data2),
        .I2(\counter_reg[4]_0 ),
        .I3(data1),
        .I4(\counter_reg[4]_1 ),
        .I5(dout0),
        .O(MISO_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_6
       (.I0(data7),
        .I1(data6),
        .I2(\counter_reg[4]_0 ),
        .I3(data5),
        .I4(\counter_reg[4]_1 ),
        .I5(data4),
        .O(MISO_i_6_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_5_n_0),
        .I1(MISO_i_6_n_0),
        .O(p_0_out),
        .S(\counter_reg[4] ));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,w_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO({data7,data6,data5,data4,data3,data2,data1,dout0}),
        .ENARDEN(rx_valid_reg),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(rx_valid_reg_0),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(SR),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[0]),
        .Q(w_addr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[1]),
        .Q(w_addr[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[2]),
        .Q(w_addr[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[3]),
        .Q(w_addr[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[4]),
        .Q(w_addr[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[5]),
        .Q(w_addr[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[6]),
        .Q(w_addr[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \w_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[7]),
        .Q(w_addr[7]),
        .R(\<const0> ));
endmodule

module SPI
   (MISO_OBUF,
    SR,
    ADDRBWRADDR,
    Q,
    tx_valid_reg,
    ram_reg,
    ram_reg_0,
    E,
    MISO_reg_0,
    MISO_reg_1,
    r_addr,
    MISO_reg_2,
    p_0_out,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    ram_reg_i_18,
    ram_reg_i_17,
    ram_reg_i_16,
    ram_reg_i_15,
    ram_reg_i_14,
    ram_reg_i_13,
    ram_reg_i_12,
    ram_reg_i_11,
    D,
    SS_n_IBUF,
    tx_valid);
  output MISO_OBUF;
  output [0:0]SR;
  output [7:0]ADDRBWRADDR;
  output [7:0]Q;
  output tx_valid_reg;
  output ram_reg;
  output ram_reg_0;
  output [0:0]E;
  output MISO_reg_0;
  output MISO_reg_1;
  output r_addr;
  output MISO_reg_2;
  input p_0_out;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input ram_reg_i_18;
  input ram_reg_i_17;
  input ram_reg_i_16;
  input ram_reg_i_15;
  input ram_reg_i_14;
  input ram_reg_i_13;
  input ram_reg_i_12;
  input ram_reg_i_11;
  input [0:0]D;
  input SS_n_IBUF;
  input tx_valid;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_3_n_0;
  wire MISO_reg_0;
  wire MISO_reg_1;
  wire MISO_reg_2;
  wire [7:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire clk_IBUF_BUFG;
  wire counter0;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [2:0]ns;
  wire [4:0]p_0_in;
  wire p_0_out;
  wire r_addr;
  wire ram_reg;
  wire ram_reg_0;
  wire ram_reg_i_11;
  wire ram_reg_i_12;
  wire ram_reg_i_13;
  wire ram_reg_i_14;
  wire ram_reg_i_15;
  wire ram_reg_i_16;
  wire ram_reg_i_17;
  wire ram_reg_i_18;
  wire read_trans_i_1_n_0;
  wire read_trans_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid6_out;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h00000000FFEFBBBB)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(D),
        .I3(read_trans_reg_n_0),
        .I4(cs[0]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(SS_n_IBUF),
        .O(ns[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'h00AA00AA00EA00AA)) 
    \FSM_gray_cs[2]_i_2 
       (.I0(cs[2]),
        .I1(D),
        .I2(read_trans_reg_n_0),
        .I3(SS_n_IBUF),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hE0)) 
    MISO_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(MISO_i_3_n_0),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'h0808080808202020)) 
    MISO_i_3
       (.I0(tx_valid),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[4]),
        .I3(counter_reg__0[0]),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[2]),
        .O(MISO_i_3_n_0));
  LUT5 #(
    .INIT(32'hFBBFBFBF)) 
    MISO_i_4
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[0]),
        .I4(counter_reg__0[1]),
        .O(MISO_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFBFEFFD)) 
    MISO_i_7
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[1]),
        .O(MISO_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFBFBFF7)) 
    MISO_i_8
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[1]),
        .O(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(p_0_out),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h57)) 
    \counter[4]_i_1 
       (.I0(rst_n_IBUF),
        .I1(cs[2]),
        .I2(cs[1]),
        .O(\counter[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[4]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .O(counter0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_3 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter_reg__0[1]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0),
        .D(p_0_in[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    ram_reg_i_1
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(ram_reg_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_10
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_18),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'h2000)) 
    ram_reg_i_19
       (.I0(rst_n_IBUF),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rx_valid),
        .O(r_addr));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(ram_reg));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_3
       (.I0(Q[7]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_11),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_4
       (.I0(Q[6]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_12),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_5
       (.I0(Q[5]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_13),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_6
       (.I0(Q[4]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_14),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_7
       (.I0(Q[3]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_15),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_8
       (.I0(Q[2]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_16),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    ram_reg_i_9
       (.I0(Q[1]),
        .I1(rst_n_IBUF),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rx_valid),
        .I5(ram_reg_i_17),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'h7F10)) 
    read_trans_i_1
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(read_trans_reg_n_0),
        .O(read_trans_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_trans_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(read_trans_i_1_n_0),
        .Q(read_trans_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h01550000)) 
    \rx_data[9]_i_1 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter0),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data[8]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data[9]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(D),
        .Q(rx_data[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hB080)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(rx_valid6_out),
        .I2(rst_n_IBUF),
        .I3(rx_valid),
        .O(rx_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF00FF00BF00FE00)) 
    rx_valid_i_2
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter0),
        .I4(counter_reg__0[3]),
        .I5(counter_reg__0[4]),
        .O(rx_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000008000802)) 
    rx_valid_i_3
       (.I0(counter0),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[4]),
        .O(rx_valid6_out));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC8080808)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rst_n_IBUF),
        .I2(rx_valid),
        .I3(rx_data[9]),
        .I4(rx_data[8]),
        .O(tx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \w_addr[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rx_valid),
        .O(E));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module instantiation
   (clk,
    rst_n,
    MOSI,
    SS_n,
    MISO);
  input clk;
  input rst_n;
  input MOSI;
  input SS_n;
  output MISO;

  wire \<const0> ;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire p_0_out;
  wire r_addr;
  wire ram_reg_i_11_n_0;
  wire ram_reg_i_12_n_0;
  wire ram_reg_i_13_n_0;
  wire ram_reg_i_14_n_0;
  wire ram_reg_i_15_n_0;
  wire ram_reg_i_16_n_0;
  wire ram_reg_i_17_n_0;
  wire ram_reg_i_18_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spiBlock_n_1;
  wire spiBlock_n_18;
  wire spiBlock_n_19;
  wire spiBlock_n_2;
  wire spiBlock_n_20;
  wire spiBlock_n_21;
  wire spiBlock_n_22;
  wire spiBlock_n_23;
  wire spiBlock_n_25;
  wire spiBlock_n_3;
  wire spiBlock_n_4;
  wire spiBlock_n_5;
  wire spiBlock_n_6;
  wire spiBlock_n_7;
  wire spiBlock_n_8;
  wire spiBlock_n_9;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ramBlock
       (.ADDRBWRADDR({spiBlock_n_2,spiBlock_n_3,spiBlock_n_4,spiBlock_n_5,spiBlock_n_6,spiBlock_n_7,spiBlock_n_8,spiBlock_n_9}),
        .E(spiBlock_n_21),
        .Q(rx_data),
        .SR(spiBlock_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[4] (spiBlock_n_25),
        .\counter_reg[4]_0 (spiBlock_n_23),
        .\counter_reg[4]_1 (spiBlock_n_22),
        .p_0_out(p_0_out),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid_reg(spiBlock_n_20),
        .rx_valid_reg_0(spiBlock_n_19),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(spiBlock_n_18));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_11
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[7]),
        .Q(ram_reg_i_11_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_12
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[6]),
        .Q(ram_reg_i_12_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_13
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[5]),
        .Q(ram_reg_i_13_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_14
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[4]),
        .Q(ram_reg_i_14_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_15
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[3]),
        .Q(ram_reg_i_15_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_16
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[2]),
        .Q(ram_reg_i_16_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_17
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[1]),
        .Q(ram_reg_i_17_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ram_reg_i_18
       (.C(clk_IBUF_BUFG),
        .CE(r_addr),
        .D(rx_data[0]),
        .Q(ram_reg_i_18_n_0),
        .R(\<const0> ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI spiBlock
       (.ADDRBWRADDR({spiBlock_n_2,spiBlock_n_3,spiBlock_n_4,spiBlock_n_5,spiBlock_n_6,spiBlock_n_7,spiBlock_n_8,spiBlock_n_9}),
        .D(MOSI_IBUF),
        .E(spiBlock_n_21),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0(spiBlock_n_22),
        .MISO_reg_1(spiBlock_n_23),
        .MISO_reg_2(spiBlock_n_25),
        .Q(rx_data),
        .SR(spiBlock_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_out(p_0_out),
        .r_addr(r_addr),
        .ram_reg(spiBlock_n_19),
        .ram_reg_0(spiBlock_n_20),
        .ram_reg_i_11(ram_reg_i_11_n_0),
        .ram_reg_i_12(ram_reg_i_12_n_0),
        .ram_reg_i_13(ram_reg_i_13_n_0),
        .ram_reg_i_14(ram_reg_i_14_n_0),
        .ram_reg_i_15(ram_reg_i_15_n_0),
        .ram_reg_i_16(ram_reg_i_16_n_0),
        .ram_reg_i_17(ram_reg_i_17_n_0),
        .ram_reg_i_18(ram_reg_i_18_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(spiBlock_n_18));
endmodule
