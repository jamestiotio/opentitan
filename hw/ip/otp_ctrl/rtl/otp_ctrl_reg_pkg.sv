// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package otp_ctrl_reg_pkg;

  // Param list
  parameter int NumSramKeyReqSlots = 3;
  parameter int OtpByteAddrWidth = 11;
  parameter int NumErrorEntries = 10;
  parameter int NumDaiWords = 2;
  parameter int NumDigestWords = 2;
  parameter int NumSwCfgWindowWords = 512;
  parameter int NumPart = 8;
  parameter int VendorTestOffset = 0;
  parameter int VendorTestSize = 64;
  parameter int ScratchOffset = 0;
  parameter int ScratchSize = 56;
  parameter int VendorTestDigestOffset = 56;
  parameter int VendorTestDigestSize = 8;
  parameter int CreatorSwCfgOffset = 64;
  parameter int CreatorSwCfgSize = 800;
  parameter int CreatorSwCfgAstCfgOffset = 64;
  parameter int CreatorSwCfgAstCfgSize = 156;
  parameter int CreatorSwCfgAstInitEnOffset = 220;
  parameter int CreatorSwCfgAstInitEnSize = 4;
  parameter int CreatorSwCfgRomExtSkuOffset = 224;
  parameter int CreatorSwCfgRomExtSkuSize = 4;
  parameter int CreatorSwCfgUseSwRsaVerifyOffset = 228;
  parameter int CreatorSwCfgUseSwRsaVerifySize = 4;
  parameter int CreatorSwCfgKeyIsValidOffset = 232;
  parameter int CreatorSwCfgKeyIsValidSize = 8;
  parameter int CreatorSwCfgFlashDataDefaultCfgOffset = 240;
  parameter int CreatorSwCfgFlashDataDefaultCfgSize = 4;
  parameter int CreatorSwCfgFlashInfoBootDataCfgOffset = 244;
  parameter int CreatorSwCfgFlashInfoBootDataCfgSize = 4;
  parameter int CreatorSwCfgRngEnOffset = 248;
  parameter int CreatorSwCfgRngEnSize = 4;
  parameter int CreatorSwCfgJitterEnOffset = 252;
  parameter int CreatorSwCfgJitterEnSize = 4;
  parameter int CreatorSwCfgRetRamResetMaskOffset = 256;
  parameter int CreatorSwCfgRetRamResetMaskSize = 4;
  parameter int CreatorSwCfgManufStateOffset = 260;
  parameter int CreatorSwCfgManufStateSize = 4;
  parameter int CreatorSwCfgDigestOffset = 856;
  parameter int CreatorSwCfgDigestSize = 8;
  parameter int OwnerSwCfgOffset = 864;
  parameter int OwnerSwCfgSize = 800;
  parameter int RomErrorReportingOffset = 864;
  parameter int RomErrorReportingSize = 4;
  parameter int RomBootstrapEnOffset = 868;
  parameter int RomBootstrapEnSize = 4;
  parameter int RomFaultResponseOffset = 872;
  parameter int RomFaultResponseSize = 4;
  parameter int RomAlertClassEnOffset = 876;
  parameter int RomAlertClassEnSize = 4;
  parameter int RomAlertEscalationOffset = 880;
  parameter int RomAlertEscalationSize = 4;
  parameter int RomAlertClassificationOffset = 884;
  parameter int RomAlertClassificationSize = 320;
  parameter int RomLocalAlertClassificationOffset = 1204;
  parameter int RomLocalAlertClassificationSize = 64;
  parameter int RomAlertAccumThreshOffset = 1268;
  parameter int RomAlertAccumThreshSize = 16;
  parameter int RomAlertTimeoutCyclesOffset = 1284;
  parameter int RomAlertTimeoutCyclesSize = 16;
  parameter int RomAlertPhaseCyclesOffset = 1300;
  parameter int RomAlertPhaseCyclesSize = 64;
  parameter int RomWatchdogBiteThresholdCyclesOffset = 1364;
  parameter int RomWatchdogBiteThresholdCyclesSize = 4;
  parameter int OwnerSwCfgManufStateOffset = 1368;
  parameter int OwnerSwCfgManufStateSize = 4;
  parameter int OwnerSwCfgDigestOffset = 1656;
  parameter int OwnerSwCfgDigestSize = 8;
  parameter int HwCfgOffset = 1664;
  parameter int HwCfgSize = 80;
  parameter int DeviceIdOffset = 1664;
  parameter int DeviceIdSize = 32;
  parameter int ManufStateOffset = 1696;
  parameter int ManufStateSize = 32;
  parameter int EnSramIfetchOffset = 1728;
  parameter int EnSramIfetchSize = 1;
  parameter int EnCsrngSwAppReadOffset = 1729;
  parameter int EnCsrngSwAppReadSize = 1;
  parameter int EnEntropySrcFwReadOffset = 1730;
  parameter int EnEntropySrcFwReadSize = 1;
  parameter int EnEntropySrcFwOverOffset = 1731;
  parameter int EnEntropySrcFwOverSize = 1;
  parameter int HwCfgDigestOffset = 1736;
  parameter int HwCfgDigestSize = 8;
  parameter int Secret0Offset = 1744;
  parameter int Secret0Size = 40;
  parameter int TestUnlockTokenOffset = 1744;
  parameter int TestUnlockTokenSize = 16;
  parameter int TestExitTokenOffset = 1760;
  parameter int TestExitTokenSize = 16;
  parameter int Secret0DigestOffset = 1776;
  parameter int Secret0DigestSize = 8;
  parameter int Secret1Offset = 1784;
  parameter int Secret1Size = 88;
  parameter int FlashAddrKeySeedOffset = 1784;
  parameter int FlashAddrKeySeedSize = 32;
  parameter int FlashDataKeySeedOffset = 1816;
  parameter int FlashDataKeySeedSize = 32;
  parameter int SramDataKeySeedOffset = 1848;
  parameter int SramDataKeySeedSize = 16;
  parameter int Secret1DigestOffset = 1864;
  parameter int Secret1DigestSize = 8;
  parameter int Secret2Offset = 1872;
  parameter int Secret2Size = 88;
  parameter int RmaTokenOffset = 1872;
  parameter int RmaTokenSize = 16;
  parameter int CreatorRootKeyShare0Offset = 1888;
  parameter int CreatorRootKeyShare0Size = 32;
  parameter int CreatorRootKeyShare1Offset = 1920;
  parameter int CreatorRootKeyShare1Size = 32;
  parameter int Secret2DigestOffset = 1952;
  parameter int Secret2DigestSize = 8;
  parameter int LifeCycleOffset = 1960;
  parameter int LifeCycleSize = 88;
  parameter int LcTransitionCntOffset = 1960;
  parameter int LcTransitionCntSize = 48;
  parameter int LcStateOffset = 2008;
  parameter int LcStateSize = 40;
  parameter int NumAlerts = 3;

  // Address widths within the block
  parameter int CoreAw = 13;
  parameter int PrimAw = 5;

  ///////////////////////////////////////////////
  // Typedefs for registers for core interface //
  ///////////////////////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } otp_operation_done;
    struct packed {
      logic        q;
    } otp_error;
  } otp_ctrl_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } otp_operation_done;
    struct packed {
      logic        q;
    } otp_error;
  } otp_ctrl_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } otp_operation_done;
    struct packed {
      logic        q;
      logic        qe;
    } otp_error;
  } otp_ctrl_reg2hw_intr_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } fatal_macro_error;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_check_error;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_bus_integ_error;
  } otp_ctrl_reg2hw_alert_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } rd;
    struct packed {
      logic        q;
      logic        qe;
    } wr;
    struct packed {
      logic        q;
      logic        qe;
    } digest;
  } otp_ctrl_reg2hw_direct_access_cmd_reg_t;

  typedef struct packed {
    logic [10:0] q;
  } otp_ctrl_reg2hw_direct_access_address_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_direct_access_wdata_mreg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } integrity;
    struct packed {
      logic        q;
      logic        qe;
    } consistency;
  } otp_ctrl_reg2hw_check_trigger_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_check_timeout_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_integrity_check_period_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_consistency_check_period_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_test_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_creator_sw_cfg_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_owner_sw_cfg_read_lock_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } otp_operation_done;
    struct packed {
      logic        d;
      logic        de;
    } otp_error;
  } otp_ctrl_hw2reg_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
    } vendor_test_error;
    struct packed {
      logic        d;
    } creator_sw_cfg_error;
    struct packed {
      logic        d;
    } owner_sw_cfg_error;
    struct packed {
      logic        d;
    } hw_cfg_error;
    struct packed {
      logic        d;
    } secret0_error;
    struct packed {
      logic        d;
    } secret1_error;
    struct packed {
      logic        d;
    } secret2_error;
    struct packed {
      logic        d;
    } life_cycle_error;
    struct packed {
      logic        d;
    } dai_error;
    struct packed {
      logic        d;
    } lci_error;
    struct packed {
      logic        d;
    } timeout_error;
    struct packed {
      logic        d;
    } lfsr_fsm_error;
    struct packed {
      logic        d;
    } scrambling_fsm_error;
    struct packed {
      logic        d;
    } key_deriv_fsm_error;
    struct packed {
      logic        d;
    } bus_integ_error;
    struct packed {
      logic        d;
    } dai_idle;
    struct packed {
      logic        d;
    } check_pending;
  } otp_ctrl_hw2reg_status_reg_t;

  typedef struct packed {
    logic [2:0]  d;
  } otp_ctrl_hw2reg_err_code_mreg_t;

  typedef struct packed {
    logic        d;
  } otp_ctrl_hw2reg_direct_access_regwen_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_direct_access_rdata_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_test_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_creator_sw_cfg_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_owner_sw_cfg_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_hw_cfg_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret0_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret1_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret2_digest_mreg_t;

  // Register -> HW type for core interface
  typedef struct packed {
    otp_ctrl_reg2hw_intr_state_reg_t intr_state; // [197:196]
    otp_ctrl_reg2hw_intr_enable_reg_t intr_enable; // [195:194]
    otp_ctrl_reg2hw_intr_test_reg_t intr_test; // [193:190]
    otp_ctrl_reg2hw_alert_test_reg_t alert_test; // [189:184]
    otp_ctrl_reg2hw_direct_access_cmd_reg_t direct_access_cmd; // [183:178]
    otp_ctrl_reg2hw_direct_access_address_reg_t direct_access_address; // [177:167]
    otp_ctrl_reg2hw_direct_access_wdata_mreg_t [1:0] direct_access_wdata; // [166:103]
    otp_ctrl_reg2hw_check_trigger_reg_t check_trigger; // [102:99]
    otp_ctrl_reg2hw_check_timeout_reg_t check_timeout; // [98:67]
    otp_ctrl_reg2hw_integrity_check_period_reg_t integrity_check_period; // [66:35]
    otp_ctrl_reg2hw_consistency_check_period_reg_t consistency_check_period; // [34:3]
    otp_ctrl_reg2hw_vendor_test_read_lock_reg_t vendor_test_read_lock; // [2:2]
    otp_ctrl_reg2hw_creator_sw_cfg_read_lock_reg_t creator_sw_cfg_read_lock; // [1:1]
    otp_ctrl_reg2hw_owner_sw_cfg_read_lock_reg_t owner_sw_cfg_read_lock; // [0:0]
  } otp_ctrl_core_reg2hw_t;

  // HW -> register type for core interface
  typedef struct packed {
    otp_ctrl_hw2reg_intr_state_reg_t intr_state; // [563:560]
    otp_ctrl_hw2reg_status_reg_t status; // [559:543]
    otp_ctrl_hw2reg_err_code_mreg_t [9:0] err_code; // [542:513]
    otp_ctrl_hw2reg_direct_access_regwen_reg_t direct_access_regwen; // [512:512]
    otp_ctrl_hw2reg_direct_access_rdata_mreg_t [1:0] direct_access_rdata; // [511:448]
    otp_ctrl_hw2reg_vendor_test_digest_mreg_t [1:0] vendor_test_digest; // [447:384]
    otp_ctrl_hw2reg_creator_sw_cfg_digest_mreg_t [1:0] creator_sw_cfg_digest; // [383:320]
    otp_ctrl_hw2reg_owner_sw_cfg_digest_mreg_t [1:0] owner_sw_cfg_digest; // [319:256]
    otp_ctrl_hw2reg_hw_cfg_digest_mreg_t [1:0] hw_cfg_digest; // [255:192]
    otp_ctrl_hw2reg_secret0_digest_mreg_t [1:0] secret0_digest; // [191:128]
    otp_ctrl_hw2reg_secret1_digest_mreg_t [1:0] secret1_digest; // [127:64]
    otp_ctrl_hw2reg_secret2_digest_mreg_t [1:0] secret2_digest; // [63:0]
  } otp_ctrl_core_hw2reg_t;

  // Register offsets for core interface
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_STATE_OFFSET = 13'h 0;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_ENABLE_OFFSET = 13'h 4;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_TEST_OFFSET = 13'h 8;
  parameter logic [CoreAw-1:0] OTP_CTRL_ALERT_TEST_OFFSET = 13'h c;
  parameter logic [CoreAw-1:0] OTP_CTRL_STATUS_OFFSET = 13'h 10;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_OFFSET = 13'h 14;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_OFFSET = 13'h 18;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_CMD_OFFSET = 13'h 1c;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_ADDRESS_OFFSET = 13'h 20;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_WDATA_0_OFFSET = 13'h 24;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_WDATA_1_OFFSET = 13'h 28;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_OFFSET = 13'h 2c;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_OFFSET = 13'h 30;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TRIGGER_REGWEN_OFFSET = 13'h 34;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TRIGGER_OFFSET = 13'h 38;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_REGWEN_OFFSET = 13'h 3c;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TIMEOUT_OFFSET = 13'h 40;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTEGRITY_CHECK_PERIOD_OFFSET = 13'h 44;
  parameter logic [CoreAw-1:0] OTP_CTRL_CONSISTENCY_CHECK_PERIOD_OFFSET = 13'h 48;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_READ_LOCK_OFFSET = 13'h 4c;
  parameter logic [CoreAw-1:0] OTP_CTRL_CREATOR_SW_CFG_READ_LOCK_OFFSET = 13'h 50;
  parameter logic [CoreAw-1:0] OTP_CTRL_OWNER_SW_CFG_READ_LOCK_OFFSET = 13'h 54;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_DIGEST_0_OFFSET = 13'h 58;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_DIGEST_1_OFFSET = 13'h 5c;
  parameter logic [CoreAw-1:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_0_OFFSET = 13'h 60;
  parameter logic [CoreAw-1:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_1_OFFSET = 13'h 64;
  parameter logic [CoreAw-1:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_0_OFFSET = 13'h 68;
  parameter logic [CoreAw-1:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_1_OFFSET = 13'h 6c;
  parameter logic [CoreAw-1:0] OTP_CTRL_HW_CFG_DIGEST_0_OFFSET = 13'h 70;
  parameter logic [CoreAw-1:0] OTP_CTRL_HW_CFG_DIGEST_1_OFFSET = 13'h 74;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET0_DIGEST_0_OFFSET = 13'h 78;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET0_DIGEST_1_OFFSET = 13'h 7c;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET1_DIGEST_0_OFFSET = 13'h 80;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET1_DIGEST_1_OFFSET = 13'h 84;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET2_DIGEST_0_OFFSET = 13'h 88;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET2_DIGEST_1_OFFSET = 13'h 8c;

  // Reset values for hwext registers and their fields for core interface
  parameter logic [1:0] OTP_CTRL_INTR_TEST_RESVAL = 2'h 0;
  parameter logic [0:0] OTP_CTRL_INTR_TEST_OTP_OPERATION_DONE_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_INTR_TEST_OTP_ERROR_RESVAL = 1'h 0;
  parameter logic [2:0] OTP_CTRL_ALERT_TEST_RESVAL = 3'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_MACRO_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_CHECK_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_BUS_INTEG_ERROR_RESVAL = 1'h 0;
  parameter logic [16:0] OTP_CTRL_STATUS_RESVAL = 17'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_TEST_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_CREATOR_SW_CFG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_OWNER_SW_CFG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_HW_CFG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET0_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET1_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET2_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LIFE_CYCLE_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_DAI_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LCI_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_TIMEOUT_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LFSR_FSM_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SCRAMBLING_FSM_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_KEY_DERIV_FSM_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_BUS_INTEG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_DAI_IDLE_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_CHECK_PENDING_RESVAL = 1'h 0;
  parameter logic [29:0] OTP_CTRL_ERR_CODE_RESVAL = 30'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_0_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_1_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_2_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_3_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_4_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_5_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_6_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_7_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_8_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_ERR_CODE_9_RESVAL = 3'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_RESVAL = 1'h 1;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_DIRECT_ACCESS_REGWEN_RESVAL = 1'h 1;
  parameter logic [2:0] OTP_CTRL_DIRECT_ACCESS_CMD_RESVAL = 3'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_RD_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_WR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_DIGEST_RESVAL = 1'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_DIRECT_ACCESS_RDATA_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_DIRECT_ACCESS_RDATA_1_RESVAL = 32'h 0;
  parameter logic [1:0] OTP_CTRL_CHECK_TRIGGER_RESVAL = 2'h 0;
  parameter logic [0:0] OTP_CTRL_CHECK_TRIGGER_INTEGRITY_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_CHECK_TRIGGER_CONSISTENCY_RESVAL = 1'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_DIGEST_0_VENDOR_TEST_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_DIGEST_1_VENDOR_TEST_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_0_CREATOR_SW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_CREATOR_SW_CFG_DIGEST_1_CREATOR_SW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_0_OWNER_SW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_OWNER_SW_CFG_DIGEST_1_OWNER_SW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_HW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_HW_CFG_DIGEST_0_HW_CFG_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_HW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_HW_CFG_DIGEST_1_HW_CFG_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET0_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET0_DIGEST_0_SECRET0_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET0_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET0_DIGEST_1_SECRET0_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET1_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET1_DIGEST_0_SECRET1_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET1_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET1_DIGEST_1_SECRET1_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET2_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET2_DIGEST_0_SECRET2_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET2_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET2_DIGEST_1_SECRET2_DIGEST_1_RESVAL = 32'h 0;

  // Window parameters for core interface
  parameter logic [CoreAw-1:0] OTP_CTRL_SW_CFG_WINDOW_OFFSET = 13'h 1000;
  parameter int unsigned       OTP_CTRL_SW_CFG_WINDOW_SIZE   = 'h 800;

  // Register index for core interface
  typedef enum int {
    OTP_CTRL_INTR_STATE,
    OTP_CTRL_INTR_ENABLE,
    OTP_CTRL_INTR_TEST,
    OTP_CTRL_ALERT_TEST,
    OTP_CTRL_STATUS,
    OTP_CTRL_ERR_CODE,
    OTP_CTRL_DIRECT_ACCESS_REGWEN,
    OTP_CTRL_DIRECT_ACCESS_CMD,
    OTP_CTRL_DIRECT_ACCESS_ADDRESS,
    OTP_CTRL_DIRECT_ACCESS_WDATA_0,
    OTP_CTRL_DIRECT_ACCESS_WDATA_1,
    OTP_CTRL_DIRECT_ACCESS_RDATA_0,
    OTP_CTRL_DIRECT_ACCESS_RDATA_1,
    OTP_CTRL_CHECK_TRIGGER_REGWEN,
    OTP_CTRL_CHECK_TRIGGER,
    OTP_CTRL_CHECK_REGWEN,
    OTP_CTRL_CHECK_TIMEOUT,
    OTP_CTRL_INTEGRITY_CHECK_PERIOD,
    OTP_CTRL_CONSISTENCY_CHECK_PERIOD,
    OTP_CTRL_VENDOR_TEST_READ_LOCK,
    OTP_CTRL_CREATOR_SW_CFG_READ_LOCK,
    OTP_CTRL_OWNER_SW_CFG_READ_LOCK,
    OTP_CTRL_VENDOR_TEST_DIGEST_0,
    OTP_CTRL_VENDOR_TEST_DIGEST_1,
    OTP_CTRL_CREATOR_SW_CFG_DIGEST_0,
    OTP_CTRL_CREATOR_SW_CFG_DIGEST_1,
    OTP_CTRL_OWNER_SW_CFG_DIGEST_0,
    OTP_CTRL_OWNER_SW_CFG_DIGEST_1,
    OTP_CTRL_HW_CFG_DIGEST_0,
    OTP_CTRL_HW_CFG_DIGEST_1,
    OTP_CTRL_SECRET0_DIGEST_0,
    OTP_CTRL_SECRET0_DIGEST_1,
    OTP_CTRL_SECRET1_DIGEST_0,
    OTP_CTRL_SECRET1_DIGEST_1,
    OTP_CTRL_SECRET2_DIGEST_0,
    OTP_CTRL_SECRET2_DIGEST_1
  } otp_ctrl_core_id_e;

  // Register width information to check illegal writes for core interface
  parameter logic [3:0] OTP_CTRL_CORE_PERMIT [36] = '{
    4'b 0001, // index[ 0] OTP_CTRL_INTR_STATE
    4'b 0001, // index[ 1] OTP_CTRL_INTR_ENABLE
    4'b 0001, // index[ 2] OTP_CTRL_INTR_TEST
    4'b 0001, // index[ 3] OTP_CTRL_ALERT_TEST
    4'b 0111, // index[ 4] OTP_CTRL_STATUS
    4'b 1111, // index[ 5] OTP_CTRL_ERR_CODE
    4'b 0001, // index[ 6] OTP_CTRL_DIRECT_ACCESS_REGWEN
    4'b 0001, // index[ 7] OTP_CTRL_DIRECT_ACCESS_CMD
    4'b 0011, // index[ 8] OTP_CTRL_DIRECT_ACCESS_ADDRESS
    4'b 1111, // index[ 9] OTP_CTRL_DIRECT_ACCESS_WDATA_0
    4'b 1111, // index[10] OTP_CTRL_DIRECT_ACCESS_WDATA_1
    4'b 1111, // index[11] OTP_CTRL_DIRECT_ACCESS_RDATA_0
    4'b 1111, // index[12] OTP_CTRL_DIRECT_ACCESS_RDATA_1
    4'b 0001, // index[13] OTP_CTRL_CHECK_TRIGGER_REGWEN
    4'b 0001, // index[14] OTP_CTRL_CHECK_TRIGGER
    4'b 0001, // index[15] OTP_CTRL_CHECK_REGWEN
    4'b 1111, // index[16] OTP_CTRL_CHECK_TIMEOUT
    4'b 1111, // index[17] OTP_CTRL_INTEGRITY_CHECK_PERIOD
    4'b 1111, // index[18] OTP_CTRL_CONSISTENCY_CHECK_PERIOD
    4'b 0001, // index[19] OTP_CTRL_VENDOR_TEST_READ_LOCK
    4'b 0001, // index[20] OTP_CTRL_CREATOR_SW_CFG_READ_LOCK
    4'b 0001, // index[21] OTP_CTRL_OWNER_SW_CFG_READ_LOCK
    4'b 1111, // index[22] OTP_CTRL_VENDOR_TEST_DIGEST_0
    4'b 1111, // index[23] OTP_CTRL_VENDOR_TEST_DIGEST_1
    4'b 1111, // index[24] OTP_CTRL_CREATOR_SW_CFG_DIGEST_0
    4'b 1111, // index[25] OTP_CTRL_CREATOR_SW_CFG_DIGEST_1
    4'b 1111, // index[26] OTP_CTRL_OWNER_SW_CFG_DIGEST_0
    4'b 1111, // index[27] OTP_CTRL_OWNER_SW_CFG_DIGEST_1
    4'b 1111, // index[28] OTP_CTRL_HW_CFG_DIGEST_0
    4'b 1111, // index[29] OTP_CTRL_HW_CFG_DIGEST_1
    4'b 1111, // index[30] OTP_CTRL_SECRET0_DIGEST_0
    4'b 1111, // index[31] OTP_CTRL_SECRET0_DIGEST_1
    4'b 1111, // index[32] OTP_CTRL_SECRET1_DIGEST_0
    4'b 1111, // index[33] OTP_CTRL_SECRET1_DIGEST_1
    4'b 1111, // index[34] OTP_CTRL_SECRET2_DIGEST_0
    4'b 1111  // index[35] OTP_CTRL_SECRET2_DIGEST_1
  };

  ///////////////////////////////////////////////
  // Typedefs for registers for prim interface //
  ///////////////////////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } field0;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [9:0] q;
    } field3;
    struct packed {
      logic [10:0] q;
    } field4;
  } otp_ctrl_reg2hw_csr0_reg_t;

  typedef struct packed {
    struct packed {
      logic [6:0]  q;
    } field0;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic [6:0]  q;
    } field2;
    struct packed {
      logic        q;
    } field3;
    struct packed {
      logic [15:0] q;
    } field4;
  } otp_ctrl_reg2hw_csr1_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_csr2_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  q;
    } field0;
    struct packed {
      logic [9:0] q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field3;
  } otp_ctrl_reg2hw_csr3_reg_t;

  typedef struct packed {
    struct packed {
      logic [9:0] q;
    } field0;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field3;
  } otp_ctrl_reg2hw_csr4_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  q;
    } field0;
    struct packed {
      logic [1:0]  q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [2:0]  q;
    } field3;
    struct packed {
      logic        q;
    } field4;
    struct packed {
      logic        q;
    } field5;
    struct packed {
      logic [15:0] q;
    } field6;
  } otp_ctrl_reg2hw_csr5_reg_t;

  typedef struct packed {
    struct packed {
      logic [9:0] q;
    } field0;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [15:0] q;
    } field3;
  } otp_ctrl_reg2hw_csr6_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  q;
    } field0;
    struct packed {
      logic [2:0]  q;
    } field1;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field3;
  } otp_ctrl_reg2hw_csr7_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [9:0] d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic        d;
      logic        de;
    } field3;
  } otp_ctrl_hw2reg_csr3_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [1:0]  d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field3;
    struct packed {
      logic        d;
      logic        de;
    } field4;
    struct packed {
      logic        d;
      logic        de;
    } field5;
    struct packed {
      logic [15:0] d;
      logic        de;
    } field6;
  } otp_ctrl_hw2reg_csr5_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic        d;
      logic        de;
    } field3;
  } otp_ctrl_hw2reg_csr7_reg_t;

  // Register -> HW type for prim interface
  typedef struct packed {
    otp_ctrl_reg2hw_csr0_reg_t csr0; // [153:130]
    otp_ctrl_reg2hw_csr1_reg_t csr1; // [129:98]
    otp_ctrl_reg2hw_csr2_reg_t csr2; // [97:97]
    otp_ctrl_reg2hw_csr3_reg_t csr3; // [96:82]
    otp_ctrl_reg2hw_csr4_reg_t csr4; // [81:69]
    otp_ctrl_reg2hw_csr5_reg_t csr5; // [68:39]
    otp_ctrl_reg2hw_csr6_reg_t csr6; // [38:11]
    otp_ctrl_reg2hw_csr7_reg_t csr7; // [10:0]
  } otp_ctrl_prim_reg2hw_t;

  // HW -> register type for prim interface
  typedef struct packed {
    otp_ctrl_hw2reg_csr3_reg_t csr3; // [70:52]
    otp_ctrl_hw2reg_csr5_reg_t csr5; // [51:15]
    otp_ctrl_hw2reg_csr7_reg_t csr7; // [14:0]
  } otp_ctrl_prim_hw2reg_t;

  // Register offsets for prim interface
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR0_OFFSET = 5'h 0;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR1_OFFSET = 5'h 4;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR2_OFFSET = 5'h 8;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR3_OFFSET = 5'h c;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR4_OFFSET = 5'h 10;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR5_OFFSET = 5'h 14;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR6_OFFSET = 5'h 18;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR7_OFFSET = 5'h 1c;

  // Register index for prim interface
  typedef enum int {
    OTP_CTRL_CSR0,
    OTP_CTRL_CSR1,
    OTP_CTRL_CSR2,
    OTP_CTRL_CSR3,
    OTP_CTRL_CSR4,
    OTP_CTRL_CSR5,
    OTP_CTRL_CSR6,
    OTP_CTRL_CSR7
  } otp_ctrl_prim_id_e;

  // Register width information to check illegal writes for prim interface
  parameter logic [3:0] OTP_CTRL_PRIM_PERMIT [8] = '{
    4'b 1111, // index[0] OTP_CTRL_CSR0
    4'b 1111, // index[1] OTP_CTRL_CSR1
    4'b 0001, // index[2] OTP_CTRL_CSR2
    4'b 0111, // index[3] OTP_CTRL_CSR3
    4'b 0011, // index[4] OTP_CTRL_CSR4
    4'b 1111, // index[5] OTP_CTRL_CSR5
    4'b 1111, // index[6] OTP_CTRL_CSR6
    4'b 0011  // index[7] OTP_CTRL_CSR7
  };

endpackage
