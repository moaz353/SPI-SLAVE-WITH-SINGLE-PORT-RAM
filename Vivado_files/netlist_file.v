// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Aug 23 18:22:13 2024
// Host        : Mo-AZ running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/Digital ic design/k.wasem diploma/Assignments/Project_2_SPI - Copy/Design_and_tb/New
//               folder/project_1.v}
// Design      : SPI
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tffg1156-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (DOBDO,
    tx_valid,
    CLK,
    rx_valid,
    \rx_data_reg[9] ,
    SR,
    D,
    WEA,
    \rx_data_reg[8] ,
    E);
  output [7:0]DOBDO;
  output tx_valid;
  input CLK;
  input rx_valid;
  input \rx_data_reg[9] ;
  input [0:0]SR;
  input [7:0]D;
  input [0:0]WEA;
  input \rx_data_reg[8] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDr;
  wire CLK;
  wire [7:0]D;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire rx_valid;
  wire tx_valid;

  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(ADDr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(ADDr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(ADDr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(ADDr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(ADDr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(ADDr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(ADDr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ADDr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(ADDr[7]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,ADDr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,ADDr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(DOBDO),
        .ENARDEN(rx_valid),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8] ),
        .Q(tx_valid),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI
   (mosi,
    ss_n,
    clk,
    rst_n,
    miso);
  input mosi;
  input ss_n;
  input clk;
  input rst_n;
  output miso;

  wire BLK_1_n_1;
  wire BLK_1_n_12;
  wire BLK_1_n_14;
  wire BLK_1_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire miso;
  wire miso_OBUF;
  wire mosi;
  wire mosi_IBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_valid;
  wire ss_n;
  wire ss_n_IBUF;
  wire [7:0]tx_data;
  wire tx_valid;

  SPI_SLAVE BLK_1
       (.CLK(clk_IBUF_BUFG),
        .DOBDO(tx_data),
        .E(BLK_1_n_12),
        .Q(rx_data),
        .SR(BLK_1_n_1),
        .WEA(mem),
        .mem_reg(BLK_1_n_3),
        .miso_OBUF(miso_OBUF),
        .mosi_IBUF(mosi_IBUF),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .ss_n_IBUF(ss_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(BLK_1_n_14));
  RAM BLK_2
       (.CLK(clk_IBUF_BUFG),
        .D(rx_data),
        .DOBDO(tx_data),
        .E(BLK_1_n_12),
        .SR(BLK_1_n_1),
        .WEA(mem),
        .\rx_data_reg[8] (BLK_1_n_14),
        .\rx_data_reg[9] (BLK_1_n_3),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF miso_OBUF_inst
       (.I(miso_OBUF),
        .O(miso));
  IBUF mosi_IBUF_inst
       (.I(mosi),
        .O(mosi_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF ss_n_IBUF_inst
       (.I(ss_n),
        .O(ss_n_IBUF));
endmodule

module SPI_SLAVE
   (miso_OBUF,
    SR,
    rx_valid,
    mem_reg,
    Q,
    E,
    WEA,
    tx_valid_reg,
    CLK,
    rst_n_IBUF,
    mosi_IBUF,
    ss_n_IBUF,
    tx_valid,
    DOBDO);
  output miso_OBUF;
  output [0:0]SR;
  output rx_valid;
  output mem_reg;
  output [7:0]Q;
  output [0:0]E;
  output [0:0]WEA;
  output tx_valid_reg;
  input CLK;
  input rst_n_IBUF;
  input mosi_IBUF;
  input ss_n_IBUF;
  input tx_valid;
  input [7:0]DOBDO;

  wire \<const1> ;
  wire CLK;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire counter_1_n_0;
  wire counter_1_n_2;
  wire counter_en_2;
  wire [2:0]cs;
  wire mem_reg;
  wire miso_OBUF;
  wire miso_i_1_n_0;
  wire mosi_IBUF;
  wire [2:0]ns;
  wire [7:0]p_1_in;
  wire p_2_in;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire ss_n_IBUF;
  wire tst;
  wire tst_i_1_n_0;
  wire \tx_data_reg_reg_n_0_[0] ;
  wire \tx_data_reg_reg_n_0_[1] ;
  wire \tx_data_reg_reg_n_0_[2] ;
  wire \tx_data_reg_reg_n_0_[3] ;
  wire \tx_data_reg_reg_n_0_[4] ;
  wire \tx_data_reg_reg_n_0_[5] ;
  wire \tx_data_reg_reg_n_0_[6] ;
  wire tx_valid;
  wire tx_valid_reg;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ADDr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(E));
  VCC VCC
       (.P(\<const1> ));
  counter_up counter_1
       (.CLK(CLK),
        .Q(cs),
        .SR(SR),
        .counter_en_2(counter_en_2),
        .counter_en_2_reg(counter_1_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid_reg(counter_1_n_2),
        .ss_n_IBUF(ss_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    counter_en_2_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter_1_n_0),
        .Q(counter_en_2),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000BA55)) 
    \cs[0]_i_1 
       (.I0(cs[1]),
        .I1(tst),
        .I2(mosi_IBUF),
        .I3(cs[0]),
        .I4(ss_n_IBUF),
        .I5(cs[2]),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'h000000000000AEEE)) 
    \cs[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(tst),
        .I3(mosi_IBUF),
        .I4(ss_n_IBUF),
        .I5(cs[2]),
        .O(ns[1]));
  LUT6 #(
    .INIT(64'h0000000000080F00)) 
    \cs[2]_i_1 
       (.I0(tst),
        .I1(mosi_IBUF),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(ss_n_IBUF),
        .O(ns[2]));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODING = "gray" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_3
       (.I0(rst_n_IBUF),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h1000)) 
    miso_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(tx_valid),
        .I3(cs[2]),
        .O(miso_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    miso_reg
       (.C(CLK),
        .CE(miso_i_1_n_0),
        .D(p_2_in),
        .Q(miso_OBUF),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[0]_i_1 
       (.I0(mosi_IBUF),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[1]_i_1 
       (.I0(Q[0]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[2]_i_1 
       (.I0(Q[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[3]_i_1 
       (.I0(Q[2]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[4]_i_1 
       (.I0(Q[3]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[5]_i_1 
       (.I0(Q[4]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[6]_i_1 
       (.I0(Q[5]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[7]_i_1 
       (.I0(Q[6]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[8]_i_1 
       (.I0(Q[7]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2208)) 
    \rx_data[9]_i_1 
       (.I0(rx_data[8]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter_1_n_2),
        .Q(rx_valid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB20)) 
    tst_i_1
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(tst),
        .O(tst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tst_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tst_i_1_n_0),
        .Q(tst),
        .R(SR));
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \tx_data_reg[0]_i_1 
       (.I0(DOBDO[0]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[1]_i_1 
       (.I0(DOBDO[1]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[2]_i_1 
       (.I0(DOBDO[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[1] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[3]_i_1 
       (.I0(DOBDO[3]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[2] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[4]_i_1 
       (.I0(DOBDO[4]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[3] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[5]_i_1 
       (.I0(DOBDO[5]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[4] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[6]_i_1 
       (.I0(DOBDO[6]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[5] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hABAAAAAAA8AAAAAA)) 
    \tx_data_reg[7]_i_1 
       (.I0(DOBDO[7]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(tx_valid),
        .I5(\tx_data_reg_reg_n_0_[6] ),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(\tx_data_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[1]),
        .Q(\tx_data_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(\tx_data_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(\tx_data_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[4]),
        .Q(\tx_data_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[5]),
        .Q(\tx_data_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(\tx_data_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(p_2_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tx_valid_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .O(tx_valid_reg));
endmodule

module counter_up
   (counter_en_2_reg,
    SR,
    rx_valid_reg,
    Q,
    counter_en_2,
    rst_n_IBUF,
    ss_n_IBUF,
    CLK);
  output counter_en_2_reg;
  output [0:0]SR;
  output rx_valid_reg;
  input [2:0]Q;
  input counter_en_2;
  input rst_n_IBUF;
  input ss_n_IBUF;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire [0:0]SR;
  wire counter_en;
  wire counter_en_2;
  wire counter_en_2_i_2_n_0;
  wire counter_en_2_reg;
  wire \out[0]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire [3:0]position_1;
  wire rst_n_IBUF;
  wire rx_valid_reg;
  wire ss_n_IBUF;

  LUT5 #(
    .INIT(32'hEF3FEE33)) 
    counter_en_2_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_en_2_i_2_n_0),
        .I3(Q[2]),
        .I4(counter_en_2),
        .O(counter_en_2_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    counter_en_2_i_2
       (.I0(position_1[0]),
        .I1(position_1[2]),
        .I2(position_1[1]),
        .I3(position_1[3]),
        .O(counter_en_2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \out[0]_i_1 
       (.I0(position_1[2]),
        .I1(position_1[1]),
        .I2(position_1[3]),
        .I3(position_1[0]),
        .O(\out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \out[1]_i_1 
       (.I0(position_1[2]),
        .I1(position_1[0]),
        .I2(position_1[1]),
        .I3(position_1[3]),
        .O(\out[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \out[2]_i_1 
       (.I0(position_1[2]),
        .I1(position_1[0]),
        .I2(position_1[1]),
        .O(\out[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00560000)) 
    \out[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ss_n_IBUF),
        .I4(counter_en_2),
        .O(counter_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \out[3]_i_2 
       (.I0(position_1[2]),
        .I1(position_1[0]),
        .I2(position_1[1]),
        .I3(position_1[3]),
        .O(\out[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(counter_en),
        .D(\out[0]_i_1_n_0 ),
        .Q(position_1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(counter_en),
        .D(\out[1]_i_1_n_0 ),
        .Q(position_1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(counter_en),
        .D(\out[2]_i_1_n_0 ),
        .Q(position_1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(counter_en),
        .D(\out[3]_i_2_n_0 ),
        .Q(position_1[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    rx_valid_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(position_1[0]),
        .I3(position_1[2]),
        .I4(position_1[1]),
        .I5(position_1[3]),
        .O(rx_valid_reg));
endmodule
