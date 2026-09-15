module ORCA (sd_BWS , sd_LD , sd_RW , sd_A , sd_CKn , sd_DQ , 
    pdevsel_n , pstop_n , pperr_n , pserr_n , preq_n , pm66en , 
    sdr_clk , sd_CK , ppar , pc_be , pframe_n , ptrdy_n , pirdy_n , 
    pad , scan_en , test_mode , power_save , sys_clk , pclk , prst_n , 
    pidsel , pgnt_n );
output [1:0] sd_BWS ;
output sd_LD ;
output sd_RW ;
output [9:0] sd_A ;
output sd_CKn ;
inout  [15:0] sd_DQ ;
inout  pdevsel_n ;
inout  pstop_n ;
inout  pperr_n ;
inout  pserr_n ;
output preq_n ;
input  pm66en ;
input  sdr_clk ;
output sd_CK ;
inout  ppar ;
inout  [3:0] pc_be ;
inout  pframe_n ;
inout  ptrdy_n ;
inout  pirdy_n ;
inout  [15:0] pad ;
input  scan_en ;
input  test_mode ;
input  power_save ;
input  sys_clk ;
input  pclk ;
input  prst_n ;
input  pidsel ;
input  pgnt_n ;

wire [3:0] net_pc_be_out ;
wire [15:0] net_pad_out ;
wire [9:0] net_sdram_A ;
wire [1:0] net_sdram_BWS ;
wire [15:0] net_sdram_DQ_in ;
wire [15:0] net_sdram_DQ_out ;
wire [15:0] net_sdram_DQ_en ;
wire [15:0] net_pad_in ;
wire [3:0] net_pc_be_in ;



CLOCK_GEN I_CLOCK_GEN (.sys_clk ( net_sys_clk ) , 
    .sdram_clk ( net_sdram_clk ) , .pclk ( net_pclk ) , 
    .buf_sdram_clk_G5B2I12ASTHIRNet791 ( buf_sdram_clk_G5B2I12ASTHIRNet785 ) , 
    .o_sys_2x_clk ( s_sys_2x_clk ) , .o_sys_clk ( s_sys_clk ) , 
    .o_sdram_clk ( s_sdram_clk ) , .o_pclk ( s_pclk ) , 
    .powersave ( s_power_save ) , .test_mode ( s_test_mode ) , 
    .sdram_clk_fb ( net_sdram_clk_fb ) , .pclk_fb ( net_pclk_fb ) ) ;


