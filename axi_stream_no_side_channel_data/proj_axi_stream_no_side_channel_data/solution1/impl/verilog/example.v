// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="example,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-2,HLS_INPUT_CLOCK=13.333333,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.000000,HLS_SYN_LAT=51,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=9,HLS_SYN_LUT=52}" *)

module example (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_TDATA,
        A_TVALID,
        A_TREADY,
        B_TDATA,
        B_TVALID,
        B_TREADY
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv6_32 = 6'b110010;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_TDATA;
input   A_TVALID;
output   A_TREADY;
output  [31:0] B_TDATA;
output   B_TVALID;
input   B_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_TREADY;
reg B_TVALID;
reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm = 2'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
wire   [5:0] i_1_fu_64_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_40;
wire   [0:0] exitcond_fu_58_p2;
reg    ap_sig_bdd_47;
reg    ap_sig_ioackin_B_TREADY;
reg   [5:0] i_reg_47;
reg    ap_reg_ioackin_B_TREADY = 1'b0;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_bdd_100;
reg    ap_sig_bdd_99;




always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ioackin_B_TREADY
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_ioackin_B_TREADY <= ap_const_logic_0;
    end else begin
        if (ap_sig_bdd_99) begin
            if (~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY)))) begin
                ap_reg_ioackin_B_TREADY <= ap_const_logic_0;
            end else if (ap_sig_bdd_100) begin
                ap_reg_ioackin_B_TREADY <= ap_const_logic_1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_58_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))))) begin
        i_reg_47 <= i_1_fu_64_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_47 <= ap_const_lv6_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_58_p2 or ap_sig_bdd_47 or ap_sig_ioackin_B_TREADY) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_58_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))))) begin
        A_TREADY = ap_const_logic_1;
    end else begin
        A_TREADY = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_58_p2 or ap_sig_bdd_47 or ap_reg_ioackin_B_TREADY) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_58_p2 == ap_const_lv1_0) & ~ap_sig_bdd_47 & (ap_const_logic_0 == ap_reg_ioackin_B_TREADY))) begin
        B_TVALID = ap_const_logic_1;
    end else begin
        B_TVALID = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_58_p2 or ap_sig_bdd_47 or ap_sig_ioackin_B_TREADY) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))) & ~(exitcond_fu_58_p2 == ap_const_lv1_0))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_58_p2 or ap_sig_bdd_47 or ap_sig_ioackin_B_TREADY) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))) & ~(exitcond_fu_58_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_20) begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_40) begin
    if (ap_sig_bdd_40) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (B_TREADY or ap_reg_ioackin_B_TREADY) begin
    if ((ap_const_logic_0 == ap_reg_ioackin_B_TREADY)) begin
        ap_sig_ioackin_B_TREADY = B_TREADY;
    end else begin
        ap_sig_ioackin_B_TREADY = ap_const_logic_1;
    end
end
always @ (ap_start or ap_CS_fsm or exitcond_fu_58_p2 or ap_sig_bdd_47 or ap_sig_ioackin_B_TREADY) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))) & ~(exitcond_fu_58_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if (((exitcond_fu_58_p2 == ap_const_lv1_0) & ~(ap_sig_bdd_47 | ((exitcond_fu_58_p2 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_B_TREADY))))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


assign B_TDATA = (A_TDATA + ap_const_lv32_5);


always @ (ap_rst_n) begin
    ap_rst_n_inv = ~ap_rst_n;
end


always @ (B_TREADY or ap_sig_bdd_47) begin
    ap_sig_bdd_100 = (~ap_sig_bdd_47 & (ap_const_logic_1 == B_TREADY));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_40 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (A_TVALID or exitcond_fu_58_p2) begin
    ap_sig_bdd_47 = ((A_TVALID == ap_const_logic_0) & (exitcond_fu_58_p2 == ap_const_lv1_0));
end


always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond_fu_58_p2) begin
    ap_sig_bdd_99 = ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_58_p2 == ap_const_lv1_0));
end

assign exitcond_fu_58_p2 = (i_reg_47 == ap_const_lv6_32? 1'b1: 1'b0);

assign i_1_fu_64_p2 = (i_reg_47 + ap_const_lv6_1);


endmodule //example

