// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Breakout / remapping wrapper for register file. Generated from template.

module alert_handler_reg_wrap (
  input                                   clk_i,
  input                                   rst_ni,
  // Bus Interface (device)
  input  tlul_pkg::tl_h2d_t               tl_i,
  output tlul_pkg::tl_d2h_t               tl_o,
  // interrupt
  output logic [alert_pkg::N_CLASSES-1:0] irq_o,
  // hw2reg
  input  alert_pkg::hw2reg_wrap_t         hw2reg_wrap,
  // reg2hw
  output alert_pkg::reg2hw_wrap_t         reg2hw_wrap
);

  //////////////////////////////////////////////////////
  // reg instance
  //////////////////////////////////////////////////////

  logic [alert_pkg::N_CLASSES-1:0] class_autolock_en;
  alert_handler_reg_pkg::alert_handler_reg2hw_t reg2hw;
  alert_handler_reg_pkg::alert_handler_hw2reg_t hw2reg;

  alert_handler_reg_top i_reg (
    .clk_i,
    .rst_ni,
    .tl_i,
    .tl_o,
    .reg2hw,
    .hw2reg,
    .devmode_i(1'b1)
  );

  //////////////////////////////////////////////////////
  // interrupts
  //////////////////////////////////////////////////////

    prim_intr_hw #(
      .Width(1)
    ) i_irq_classa (
      .event_intr_i           ( hw2reg_wrap.class_trig[0] & reg2hw_wrap.class_en[0] ),
      .reg2hw_intr_enable_q_i ( reg2hw.intr_enable.classa.q  ),
      .reg2hw_intr_test_q_i   ( reg2hw.intr_test.classa.q    ),
      .reg2hw_intr_test_qe_i  ( reg2hw.intr_test.classa.qe   ),
      .reg2hw_intr_state_q_i  ( reg2hw.intr_state.classa.q   ),
      .hw2reg_intr_state_de_o ( hw2reg.intr_state.classa.de  ),
      .hw2reg_intr_state_d_o  ( hw2reg.intr_state.classa.d   ),
      .intr_o                 ( irq_o[0]                     )
    );

    prim_intr_hw #(
      .Width(1)
    ) i_irq_classb (
      .event_intr_i           ( hw2reg_wrap.class_trig[1] & reg2hw_wrap.class_en[1] ),
      .reg2hw_intr_enable_q_i ( reg2hw.intr_enable.classb.q  ),
      .reg2hw_intr_test_q_i   ( reg2hw.intr_test.classb.q    ),
      .reg2hw_intr_test_qe_i  ( reg2hw.intr_test.classb.qe   ),
      .reg2hw_intr_state_q_i  ( reg2hw.intr_state.classb.q   ),
      .hw2reg_intr_state_de_o ( hw2reg.intr_state.classb.de  ),
      .hw2reg_intr_state_d_o  ( hw2reg.intr_state.classb.d   ),
      .intr_o                 ( irq_o[1]                     )
    );

    prim_intr_hw #(
      .Width(1)
    ) i_irq_classc (
      .event_intr_i           ( hw2reg_wrap.class_trig[2] & reg2hw_wrap.class_en[2] ),
      .reg2hw_intr_enable_q_i ( reg2hw.intr_enable.classc.q  ),
      .reg2hw_intr_test_q_i   ( reg2hw.intr_test.classc.q    ),
      .reg2hw_intr_test_qe_i  ( reg2hw.intr_test.classc.qe   ),
      .reg2hw_intr_state_q_i  ( reg2hw.intr_state.classc.q   ),
      .hw2reg_intr_state_de_o ( hw2reg.intr_state.classc.de  ),
      .hw2reg_intr_state_d_o  ( hw2reg.intr_state.classc.d   ),
      .intr_o                 ( irq_o[2]                     )
    );

    prim_intr_hw #(
      .Width(1)
    ) i_irq_classd (
      .event_intr_i           ( hw2reg_wrap.class_trig[3] & reg2hw_wrap.class_en[3] ),
      .reg2hw_intr_enable_q_i ( reg2hw.intr_enable.classd.q  ),
      .reg2hw_intr_test_q_i   ( reg2hw.intr_test.classd.q    ),
      .reg2hw_intr_test_qe_i  ( reg2hw.intr_test.classd.qe   ),
      .reg2hw_intr_state_q_i  ( reg2hw.intr_state.classd.q   ),
      .hw2reg_intr_state_de_o ( hw2reg.intr_state.classd.de  ),
      .hw2reg_intr_state_d_o  ( hw2reg.intr_state.classd.d   ),
      .intr_o                 ( irq_o[3]                     )
    );

  //////////////////////////////////////////////////////
  // hw2reg mappings
  //////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////////////////
  // if an alert is enabled and it fires,
  // we have to set the corresponding cause bit

  assign { hw2reg.cause_word.a3.d,
           hw2reg.cause_word.a2.d,
           hw2reg.cause_word.a1.d,
           hw2reg.cause_word.a0.d
           } = '1;


  assign { hw2reg.cause_word.a3.de,
           hw2reg.cause_word.a2.de,
           hw2reg.cause_word.a1.de,
           hw2reg.cause_word.a0.de
           } = hw2reg_wrap.alert_cause;
  //----------------------------------------------------------------------------

  // if a local alert is enabled and it fires,
  // we have to set the corresponding cause bit
  assign { hw2reg.cause_local.la3.d,
           hw2reg.cause_local.la2.d,
           hw2reg.cause_local.la1.d,
           hw2reg.cause_local.la0.d } = '1;

  assign { hw2reg.cause_local.la3.de,
           hw2reg.cause_local.la2.de,
           hw2reg.cause_local.la1.de,
           hw2reg.cause_local.la0.de } = hw2reg_wrap.loc_alert_cause;

  // autolock can clear these regs automatically upon entering escalation
  // note: the class must be activated for this to occur
  assign { hw2reg.classd_clren.d,
           hw2reg.classc_clren.d,
           hw2reg.classb_clren.d,
           hw2reg.classa_clren.d } = '0;

  assign { hw2reg.classd_clren.de,
           hw2reg.classc_clren.de,
           hw2reg.classb_clren.de,
           hw2reg.classa_clren.de } = hw2reg_wrap.class_esc_trig    &
                                      class_autolock_en             &
                                      reg2hw_wrap.class_en;

  // current accumulator counts
  assign { hw2reg.classd_accum_cnt.d,
           hw2reg.classc_accum_cnt.d,
           hw2reg.classb_accum_cnt.d,
           hw2reg.classa_accum_cnt.d } = hw2reg_wrap.class_accum_cnt;

  // current accumulator counts
  assign { hw2reg.classd_esc_cnt.d,
           hw2reg.classc_esc_cnt.d,
           hw2reg.classb_esc_cnt.d,
           hw2reg.classa_esc_cnt.d } = hw2reg_wrap.class_esc_cnt;

  // current accumulator counts
  assign { hw2reg.classd_state.d,
           hw2reg.classc_state.d,
           hw2reg.classb_state.d,
           hw2reg.classa_state.d } = hw2reg_wrap.class_esc_state;

  //////////////////////////////////////////////////////
  // reg2hw mappings
  //////////////////////////////////////////////////////

  // config register lock
  assign reg2hw_wrap.config_locked = ~reg2hw.regen.q;

  //////////////////////////////////////////////////////////////////////////////
  // alert enable

  assign reg2hw_wrap.alert_en = { reg2hw.alert_en.en_a3.q,
                                  reg2hw.alert_en.en_a2.q,
                                  reg2hw.alert_en.en_a1.q,
                                  reg2hw.alert_en.en_a0.q };
  //----------------------------------------------------------------------------

  //////////////////////////////////////////////////////////////////////////////
  // classification mapping

  assign reg2hw_wrap.alert_class = { reg2hw.alert_class.class_a3.q,
                                     reg2hw.alert_class.class_a2.q,
                                     reg2hw.alert_class.class_a1.q,
                                     reg2hw.alert_class.class_a0.q };
  //----------------------------------------------------------------------------

  // local alert enable and class assignments
  assign reg2hw_wrap.loc_alert_en = { reg2hw.loc_alert_en.en_la3.q,
                                      reg2hw.loc_alert_en.en_la2.q,
                                      reg2hw.loc_alert_en.en_la1.q,
                                      reg2hw.loc_alert_en.en_la0.q };

  assign reg2hw_wrap.loc_alert_class = { reg2hw.loc_alert_class.class_la3.q[1:0],
                                         reg2hw.loc_alert_class.class_la2.q[1:0],
                                         reg2hw.loc_alert_class.class_la1.q[1:0],
                                         reg2hw.loc_alert_class.class_la0.q[1:0]};
  // ping timeout in cycles
  assign reg2hw_wrap.ping_timeout_cyc = reg2hw.ping_timeout_cyc.q;

  // class enable
  assign reg2hw_wrap.class_en = { reg2hw.classd_ctrl.en,
                                  reg2hw.classc_ctrl.en,
                                  reg2hw.classb_ctrl.en,
                                  reg2hw.classa_ctrl.en };

  // autolock enable
  assign class_autolock_en = { reg2hw.classd_ctrl.lock,
                               reg2hw.classc_ctrl.lock,
                               reg2hw.classb_ctrl.lock,
                               reg2hw.classa_ctrl.lock };

  // escalation signal enable
  assign reg2hw_wrap.class_esc_en = { reg2hw.classd_ctrl.en_e3,
                                      reg2hw.classd_ctrl.en_e2,
                                      reg2hw.classd_ctrl.en_e1,
                                      reg2hw.classd_ctrl.en_e0,
                                      //
                                      reg2hw.classc_ctrl.en_e3,
                                      reg2hw.classc_ctrl.en_e2,
                                      reg2hw.classc_ctrl.en_e1,
                                      reg2hw.classc_ctrl.en_e0,
                                      //
                                      reg2hw.classb_ctrl.en_e3,
                                      reg2hw.classb_ctrl.en_e2,
                                      reg2hw.classb_ctrl.en_e1,
                                      reg2hw.classb_ctrl.en_e0,
                                      //
                                      reg2hw.classa_ctrl.en_e3,
                                      reg2hw.classa_ctrl.en_e2,
                                      reg2hw.classa_ctrl.en_e1,
                                      reg2hw.classa_ctrl.en_e0 };


  // escalation phase to escalation signal mapping
  assign reg2hw_wrap.class_esc_map = { reg2hw.classd_ctrl.map_e3,
                                       reg2hw.classd_ctrl.map_e2,
                                       reg2hw.classd_ctrl.map_e1,
                                       reg2hw.classd_ctrl.map_e0,
                                       //
                                       reg2hw.classc_ctrl.map_e3,
                                       reg2hw.classc_ctrl.map_e2,
                                       reg2hw.classc_ctrl.map_e1,
                                       reg2hw.classc_ctrl.map_e0,
                                       //
                                       reg2hw.classb_ctrl.map_e3,
                                       reg2hw.classb_ctrl.map_e2,
                                       reg2hw.classb_ctrl.map_e1,
                                       reg2hw.classb_ctrl.map_e0,
                                       //
                                       reg2hw.classa_ctrl.map_e3,
                                       reg2hw.classa_ctrl.map_e2,
                                       reg2hw.classa_ctrl.map_e1,
                                       reg2hw.classa_ctrl.map_e0 };

  // TODO: check whether this is correctly locked inside the regfile
  // writing 1b1 to a class clr register clears the accumulator and
  // escalation state if autolock is not asserted
  assign reg2hw_wrap.class_clr = { reg2hw.classd_clr.q & reg2hw.classd_clr.qe,
                                   reg2hw.classc_clr.q & reg2hw.classc_clr.qe,
                                   reg2hw.classb_clr.q & reg2hw.classb_clr.qe,
                                   reg2hw.classa_clr.q & reg2hw.classa_clr.qe };

  // accumulator thresholds
  assign reg2hw_wrap.class_accum_thresh = { reg2hw.classd_accum_thresh.q,
                                            reg2hw.classc_accum_thresh.q,
                                            reg2hw.classb_accum_thresh.q,
                                            reg2hw.classa_accum_thresh.q };

  // interrupt timeout lengths
  assign reg2hw_wrap.class_timeout_cyc = { reg2hw.classd_timeout_cyc.q,
                                           reg2hw.classc_timeout_cyc.q,
                                           reg2hw.classb_timeout_cyc.q,
                                           reg2hw.classa_timeout_cyc.q };
  // escalation phase lengths
  assign reg2hw_wrap.class_phase_cyc = { reg2hw.classd_phase3_cyc.q,
                                         reg2hw.classd_phase2_cyc.q,
                                         reg2hw.classd_phase1_cyc.q,
                                         reg2hw.classd_phase0_cyc.q,
                                         //
                                         reg2hw.classc_phase3_cyc.q,
                                         reg2hw.classc_phase2_cyc.q,
                                         reg2hw.classc_phase1_cyc.q,
                                         reg2hw.classc_phase0_cyc.q,
                                         //
                                         reg2hw.classb_phase3_cyc.q,
                                         reg2hw.classb_phase2_cyc.q,
                                         reg2hw.classb_phase1_cyc.q,
                                         reg2hw.classb_phase0_cyc.q,
                                         //
                                         reg2hw.classa_phase3_cyc.q,
                                         reg2hw.classa_phase2_cyc.q,
                                         reg2hw.classa_phase1_cyc.q,
                                         reg2hw.classa_phase0_cyc.q};

endmodule : alert_handler_reg_wrap