ORCA_TOP I_ORCA_TOP (.net_pirdy_n_outASTHIRNet1393 ( net_pirdy_n_out ) , 
    .net_pframe_n_enASTHIRNet1409 ( net_pframe_n_en ) , 
    .net_pperr_n_outASTHIRNet1413 ( net_pperr_n_out ) , 
    .net_pci_read_pushASTHIRNet1431 ( net_pci_read_pushASTHIRNet1430 ) , 
    .n107ASTHIRNet1435 ( n107 ) , 
    .n130569ASTHIRNet1440 ( n130569ASTHIRNet1437 ) , .n97ASTHIRNet1451 ( n97 ) , 
    .n8ASTHIRNet1574 ( n8ASTHIRNet1573 ) , 
    .net_pdevsel_n_outASTHIRNet1193 ( net_pdevsel_n_out ) , 
    .net_pirdy_n_enASTHIRNet1197 ( net_pirdy_n_en ) , 
    .net_preq_nASTHIRNet1201 ( net_preq_n ) , 
    .net_ptrdy_n_outASTHIRNet1373 ( net_ptrdy_n_out ) , 
    .net_ppar_enASTHIRNet1377 ( net_ppar_en ) , 
    .net_pperr_n_enASTHIRNet1381 ( net_pperr_n_en ) , 
    .net_pframe_n_outASTHIRNet1385 ( net_pframe_n_out ) , 
    .net_ptrdy_n_enASTHIRNet1389 ( net_ptrdy_n_en ) , 
    .net_pc_be_out_0_ASTHIRNet1147 ( net_pc_be_out[0] ) , 
    .net_pc_be_out_2_ASTHIRNet1151 ( net_pc_be_out[2] ) , 
    .net_pc_be_out_1_ASTHIRNet1155 ( net_pc_be_out[1] ) , 
    .net_pstop_n_enASTHIRNet1173 ( net_pstop_n_en ) , 
    .net_pserr_n_enASTHIRNet1177 ( net_pserr_n_en ) , 
    .net_pserr_n_outASTHIRNet1181 ( net_pserr_n_out ) , 
    .net_pdevsel_n_enASTHIRNet1185 ( net_pdevsel_n_en ) , 
    .net_pstop_n_outASTHIRNet1189 ( net_pstop_n_out ) , 
    .net_pad_out_10_ASTHIRNet1095 ( net_pad_out[10] ) , 
    .net_pad_out_2_ASTHIRNet1099 ( net_pad_out[2] ) , 
    .net_pad_out_4_ASTHIRNet1108 ( net_pad_out[4] ) , 
    .net_pad_out_13_ASTHIRNet1117 ( net_pad_out[13] ) , 
    .n103ASTHIRNet1121 ( n103 ) , 
    .mega_shift_26__1_ASTHIRNet1126 ( mega_shift_26__1_ASTHIRNet1123 ) , 
    .n105ASTHIRNet1130 ( n105 ) , 
    .net_pc_be_out_3_ASTHIRNet1143 ( net_pc_be_out[3] ) , 
    .net_pad_out_5_ASTHIRNet995 ( net_pad_out[5] ) , 
    .net_pad_out_15_ASTHIRNet1042 ( net_pad_out[15] ) , 
    .net_pad_out_11_ASTHIRNet1051 ( net_pad_out[11] ) , 
    .net_pad_out_14_ASTHIRNet1060 ( net_pad_out[14] ) , 
    .net_pad_out_1_ASTHIRNet1064 ( net_pad_out[1] ) , 
    .net_pad_out_9_ASTHIRNet1078 ( net_pad_out[9] ) , 
    .net_pad_out_3_ASTHIRNet1082 ( net_pad_out[3] ) , 
    .net_pad_out_6_ASTHIRNet1091 ( net_pad_out[6] ) , 
    .net_sdram_A_6_ASTHIRNet958 ( net_sdram_A[6] ) , 
    .net_sdram_A_8_ASTHIRNet962 ( net_sdram_A[8] ) , 
    .net_sdram_A_7_ASTHIRNet966 ( net_sdram_A[7] ) , 
    .net_pad_out_12_ASTHIRNet975 ( net_pad_out[12] ) , 
    .n101ASTHIRNet979 ( n101 ) , .net_pad_out_0_ASTHIRNet983 ( net_pad_out[0] ) , 
    .net_pad_out_8_ASTHIRNet987 ( net_pad_out[8] ) , 
    .net_pad_out_7_ASTHIRNet991 ( net_pad_out[7] ) , 
    .net_sdram_RWASTHIRNet926 ( net_sdram_RW ) , 
    .net_sdram_LDASTHIRNet930 ( net_sdram_LD ) , 
    .net_sdram_BWS_1_ASTHIRNet934 ( net_sdram_BWS[1] ) , 
    .net_sdram_A_5_ASTHIRNet938 ( net_sdram_A[5] ) , 
    .net_sdram_A_3_ASTHIRNet942 ( net_sdram_A[3] ) , 
    .net_sdram_A_9_ASTHIRNet946 ( net_sdram_A[9] ) , 
    .net_sdram_A_1_ASTHIRNet950 ( net_sdram_A[1] ) , 
    .net_sdram_A_4_ASTHIRNet954 ( net_sdram_A[4] ) , 
    .buf_sys_2x_clk_G6B1I1_1ASTHIRNet794 ( buf_sys_2x_clk_G6B1I1_1ASTHIRNet792 ) , 
    .buf_sdram_clk_G5B1I5_1ASTHIRNet805 ( buf_sdram_clk_G5B1I5_1ASTHIRNet801 ) , 
    .buf_sdram_clk_G5B1I4_1ASTHIRNet855 ( buf_sdram_clk_G5B1I4_1ASTHIRNet853 ) , 
    .buf_sys_clk_GB_3ASTHIRNet864 ( buf_sys_clk_GB_3 ) , 
    .buf_sys_clk_G5B7I2ASTHIRNet872 ( buf_sys_clk_G5B7I2ASTHIRNet870 ) , 
    .n99ASTHIRNet879 ( n99 ) , .net_sdram_A_0_ASTHIRNet911 ( net_sdram_A[0] ) , 
    .net_sdram_BWS_0_ASTHIRNet920 ( net_sdram_BWS[0] ) , 
    .buf_sdram_clk_G5B1I2_1ASTHIRNet648 ( buf_sdram_clk_G5B1I2_1ASTHIRNet644 ) , 
    .buf_sys_clk_GB_1ASTHIRNet660 ( buf_sys_clk_GB_1 ) , 
    .buf_sys_clk_G5IPI1ASTHIRNet697 ( buf_sys_clk_G5IPI1ASTHIRNet693 ) , 
    .buf_sys_clk_G5B6I1ASTHIRNet714 ( buf_sys_clk_G5B6I1ASTHIRNet712 ) , 
    .buf_sdram_clk_G5B1I1_1ASTHIRNet730 ( buf_sdram_clk_G5B1I1_1ASTHIRNet726 ) , 
    .buf_sys_clk_GBASTHIRNet740 ( buf_sys_clk_GB ) , 
    .buf_sdram_clk_G5B1I6_1ASTHIRNet744 ( buf_sdram_clk_G5B1I6_1ASTHIRNet742 ) , 
    .buf_sdram_clk_G5B2I12ASTHIRNet789 ( buf_sdram_clk_G5B2I12ASTHIRNet785 ) , 
    .pm66en ( net_pm66en ) , .preq_n ( net_preq_n ) , 
    .buf_pclk_G5B1I2_1ASTHIRNet579 ( buf_pclk_G5B1I2_1ASTHIRNet577 ) , 
    .buf_sdram_clk_G5B1I3_1ASTHIRNet591 ( buf_sdram_clk_G5B1I3_1ASTHIRNet587 ) , 
    .buf_sys_clk_GB_2ASTHIRNet601 ( buf_sys_clk_GB_2 ) , 
    .buf_pclk_G5B1I1_1ASTHIRNet629 ( buf_pclk_G5B1I1_1ASTHIRNet627 ) , 
    .sd_A ( net_sdram_A ) , .sd_BWS ( net_sdram_BWS ) , .sd_RW ( net_sdram_RW ) , 
    .sd_LD ( net_sdram_LD ) , .sd_CKn ( net_sdram_CKn ) , 
    .sd_CK ( net_sdram_CK ) , .sd_DQ_in ( net_sdram_DQ_in ) , 
    .sd_DQ_out ( net_sdram_DQ_out ) , .test_so1 ( n107 ) , 
    .test_si1 ( net_pad_in[0] ) , .sd_DQ_en ( net_sdram_DQ_en ) , 
    .test_so5 ( n99 ) , .test_si5 ( net_pad_in[4] ) , .test_so4 ( n101 ) , 
    .test_si4 ( net_pad_in[3] ) , .test_so3 ( n103 ) , 
    .test_si3 ( net_pad_in[2] ) , .test_so2 ( n105 ) , 
    .test_si2 ( net_pad_in[1] ) , .scan_en ( s_scan_en ) , 
    .pll_sdram_fb ( net_sdram_clk_fb ) , .pll_pci_fb ( net_pclk_fb ) , 
    .sdram_clk ( buf_sdram_clk ) , .sys_2x_clk ( buf_sys_2x_clk ) , 
    .sys_clk ( buf_sys_clk ) , .test_so6 ( n97 ) , .test_si6 ( net_pad_in[5] ) , 
    .pgnt_n ( net_pgnt_n ) , .pidsel ( net_pidsel ) , .prst_n ( s_prst_n ) , 
    .test_mode ( s_test_mode ) , .pad_in ( net_pad_in ) , 
    .ppar_in ( net_ppar_in ) , .pad_en ( net_pad_en ) , .pad_out ( net_pad_out ) , 
    .pc_be_in ( net_pc_be_in ) , .ppar_en ( net_ppar_en ) , 
    .ppar_out ( net_ppar_out ) , .ptrdy_n_out ( net_ptrdy_n_out ) , 
    .ptrdy_n_in ( net_ptrdy_n_in ) , .pframe_n_en ( net_pframe_n_en ) , 
    .pframe_n_out ( net_pframe_n_out ) , .pframe_n_in ( net_pframe_n_in ) , 
    .pc_be_en ( net_pc_be_en ) , .pc_be_out ( net_pc_be_out ) , 
    .pstop_n_in ( net_pstop_n_in ) , .pdevsel_n_en ( net_pdevsel_n_en ) , 
    .pdevsel_n_out ( net_pdevsel_n_out ) , .pdevsel_n_in ( net_pdevsel_n_in ) , 
    .pirdy_n_en ( net_pirdy_n_en ) , .pirdy_n_out ( net_pirdy_n_out ) , 
    .pirdy_n_in ( net_pirdy_n_in ) , .ptrdy_n_en ( net_ptrdy_n_en ) , 
    .pserr_n_en ( net_pserr_n_en ) , .pserr_n_out ( net_pserr_n_out ) , 
    .pserr_n_in ( net_pserr_n_in ) , .pperr_n_en ( net_pperr_n_en ) , 
    .pperr_n_out ( net_pperr_n_out ) , .pperr_n_in ( net_pperr_n_in ) , 
    .pstop_n_en ( net_pstop_n_en ) , .pstop_n_out ( net_pstop_n_out ) ) ;

