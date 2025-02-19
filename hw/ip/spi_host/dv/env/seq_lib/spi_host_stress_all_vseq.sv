// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// sw_reset test vseq
class spi_host_stress_all_vseq extends spi_host_base_vseq;
  `uvm_object_utils(spi_host_stress_all_vseq)
  `uvm_object_new

  constraint num_trans_c {
    num_trans inside {[3:6]};
  }


  virtual task body();
    string seq_names[] = {"spi_host_smoke_vseq",
                          "spi_host_speed_vseq",
                          "spi_host_performance_vseq",
                          "spi_host_event_vseq",
                          "spi_host_overflow_underflow_vseq",
                          "spi_host_sw_reset_vseq"};

    for (int i = 1; i <= num_trans; i++) begin
      uvm_sequence   seq;
      spi_host_base_vseq spi_host_vseq;
      uint           seq_idx = $urandom_range(0, seq_names.size - 1);

      seq = create_seq_by_name(seq_names[seq_idx]);
      `downcast(spi_host_vseq, seq)

      // if upper seq disables do_apply_reset for this seq, then can't issue reset
      // as upper seq may drive reset
      if (do_apply_reset) spi_host_vseq.do_apply_reset = $urandom_range(0, 1);
      else                spi_host_vseq.do_apply_reset = 0;

      spi_host_vseq.set_sequencer(p_sequencer);
      `DV_CHECK_RANDOMIZE_FATAL(spi_host_vseq)

      spi_host_vseq.start(p_sequencer);
    end

  endtask : body

endclass : spi_host_stress_all_vseq
