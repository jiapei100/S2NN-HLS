// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_snn_izikevich_axis_cp_output_to_stream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_stream_TDATA,
        output_stream_TVALID,
        output_stream_TREADY,
        output_stream_TLAST,
        v_address0,
        v_ce0,
        v_q0,
        v_address1,
        v_ce1,
        v_q1,
        output_indexes_mem_0_read,
        output_indexes_mem_1_read,
        firings_mem_V_address0,
        firings_mem_V_ce0,
        firings_mem_V_q0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_st3_fsm_2 = 4'b100;
parameter    ap_ST_st4_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv9_1C4 = 9'b111000100;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv9_1C2 = 9'b111000010;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [63:0] output_stream_TDATA;
output   output_stream_TVALID;
input   output_stream_TREADY;
output  [0:0] output_stream_TLAST;
output  [14:0] v_address0;
output   v_ce0;
input  [31:0] v_q0;
output  [14:0] v_address1;
output   v_ce1;
input  [31:0] v_q1;
input  [31:0] output_indexes_mem_0_read;
input  [31:0] output_indexes_mem_1_read;
output  [8:0] firings_mem_V_address0;
output   firings_mem_V_ce0;
input  [63:0] firings_mem_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] output_stream_TDATA;
reg output_stream_TVALID;
reg[0:0] output_stream_TLAST;
reg v_ce0;
reg v_ce1;
reg firings_mem_V_ce0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_22;
wire   [8:0] stream_id_fu_149_p2;
reg   [8:0] stream_id_reg_179;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_62;
wire   [0:0] exitcond_fu_143_p2;
wire   [0:0] tmp_last_V_fu_160_p2;
reg   [0:0] tmp_last_V_reg_189;
reg   [8:0] stream_id_1_reg_105;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_79;
reg    ap_sig_ioackin_output_stream_TREADY;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_91;
wire   [63:0] tmp_s_fu_116_p1;
wire   [63:0] tmp_44_fu_121_p1;
wire   [63:0] tmp_36_fu_155_p1;
wire   [63:0] tmp_data_fu_134_p3;
reg    ap_reg_ioackin_output_stream_TREADY = 1'b0;
wire   [31:0] tmp_46_fu_130_p1;
wire   [31:0] tmp_45_fu_126_p1;
reg   [3:0] ap_NS_fsm;




always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ioackin_output_stream_TREADY
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_output_stream_TREADY <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_logic_0 == ap_sig_ioackin_output_stream_TREADY)) | (~(ap_const_logic_0 == ap_sig_ioackin_output_stream_TREADY) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)))) begin
            ap_reg_ioackin_output_stream_TREADY <= ap_const_logic_0;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_logic_1 == output_stream_TREADY)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_logic_1 == output_stream_TREADY)))) begin
            ap_reg_ioackin_output_stream_TREADY <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (~(ap_const_logic_0 == ap_sig_ioackin_output_stream_TREADY)) begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
            stream_id_1_reg_105 <= ap_const_lv9_0;
        end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
            stream_id_1_reg_105 <= stream_id_reg_179;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        stream_id_reg_179 <= stream_id_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_fu_143_p2 == ap_const_lv1_0))) begin
        tmp_last_V_reg_189 <= tmp_last_V_fu_160_p2;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st3_fsm_2 or exitcond_fu_143_p2) begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_143_p2 == ap_const_lv1_0)))) begin
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

always @ (ap_sig_cseq_ST_st3_fsm_2 or exitcond_fu_143_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_143_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_22) begin
    if (ap_sig_bdd_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_91) begin
    if (ap_sig_bdd_91) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_62) begin
    if (ap_sig_bdd_62) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_79) begin
    if (ap_sig_bdd_79) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

always @ (output_stream_TREADY or ap_reg_ioackin_output_stream_TREADY) begin
    if ((ap_const_logic_0 == ap_reg_ioackin_output_stream_TREADY)) begin
        ap_sig_ioackin_output_stream_TREADY = output_stream_TREADY;
    end else begin
        ap_sig_ioackin_output_stream_TREADY = ap_const_logic_1;
    end
end

always @ (ap_sig_cseq_ST_st3_fsm_2) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        firings_mem_V_ce0 = ap_const_logic_1;
    end else begin
        firings_mem_V_ce0 = ap_const_logic_0;
    end
end

always @ (firings_mem_V_q0 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st2_fsm_1 or tmp_data_fu_134_p3) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        output_stream_TDATA = firings_mem_V_q0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_stream_TDATA = tmp_data_fu_134_p3;
    end else begin
        output_stream_TDATA = 'bx;
    end
end

always @ (tmp_last_V_reg_189 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st2_fsm_1) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        output_stream_TLAST = tmp_last_V_reg_189;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_stream_TLAST = ap_const_lv1_0;
    end else begin
        output_stream_TLAST = 'bx;
    end
end

always @ (ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st2_fsm_1 or ap_reg_ioackin_output_stream_TREADY) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_logic_0 == ap_reg_ioackin_output_stream_TREADY)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_logic_0 == ap_reg_ioackin_output_stream_TREADY)))) begin
        output_stream_TVALID = ap_const_logic_1;
    end else begin
        output_stream_TVALID = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        v_ce0 = ap_const_logic_1;
    end else begin
        v_ce0 = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        v_ce1 = ap_const_logic_1;
    end else begin
        v_ce1 = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or exitcond_fu_143_p2 or ap_sig_ioackin_output_stream_TREADY) begin
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
            if (~(ap_const_logic_0 == ap_sig_ioackin_output_stream_TREADY)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(exitcond_fu_143_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (~(ap_const_logic_0 == ap_sig_ioackin_output_stream_TREADY)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end



always @ (ap_CS_fsm) begin
    ap_sig_bdd_22 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_62 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_79 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_91 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign exitcond_fu_143_p2 = (stream_id_1_reg_105 == ap_const_lv9_1C4? 1'b1: 1'b0);

assign firings_mem_V_address0 = tmp_36_fu_155_p1;

assign stream_id_fu_149_p2 = (stream_id_1_reg_105 + ap_const_lv9_1);

assign tmp_36_fu_155_p1 = stream_id_1_reg_105;

assign tmp_44_fu_121_p1 = output_indexes_mem_1_read;

assign tmp_45_fu_126_p1 = v_q0;

assign tmp_46_fu_130_p1 = v_q1;

assign tmp_data_fu_134_p3 = {{tmp_46_fu_130_p1}, {tmp_45_fu_126_p1}};

assign tmp_last_V_fu_160_p2 = (stream_id_1_reg_105 > ap_const_lv9_1C2? 1'b1: 1'b0);

assign tmp_s_fu_116_p1 = output_indexes_mem_0_read;

assign v_address0 = tmp_s_fu_116_p1;

assign v_address1 = tmp_44_fu_121_p1;


endmodule //hls_snn_izikevich_axis_cp_output_to_stream