invbd7 invbd7G5B1I1 (.I ( buf_sys_clk ) , .ZN ( buf_sys_clk_G5B1I1_1 ) ) ;
bufbd1 bufbd4G5IPI1 (.I ( buf_sys_clk ) 
    , .Z ( buf_sys_clk_G5IPI1ASTHIRNet693 ) ) ;
buffd1 U63ASTipoInst901 (.I ( n134ASTtsNet545 ) , .Z ( n134ASTipoNet1577 ) ) ;
bufbda U63ASTipoInst902 (.I ( n134ASTipoNet1577 ) , .Z ( n134ASTipoNet1578 ) ) ;
bufbda U63ASTttcInst951 (.I ( n134ASTtsNet545 ) , .Z ( n134ASTttcNet1616 ) ) ;
bufbda U63ASTttcInst953 (.I ( n134ASTtsNet545 ) , .Z ( n134ASTttcNet1617 ) ) ;
bufbdk U55ASTttcInst961 (.I ( n51ASTttcNet539 ) , .Z ( n51ASTttcNet1618 ) ) ;
bufbdf U63ASTttcInst981 (.I ( n134ASTipoNet1577 ) , .Z ( n134ASTttcNet1619 ) ) ;
bufbd4 bufbd4GB_2 (.I ( buf_sys_clk_G5B7I2ASTHIRNet870 ) 
    , .Z ( buf_sys_clk_GB_2 ) ) ;
bufbd4 bufbd4GB_3 (.I ( buf_sys_clk_G5B7I2ASTHIRNet870 ) 
    , .Z ( buf_sys_clk_GB_3 ) ) ;
bufbdf bufbdfG5B7I2 (.Z ( buf_sys_clk_G5B7I2ASTHIRNet870 ) 
    , .I ( buf_sys_clk_G5B6I1ASTHIRNet712 ) ) ;
invbd7 invbd7G5B6I1 (.I ( buf_sys_clk_G5B5I1 ) 
    , .ZN ( buf_sys_clk_G5B6I1ASTHIRNet712 ) ) ;
invbd7 invbd7G5B5I1 (.I ( buf_sys_clk_G5B4I1_1 ) , .ZN ( buf_sys_clk_G5B5I1 ) ) ;
invbdf invbdfG5B4I1 (.I ( buf_sys_clk_G5B3I1_1 ) 
    , .ZN ( buf_sys_clk_G5B4I1_1 ) ) ;
invbd7 invbd7G5B3I1_1 (.I ( buf_sys_clk_G5B2I1_1 ) 
    , .ZN ( buf_sys_clk_G5B3I1_1 ) ) ;
invbdk invbdkG5B2I1 (.I ( buf_sys_clk_G5B1I1_1 ) 
    , .ZN ( buf_sys_clk_G5B2I1_1 ) ) ;
bufbda bufbdaG5B1I4 (.Z ( buf_sdram_clk_G5B1I4_1ASTHIRNet853 ) 
    , .I ( buf_sdram_clk ) ) ;
buffd7 buffd7G5B2I12 (.I ( buf_sdram_clk_G5B1I3_1ASTHIRNet587 ) 
    , .Z ( buf_sdram_clk_G5B2I12ASTHIRNet785 ) ) ;
bufbd7 bufbd7G5B1I3 (.Z ( buf_sdram_clk_G5B1I3_1ASTHIRNet587 ) 
    , .I ( buf_sdram_clk ) ) ;
bufbda bufbdaG5B1I2 (.Z ( buf_sdram_clk_G5B1I2_1ASTHIRNet644 ) 
    , .I ( buf_sdram_clk ) ) ;
bufbdf bufbdfG5B1I1_1 (.Z ( buf_sdram_clk_G5B1I1_1ASTHIRNet726 ) 
    , .I ( buf_sdram_clk ) ) ;
invbda invbdaG6B1I1 (.I ( buf_sys_2x_clk ) 
    , .ZN ( buf_sys_2x_clk_G6B1I1_1ASTHIRNet792 ) ) ;
bufbd4 bufbd4GB (.I ( buf_sys_clk_G5B7I2ASTHIRNet870 ) , .Z ( buf_sys_clk_GB ) ) ;
bufbd4 bufbd4GB_1 (.I ( buf_sys_clk_G5B7I2ASTHIRNet870 ) 
    , .Z ( buf_sys_clk_GB_1 ) ) ;
bufbda U140ASTttcInst805 (.I ( n128 ) , .Z ( n128ASTttcNet541 ) ) ;
invbd7 invbd7G5B1I2 (.I ( buf_pclk ) , .ZN ( buf_pclk_G5B1I2_1ASTHIRNet577 ) ) ;
invbd2 U63ASTtsInst884 (.I ( n134ASTtsNet546 ) , .ZN ( n134ASTtsNet545 ) ) ;
invbdk U63ASTtsInst885 (.I ( n134ASTipoNet248 ) , .ZN ( n134ASTtsNet546 ) ) ;
invbdk invbdkG5B1I1 (.I ( buf_pclk ) , .ZN ( buf_pclk_G5B1I1_1ASTHIRNet627 ) ) ;
bufbdf bufbdfG5B1I5_1 (.Z ( buf_sdram_clk_G5B1I5_1ASTHIRNet801 ) 
    , .I ( buf_sdram_clk ) ) ;
bufbda bufbdaG5B1I6 (.Z ( buf_sdram_clk_G5B1I6_1ASTHIRNet742 ) 
    , .I ( buf_sdram_clk ) ) ;
bufbd4 d_out_p_bus_reg_21_ASTttcInst785 (.I ( net_pc_be_out[2] ) 
    , .Z ( net_pc_be_out_2_ASTttcNet532 ) ) ;
bufbd4 pad_out_buf_reg_7_ASTttcInst786 (.I ( net_pad_out[7] ) 
    , .Z ( net_pad_out_7_ASTttcNet533 ) ) ;
bufbd4 d_out_p_bus_reg_20_ASTttcInst787 (.I ( net_pc_be_out[1] ) 
    , .Z ( net_pc_be_out_1_ASTttcNet534 ) ) ;
bufbd2 out_control_reg_8_ASTttcInst788 (.I ( net_sdram_A[8] ) 
    , .Z ( net_sdram_A_8_ASTttcNet535 ) ) ;
bufbd2 out_control_reg_10_ASTttcInst789 (.I ( net_sdram_LD ) 
    , .Z ( net_sdram_LDASTttcNet536 ) ) ;
bufbd2 out_control_reg_6_ASTttcInst790 (.I ( net_sdram_A[6] ) 
    , .Z ( net_sdram_A_6_ASTttcNet537 ) ) ;
bufbd2 out_control_reg_7_ASTttcInst791 (.I ( net_sdram_A[7] ) 
    , .Z ( net_sdram_A_7_ASTttcNet538 ) ) ;
buffd1 U55ASTttcInst798 (.I ( n51 ) , .Z ( n51ASTttcNet539 ) ) ;
bufbd4 d_out_p_bus_reg_1_ASTttcInst777 (.I ( net_ppar_out ) 
    , .Z ( net_ppar_outASTttcNet524 ) ) ;
bufbd4 pad_out_buf_reg_0_ASTttcInst778 (.I ( net_pad_out[0] ) 
    , .Z ( net_pad_out_0_ASTttcNet525 ) ) ;
bufbd4 pad_out_buf_reg_1_ASTttcInst779 (.I ( net_pad_out[1] ) 
    , .Z ( net_pad_out_1_ASTttcNet526 ) ) ;
bufbd4 pad_out_buf_reg_2_ASTttcInst780 (.I ( net_pad_out[2] ) 
    , .Z ( net_pad_out_2_ASTttcNet527 ) ) ;
bufbd4 pad_out_buf_reg_3_ASTttcInst781 (.I ( net_pad_out[3] ) 
    , .Z ( net_pad_out_3_ASTttcNet528 ) ) ;
bufbd4 pad_out_buf_reg_4_ASTttcInst782 (.I ( net_pad_out[4] ) 
    , .Z ( net_pad_out_4_ASTttcNet529 ) ) ;
bufbd4 pad_out_buf_reg_5_ASTttcInst783 (.I ( net_pad_out[5] ) 
    , .Z ( net_pad_out_5_ASTttcNet530 ) ) ;
bufbd4 pad_out_buf_reg_6_ASTttcInst784 (.I ( net_pad_out[6] ) 
    , .Z ( net_pad_out_6_ASTttcNet531 ) ) ;
bufbd4 pad_out_buf_reg_8_ASTttcInst769 (.I ( net_pad_out[8] ) 
    , .Z ( net_pad_out_8_ASTttcNet516 ) ) ;
bufbd4 d_out_p_bus_reg_19_ASTttcInst770 (.I ( net_pc_be_out[0] ) 
    , .Z ( net_pc_be_out_0_ASTttcNet517 ) ) ;
bufbd4 pad_out_buf_reg_9_ASTttcInst771 (.I ( net_pad_out[9] ) 
    , .Z ( net_pad_out_9_ASTttcNet518 ) ) ;
bufbd4 pad_out_buf_reg_10_ASTttcInst772 (.I ( net_pad_out[10] ) 
    , .Z ( net_pad_out_10_ASTttcNet519 ) ) ;
bufbd4 pad_out_buf_reg_14_ASTttcInst773 (.I ( net_pad_out[14] ) 
    , .Z ( net_pad_out_14_ASTttcNet520 ) ) ;
bufbd4 pad_out_buf_reg_11_ASTttcInst774 (.I ( net_pad_out[11] ) 
    , .Z ( net_pad_out_11_ASTttcNet521 ) ) ;
bufbd4 pad_out_buf_reg_13_ASTttcInst775 (.I ( net_pad_out[13] ) 
    , .Z ( net_pad_out_13_ASTttcNet522 ) ) ;
bufbd4 pad_out_buf_reg_12_ASTttcInst776 (.I ( net_pad_out[12] ) 
    , .Z ( net_pad_out_12_ASTttcNet523 ) ) ;
bufbd4 pad_out_buf_reg_15_ASTttcInst761 (.I ( net_pad_out[15] ) 
    , .Z ( net_pad_out_15_ASTttcNet508 ) ) ;
bufbd4 d_out_p_bus_reg_16_ASTttcInst762 (.I ( net_pserr_n_out ) 
    , .Z ( net_pserr_n_outASTttcNet509 ) ) ;
bufbd4 d_out_p_bus_reg_14_ASTttcInst763 (.I ( net_pperr_n_out ) 
    , .Z ( net_pperr_n_outASTttcNet510 ) ) ;
bufbd4 d_out_p_bus_reg_4_ASTttcInst764 (.I ( net_pframe_n_out ) 
    , .Z ( net_pframe_n_outASTttcNet511 ) ) ;
bufbd4 d_out_p_bus_reg_12_ASTttcInst765 (.I ( net_pstop_n_out ) 
    , .Z ( net_pstop_n_outASTttcNet512 ) ) ;
bufbd4 d_out_p_bus_reg_6_ASTttcInst766 (.I ( net_ptrdy_n_out ) 
    , .Z ( net_ptrdy_n_outASTttcNet513 ) ) ;
bufbd4 d_out_p_bus_reg_10_ASTttcInst767 (.I ( net_pdevsel_n_out ) 
    , .Z ( net_pdevsel_n_outASTttcNet514 ) ) ;
bufbd4 d_out_p_bus_reg_8_ASTttcInst768 (.I ( net_pirdy_n_out ) 
    , .Z ( net_pirdy_n_outASTttcNet515 ) ) ;
bufbda U63ASTipoInst497 (.I ( n134 ) , .Z ( n134ASTipoNet253 ) ) ;
bufbda U63ASTipoInst498 (.I ( n134ASTipoNet255 ) , .Z ( n134ASTipoNet254 ) ) ;
bufbda U63ASTipoInst499 (.I ( n134 ) , .Z ( n134ASTipoNet255 ) ) ;
bufbda U63ASTipoInst500 (.I ( n134 ) , .Z ( n134ASTipoNet256 ) ) ;
bufbda U63ASTipoInst501 (.I ( n134 ) , .Z ( n134ASTipoNet257 ) ) ;
bufbda U63ASTipoInst502 (.I ( n134 ) , .Z ( n134ASTipoNet258 ) ) ;
bufbda U63ASTipoInst539 (.I ( n134 ) , .Z ( n134ASTipoNet292 ) ) ;
bufbd4 d_out_p_bus_reg_22_ASTttcInst760 (.I ( net_pc_be_out[3] ) 
    , .Z ( net_pc_be_out_3_ASTttcNet507 ) ) ;
