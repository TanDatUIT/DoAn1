//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Apr 21 15:35:00 2026
//Host        : tandatASUS running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=8,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_clkrst_cnt=6,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [0:0]ARESETN_1;
  wire [63:0]inference_top_0_m_axi_gmem0_ARADDR;
  wire [1:0]inference_top_0_m_axi_gmem0_ARBURST;
  wire [3:0]inference_top_0_m_axi_gmem0_ARCACHE;
  wire [0:0]inference_top_0_m_axi_gmem0_ARID;
  wire [7:0]inference_top_0_m_axi_gmem0_ARLEN;
  wire [1:0]inference_top_0_m_axi_gmem0_ARLOCK;
  wire [2:0]inference_top_0_m_axi_gmem0_ARPROT;
  wire [3:0]inference_top_0_m_axi_gmem0_ARQOS;
  wire [0:0]inference_top_0_m_axi_gmem0_ARREADY;
  wire [2:0]inference_top_0_m_axi_gmem0_ARSIZE;
  wire inference_top_0_m_axi_gmem0_ARVALID;
  wire [63:0]inference_top_0_m_axi_gmem0_AWADDR;
  wire [1:0]inference_top_0_m_axi_gmem0_AWBURST;
  wire [3:0]inference_top_0_m_axi_gmem0_AWCACHE;
  wire [0:0]inference_top_0_m_axi_gmem0_AWID;
  wire [7:0]inference_top_0_m_axi_gmem0_AWLEN;
  wire [1:0]inference_top_0_m_axi_gmem0_AWLOCK;
  wire [2:0]inference_top_0_m_axi_gmem0_AWPROT;
  wire [3:0]inference_top_0_m_axi_gmem0_AWQOS;
  wire [0:0]inference_top_0_m_axi_gmem0_AWREADY;
  wire [2:0]inference_top_0_m_axi_gmem0_AWSIZE;
  wire inference_top_0_m_axi_gmem0_AWVALID;
  wire [1:0]inference_top_0_m_axi_gmem0_BID;
  wire inference_top_0_m_axi_gmem0_BREADY;
  wire [1:0]inference_top_0_m_axi_gmem0_BRESP;
  wire [0:0]inference_top_0_m_axi_gmem0_BVALID;
  wire [31:0]inference_top_0_m_axi_gmem0_RDATA;
  wire [1:0]inference_top_0_m_axi_gmem0_RID;
  wire [0:0]inference_top_0_m_axi_gmem0_RLAST;
  wire inference_top_0_m_axi_gmem0_RREADY;
  wire [1:0]inference_top_0_m_axi_gmem0_RRESP;
  wire [0:0]inference_top_0_m_axi_gmem0_RVALID;
  wire [31:0]inference_top_0_m_axi_gmem0_WDATA;
  wire inference_top_0_m_axi_gmem0_WLAST;
  wire [0:0]inference_top_0_m_axi_gmem0_WREADY;
  wire [3:0]inference_top_0_m_axi_gmem0_WSTRB;
  wire inference_top_0_m_axi_gmem0_WVALID;
  wire [63:0]inference_top_0_m_axi_gmem1_ARADDR;
  wire [1:0]inference_top_0_m_axi_gmem1_ARBURST;
  wire [3:0]inference_top_0_m_axi_gmem1_ARCACHE;
  wire [0:0]inference_top_0_m_axi_gmem1_ARID;
  wire [7:0]inference_top_0_m_axi_gmem1_ARLEN;
  wire [1:0]inference_top_0_m_axi_gmem1_ARLOCK;
  wire [2:0]inference_top_0_m_axi_gmem1_ARPROT;
  wire [3:0]inference_top_0_m_axi_gmem1_ARQOS;
  wire [0:0]inference_top_0_m_axi_gmem1_ARREADY;
  wire [2:0]inference_top_0_m_axi_gmem1_ARSIZE;
  wire inference_top_0_m_axi_gmem1_ARVALID;
  wire [63:0]inference_top_0_m_axi_gmem1_AWADDR;
  wire [1:0]inference_top_0_m_axi_gmem1_AWBURST;
  wire [3:0]inference_top_0_m_axi_gmem1_AWCACHE;
  wire [0:0]inference_top_0_m_axi_gmem1_AWID;
  wire [7:0]inference_top_0_m_axi_gmem1_AWLEN;
  wire [1:0]inference_top_0_m_axi_gmem1_AWLOCK;
  wire [2:0]inference_top_0_m_axi_gmem1_AWPROT;
  wire [3:0]inference_top_0_m_axi_gmem1_AWQOS;
  wire [0:0]inference_top_0_m_axi_gmem1_AWREADY;
  wire [2:0]inference_top_0_m_axi_gmem1_AWSIZE;
  wire inference_top_0_m_axi_gmem1_AWVALID;
  wire [1:0]inference_top_0_m_axi_gmem1_BID;
  wire inference_top_0_m_axi_gmem1_BREADY;
  wire [1:0]inference_top_0_m_axi_gmem1_BRESP;
  wire [0:0]inference_top_0_m_axi_gmem1_BVALID;
  wire [31:0]inference_top_0_m_axi_gmem1_RDATA;
  wire [1:0]inference_top_0_m_axi_gmem1_RID;
  wire [0:0]inference_top_0_m_axi_gmem1_RLAST;
  wire inference_top_0_m_axi_gmem1_RREADY;
  wire [1:0]inference_top_0_m_axi_gmem1_RRESP;
  wire [0:0]inference_top_0_m_axi_gmem1_RVALID;
  wire [31:0]inference_top_0_m_axi_gmem1_WDATA;
  wire inference_top_0_m_axi_gmem1_WLAST;
  wire [0:0]inference_top_0_m_axi_gmem1_WREADY;
  wire [3:0]inference_top_0_m_axi_gmem1_WSTRB;
  wire inference_top_0_m_axi_gmem1_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire [0:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_1_axi_interconnect_ctrl_0 axi_interconnect_ctrl
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(ARESETN_1),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_arready(1'b0),
        .M00_AXI_awready(1'b0),
        .M00_AXI_bresp(1'b0),
        .M00_AXI_bvalid(1'b0),
        .M00_AXI_rdata(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rresp(1'b0),
        .M00_AXI_rvalid(1'b0),
        .M00_AXI_wready(1'b0),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(ARESETN_1),
        .M01_AXI_arready(1'b0),
        .M01_AXI_awready(1'b0),
        .M01_AXI_bresp(1'b0),
        .M01_AXI_bvalid(1'b0),
        .M01_AXI_rdata(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rresp(1'b0),
        .M01_AXI_rvalid(1'b0),
        .M01_AXI_wready(1'b0),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  design_1_axi_interconnect_mem_0 axi_interconnect_mem
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(ARESETN_1),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_arready(1'b0),
        .M00_AXI_awready(1'b0),
        .M00_AXI_bresp(1'b0),
        .M00_AXI_bvalid(1'b0),
        .M00_AXI_rdata(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rresp(1'b0),
        .M00_AXI_rvalid(1'b0),
        .M00_AXI_wready(1'b0),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(inference_top_0_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(inference_top_0_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(inference_top_0_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(inference_top_0_m_axi_gmem0_ARID),
        .S00_AXI_arlen(inference_top_0_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(inference_top_0_m_axi_gmem0_ARLOCK),
        .S00_AXI_arprot(inference_top_0_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(inference_top_0_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(inference_top_0_m_axi_gmem0_ARREADY),
        .S00_AXI_arsize(inference_top_0_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(inference_top_0_m_axi_gmem0_ARVALID),
        .S00_AXI_awaddr(inference_top_0_m_axi_gmem0_AWADDR),
        .S00_AXI_awburst(inference_top_0_m_axi_gmem0_AWBURST),
        .S00_AXI_awcache(inference_top_0_m_axi_gmem0_AWCACHE),
        .S00_AXI_awid(inference_top_0_m_axi_gmem0_AWID),
        .S00_AXI_awlen(inference_top_0_m_axi_gmem0_AWLEN),
        .S00_AXI_awlock(inference_top_0_m_axi_gmem0_AWLOCK),
        .S00_AXI_awprot(inference_top_0_m_axi_gmem0_AWPROT),
        .S00_AXI_awqos(inference_top_0_m_axi_gmem0_AWQOS),
        .S00_AXI_awready(inference_top_0_m_axi_gmem0_AWREADY),
        .S00_AXI_awsize(inference_top_0_m_axi_gmem0_AWSIZE),
        .S00_AXI_awvalid(inference_top_0_m_axi_gmem0_AWVALID),
        .S00_AXI_bid(inference_top_0_m_axi_gmem0_BID),
        .S00_AXI_bready(inference_top_0_m_axi_gmem0_BREADY),
        .S00_AXI_bresp(inference_top_0_m_axi_gmem0_BRESP),
        .S00_AXI_bvalid(inference_top_0_m_axi_gmem0_BVALID),
        .S00_AXI_rdata(inference_top_0_m_axi_gmem0_RDATA),
        .S00_AXI_rid(inference_top_0_m_axi_gmem0_RID),
        .S00_AXI_rlast(inference_top_0_m_axi_gmem0_RLAST),
        .S00_AXI_rready(inference_top_0_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(inference_top_0_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(inference_top_0_m_axi_gmem0_RVALID),
        .S00_AXI_wdata(inference_top_0_m_axi_gmem0_WDATA),
        .S00_AXI_wlast(inference_top_0_m_axi_gmem0_WLAST),
        .S00_AXI_wready(inference_top_0_m_axi_gmem0_WREADY),
        .S00_AXI_wstrb(inference_top_0_m_axi_gmem0_WSTRB),
        .S00_AXI_wvalid(inference_top_0_m_axi_gmem0_WVALID),
        .S01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S01_ARESETN(ARESETN_1),
        .S01_AXI_araddr(inference_top_0_m_axi_gmem1_ARADDR),
        .S01_AXI_arburst(inference_top_0_m_axi_gmem1_ARBURST),
        .S01_AXI_arcache(inference_top_0_m_axi_gmem1_ARCACHE),
        .S01_AXI_arid(inference_top_0_m_axi_gmem1_ARID),
        .S01_AXI_arlen(inference_top_0_m_axi_gmem1_ARLEN),
        .S01_AXI_arlock(inference_top_0_m_axi_gmem1_ARLOCK),
        .S01_AXI_arprot(inference_top_0_m_axi_gmem1_ARPROT),
        .S01_AXI_arqos(inference_top_0_m_axi_gmem1_ARQOS),
        .S01_AXI_arready(inference_top_0_m_axi_gmem1_ARREADY),
        .S01_AXI_arsize(inference_top_0_m_axi_gmem1_ARSIZE),
        .S01_AXI_arvalid(inference_top_0_m_axi_gmem1_ARVALID),
        .S01_AXI_awaddr(inference_top_0_m_axi_gmem1_AWADDR),
        .S01_AXI_awburst(inference_top_0_m_axi_gmem1_AWBURST),
        .S01_AXI_awcache(inference_top_0_m_axi_gmem1_AWCACHE),
        .S01_AXI_awid(inference_top_0_m_axi_gmem1_AWID),
        .S01_AXI_awlen(inference_top_0_m_axi_gmem1_AWLEN),
        .S01_AXI_awlock(inference_top_0_m_axi_gmem1_AWLOCK),
        .S01_AXI_awprot(inference_top_0_m_axi_gmem1_AWPROT),
        .S01_AXI_awqos(inference_top_0_m_axi_gmem1_AWQOS),
        .S01_AXI_awready(inference_top_0_m_axi_gmem1_AWREADY),
        .S01_AXI_awsize(inference_top_0_m_axi_gmem1_AWSIZE),
        .S01_AXI_awvalid(inference_top_0_m_axi_gmem1_AWVALID),
        .S01_AXI_bid(inference_top_0_m_axi_gmem1_BID),
        .S01_AXI_bready(inference_top_0_m_axi_gmem1_BREADY),
        .S01_AXI_bresp(inference_top_0_m_axi_gmem1_BRESP),
        .S01_AXI_bvalid(inference_top_0_m_axi_gmem1_BVALID),
        .S01_AXI_rdata(inference_top_0_m_axi_gmem1_RDATA),
        .S01_AXI_rid(inference_top_0_m_axi_gmem1_RID),
        .S01_AXI_rlast(inference_top_0_m_axi_gmem1_RLAST),
        .S01_AXI_rready(inference_top_0_m_axi_gmem1_RREADY),
        .S01_AXI_rresp(inference_top_0_m_axi_gmem1_RRESP),
        .S01_AXI_rvalid(inference_top_0_m_axi_gmem1_RVALID),
        .S01_AXI_wdata(inference_top_0_m_axi_gmem1_WDATA),
        .S01_AXI_wlast(inference_top_0_m_axi_gmem1_WLAST),
        .S01_AXI_wready(inference_top_0_m_axi_gmem1_WREADY),
        .S01_AXI_wstrb(inference_top_0_m_axi_gmem1_WSTRB),
        .S01_AXI_wvalid(inference_top_0_m_axi_gmem1_WVALID));
  design_1_inference_top_0_1 inference_top_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(ARESETN_1),
        .m_axi_gmem0_ARADDR(inference_top_0_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(inference_top_0_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(inference_top_0_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(inference_top_0_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(inference_top_0_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(inference_top_0_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(inference_top_0_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(inference_top_0_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(inference_top_0_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARSIZE(inference_top_0_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(inference_top_0_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWADDR(inference_top_0_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(inference_top_0_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(inference_top_0_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWID(inference_top_0_m_axi_gmem0_AWID),
        .m_axi_gmem0_AWLEN(inference_top_0_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(inference_top_0_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(inference_top_0_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(inference_top_0_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(inference_top_0_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWSIZE(inference_top_0_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(inference_top_0_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BID(inference_top_0_m_axi_gmem0_BID[0]),
        .m_axi_gmem0_BREADY(inference_top_0_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(inference_top_0_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(inference_top_0_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA(inference_top_0_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(inference_top_0_m_axi_gmem0_RID[0]),
        .m_axi_gmem0_RLAST(inference_top_0_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(inference_top_0_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(inference_top_0_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(inference_top_0_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WDATA(inference_top_0_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WLAST(inference_top_0_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(inference_top_0_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(inference_top_0_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(inference_top_0_m_axi_gmem0_WVALID),
        .m_axi_gmem1_ARADDR(inference_top_0_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(inference_top_0_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(inference_top_0_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(inference_top_0_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(inference_top_0_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(inference_top_0_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(inference_top_0_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(inference_top_0_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(inference_top_0_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARSIZE(inference_top_0_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(inference_top_0_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWADDR(inference_top_0_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(inference_top_0_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(inference_top_0_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWID(inference_top_0_m_axi_gmem1_AWID),
        .m_axi_gmem1_AWLEN(inference_top_0_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(inference_top_0_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(inference_top_0_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(inference_top_0_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(inference_top_0_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWSIZE(inference_top_0_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(inference_top_0_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BID(inference_top_0_m_axi_gmem1_BID[0]),
        .m_axi_gmem1_BREADY(inference_top_0_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(inference_top_0_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(inference_top_0_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA(inference_top_0_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(inference_top_0_m_axi_gmem1_RID[0]),
        .m_axi_gmem1_RLAST(inference_top_0_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(inference_top_0_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(inference_top_0_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(inference_top_0_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WDATA(inference_top_0_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(inference_top_0_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(inference_top_0_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(inference_top_0_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(inference_top_0_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_ARVALID(1'b0),
        .s_axi_control_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_AWVALID(1'b0),
        .s_axi_control_BREADY(1'b0),
        .s_axi_control_RREADY(1'b0),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_control_WVALID(1'b0),
        .s_axi_control_r_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_r_ARVALID(1'b0),
        .s_axi_control_r_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_r_AWVALID(1'b0),
        .s_axi_control_r_BREADY(1'b0),
        .s_axi_control_r_RREADY(1'b0),
        .s_axi_control_r_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_r_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_control_r_WVALID(1'b0));
  design_1_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(ARESETN_1),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_zynq_ultra_ps_e_0_1 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module design_1_axi_interconnect_ctrl_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output M00_AXI_araddr;
  output M00_AXI_arburst;
  output M00_AXI_arcache;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output M00_AXI_arprot;
  output M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arregion;
  output M00_AXI_arsize;
  output M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output M00_AXI_awburst;
  output M00_AXI_awcache;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output M00_AXI_awprot;
  output M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awregion;
  output M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output M01_AXI_araddr;
  output M01_AXI_arburst;
  output M01_AXI_arcache;
  output M01_AXI_arlen;
  output M01_AXI_arlock;
  output M01_AXI_arprot;
  output M01_AXI_arqos;
  input M01_AXI_arready;
  output M01_AXI_arregion;
  output M01_AXI_arsize;
  output M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output M01_AXI_awburst;
  output M01_AXI_awcache;
  output M01_AXI_awlen;
  output M01_AXI_awlock;
  output M01_AXI_awprot;
  output M01_AXI_awqos;
  input M01_AXI_awready;
  output M01_AXI_awregion;
  output M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input [0:0]S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_interconnect_ctrl_ACLK_net;
  wire axi_interconnect_ctrl_ARESETN_net;
  wire [39:0]axi_interconnect_ctrl_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_ctrl_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_ctrl_to_s00_couplers_ARCACHE;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_ctrl_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_ctrl_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_ctrl_to_s00_couplers_ARQOS;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_ctrl_to_s00_couplers_ARSIZE;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_ARUSER;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_ctrl_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_ctrl_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_ctrl_to_s00_couplers_AWCACHE;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_ctrl_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_ctrl_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_ctrl_to_s00_couplers_AWQOS;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_ctrl_to_s00_couplers_AWSIZE;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_AWUSER;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_AWVALID;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_BID;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_ctrl_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_ctrl_to_s00_couplers_RDATA;
  wire [15:0]axi_interconnect_ctrl_to_s00_couplers_RID;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_ctrl_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_ctrl_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_WLAST;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_ctrl_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_ctrl_to_s00_couplers_WVALID;
  wire m00_couplers_to_axi_interconnect_ctrl_ARADDR;
  wire m00_couplers_to_axi_interconnect_ctrl_ARBURST;
  wire m00_couplers_to_axi_interconnect_ctrl_ARCACHE;
  wire m00_couplers_to_axi_interconnect_ctrl_ARLEN;
  wire m00_couplers_to_axi_interconnect_ctrl_ARLOCK;
  wire m00_couplers_to_axi_interconnect_ctrl_ARPROT;
  wire m00_couplers_to_axi_interconnect_ctrl_ARQOS;
  wire m00_couplers_to_axi_interconnect_ctrl_ARREADY;
  wire m00_couplers_to_axi_interconnect_ctrl_ARREGION;
  wire m00_couplers_to_axi_interconnect_ctrl_ARSIZE;
  wire m00_couplers_to_axi_interconnect_ctrl_ARVALID;
  wire m00_couplers_to_axi_interconnect_ctrl_AWADDR;
  wire m00_couplers_to_axi_interconnect_ctrl_AWBURST;
  wire m00_couplers_to_axi_interconnect_ctrl_AWCACHE;
  wire m00_couplers_to_axi_interconnect_ctrl_AWLEN;
  wire m00_couplers_to_axi_interconnect_ctrl_AWLOCK;
  wire m00_couplers_to_axi_interconnect_ctrl_AWPROT;
  wire m00_couplers_to_axi_interconnect_ctrl_AWQOS;
  wire m00_couplers_to_axi_interconnect_ctrl_AWREADY;
  wire m00_couplers_to_axi_interconnect_ctrl_AWREGION;
  wire m00_couplers_to_axi_interconnect_ctrl_AWSIZE;
  wire m00_couplers_to_axi_interconnect_ctrl_AWVALID;
  wire m00_couplers_to_axi_interconnect_ctrl_BREADY;
  wire m00_couplers_to_axi_interconnect_ctrl_BRESP;
  wire m00_couplers_to_axi_interconnect_ctrl_BVALID;
  wire m00_couplers_to_axi_interconnect_ctrl_RDATA;
  wire m00_couplers_to_axi_interconnect_ctrl_RLAST;
  wire m00_couplers_to_axi_interconnect_ctrl_RREADY;
  wire m00_couplers_to_axi_interconnect_ctrl_RRESP;
  wire m00_couplers_to_axi_interconnect_ctrl_RVALID;
  wire m00_couplers_to_axi_interconnect_ctrl_WDATA;
  wire m00_couplers_to_axi_interconnect_ctrl_WLAST;
  wire m00_couplers_to_axi_interconnect_ctrl_WREADY;
  wire m00_couplers_to_axi_interconnect_ctrl_WSTRB;
  wire m00_couplers_to_axi_interconnect_ctrl_WVALID;
  wire m01_couplers_to_axi_interconnect_ctrl_ARADDR;
  wire m01_couplers_to_axi_interconnect_ctrl_ARBURST;
  wire m01_couplers_to_axi_interconnect_ctrl_ARCACHE;
  wire m01_couplers_to_axi_interconnect_ctrl_ARLEN;
  wire m01_couplers_to_axi_interconnect_ctrl_ARLOCK;
  wire m01_couplers_to_axi_interconnect_ctrl_ARPROT;
  wire m01_couplers_to_axi_interconnect_ctrl_ARQOS;
  wire m01_couplers_to_axi_interconnect_ctrl_ARREADY;
  wire m01_couplers_to_axi_interconnect_ctrl_ARREGION;
  wire m01_couplers_to_axi_interconnect_ctrl_ARSIZE;
  wire m01_couplers_to_axi_interconnect_ctrl_ARVALID;
  wire m01_couplers_to_axi_interconnect_ctrl_AWADDR;
  wire m01_couplers_to_axi_interconnect_ctrl_AWBURST;
  wire m01_couplers_to_axi_interconnect_ctrl_AWCACHE;
  wire m01_couplers_to_axi_interconnect_ctrl_AWLEN;
  wire m01_couplers_to_axi_interconnect_ctrl_AWLOCK;
  wire m01_couplers_to_axi_interconnect_ctrl_AWPROT;
  wire m01_couplers_to_axi_interconnect_ctrl_AWQOS;
  wire m01_couplers_to_axi_interconnect_ctrl_AWREADY;
  wire m01_couplers_to_axi_interconnect_ctrl_AWREGION;
  wire m01_couplers_to_axi_interconnect_ctrl_AWSIZE;
  wire m01_couplers_to_axi_interconnect_ctrl_AWVALID;
  wire m01_couplers_to_axi_interconnect_ctrl_BREADY;
  wire m01_couplers_to_axi_interconnect_ctrl_BRESP;
  wire m01_couplers_to_axi_interconnect_ctrl_BVALID;
  wire m01_couplers_to_axi_interconnect_ctrl_RDATA;
  wire m01_couplers_to_axi_interconnect_ctrl_RLAST;
  wire m01_couplers_to_axi_interconnect_ctrl_RREADY;
  wire m01_couplers_to_axi_interconnect_ctrl_RRESP;
  wire m01_couplers_to_axi_interconnect_ctrl_RVALID;
  wire m01_couplers_to_axi_interconnect_ctrl_WDATA;
  wire m01_couplers_to_axi_interconnect_ctrl_WLAST;
  wire m01_couplers_to_axi_interconnect_ctrl_WREADY;
  wire m01_couplers_to_axi_interconnect_ctrl_WSTRB;
  wire m01_couplers_to_axi_interconnect_ctrl_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [15:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [15:0]s00_couplers_to_xbar_ARUSER;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [15:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [15:0]s00_couplers_to_xbar_AWUSER;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [15:0]s00_couplers_to_xbar_BID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [15:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr = m00_couplers_to_axi_interconnect_ctrl_ARADDR;
  assign M00_AXI_arburst = m00_couplers_to_axi_interconnect_ctrl_ARBURST;
  assign M00_AXI_arcache = m00_couplers_to_axi_interconnect_ctrl_ARCACHE;
  assign M00_AXI_arlen = m00_couplers_to_axi_interconnect_ctrl_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_interconnect_ctrl_ARLOCK;
  assign M00_AXI_arprot = m00_couplers_to_axi_interconnect_ctrl_ARPROT;
  assign M00_AXI_arqos = m00_couplers_to_axi_interconnect_ctrl_ARQOS;
  assign M00_AXI_arregion = m00_couplers_to_axi_interconnect_ctrl_ARREGION;
  assign M00_AXI_arsize = m00_couplers_to_axi_interconnect_ctrl_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_ctrl_ARVALID;
  assign M00_AXI_awaddr = m00_couplers_to_axi_interconnect_ctrl_AWADDR;
  assign M00_AXI_awburst = m00_couplers_to_axi_interconnect_ctrl_AWBURST;
  assign M00_AXI_awcache = m00_couplers_to_axi_interconnect_ctrl_AWCACHE;
  assign M00_AXI_awlen = m00_couplers_to_axi_interconnect_ctrl_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_interconnect_ctrl_AWLOCK;
  assign M00_AXI_awprot = m00_couplers_to_axi_interconnect_ctrl_AWPROT;
  assign M00_AXI_awqos = m00_couplers_to_axi_interconnect_ctrl_AWQOS;
  assign M00_AXI_awregion = m00_couplers_to_axi_interconnect_ctrl_AWREGION;
  assign M00_AXI_awsize = m00_couplers_to_axi_interconnect_ctrl_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_ctrl_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_ctrl_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_ctrl_RREADY;
  assign M00_AXI_wdata = m00_couplers_to_axi_interconnect_ctrl_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_ctrl_WLAST;
  assign M00_AXI_wstrb = m00_couplers_to_axi_interconnect_ctrl_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_ctrl_WVALID;
  assign M01_AXI_araddr = m01_couplers_to_axi_interconnect_ctrl_ARADDR;
  assign M01_AXI_arburst = m01_couplers_to_axi_interconnect_ctrl_ARBURST;
  assign M01_AXI_arcache = m01_couplers_to_axi_interconnect_ctrl_ARCACHE;
  assign M01_AXI_arlen = m01_couplers_to_axi_interconnect_ctrl_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_axi_interconnect_ctrl_ARLOCK;
  assign M01_AXI_arprot = m01_couplers_to_axi_interconnect_ctrl_ARPROT;
  assign M01_AXI_arqos = m01_couplers_to_axi_interconnect_ctrl_ARQOS;
  assign M01_AXI_arregion = m01_couplers_to_axi_interconnect_ctrl_ARREGION;
  assign M01_AXI_arsize = m01_couplers_to_axi_interconnect_ctrl_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_ctrl_ARVALID;
  assign M01_AXI_awaddr = m01_couplers_to_axi_interconnect_ctrl_AWADDR;
  assign M01_AXI_awburst = m01_couplers_to_axi_interconnect_ctrl_AWBURST;
  assign M01_AXI_awcache = m01_couplers_to_axi_interconnect_ctrl_AWCACHE;
  assign M01_AXI_awlen = m01_couplers_to_axi_interconnect_ctrl_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_axi_interconnect_ctrl_AWLOCK;
  assign M01_AXI_awprot = m01_couplers_to_axi_interconnect_ctrl_AWPROT;
  assign M01_AXI_awqos = m01_couplers_to_axi_interconnect_ctrl_AWQOS;
  assign M01_AXI_awregion = m01_couplers_to_axi_interconnect_ctrl_AWREGION;
  assign M01_AXI_awsize = m01_couplers_to_axi_interconnect_ctrl_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_ctrl_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_ctrl_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_ctrl_RREADY;
  assign M01_AXI_wdata = m01_couplers_to_axi_interconnect_ctrl_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_interconnect_ctrl_WLAST;
  assign M01_AXI_wstrb = m01_couplers_to_axi_interconnect_ctrl_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_ctrl_WVALID;
  assign S00_AXI_arready[0] = axi_interconnect_ctrl_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_ctrl_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_interconnect_ctrl_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_ctrl_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_ctrl_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_ctrl_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_interconnect_ctrl_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = axi_interconnect_ctrl_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_ctrl_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_ctrl_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_ctrl_to_s00_couplers_WREADY;
  assign axi_interconnect_ctrl_ACLK_net = ACLK;
  assign axi_interconnect_ctrl_ARESETN_net = ARESETN;
  assign axi_interconnect_ctrl_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign axi_interconnect_ctrl_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign axi_interconnect_ctrl_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_ctrl_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_ctrl_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_ctrl_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_ctrl_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_ctrl_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_ctrl_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_ctrl_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_ctrl_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_ctrl_BRESP = M00_AXI_bresp;
  assign m00_couplers_to_axi_interconnect_ctrl_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_ctrl_RDATA = M00_AXI_rdata;
  assign m00_couplers_to_axi_interconnect_ctrl_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_ctrl_RRESP = M00_AXI_rresp;
  assign m00_couplers_to_axi_interconnect_ctrl_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_ctrl_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_ctrl_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_ctrl_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_ctrl_BRESP = M01_AXI_bresp;
  assign m01_couplers_to_axi_interconnect_ctrl_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_ctrl_RDATA = M01_AXI_rdata;
  assign m01_couplers_to_axi_interconnect_ctrl_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_interconnect_ctrl_RRESP = M01_AXI_rresp;
  assign m01_couplers_to_axi_interconnect_ctrl_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_ctrl_WREADY = M01_AXI_wready;
  m00_couplers_imp_NDAMLV m00_couplers
       (.M_ACLK(axi_interconnect_ctrl_ACLK_net),
        .M_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_ctrl_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_ctrl_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_ctrl_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_ctrl_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_ctrl_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_ctrl_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_ctrl_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_ctrl_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_ctrl_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_ctrl_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_ctrl_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_ctrl_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_ctrl_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_ctrl_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_ctrl_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_ctrl_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_ctrl_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_ctrl_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_ctrl_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_ctrl_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_ctrl_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_ctrl_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_ctrl_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_ctrl_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_ctrl_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_ctrl_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_ctrl_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_ctrl_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_ctrl_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_ctrl_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_ctrl_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_ctrl_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_ctrl_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_ctrl_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_ctrl_WVALID),
        .S_ACLK(axi_interconnect_ctrl_ACLK_net),
        .S_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[0]),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST[0]),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE[0]),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN[0]),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT[0]),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS[0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION[0]),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE[0]),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[0]),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST[0]),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE[0]),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN[0]),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT[0]),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS[0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION[0]),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE[0]),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA[0]),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB[0]),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1G03I8I m01_couplers
       (.M_ACLK(axi_interconnect_ctrl_ACLK_net),
        .M_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_ctrl_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_interconnect_ctrl_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_interconnect_ctrl_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_axi_interconnect_ctrl_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_interconnect_ctrl_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_ctrl_ARPROT),
        .M_AXI_arqos(m01_couplers_to_axi_interconnect_ctrl_ARQOS),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_ctrl_ARREADY),
        .M_AXI_arregion(m01_couplers_to_axi_interconnect_ctrl_ARREGION),
        .M_AXI_arsize(m01_couplers_to_axi_interconnect_ctrl_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_ctrl_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_ctrl_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_interconnect_ctrl_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_interconnect_ctrl_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_axi_interconnect_ctrl_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_interconnect_ctrl_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_ctrl_AWPROT),
        .M_AXI_awqos(m01_couplers_to_axi_interconnect_ctrl_AWQOS),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_ctrl_AWREADY),
        .M_AXI_awregion(m01_couplers_to_axi_interconnect_ctrl_AWREGION),
        .M_AXI_awsize(m01_couplers_to_axi_interconnect_ctrl_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_ctrl_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_ctrl_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_ctrl_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_ctrl_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_ctrl_RDATA),
        .M_AXI_rlast(m01_couplers_to_axi_interconnect_ctrl_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_ctrl_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_ctrl_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_ctrl_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_ctrl_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_interconnect_ctrl_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_ctrl_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_ctrl_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_ctrl_WVALID),
        .S_ACLK(axi_interconnect_ctrl_ACLK_net),
        .S_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[40]),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST[2]),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE[4]),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN[8]),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT[3]),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS[4]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION[4]),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE[3]),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[40]),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST[2]),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE[4]),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN[8]),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT[3]),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS[4]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION[4]),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE[3]),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA[32]),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB[4]),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_1C0CFJL s00_couplers
       (.M_ACLK(axi_interconnect_ctrl_ACLK_net),
        .M_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_ctrl_ACLK_net),
        .S_ARESETN(axi_interconnect_ctrl_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_ctrl_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_ctrl_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_ctrl_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_ctrl_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_ctrl_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_ctrl_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_ctrl_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_ctrl_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_ctrl_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_ctrl_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_ctrl_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_ctrl_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_ctrl_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_ctrl_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_ctrl_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_ctrl_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_ctrl_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_ctrl_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_ctrl_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_ctrl_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_ctrl_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_ctrl_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_ctrl_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_ctrl_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_ctrl_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_ctrl_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_ctrl_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_ctrl_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_ctrl_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_ctrl_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_ctrl_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_ctrl_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_ctrl_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_ctrl_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_ctrl_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_ctrl_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_ctrl_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_ctrl_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_ctrl_to_s00_couplers_WVALID));
  design_1_xbar_2 xbar
       (.aclk(axi_interconnect_ctrl_ACLK_net),
        .aresetn(axi_interconnect_ctrl_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_aruser(s00_couplers_to_xbar_ARUSER),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awuser(s00_couplers_to_xbar_AWUSER),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_axi_interconnect_mem_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output M00_AXI_araddr;
  output M00_AXI_arburst;
  output M00_AXI_arcache;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output M00_AXI_arprot;
  output M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arregion;
  output M00_AXI_arsize;
  output M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output M00_AXI_awburst;
  output M00_AXI_awcache;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output M00_AXI_awprot;
  output M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awregion;
  output M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [1:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  output [1:0]S01_AXI_bid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rid;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire axi_interconnect_mem_ACLK_net;
  wire axi_interconnect_mem_ARESETN_net;
  wire [63:0]axi_interconnect_mem_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_mem_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_mem_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_mem_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_mem_to_s00_couplers_ARQOS;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_mem_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_mem_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_mem_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_mem_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_mem_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_mem_to_s00_couplers_AWQOS;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_mem_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_AWVALID;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_BID;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_mem_to_s00_couplers_RDATA;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_RID;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_RLAST;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_mem_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_mem_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_WLAST;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_mem_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_mem_to_s00_couplers_WVALID;
  wire [63:0]axi_interconnect_mem_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_mem_to_s01_couplers_ARCACHE;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_ARID;
  wire [7:0]axi_interconnect_mem_to_s01_couplers_ARLEN;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_mem_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_mem_to_s01_couplers_ARQOS;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_ARREADY;
  wire [2:0]axi_interconnect_mem_to_s01_couplers_ARSIZE;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_ARVALID;
  wire [63:0]axi_interconnect_mem_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_mem_to_s01_couplers_AWCACHE;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_AWID;
  wire [7:0]axi_interconnect_mem_to_s01_couplers_AWLEN;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_mem_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_mem_to_s01_couplers_AWQOS;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_AWREADY;
  wire [2:0]axi_interconnect_mem_to_s01_couplers_AWSIZE;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_AWVALID;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_BID;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_BRESP;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_mem_to_s01_couplers_RDATA;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_RID;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_RLAST;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_mem_to_s01_couplers_RRESP;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_mem_to_s01_couplers_WDATA;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_WLAST;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_mem_to_s01_couplers_WSTRB;
  wire [0:0]axi_interconnect_mem_to_s01_couplers_WVALID;
  wire m00_couplers_to_axi_interconnect_mem_ARADDR;
  wire m00_couplers_to_axi_interconnect_mem_ARBURST;
  wire m00_couplers_to_axi_interconnect_mem_ARCACHE;
  wire m00_couplers_to_axi_interconnect_mem_ARLEN;
  wire m00_couplers_to_axi_interconnect_mem_ARLOCK;
  wire m00_couplers_to_axi_interconnect_mem_ARPROT;
  wire m00_couplers_to_axi_interconnect_mem_ARQOS;
  wire m00_couplers_to_axi_interconnect_mem_ARREADY;
  wire m00_couplers_to_axi_interconnect_mem_ARREGION;
  wire m00_couplers_to_axi_interconnect_mem_ARSIZE;
  wire m00_couplers_to_axi_interconnect_mem_ARVALID;
  wire m00_couplers_to_axi_interconnect_mem_AWADDR;
  wire m00_couplers_to_axi_interconnect_mem_AWBURST;
  wire m00_couplers_to_axi_interconnect_mem_AWCACHE;
  wire m00_couplers_to_axi_interconnect_mem_AWLEN;
  wire m00_couplers_to_axi_interconnect_mem_AWLOCK;
  wire m00_couplers_to_axi_interconnect_mem_AWPROT;
  wire m00_couplers_to_axi_interconnect_mem_AWQOS;
  wire m00_couplers_to_axi_interconnect_mem_AWREADY;
  wire m00_couplers_to_axi_interconnect_mem_AWREGION;
  wire m00_couplers_to_axi_interconnect_mem_AWSIZE;
  wire m00_couplers_to_axi_interconnect_mem_AWVALID;
  wire m00_couplers_to_axi_interconnect_mem_BREADY;
  wire m00_couplers_to_axi_interconnect_mem_BRESP;
  wire m00_couplers_to_axi_interconnect_mem_BVALID;
  wire m00_couplers_to_axi_interconnect_mem_RDATA;
  wire m00_couplers_to_axi_interconnect_mem_RLAST;
  wire m00_couplers_to_axi_interconnect_mem_RREADY;
  wire m00_couplers_to_axi_interconnect_mem_RRESP;
  wire m00_couplers_to_axi_interconnect_mem_RVALID;
  wire m00_couplers_to_axi_interconnect_mem_WDATA;
  wire m00_couplers_to_axi_interconnect_mem_WLAST;
  wire m00_couplers_to_axi_interconnect_mem_WREADY;
  wire m00_couplers_to_axi_interconnect_mem_WSTRB;
  wire m00_couplers_to_axi_interconnect_mem_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [0:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [1:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [0:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [1:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [1:0]s00_couplers_to_xbar_BID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [1:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [0:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [1:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [1:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [3:2]s01_couplers_to_xbar_BID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [3:2]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [0:0]s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr = m00_couplers_to_axi_interconnect_mem_ARADDR;
  assign M00_AXI_arburst = m00_couplers_to_axi_interconnect_mem_ARBURST;
  assign M00_AXI_arcache = m00_couplers_to_axi_interconnect_mem_ARCACHE;
  assign M00_AXI_arlen = m00_couplers_to_axi_interconnect_mem_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_interconnect_mem_ARLOCK;
  assign M00_AXI_arprot = m00_couplers_to_axi_interconnect_mem_ARPROT;
  assign M00_AXI_arqos = m00_couplers_to_axi_interconnect_mem_ARQOS;
  assign M00_AXI_arregion = m00_couplers_to_axi_interconnect_mem_ARREGION;
  assign M00_AXI_arsize = m00_couplers_to_axi_interconnect_mem_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_mem_ARVALID;
  assign M00_AXI_awaddr = m00_couplers_to_axi_interconnect_mem_AWADDR;
  assign M00_AXI_awburst = m00_couplers_to_axi_interconnect_mem_AWBURST;
  assign M00_AXI_awcache = m00_couplers_to_axi_interconnect_mem_AWCACHE;
  assign M00_AXI_awlen = m00_couplers_to_axi_interconnect_mem_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_interconnect_mem_AWLOCK;
  assign M00_AXI_awprot = m00_couplers_to_axi_interconnect_mem_AWPROT;
  assign M00_AXI_awqos = m00_couplers_to_axi_interconnect_mem_AWQOS;
  assign M00_AXI_awregion = m00_couplers_to_axi_interconnect_mem_AWREGION;
  assign M00_AXI_awsize = m00_couplers_to_axi_interconnect_mem_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_mem_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_mem_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_mem_RREADY;
  assign M00_AXI_wdata = m00_couplers_to_axi_interconnect_mem_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_mem_WLAST;
  assign M00_AXI_wstrb = m00_couplers_to_axi_interconnect_mem_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_mem_WVALID;
  assign S00_AXI_arready[0] = axi_interconnect_mem_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_mem_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[1:0] = axi_interconnect_mem_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_mem_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_mem_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_mem_to_s00_couplers_RDATA;
  assign S00_AXI_rid[1:0] = axi_interconnect_mem_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = axi_interconnect_mem_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_mem_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_mem_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_mem_to_s00_couplers_WREADY;
  assign S01_AXI_arready[0] = axi_interconnect_mem_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = axi_interconnect_mem_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[1:0] = axi_interconnect_mem_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi_interconnect_mem_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = axi_interconnect_mem_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_mem_to_s01_couplers_RDATA;
  assign S01_AXI_rid[1:0] = axi_interconnect_mem_to_s01_couplers_RID;
  assign S01_AXI_rlast[0] = axi_interconnect_mem_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_mem_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid[0] = axi_interconnect_mem_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = axi_interconnect_mem_to_s01_couplers_WREADY;
  assign axi_interconnect_mem_ACLK_net = ACLK;
  assign axi_interconnect_mem_ARESETN_net = ARESETN;
  assign axi_interconnect_mem_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_mem_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_mem_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_mem_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_mem_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_mem_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_mem_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_mem_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_mem_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_mem_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_mem_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_mem_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_mem_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_mem_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_mem_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_mem_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_mem_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_mem_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_mem_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_mem_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_mem_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_mem_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_mem_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_mem_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_interconnect_mem_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_mem_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign axi_interconnect_mem_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign axi_interconnect_mem_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_mem_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_mem_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign axi_interconnect_mem_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_mem_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign axi_interconnect_mem_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_mem_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_mem_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_mem_to_s01_couplers_ARVALID = S01_AXI_arvalid[0];
  assign axi_interconnect_mem_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign axi_interconnect_mem_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_mem_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_mem_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign axi_interconnect_mem_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_mem_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign axi_interconnect_mem_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_mem_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_mem_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_mem_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign axi_interconnect_mem_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign axi_interconnect_mem_to_s01_couplers_RREADY = S01_AXI_rready[0];
  assign axi_interconnect_mem_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_mem_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign axi_interconnect_mem_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_mem_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_mem_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_mem_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_mem_BRESP = M00_AXI_bresp;
  assign m00_couplers_to_axi_interconnect_mem_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_mem_RDATA = M00_AXI_rdata;
  assign m00_couplers_to_axi_interconnect_mem_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_mem_RRESP = M00_AXI_rresp;
  assign m00_couplers_to_axi_interconnect_mem_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_mem_WREADY = M00_AXI_wready;
  m00_couplers_imp_ZCRYQZ m00_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_mem_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_mem_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_mem_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_mem_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_mem_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_mem_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_mem_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_mem_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_mem_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_mem_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_mem_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_mem_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_mem_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_mem_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_mem_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_mem_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_mem_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_mem_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_mem_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_mem_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_mem_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_mem_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_mem_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_mem_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_mem_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_mem_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_mem_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_mem_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_mem_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_mem_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_mem_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_mem_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_mem_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_mem_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_mem_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[0]),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST[0]),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE[0]),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN[0]),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT[0]),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS[0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION[0]),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE[0]),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[0]),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST[0]),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE[0]),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN[0]),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT[0]),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS[0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION[0]),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE[0]),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA[0]),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB[0]),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_119SZQH s00_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_mem_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_mem_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_mem_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_mem_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_mem_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_mem_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_mem_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_mem_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_mem_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_mem_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_mem_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_mem_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_mem_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_mem_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_mem_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_mem_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_mem_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_mem_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_mem_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_mem_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_mem_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_mem_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_mem_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_mem_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_mem_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_mem_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_mem_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_mem_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_mem_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_mem_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_mem_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_mem_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_mem_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_mem_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_mem_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_mem_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_mem_to_s00_couplers_WVALID));
  s01_couplers_imp_T54748 s01_couplers
       (.M_ACLK(axi_interconnect_mem_ACLK_net),
        .M_ARESETN(axi_interconnect_mem_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_mem_ACLK_net),
        .S_ARESETN(axi_interconnect_mem_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_mem_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_mem_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_mem_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_mem_to_s01_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_mem_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_mem_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_mem_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_mem_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_mem_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_mem_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_mem_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_mem_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_mem_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_mem_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_mem_to_s01_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_mem_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_mem_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_mem_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_mem_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_mem_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_mem_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_mem_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_mem_to_s01_couplers_BID),
        .S_AXI_bready(axi_interconnect_mem_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_mem_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_mem_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_mem_to_s01_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_mem_to_s01_couplers_RID),
        .S_AXI_rlast(axi_interconnect_mem_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_mem_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_mem_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_mem_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_mem_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_mem_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_mem_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_mem_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_mem_to_s01_couplers_WVALID));
  design_1_xbar_3 xbar
       (.aclk(axi_interconnect_mem_ACLK_net),
        .aresetn(axi_interconnect_mem_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp({xbar_to_m00_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata({xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp({xbar_to_m00_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s01_couplers_to_xbar_ARID,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK[0],s00_couplers_to_xbar_ARLOCK[0]}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s01_couplers_to_xbar_AWID,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK[0],s00_couplers_to_xbar_AWLOCK[0]}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_NDAMLV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARBURST;
  wire m00_couplers_to_m00_couplers_ARCACHE;
  wire m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARREGION;
  wire m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWBURST;
  wire m00_couplers_to_m00_couplers_AWCACHE;
  wire m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWREGION;
  wire m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr;
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst;
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache;
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen;
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot;
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos;
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr;
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst;
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache;
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen;
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot;
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos;
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp;
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata;
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp;
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata;
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_ZCRYQZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARBURST;
  wire m00_couplers_to_m00_couplers_ARCACHE;
  wire m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARREGION;
  wire m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWBURST;
  wire m00_couplers_to_m00_couplers_AWCACHE;
  wire m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWREGION;
  wire m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr;
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst;
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache;
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen;
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot;
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos;
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr;
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst;
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache;
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen;
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot;
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos;
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp;
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata;
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp;
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata;
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1G03I8I
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARBURST;
  wire m01_couplers_to_m01_couplers_ARCACHE;
  wire m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARQOS;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARREGION;
  wire m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWBURST;
  wire m01_couplers_to_m01_couplers_AWCACHE;
  wire m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWQOS;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWREGION;
  wire m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arregion = m01_couplers_to_m01_couplers_ARREGION;
  assign M_AXI_arsize = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos = m01_couplers_to_m01_couplers_AWQOS;
  assign M_AXI_awregion = m01_couplers_to_m01_couplers_AWREGION;
  assign M_AXI_awsize = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr;
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst;
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache;
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen;
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot;
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos;
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARREGION = S_AXI_arregion;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr;
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst;
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache;
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen;
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot;
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos;
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWREGION = S_AXI_awregion;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp;
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata;
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp;
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata;
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb;
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_119SZQH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [1:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [0:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [1:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [1:0]s00_couplers_to_s00_couplers_BID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [1:0]s00_couplers_to_s00_couplers_RID;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WLAST;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast[0] = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[1:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[1:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[1:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1C0CFJL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output [0:0]M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input [0:0]S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_ARUSER;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [39:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_AWUSER;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [15:0]s00_couplers_to_s00_couplers_BID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [15:0]s00_couplers_to_s00_couplers_RID;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WLAST;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast[0] = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s01_couplers_imp_T54748
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s01_couplers_to_s01_couplers_ARADDR;
  wire [1:0]s01_couplers_to_s01_couplers_ARBURST;
  wire [3:0]s01_couplers_to_s01_couplers_ARCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_ARID;
  wire [7:0]s01_couplers_to_s01_couplers_ARLEN;
  wire [1:0]s01_couplers_to_s01_couplers_ARLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_ARPROT;
  wire [3:0]s01_couplers_to_s01_couplers_ARQOS;
  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [2:0]s01_couplers_to_s01_couplers_ARSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_ARVALID;
  wire [63:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_AWID;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [1:0]s01_couplers_to_s01_couplers_AWLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [3:0]s01_couplers_to_s01_couplers_AWQOS;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [1:0]s01_couplers_to_s01_couplers_BID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_RDATA;
  wire [1:0]s01_couplers_to_s01_couplers_RID;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RREADY;
  wire [1:0]s01_couplers_to_s01_couplers_RRESP;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s01_couplers_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_couplers_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_couplers_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[0] = s01_couplers_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_couplers_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = s01_couplers_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_couplers_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_couplers_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_couplers_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s01_couplers_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[0] = s01_couplers_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = s01_couplers_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_couplers_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_rready[0] = s01_couplers_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bid[1:0] = s01_couplers_to_s01_couplers_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rid[1:0] = s01_couplers_to_s01_couplers_RID;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_couplers_RRESP;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_couplers_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_couplers_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_couplers_ARVALID = S_AXI_arvalid[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BID = M_AXI_bid[1:0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_couplers_to_s01_couplers_RID = M_AXI_rid[1:0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RREADY = S_AXI_rready[0];
  assign s01_couplers_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule
