// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _example_HH_
#define _example_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct example : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > A_TDATA;
    sc_in< sc_logic > A_TVALID;
    sc_out< sc_logic > A_TREADY;
    sc_out< sc_lv<32> > B_TDATA;
    sc_out< sc_logic > B_TVALID;
    sc_in< sc_logic > B_TREADY;


    // Module declarations
    example(sc_module_name name);
    SC_HAS_PROCESS(example);

    ~example();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_20;
    sc_signal< sc_lv<6> > i_1_fu_64_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_40;
    sc_signal< sc_lv<1> > exitcond_fu_58_p2;
    sc_signal< bool > ap_sig_bdd_47;
    sc_signal< sc_logic > ap_sig_ioackin_B_TREADY;
    sc_signal< sc_lv<6> > i_reg_47;
    sc_signal< sc_logic > ap_reg_ioackin_B_TREADY;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< bool > ap_sig_bdd_100;
    sc_signal< bool > ap_sig_bdd_99;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_TREADY();
    void thread_B_TDATA();
    void thread_B_TVALID();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_bdd_100();
    void thread_ap_sig_bdd_20();
    void thread_ap_sig_bdd_40();
    void thread_ap_sig_bdd_47();
    void thread_ap_sig_bdd_99();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_ioackin_B_TREADY();
    void thread_exitcond_fu_58_p2();
    void thread_i_1_fu_64_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