bufbda U63ASTipoInst494 (.I ( n134ASTipoNet251 ) , .Z ( n134ASTipoNet250 ) ) ;
bufbdk U63ASTipoInst495 (.Z ( n134ASTipoNet251 ) , .I ( n134 ) ) ;
buffd2 U63ASTipoInst492 (.Z ( n134ASTipoNet248 ) , .I ( n134 ) ) ;
bufbda U63ASTipoInst496 (.I ( n134ASTipoNet253 ) , .Z ( n134ASTipoNet252 ) ) ;
mx02d2 U149 (.S ( s_scan_en ) , .I1 ( net_pci_read_pushASTHIRNet1430 ) 
    , .I0 ( net_sdram_A[1] ) , .Z ( n106 ) ) ;
mx02d2 U150 (.S ( s_scan_en ) , .I1 ( n130569ASTHIRNet1437 ) 
    , .I0 ( net_sdram_A[0] ) , .Z ( n108 ) ) ;
or02da U141 (.A2 ( net_pirdy_n_en ) , .A1 ( s_scan_en ) , .Z ( n129 ) ) ;
or02da U142 (.A2 ( net_ptrdy_n_en ) , .A1 ( s_scan_en ) , .Z ( n130 ) ) ;
or02da U143 (.A2 ( net_pframe_n_en ) , .A1 ( s_scan_en ) , .Z ( n131 ) ) ;
or02da U144 (.A2 ( net_ppar_en ) , .A1 ( s_scan_en ) , .Z ( n133 ) ) ;
mx02d2 U145 (.S ( s_scan_en ) , .I1 ( n8ASTHIRNet1573 ) 
    , .I0 ( net_sdram_A[5] ) , .Z ( n98 ) ) ;
mx02d2 U146 (.S ( s_scan_en ) , .I1 ( net_sdram_A[2] ) , .I0 ( net_sdram_A[4] ) 
    , .Z ( n100 ) ) ;
mx02d2 U147 (.S ( s_scan_en ) , .I1 ( net_pad_en ) , .I0 ( net_sdram_A[3] ) 
    , .Z ( n102 ) ) ;
mx02d2 U148 (.S ( s_scan_en ) , .I1 ( mega_shift_26__1_ASTHIRNet1123 ) 
    , .I0 ( net_sdram_A[2] ) , .Z ( n104 ) ) ;
