#pragma GCC diagnostic ignored "-Wdeprecated-declarations" 
#include "xsim.dir/tb_top_behav/obj/sysc_interface.h"
#include <map>
#include <list>


extern "C" { std::vector<void*> *_glb_hdl_sc_channel_map; } 



extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_1(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<1, sc_dt::sc_bv<1> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_1(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<1, sc_dt::sc_uint<1> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_1(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<1, sc_dt::sc_bigint<1> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_1(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<1, sc_dt::sc_biguint<1> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_2(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<2, sc_dt::sc_bv<2> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_2(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<2, sc_dt::sc_uint<2> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_2(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<2, sc_dt::sc_bigint<2> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_2(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<2, sc_dt::sc_biguint<2> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_3(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<3, sc_dt::sc_bv<3> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_3(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<3, sc_dt::sc_uint<3> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_3(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<3, sc_dt::sc_bigint<3> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_3(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<3, sc_dt::sc_biguint<3> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_4(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<4, sc_dt::sc_bv<4> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_4(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<4, sc_dt::sc_uint<4> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_4(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<4, sc_dt::sc_bigint<4> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_4(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<4, sc_dt::sc_biguint<4> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_6(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<6, sc_dt::sc_bv<6> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_6(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<6, sc_dt::sc_uint<6> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_6(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<6, sc_dt::sc_bigint<6> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_6(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<6, sc_dt::sc_biguint<6> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_8(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<8, sc_dt::sc_bv<8> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_8(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<8, sc_dt::sc_uint<8> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_8(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<8, sc_dt::sc_bigint<8> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_8(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<8, sc_dt::sc_biguint<8> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_32(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<32, sc_dt::sc_bv<32> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_32(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<32, sc_dt::sc_uint<32> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_32(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<32, sc_dt::sc_bigint<32> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_32(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<32, sc_dt::sc_biguint<32> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bv_64(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<64, sc_dt::sc_bv<64> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_uint_64(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<64, sc_dt::sc_uint<64> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_bigint_64(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<64, sc_dt::sc_bigint<64> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_sc_biguint_64(unsigned int sc_net_index, char* pval)
    {
          ((xsim_sc_channel<64, sc_dt::sc_biguint<64> >*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(pval);
    } 


extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_int(unsigned int sc_net_index, char* pval)
    {
          int val = *((int*)(pval));
          ((xsim_sc_channel<0, int>*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(val);
    } 



extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bit(unsigned int sc_net_index, char* pval)
    {
            sc_dt::sc_bit val  =  (sc_dt::sc_bit)((*((int*)(pval)) & 0x1));
          ((xsim_sc_channel<0, sc_dt::sc_bit>*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(val);
    } 



extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_logic(unsigned int sc_net_index, char* pval)
    {
          sc_dt::sc_logic val  =  (sc_dt::sc_logic_value_t) (((*((int*)(pval)+1) & 0x1) << 1) | (*((int*)(pval)) & 0x1));
          ((xsim_sc_channel<0, sc_dt::sc_logic>*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(val);
    } 



extern "C"
__declspec(dllexport)
    void call_HDL_SC_WRITE_bool(unsigned int sc_net_index, char* pval)
    {
          bool val = *((bool*)(pval));
          ((xsim_sc_channel<0, bool>*)(*_glb_hdl_sc_channel_map)[sc_net_index])->update_from_hdl(val);
    } 



extern "C"
__declspec(dllexport)
    void implicit_HDL_SCinstantiate()
    {
        _glb_hdl_sc_channel_map = new std::vector<void*> ();
        sc_inst_1 = new axi_crossbar_1x2(".tb_top.soc_lite.u_axi_crossbar_1x2");
        sc_inst_1->xsim_set_dbg_index(45);
        sc_inst_1->xsim_set_dbg_parent_index(3);
        xsim_sc_channel<0, bool > *p_1_aclk = new xsim_sc_channel<0, bool >();
        sc_inst_1->aclk.bind(*p_1_aclk);
        (*_glb_hdl_sc_channel_map).push_back(p_1_aclk);
        p_1_aclk->set_sv_net_offsetfromdp(2131568);
        xsim_sc_channel<0, bool > *p_1_aresetn = new xsim_sc_channel<0, bool >();
        sc_inst_1->aresetn.bind(*p_1_aresetn);
        (*_glb_hdl_sc_channel_map).push_back(p_1_aresetn);
        p_1_aresetn->set_sv_net_offsetfromdp(2131752);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_awid = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_awid.bind(*p_1_s_axi_awid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awid);
        p_1_s_axi_awid->set_sv_net_offsetfromdp(2134696);
        xsim_sc_channel<32, sc_dt::sc_bv<32> > *p_1_s_axi_awaddr = new xsim_sc_channel<32, sc_dt::sc_bv<32> >();
        sc_inst_1->s_axi_awaddr.bind(*p_1_s_axi_awaddr);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awaddr);
        p_1_s_axi_awaddr->set_sv_net_offsetfromdp(2134880);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_awlen = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_awlen.bind(*p_1_s_axi_awlen);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awlen);
        p_1_s_axi_awlen->set_sv_net_offsetfromdp(1401664);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_s_axi_awsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->s_axi_awsize.bind(*p_1_s_axi_awsize);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awsize);
        p_1_s_axi_awsize->set_sv_net_offsetfromdp(2135064);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_awburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_awburst.bind(*p_1_s_axi_awburst);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awburst);
        p_1_s_axi_awburst->set_sv_net_offsetfromdp(2135248);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_awlock = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_awlock.bind(*p_1_s_axi_awlock);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awlock);
        p_1_s_axi_awlock->set_sv_net_offsetfromdp(2135432);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_awcache = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_awcache.bind(*p_1_s_axi_awcache);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awcache);
        p_1_s_axi_awcache->set_sv_net_offsetfromdp(2135616);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_s_axi_awprot = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->s_axi_awprot.bind(*p_1_s_axi_awprot);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awprot);
        p_1_s_axi_awprot->set_sv_net_offsetfromdp(2135800);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_awqos = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_awqos.bind(*p_1_s_axi_awqos);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awqos);
        p_1_s_axi_awqos->set_sv_net_offsetfromdp(1401848);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_awvalid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_awvalid.bind(*p_1_s_axi_awvalid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_awvalid);
        p_1_s_axi_awvalid->set_sv_net_offsetfromdp(2135984);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_awready = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_awready.bind(*p_1_s_axi_awready);
        p_1_s_axi_awready->set_sv_netview_offsetfromdp(6251704);
        p_1_s_axi_awready->set_sv_net_offsetfromdp(2136168);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_wid = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_wid.bind(*p_1_s_axi_wid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_wid);
        p_1_s_axi_wid->set_sv_net_offsetfromdp(2136352);
        xsim_sc_channel<32, sc_dt::sc_bv<32> > *p_1_s_axi_wdata = new xsim_sc_channel<32, sc_dt::sc_bv<32> >();
        sc_inst_1->s_axi_wdata.bind(*p_1_s_axi_wdata);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_wdata);
        p_1_s_axi_wdata->set_sv_net_offsetfromdp(2136536);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_wstrb = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_wstrb.bind(*p_1_s_axi_wstrb);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_wstrb);
        p_1_s_axi_wstrb->set_sv_net_offsetfromdp(2136720);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_wlast = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_wlast.bind(*p_1_s_axi_wlast);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_wlast);
        p_1_s_axi_wlast->set_sv_net_offsetfromdp(2136904);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_wvalid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_wvalid.bind(*p_1_s_axi_wvalid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_wvalid);
        p_1_s_axi_wvalid->set_sv_net_offsetfromdp(2137088);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_wready = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_wready.bind(*p_1_s_axi_wready);
        p_1_s_axi_wready->set_sv_netview_offsetfromdp(6252040);
        p_1_s_axi_wready->set_sv_net_offsetfromdp(2137272);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_bid = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_bid.bind(*p_1_s_axi_bid);
        p_1_s_axi_bid->set_sv_netview_offsetfromdp(6252096);
        p_1_s_axi_bid->set_sv_net_offsetfromdp(2137456);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_bresp = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_bresp.bind(*p_1_s_axi_bresp);
        p_1_s_axi_bresp->set_sv_netview_offsetfromdp(6252152);
        p_1_s_axi_bresp->set_sv_net_offsetfromdp(2137640);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_bvalid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_bvalid.bind(*p_1_s_axi_bvalid);
        p_1_s_axi_bvalid->set_sv_netview_offsetfromdp(6252208);
        p_1_s_axi_bvalid->set_sv_net_offsetfromdp(2137824);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_bready = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_bready.bind(*p_1_s_axi_bready);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_bready);
        p_1_s_axi_bready->set_sv_net_offsetfromdp(2138008);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_arid = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_arid.bind(*p_1_s_axi_arid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arid);
        p_1_s_axi_arid->set_sv_net_offsetfromdp(2131936);
        xsim_sc_channel<32, sc_dt::sc_bv<32> > *p_1_s_axi_araddr = new xsim_sc_channel<32, sc_dt::sc_bv<32> >();
        sc_inst_1->s_axi_araddr.bind(*p_1_s_axi_araddr);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_araddr);
        p_1_s_axi_araddr->set_sv_net_offsetfromdp(2132120);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_arlen = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_arlen.bind(*p_1_s_axi_arlen);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arlen);
        p_1_s_axi_arlen->set_sv_net_offsetfromdp(1402032);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_s_axi_arsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->s_axi_arsize.bind(*p_1_s_axi_arsize);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arsize);
        p_1_s_axi_arsize->set_sv_net_offsetfromdp(2132304);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_arburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_arburst.bind(*p_1_s_axi_arburst);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arburst);
        p_1_s_axi_arburst->set_sv_net_offsetfromdp(2132488);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_arlock = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_arlock.bind(*p_1_s_axi_arlock);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arlock);
        p_1_s_axi_arlock->set_sv_net_offsetfromdp(2132672);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_arcache = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_arcache.bind(*p_1_s_axi_arcache);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arcache);
        p_1_s_axi_arcache->set_sv_net_offsetfromdp(2132856);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_s_axi_arprot = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->s_axi_arprot.bind(*p_1_s_axi_arprot);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arprot);
        p_1_s_axi_arprot->set_sv_net_offsetfromdp(2133040);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_arqos = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_arqos.bind(*p_1_s_axi_arqos);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arqos);
        p_1_s_axi_arqos->set_sv_net_offsetfromdp(1401848);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_arvalid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_arvalid.bind(*p_1_s_axi_arvalid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_arvalid);
        p_1_s_axi_arvalid->set_sv_net_offsetfromdp(2133224);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_arready = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_arready.bind(*p_1_s_axi_arready);
        p_1_s_axi_arready->set_sv_netview_offsetfromdp(6252880);
        p_1_s_axi_arready->set_sv_net_offsetfromdp(2133408);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_s_axi_rid = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->s_axi_rid.bind(*p_1_s_axi_rid);
        p_1_s_axi_rid->set_sv_netview_offsetfromdp(6252936);
        p_1_s_axi_rid->set_sv_net_offsetfromdp(2133592);
        xsim_sc_channel<32, sc_dt::sc_bv<32> > *p_1_s_axi_rdata = new xsim_sc_channel<32, sc_dt::sc_bv<32> >();
        sc_inst_1->s_axi_rdata.bind(*p_1_s_axi_rdata);
        p_1_s_axi_rdata->set_sv_netview_offsetfromdp(6252992);
        p_1_s_axi_rdata->set_sv_net_offsetfromdp(2133776);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_s_axi_rresp = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->s_axi_rresp.bind(*p_1_s_axi_rresp);
        p_1_s_axi_rresp->set_sv_netview_offsetfromdp(6253048);
        p_1_s_axi_rresp->set_sv_net_offsetfromdp(2133960);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_rlast = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_rlast.bind(*p_1_s_axi_rlast);
        p_1_s_axi_rlast->set_sv_netview_offsetfromdp(6253104);
        p_1_s_axi_rlast->set_sv_net_offsetfromdp(2134144);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_rvalid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_rvalid.bind(*p_1_s_axi_rvalid);
        p_1_s_axi_rvalid->set_sv_netview_offsetfromdp(6253160);
        p_1_s_axi_rvalid->set_sv_net_offsetfromdp(2134328);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_s_axi_rready = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->s_axi_rready.bind(*p_1_s_axi_rready);
        (*_glb_hdl_sc_channel_map).push_back(p_1_s_axi_rready);
        p_1_s_axi_rready->set_sv_net_offsetfromdp(2134512);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_awid = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_awid.bind(*p_1_m_axi_awid);
        p_1_m_axi_awid->set_sv_netview_offsetfromdp(6253272);
        p_1_m_axi_awid->set_sv_net_offsetfromdp(2141152);
        xsim_sc_channel<64, sc_dt::sc_bv<64> > *p_1_m_axi_awaddr = new xsim_sc_channel<64, sc_dt::sc_bv<64> >();
        sc_inst_1->m_axi_awaddr.bind(*p_1_m_axi_awaddr);
        p_1_m_axi_awaddr->set_sv_netview_offsetfromdp(6253328);
        p_1_m_axi_awaddr->set_sv_net_offsetfromdp(2141336);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_awlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_awlen.bind(*p_1_m_axi_awlen);
        p_1_m_axi_awlen->set_sv_netview_offsetfromdp(6253384);
        p_1_m_axi_awlen->set_sv_net_offsetfromdp(2141528);
        xsim_sc_channel<6, sc_dt::sc_bv<6> > *p_1_m_axi_awsize = new xsim_sc_channel<6, sc_dt::sc_bv<6> >();
        sc_inst_1->m_axi_awsize.bind(*p_1_m_axi_awsize);
        p_1_m_axi_awsize->set_sv_netview_offsetfromdp(6253440);
        p_1_m_axi_awsize->set_sv_net_offsetfromdp(2141712);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_awburst = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_awburst.bind(*p_1_m_axi_awburst);
        p_1_m_axi_awburst->set_sv_netview_offsetfromdp(6253496);
        p_1_m_axi_awburst->set_sv_net_offsetfromdp(2141896);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_awlock = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_awlock.bind(*p_1_m_axi_awlock);
        p_1_m_axi_awlock->set_sv_netview_offsetfromdp(6253552);
        p_1_m_axi_awlock->set_sv_net_offsetfromdp(2142080);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_awcache = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_awcache.bind(*p_1_m_axi_awcache);
        p_1_m_axi_awcache->set_sv_netview_offsetfromdp(6253608);
        p_1_m_axi_awcache->set_sv_net_offsetfromdp(2142264);
        xsim_sc_channel<6, sc_dt::sc_bv<6> > *p_1_m_axi_awprot = new xsim_sc_channel<6, sc_dt::sc_bv<6> >();
        sc_inst_1->m_axi_awprot.bind(*p_1_m_axi_awprot);
        p_1_m_axi_awprot->set_sv_netview_offsetfromdp(6253664);
        p_1_m_axi_awprot->set_sv_net_offsetfromdp(2142448);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_awqos = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_awqos.bind(*p_1_m_axi_awqos);
        p_1_m_axi_awqos->set_sv_netview_offsetfromdp(6253720);
        p_1_m_axi_awqos->set_sv_net_offsetfromdp(2144848);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_awvalid = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_awvalid.bind(*p_1_m_axi_awvalid);
        p_1_m_axi_awvalid->set_sv_netview_offsetfromdp(6253776);
        p_1_m_axi_awvalid->set_sv_net_offsetfromdp(2142632);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_awready = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_awready.bind(*p_1_m_axi_awready);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_awready);
        p_1_m_axi_awready->set_sv_net_offsetfromdp(2142816);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_wid = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_wid.bind(*p_1_m_axi_wid);
        p_1_m_axi_wid->set_sv_netview_offsetfromdp(6253888);
        p_1_m_axi_wid->set_sv_net_offsetfromdp(2143000);
        xsim_sc_channel<64, sc_dt::sc_bv<64> > *p_1_m_axi_wdata = new xsim_sc_channel<64, sc_dt::sc_bv<64> >();
        sc_inst_1->m_axi_wdata.bind(*p_1_m_axi_wdata);
        p_1_m_axi_wdata->set_sv_netview_offsetfromdp(6253944);
        p_1_m_axi_wdata->set_sv_net_offsetfromdp(2143184);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_wstrb = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_wstrb.bind(*p_1_m_axi_wstrb);
        p_1_m_axi_wstrb->set_sv_netview_offsetfromdp(6254000);
        p_1_m_axi_wstrb->set_sv_net_offsetfromdp(2143376);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_wlast = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_wlast.bind(*p_1_m_axi_wlast);
        p_1_m_axi_wlast->set_sv_netview_offsetfromdp(6254056);
        p_1_m_axi_wlast->set_sv_net_offsetfromdp(2143560);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_wvalid = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_wvalid.bind(*p_1_m_axi_wvalid);
        p_1_m_axi_wvalid->set_sv_netview_offsetfromdp(6254112);
        p_1_m_axi_wvalid->set_sv_net_offsetfromdp(2143744);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_wready = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_wready.bind(*p_1_m_axi_wready);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_wready);
        p_1_m_axi_wready->set_sv_net_offsetfromdp(2143928);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_bid = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_bid.bind(*p_1_m_axi_bid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_bid);
        p_1_m_axi_bid->set_sv_net_offsetfromdp(2144112);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_bresp = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_bresp.bind(*p_1_m_axi_bresp);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_bresp);
        p_1_m_axi_bresp->set_sv_net_offsetfromdp(2144296);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_bvalid = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_bvalid.bind(*p_1_m_axi_bvalid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_bvalid);
        p_1_m_axi_bvalid->set_sv_net_offsetfromdp(2144480);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_bready = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_bready.bind(*p_1_m_axi_bready);
        p_1_m_axi_bready->set_sv_netview_offsetfromdp(6254392);
        p_1_m_axi_bready->set_sv_net_offsetfromdp(2144664);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_arid = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_arid.bind(*p_1_m_axi_arid);
        p_1_m_axi_arid->set_sv_netview_offsetfromdp(6254448);
        p_1_m_axi_arid->set_sv_net_offsetfromdp(2138192);
        xsim_sc_channel<64, sc_dt::sc_bv<64> > *p_1_m_axi_araddr = new xsim_sc_channel<64, sc_dt::sc_bv<64> >();
        sc_inst_1->m_axi_araddr.bind(*p_1_m_axi_araddr);
        p_1_m_axi_araddr->set_sv_netview_offsetfromdp(6254504);
        p_1_m_axi_araddr->set_sv_net_offsetfromdp(2138376);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_arlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_arlen.bind(*p_1_m_axi_arlen);
        p_1_m_axi_arlen->set_sv_netview_offsetfromdp(6254560);
        p_1_m_axi_arlen->set_sv_net_offsetfromdp(2138568);
        xsim_sc_channel<6, sc_dt::sc_bv<6> > *p_1_m_axi_arsize = new xsim_sc_channel<6, sc_dt::sc_bv<6> >();
        sc_inst_1->m_axi_arsize.bind(*p_1_m_axi_arsize);
        p_1_m_axi_arsize->set_sv_netview_offsetfromdp(6254616);
        p_1_m_axi_arsize->set_sv_net_offsetfromdp(2138752);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_arburst = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_arburst.bind(*p_1_m_axi_arburst);
        p_1_m_axi_arburst->set_sv_netview_offsetfromdp(6254672);
        p_1_m_axi_arburst->set_sv_net_offsetfromdp(2138936);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_arlock = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_arlock.bind(*p_1_m_axi_arlock);
        p_1_m_axi_arlock->set_sv_netview_offsetfromdp(6254728);
        p_1_m_axi_arlock->set_sv_net_offsetfromdp(2139120);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_arcache = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_arcache.bind(*p_1_m_axi_arcache);
        p_1_m_axi_arcache->set_sv_netview_offsetfromdp(6254784);
        p_1_m_axi_arcache->set_sv_net_offsetfromdp(2139304);
        xsim_sc_channel<6, sc_dt::sc_bv<6> > *p_1_m_axi_arprot = new xsim_sc_channel<6, sc_dt::sc_bv<6> >();
        sc_inst_1->m_axi_arprot.bind(*p_1_m_axi_arprot);
        p_1_m_axi_arprot->set_sv_netview_offsetfromdp(6254840);
        p_1_m_axi_arprot->set_sv_net_offsetfromdp(2139488);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_arqos = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_arqos.bind(*p_1_m_axi_arqos);
        p_1_m_axi_arqos->set_sv_netview_offsetfromdp(6254896);
        p_1_m_axi_arqos->set_sv_net_offsetfromdp(2145032);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_arvalid = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_arvalid.bind(*p_1_m_axi_arvalid);
        p_1_m_axi_arvalid->set_sv_netview_offsetfromdp(6254952);
        p_1_m_axi_arvalid->set_sv_net_offsetfromdp(2139672);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_arready = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_arready.bind(*p_1_m_axi_arready);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_arready);
        p_1_m_axi_arready->set_sv_net_offsetfromdp(2139856);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_m_axi_rid = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->m_axi_rid.bind(*p_1_m_axi_rid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_rid);
        p_1_m_axi_rid->set_sv_net_offsetfromdp(2140040);
        xsim_sc_channel<64, sc_dt::sc_bv<64> > *p_1_m_axi_rdata = new xsim_sc_channel<64, sc_dt::sc_bv<64> >();
        sc_inst_1->m_axi_rdata.bind(*p_1_m_axi_rdata);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_rdata);
        p_1_m_axi_rdata->set_sv_net_offsetfromdp(2140224);
        xsim_sc_channel<4, sc_dt::sc_bv<4> > *p_1_m_axi_rresp = new xsim_sc_channel<4, sc_dt::sc_bv<4> >();
        sc_inst_1->m_axi_rresp.bind(*p_1_m_axi_rresp);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_rresp);
        p_1_m_axi_rresp->set_sv_net_offsetfromdp(2140416);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_rlast = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_rlast.bind(*p_1_m_axi_rlast);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_rlast);
        p_1_m_axi_rlast->set_sv_net_offsetfromdp(2140600);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_rvalid = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_rvalid.bind(*p_1_m_axi_rvalid);
        (*_glb_hdl_sc_channel_map).push_back(p_1_m_axi_rvalid);
        p_1_m_axi_rvalid->set_sv_net_offsetfromdp(2140784);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_m_axi_rready = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->m_axi_rready.bind(*p_1_m_axi_rready);
        p_1_m_axi_rready->set_sv_netview_offsetfromdp(6255344);
        p_1_m_axi_rready->set_sv_net_offsetfromdp(2140968);
    }


extern "C"
__declspec(dllexport)
    void implicit_HDL_SCcleanup()
    {
        delete sc_inst_1;
    }