inv0d2 U110 (.I ( n73 ) , .ZN ( n92 ) ) ;
inv0d2 U112 (.I ( n74 ) , .ZN ( n93 ) ) ;
inv0d2 U114 (.I ( n75 ) , .ZN ( n94 ) ) ;
inv0d2 U116 (.I ( n76 ) , .ZN ( n95 ) ) ;
or02da U137 (.A2 ( net_pserr_n_en ) , .A1 ( s_scan_en ) , .Z ( n125 ) ) ;
or02da U138 (.A2 ( net_pperr_n_en ) , .A1 ( s_scan_en ) , .Z ( n126 ) ) ;
or02da U139 (.A2 ( net_pstop_n_en ) , .A1 ( s_scan_en ) , .Z ( n127 ) ) ;
or02d2 U140 (.A2 ( net_pdevsel_n_en ) , .A1 ( s_scan_en ) , .Z ( n128 ) ) ;
inv0d2 U94 (.I ( n65 ) , .ZN ( n81 ) ) ;
inv0d2 U96 (.I ( n66 ) , .ZN ( n82 ) ) ;
inv0d2 U98 (.I ( n67 ) , .ZN ( n84 ) ) ;
inv0d2 U100 (.I ( n68 ) , .ZN ( n86 ) ) ;
inv0d2 U102 (.I ( n69 ) , .ZN ( n88 ) ) ;
inv0d2 U104 (.I ( n70 ) , .ZN ( n89 ) ) ;
inv0d2 U106 (.I ( n71 ) , .ZN ( n90 ) ) ;
inv0d2 U108 (.I ( n72 ) , .ZN ( n91 ) ) ;
nd02d0 U109 (.A2 ( n96 ) , .ZN ( n73 ) , .A1 ( n35 ) ) ;
nd02d0 U111 (.A2 ( n96 ) , .ZN ( n74 ) , .A1 ( n37 ) ) ;
nd02d0 U113 (.A2 ( n96 ) , .ZN ( n75 ) , .A1 ( n39 ) ) ;
nd02d0 U115 (.A2 ( n96 ) , .ZN ( n76 ) , .A1 ( n41 ) ) ;
inv0d2 U86 (.I ( n61 ) , .ZN ( n77 ) ) ;
inv0d2 U88 (.I ( n62 ) , .ZN ( n78 ) ) ;
inv0d2 U90 (.I ( n63 ) , .ZN ( n79 ) ) ;
inv0d2 U92 (.I ( n64 ) , .ZN ( n80 ) ) ;
nd02d0 U93 (.A2 ( n85 ) , .ZN ( n65 ) , .A1 ( n19 ) ) ;
nd02d0 U95 (.A2 ( n83 ) , .ZN ( n66 ) , .A1 ( n21 ) ) ;
nd02d0 U97 (.A2 ( n85 ) , .ZN ( n67 ) , .A1 ( n23 ) ) ;
nd02d0 U99 (.A2 ( n87 ) , .ZN ( n68 ) , .A1 ( n25 ) ) ;
nd02d0 U101 (.A2 ( n96 ) , .ZN ( n69 ) , .A1 ( n27 ) ) ;
nd02d0 U103 (.A2 ( n96 ) , .ZN ( n70 ) , .A1 ( n29 ) ) ;
nd02d0 U105 (.A2 ( n96 ) , .ZN ( n71 ) , .A1 ( n31 ) ) ;
nd02d0 U107 (.A2 ( n96 ) , .ZN ( n72 ) , .A1 ( n33 ) ) ;
inv0da U132 (.I ( n92 ) , .ZN ( n112 ) ) ;
inv0da U133 (.I ( n93 ) , .ZN ( n111 ) ) ;
inv0da U134 (.I ( n94 ) , .ZN ( n110 ) ) ;
inv0da U135 (.I ( n95 ) , .ZN ( n109 ) ) ;
nd02d0 U85 (.A2 ( n85 ) , .ZN ( n61 ) , .A1 ( n11 ) ) ;
nd02d0 U87 (.A2 ( n85 ) , .ZN ( n62 ) , .A1 ( n13 ) ) ;
nd02d0 U89 (.A2 ( n85 ) , .ZN ( n63 ) , .A1 ( n15 ) ) ;
nd02d0 U91 (.A2 ( n85 ) , .ZN ( n64 ) , .A1 ( n17 ) ) ;
inv0da U121 (.I ( n81 ) , .ZN ( n120 ) ) ;
inv0da U122 (.I ( n82 ) , .ZN ( n119 ) ) ;
inv0da U124 (.I ( n84 ) , .ZN ( n118 ) ) ;
inv0da U126 (.I ( n86 ) , .ZN ( n117 ) ) ;
inv0da U128 (.I ( n88 ) , .ZN ( n116 ) ) ;
inv0da U129 (.I ( n89 ) , .ZN ( n115 ) ) ;
inv0da U130 (.I ( n90 ) , .ZN ( n114 ) ) ;
inv0da U131 (.I ( n91 ) , .ZN ( n113 ) ) ;
clk2d2 U125 (.CN ( n85 ) , .CLK ( n60 ) ) ;
clk2d2 U127 (.CN ( n87 ) , .CLK ( n58 ) ) ;
clk2d2 U136 (.CN ( n96 ) , .CLK ( n60 ) ) ;
inv0d7 U68 (.I ( n57 ) ) ;
inv0da U117 (.I ( n77 ) , .ZN ( n124 ) ) ;
inv0da U118 (.I ( n78 ) , .ZN ( n123 ) ) ;
inv0da U119 (.I ( n79 ) , .ZN ( n122 ) ) ;
inv0da U120 (.I ( n80 ) , .ZN ( n121 ) ) ;
or02d1 U57 (.A2 ( n6 ) , .A1 ( s_scan_en ) , .Z ( n132 ) ) ;
or02d7 U63 (.A2 ( n8 ) , .A1 ( s_scan_en ) , .Z ( n134 ) ) ;
clk2d2 U67 (.CN ( n57 ) , .CLK ( s_scan_en ) ) ;
clk2d2 U123 (.CN ( n83 ) , .CLK ( n59 ) ) ;
bufbdk U54 (.Z ( n50 ) , .I ( n132 ) ) ;
buffd1 U55 (.Z ( n51 ) , .I ( n132 ) ) ;
inv0d1 U56 (.I ( n4 ) , .ZN ( n6 ) ) ;
inv0d1 U62 (.I ( n43 ) , .ZN ( n8 ) ) ;
inv0d1 U64 (.I ( n57 ) , .ZN ( n58 ) ) ;
inv0d1 U65 (.I ( n57 ) , .ZN ( n60 ) ) ;
inv0d1 U66 (.I ( n57 ) , .ZN ( n59 ) ) ;
inv0d1 U80 (.ZN ( n33 ) , .I ( net_sdram_DQ_en[4] ) ) ;
inv0d1 U81 (.ZN ( n35 ) , .I ( net_sdram_DQ_en[3] ) ) ;
inv0d1 U82 (.ZN ( n37 ) , .I ( net_sdram_DQ_en[2] ) ) ;
inv0d1 U83 (.ZN ( n39 ) , .I ( net_sdram_DQ_en[1] ) ) ;
inv0d1 U84 (.ZN ( n41 ) , .I ( net_sdram_DQ_en[0] ) ) ;
inv0d1 U72 (.ZN ( n17 ) , .I ( net_sdram_DQ_en[12] ) ) ;
inv0d1 U73 (.ZN ( n19 ) , .I ( net_sdram_DQ_en[11] ) ) ;
inv0d1 U74 (.ZN ( n21 ) , .I ( net_sdram_DQ_en[10] ) ) ;
inv0d1 U75 (.ZN ( n23 ) , .I ( net_sdram_DQ_en[9] ) ) ;
inv0d1 U76 (.ZN ( n25 ) , .I ( net_sdram_DQ_en[8] ) ) ;
inv0d1 U77 (.ZN ( n27 ) , .I ( net_sdram_DQ_en[7] ) ) ;
inv0d1 U78 (.ZN ( n29 ) , .I ( net_sdram_DQ_en[6] ) ) ;
inv0d1 U79 (.ZN ( n31 ) , .I ( net_sdram_DQ_en[5] ) ) ;
bufbdk I_CLK_SOURCE_SYS_CLK (.Z ( buf_sys_clk ) , .I ( s_sys_clk ) ) ;
bufbdk I_CLK_SOURCE_SYS_2x_CLK (.Z ( buf_sys_2x_clk ) , .I ( s_sys_2x_clk ) ) ;
bufbdk I_CLK_SOURCE_SDRAM_CLK (.Z ( buf_sdram_clk ) , .I ( s_sdram_clk ) ) ;
inv0d1 U7 (.ZN ( n43 ) , .I ( net_pad_en ) ) ;
inv0d1 U9 (.ZN ( n4 ) , .I ( net_pc_be_en ) ) ;
inv0d1 U69 (.ZN ( n11 ) , .I ( net_sdram_DQ_en[15] ) ) ;
inv0d1 U70 (.ZN ( n13 ) , .I ( net_sdram_DQ_en[14] ) ) ;
inv0d1 U71 (.ZN ( n15 ) , .I ( net_sdram_DQ_en[13] ) ) ;
pc3b05 sdram_DQ_iopad_6 (.CIN ( net_sdram_DQ_in[6] ) , .OEN ( n115 ) 
    , .I ( net_sdram_DQ_out[6] ) , .PAD ( sd_DQ[6] ) ) ;
pc3b05 sdram_DQ_iopad_5 (.CIN ( net_sdram_DQ_in[5] ) , .OEN ( n114 ) 
    , .I ( net_sdram_DQ_out[5] ) , .PAD ( sd_DQ[5] ) ) ;
pc3b05 sdram_DQ_iopad_4 (.CIN ( net_sdram_DQ_in[4] ) , .OEN ( n113 ) 
    , .I ( net_sdram_DQ_out[4] ) , .PAD ( sd_DQ[4] ) ) ;
pc3b05 sdram_DQ_iopad_3 (.CIN ( net_sdram_DQ_in[3] ) , .OEN ( n112 ) 
    , .I ( net_sdram_DQ_out[3] ) , .PAD ( sd_DQ[3] ) ) ;
pc3b05 sdram_DQ_iopad_2 (.CIN ( net_sdram_DQ_in[2] ) , .OEN ( n111 ) 
    , .I ( net_sdram_DQ_out[2] ) , .PAD ( sd_DQ[2] ) ) ;
pc3b05 sdram_DQ_iopad_1 (.CIN ( net_sdram_DQ_in[1] ) , .OEN ( n110 ) 
    , .I ( net_sdram_DQ_out[1] ) , .PAD ( sd_DQ[1] ) ) ;
pc3b05 sdram_DQ_iopad_0 (.CIN ( net_sdram_DQ_in[0] ) , .OEN ( n109 ) 
    , .I ( net_sdram_DQ_out[0] ) , .PAD ( sd_DQ[0] ) ) ;
bufbdk I_CLK_SOURCE_PCLK (.Z ( buf_pclk ) , .I ( s_pclk ) ) ;
pc3b05 sdram_DQ_iopad_14 (.CIN ( net_sdram_DQ_in[14] ) , .OEN ( n123 ) 
    , .I ( net_sdram_DQ_out[14] ) , .PAD ( sd_DQ[14] ) ) ;
pc3b05 sdram_DQ_iopad_13 (.CIN ( net_sdram_DQ_in[13] ) , .OEN ( n122 ) 
    , .I ( net_sdram_DQ_out[13] ) , .PAD ( sd_DQ[13] ) ) ;
pc3b05 sdram_DQ_iopad_12 (.CIN ( net_sdram_DQ_in[12] ) , .OEN ( n121 ) 
    , .I ( net_sdram_DQ_out[12] ) , .PAD ( sd_DQ[12] ) ) ;
pc3b05 sdram_DQ_iopad_11 (.CIN ( net_sdram_DQ_in[11] ) , .OEN ( n120 ) 
    , .I ( net_sdram_DQ_out[11] ) , .PAD ( sd_DQ[11] ) ) ;
pc3b05 sdram_DQ_iopad_10 (.CIN ( net_sdram_DQ_in[10] ) , .OEN ( n119 ) 
    , .I ( net_sdram_DQ_out[10] ) , .PAD ( sd_DQ[10] ) ) ;
pc3b05 sdram_DQ_iopad_9 (.CIN ( net_sdram_DQ_in[9] ) , .OEN ( n118 ) 
    , .I ( net_sdram_DQ_out[9] ) , .PAD ( sd_DQ[9] ) ) ;
pc3b05 sdram_DQ_iopad_8 (.CIN ( net_sdram_DQ_in[8] ) , .OEN ( n117 ) 
    , .I ( net_sdram_DQ_out[8] ) , .PAD ( sd_DQ[8] ) ) ;
pc3b05 sdram_DQ_iopad_7 (.CIN ( net_sdram_DQ_in[7] ) , .OEN ( n116 ) 
    , .I ( net_sdram_DQ_out[7] ) , .PAD ( sd_DQ[7] ) ) ;
pc3o05 sdram_A_iopad_0 (.I ( n108 ) , .PAD ( sd_A[0] ) ) ;
pc3o05 sdram_CK_iopad (.I ( net_sdram_CK ) , .PAD ( sd_CK ) ) ;
pc3o05 sdram_CKn_iopad (.I ( net_sdram_CKn ) , .PAD ( sd_CKn ) ) ;
pc3o05 sdram_LD_iopad (.I ( net_sdram_LDASTttcNet536 ) , .PAD ( sd_LD ) ) ;
pc3o05 sdram_RW_iopad (.I ( net_sdram_RW ) , .PAD ( sd_RW ) ) ;
pc3o05 sdram_BWS_iopad_1 (.I ( net_sdram_BWS[1] ) , .PAD ( sd_BWS[1] ) ) ;
pc3o05 sdram_BWS_iopad_0 (.I ( net_sdram_BWS[0] ) , .PAD ( sd_BWS[0] ) ) ;
pc3b05 sdram_DQ_iopad_15 (.CIN ( net_sdram_DQ_in[15] ) , .OEN ( n124 ) 
    , .I ( net_sdram_DQ_out[15] ) , .PAD ( sd_DQ[15] ) ) ;
pc3o05 sdram_A_iopad_8 (.I ( net_sdram_A_8_ASTttcNet535 ) , .PAD ( sd_A[8] ) ) ;
pc3o05 sdram_A_iopad_7 (.I ( net_sdram_A_7_ASTttcNet538 ) , .PAD ( sd_A[7] ) ) ;
pc3o05 sdram_A_iopad_6 (.I ( net_sdram_A_6_ASTttcNet537 ) , .PAD ( sd_A[6] ) ) ;
pc3o05 sdram_A_iopad_5 (.I ( n98 ) , .PAD ( sd_A[5] ) ) ;
pc3o05 sdram_A_iopad_4 (.I ( n100 ) , .PAD ( sd_A[4] ) ) ;
pc3o05 sdram_A_iopad_3 (.I ( n102 ) , .PAD ( sd_A[3] ) ) ;
pc3o05 sdram_A_iopad_2 (.I ( n104 ) , .PAD ( sd_A[2] ) ) ;
pc3o05 sdram_A_iopad_1 (.I ( n106 ) , .PAD ( sd_A[1] ) ) ;
pc3b03 ptrdy_n_iopad (.CIN ( net_ptrdy_n_in ) , .OEN ( n130 ) 
    , .I ( net_ptrdy_n_outASTttcNet513 ) , .PAD ( ptrdy_n ) ) ;
pc3b03 pirdy_n_iopad (.CIN ( net_pirdy_n_in ) , .OEN ( n129 ) 
    , .I ( net_pirdy_n_outASTttcNet515 ) , .PAD ( pirdy_n ) ) ;
pc3b03 pdevsel_n_iopad (.CIN ( net_pdevsel_n_in ) , .OEN ( n128ASTttcNet541 ) 
    , .I ( net_pdevsel_n_outASTttcNet514 ) , .PAD ( pdevsel_n ) ) ;
pc3b03 pstop_n_iopad (.CIN ( net_pstop_n_in ) , .OEN ( n127 ) 
    , .I ( net_pstop_n_outASTttcNet512 ) , .PAD ( pstop_n ) ) ;
pc3b03 pperr_n_iopad (.CIN ( net_pperr_n_in ) , .OEN ( n126 ) 
    , .I ( net_pperr_n_outASTttcNet510 ) , .PAD ( pperr_n ) ) ;
pc3b03 pserr_n_iopad (.CIN ( net_pserr_n_in ) , .OEN ( n125 ) 
    , .I ( net_pserr_n_outASTttcNet509 ) , .PAD ( pserr_n ) ) ;
pc3o05 preq_n_iopad (.I ( net_preq_n ) , .PAD ( preq_n ) ) ;
pc3o05 sdram_A_iopad_9 (.I ( net_sdram_A[9] ) , .PAD ( sd_A[9] ) ) ;
pc3b03 pad_iopad_1 (.CIN ( net_pad_in[1] ) , .OEN ( n134ASTipoNet250 ) 
    , .I ( net_pad_out_1_ASTttcNet526 ) , .PAD ( pad[1] ) ) ;
pc3b03 pad_iopad_0 (.CIN ( net_pad_in[0] ) , .OEN ( n134ASTipoNet251 ) 
    , .I ( net_pad_out_0_ASTttcNet525 ) , .PAD ( pad[0] ) ) ;
pc3b03 ppar_iopad (.CIN ( net_ppar_in ) , .OEN ( n133 ) 
    , .I ( net_ppar_outASTttcNet524 ) , .PAD ( ppar ) ) ;
pc3b03 pc_be_iopad_3 (.CIN ( net_pc_be_in[3] ) , .OEN ( n51ASTttcNet1618 ) 
    , .I ( net_pc_be_out_3_ASTttcNet507 ) , .PAD ( pc_be[3] ) ) ;
pc3b03 pc_be_iopad_2 (.CIN ( net_pc_be_in[2] ) , .OEN ( n51ASTttcNet1618 ) 
    , .I ( net_pc_be_out_2_ASTttcNet532 ) , .PAD ( pc_be[2] ) ) ;
pc3b03 pc_be_iopad_1 (.CIN ( net_pc_be_in[1] ) , .OEN ( n50 ) 
    , .I ( net_pc_be_out_1_ASTttcNet534 ) , .PAD ( pc_be[1] ) ) ;
pc3b03 pc_be_iopad_0 (.CIN ( net_pc_be_in[0] ) , .OEN ( n50 ) 
    , .I ( net_pc_be_out_0_ASTttcNet517 ) , .PAD ( pc_be[0] ) ) ;
pc3b03 pframe_n_iopad (.CIN ( net_pframe_n_in ) , .OEN ( n131 ) 
    , .I ( net_pframe_n_outASTttcNet511 ) , .PAD ( pframe_n ) ) ;
pc3b03 pad_iopad_9 (.CIN ( net_pad_in[9] ) , .OEN ( n134ASTipoNet258 ) 
    , .I ( net_pad_out_9_ASTttcNet518 ) , .PAD ( pad[9] ) ) ;
pc3b03 pad_iopad_8 (.CIN ( net_pad_in[8] ) , .OEN ( n134ASTipoNet257 ) 
    , .I ( net_pad_out_8_ASTttcNet516 ) , .PAD ( pad[8] ) ) ;
pc3b03 pad_iopad_7 (.CIN ( net_pad_in[7] ) , .OEN ( n134ASTipoNet256 ) 
    , .I ( net_pad_out_7_ASTttcNet533 ) , .PAD ( pad[7] ) ) ;
pc3b03 pad_iopad_6 (.CIN ( net_pad_in[6] ) , .OEN ( n134ASTipoNet255 ) 
    , .I ( net_pad_out_6_ASTttcNet531 ) , .PAD ( pad[6] ) ) ;
pc3b03 pad_iopad_5 (.CIN ( net_pad_in[5] ) , .OEN ( n134ASTipoNet254 ) 
    , .I ( net_pad_out_5_ASTttcNet530 ) , .PAD ( pad[5] ) ) ;
pc3b03 pad_iopad_4 (.CIN ( net_pad_in[4] ) , .OEN ( n134ASTipoNet253 ) 
    , .I ( net_pad_out_4_ASTttcNet529 ) , .PAD ( pad[4] ) ) ;
pc3b03 pad_iopad_3 (.CIN ( net_pad_in[3] ) , .OEN ( n134ASTipoNet252 ) 
    , .I ( net_pad_out_3_ASTttcNet528 ) , .PAD ( pad[3] ) ) ;
pc3b03 pad_iopad_2 (.CIN ( net_pad_in[2] ) , .OEN ( n134ASTipoNet251 ) 
    , .I ( net_pad_out_2_ASTttcNet527 ) , .PAD ( pad[2] ) ) ;
pc3d01 pgnt_n_iopad (.CIN ( net_pgnt_n ) , .PAD ( pgnt_n ) ) ;
pc3d01 pm66en_iopad (.CIN ( net_pm66en ) , .PAD ( pm66en ) ) ;
pc3b03 pad_iopad_15 (.CIN ( net_pad_in[15] ) , .OEN ( n134ASTipoNet1578 ) 
    , .I ( net_pad_out_15_ASTttcNet508 ) , .PAD ( pad[15] ) ) ;
pc3b03 pad_iopad_14 (.CIN ( net_pad_in[14] ) , .OEN ( n134ASTttcNet1619 ) 
    , .I ( net_pad_out_14_ASTttcNet520 ) , .PAD ( pad[14] ) ) ;
pc3b03 pad_iopad_13 (.CIN ( net_pad_in[13] ) , .OEN ( n134ASTttcNet1619 ) 
    , .I ( net_pad_out_13_ASTttcNet522 ) , .PAD ( pad[13] ) ) ;
pc3b03 pad_iopad_12 (.CIN ( net_pad_in[12] ) , .OEN ( n134ASTttcNet1616 ) 
    , .I ( net_pad_out_12_ASTttcNet523 ) , .PAD ( pad[12] ) ) ;
pc3b03 pad_iopad_11 (.CIN ( net_pad_in[11] ) , .OEN ( n134ASTttcNet1617 ) 
    , .I ( net_pad_out_11_ASTttcNet521 ) , .PAD ( pad[11] ) ) ;
pc3b03 pad_iopad_10 (.CIN ( net_pad_in[10] ) , .OEN ( n134ASTipoNet292 ) 
    , .I ( net_pad_out_10_ASTttcNet519 ) , .PAD ( pad[10] ) ) ;
pc3d01 pclk_iopad (.CIN ( net_pclk ) , .PAD ( pclk ) ) ;
pc3d01 sys_clk_iopad (.CIN ( net_sys_clk ) , .PAD ( sys_clk ) ) ;
pc3d01 sdr_clk_iopad (.CIN ( net_sdram_clk ) , .PAD ( sdr_clk ) ) ;
pc3d01 test_mode_iopad (.CIN ( s_test_mode ) , .PAD ( test_mode ) ) ;
pc3d01 scan_en_iopad (.CIN ( s_scan_en ) , .PAD ( scan_en ) ) ;
pc3d01 powersave_iopad (.CIN ( s_power_save ) , .PAD ( power_save ) ) ;
pc3d01 prst_n_iopad (.CIN ( s_prst_n ) , .PAD ( prst_n ) ) ;
pc3d01 pidsel_iopad (.CIN ( net_pidsel ) , .PAD ( pidsel ) ) ;
endmodule
