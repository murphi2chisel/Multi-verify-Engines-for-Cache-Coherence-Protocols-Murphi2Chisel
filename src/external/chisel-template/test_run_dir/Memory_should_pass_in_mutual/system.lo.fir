circuit system :
  module rule_Try :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_0, UInt<1>("h0")) @[router.scala 9:22]
    node _T_1 = and(_T, UInt<1>("h0")) @[router.scala 9:30]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), io_n_in_0) @[router.scala 9:123 10:19 node.scala 16:11]
    node _GEN_1 = mux(io_en_r, _GEN_0, io_n_in_0) @[node.scala 16:11 router.scala 8:16]
    io_n_out_0 <= _GEN_1
    io_n_out_1 <= io_n_in_1 @[node.scala 16:11]
    io_x_out <= io_x_in @[node.scala 17:11]

  module rule_Crit :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_0, UInt<1>("h1")) @[router.scala 21:23]
    node _T_1 = eq(io_x_in, UInt<1>("h1")) @[router.scala 21:44]
    node _T_2 = and(_T, _T_1) @[router.scala 21:32]
    node _GEN_0 = mux(_T_2, UInt<2>("h2"), io_n_in_0) @[node.scala 16:11 router.scala 21:57 22:19]
    node _GEN_1 = mux(_T_2, UInt<1>("h0"), io_x_in) @[node.scala 17:11 router.scala 21:57 23:16]
    node _GEN_2 = mux(io_en_r, _GEN_0, io_n_in_0) @[node.scala 16:11 router.scala 19:16]
    node _GEN_3 = mux(io_en_r, _GEN_1, io_x_in) @[node.scala 17:11 router.scala 19:16]
    io_n_out_0 <= _GEN_2
    io_n_out_1 <= io_n_in_1 @[node.scala 16:11]
    io_x_out <= _GEN_3

  module rule_Exit :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_0, UInt<2>("h2")) @[router.scala 34:22]
    node _GEN_0 = mux(_T, UInt<2>("h3"), io_n_in_0) @[node.scala 16:11 router.scala 34:31 35:19]
    node _GEN_1 = mux(io_en_r, _GEN_0, io_n_in_0) @[node.scala 16:11 router.scala 32:16]
    io_n_out_0 <= _GEN_1
    io_n_out_1 <= io_n_in_1 @[node.scala 16:11]
    io_x_out <= io_x_in @[node.scala 17:11]

  module rule_Idle :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_0, UInt<2>("h3")) @[router.scala 46:22]
    node _GEN_0 = mux(_T, UInt<1>("h0"), io_n_in_0) @[node.scala 16:11 router.scala 46:31 47:19]
    node _GEN_1 = mux(_T, UInt<1>("h1"), io_x_in) @[node.scala 17:11 router.scala 46:31 48:16]
    node _GEN_2 = mux(io_en_r, _GEN_0, io_n_in_0) @[node.scala 16:11 router.scala 44:16]
    node _GEN_3 = mux(io_en_r, _GEN_1, io_x_in) @[node.scala 17:11 router.scala 44:16]
    io_n_out_0 <= _GEN_2
    io_n_out_1 <= io_n_in_1 @[node.scala 16:11]
    io_x_out <= _GEN_3

  module rule_Try_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_1, UInt<1>("h0")) @[router.scala 9:22]
    node _T_1 = and(_T, UInt<1>("h0")) @[router.scala 9:30]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), io_n_in_1) @[router.scala 9:123 10:19 node.scala 16:11]
    node _GEN_1 = mux(io_en_r, _GEN_0, io_n_in_1) @[node.scala 16:11 router.scala 8:16]
    io_n_out_0 <= io_n_in_0 @[node.scala 16:11]
    io_n_out_1 <= _GEN_1
    io_x_out <= io_x_in @[node.scala 17:11]

  module rule_Crit_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_1, UInt<1>("h1")) @[router.scala 21:23]
    node _T_1 = eq(io_x_in, UInt<1>("h1")) @[router.scala 21:44]
    node _T_2 = and(_T, _T_1) @[router.scala 21:32]
    node _GEN_0 = mux(_T_2, UInt<2>("h2"), io_n_in_1) @[node.scala 16:11 router.scala 21:57 22:19]
    node _GEN_1 = mux(_T_2, UInt<1>("h0"), io_x_in) @[node.scala 17:11 router.scala 21:57 23:16]
    node _GEN_2 = mux(io_en_r, _GEN_0, io_n_in_1) @[node.scala 16:11 router.scala 19:16]
    node _GEN_3 = mux(io_en_r, _GEN_1, io_x_in) @[node.scala 17:11 router.scala 19:16]
    io_n_out_0 <= io_n_in_0 @[node.scala 16:11]
    io_n_out_1 <= _GEN_2
    io_x_out <= _GEN_3

  module rule_Exit_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_1, UInt<2>("h2")) @[router.scala 34:22]
    node _GEN_0 = mux(_T, UInt<2>("h3"), io_n_in_1) @[node.scala 16:11 router.scala 34:31 35:19]
    node _GEN_1 = mux(io_en_r, _GEN_0, io_n_in_1) @[node.scala 16:11 router.scala 32:16]
    io_n_out_0 <= io_n_in_0 @[node.scala 16:11]
    io_n_out_1 <= _GEN_1
    io_x_out <= io_x_in @[node.scala 17:11]

  module rule_Idle_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_en_r : UInt<1>
    input io_n_in_0 : UInt<2>
    input io_n_in_1 : UInt<2>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    input io_x_in : UInt<1>
    output io_x_out : UInt<1>

    node _T = eq(io_n_in_1, UInt<2>("h3")) @[router.scala 46:22]
    node _GEN_0 = mux(_T, UInt<1>("h0"), io_n_in_1) @[node.scala 16:11 router.scala 46:31 47:19]
    node _GEN_1 = mux(_T, UInt<1>("h1"), io_x_in) @[node.scala 17:11 router.scala 46:31 48:16]
    node _GEN_2 = mux(io_en_r, _GEN_0, io_n_in_1) @[node.scala 16:11 router.scala 44:16]
    node _GEN_3 = mux(io_en_r, _GEN_1, io_x_in) @[node.scala 17:11 router.scala 44:16]
    io_n_out_0 <= io_n_in_0 @[node.scala 16:11]
    io_n_out_1 <= _GEN_2
    io_x_out <= _GEN_3

  module system :
    input clock : Clock
    input reset : UInt<1>
    input io_en_a : UInt<3>
    output io_n_out_0 : UInt<2>
    output io_n_out_1 : UInt<2>
    output io_x_out : UInt<1>

    inst rules_0 of rule_Try @[system.scala 32:20]
    inst rules_1 of rule_Crit @[system.scala 33:20]
    inst rules_2 of rule_Exit @[system.scala 34:20]
    inst rules_3 of rule_Idle @[system.scala 35:20]
    inst rules_4 of rule_Try_1 @[system.scala 32:20]
    inst rules_5 of rule_Crit_1 @[system.scala 33:20]
    inst rules_6 of rule_Exit_1 @[system.scala 34:20]
    inst rules_7 of rule_Idle_1 @[system.scala 35:20]
    reg n_reg_0 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), n_reg_0) @[system.scala 20:22]
    reg n_reg_1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), n_reg_1) @[system.scala 20:22]
    reg x_reg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), x_reg) @[system.scala 23:22]
    node _T = eq(io_en_a, UInt<1>("h0")) @[system.scala 41:31]
    node _T_1 = eq(io_en_a, UInt<1>("h0")) @[system.scala 42:17]
    node _GEN_0 = mux(_T_1, rules_0.io_n_out_0, n_reg_0) @[system.scala 42:25 43:13 20:22]
    node _GEN_1 = mux(_T_1, rules_0.io_n_out_1, n_reg_1) @[system.scala 42:25 43:13 20:22]
    node _GEN_2 = mux(_T_1, rules_0.io_x_out, x_reg) @[system.scala 42:25 44:13 23:22]
    node _T_2 = eq(io_en_a, UInt<1>("h1")) @[system.scala 41:31]
    node _T_3 = eq(io_en_a, UInt<1>("h1")) @[system.scala 42:17]
    node _GEN_3 = mux(_T_3, rules_1.io_n_out_0, _GEN_0) @[system.scala 42:25 43:13]
    node _GEN_4 = mux(_T_3, rules_1.io_n_out_1, _GEN_1) @[system.scala 42:25 43:13]
    node _GEN_5 = mux(_T_3, rules_1.io_x_out, _GEN_2) @[system.scala 42:25 44:13]
    node _T_4 = eq(io_en_a, UInt<2>("h2")) @[system.scala 41:31]
    node _T_5 = eq(io_en_a, UInt<2>("h2")) @[system.scala 42:17]
    node _GEN_6 = mux(_T_5, rules_2.io_n_out_0, _GEN_3) @[system.scala 42:25 43:13]
    node _GEN_7 = mux(_T_5, rules_2.io_n_out_1, _GEN_4) @[system.scala 42:25 43:13]
    node _GEN_8 = mux(_T_5, rules_2.io_x_out, _GEN_5) @[system.scala 42:25 44:13]
    node _T_6 = eq(io_en_a, UInt<2>("h3")) @[system.scala 41:31]
    node _T_7 = eq(io_en_a, UInt<2>("h3")) @[system.scala 42:17]
    node _GEN_9 = mux(_T_7, rules_3.io_n_out_0, _GEN_6) @[system.scala 42:25 43:13]
    node _GEN_10 = mux(_T_7, rules_3.io_n_out_1, _GEN_7) @[system.scala 42:25 43:13]
    node _GEN_11 = mux(_T_7, rules_3.io_x_out, _GEN_8) @[system.scala 42:25 44:13]
    node _T_8 = eq(io_en_a, UInt<3>("h4")) @[system.scala 41:31]
    node _T_9 = eq(io_en_a, UInt<3>("h4")) @[system.scala 42:17]
    node _GEN_12 = mux(_T_9, rules_4.io_n_out_0, _GEN_9) @[system.scala 42:25 43:13]
    node _GEN_13 = mux(_T_9, rules_4.io_n_out_1, _GEN_10) @[system.scala 42:25 43:13]
    node _GEN_14 = mux(_T_9, rules_4.io_x_out, _GEN_11) @[system.scala 42:25 44:13]
    node _T_10 = eq(io_en_a, UInt<3>("h5")) @[system.scala 41:31]
    node _T_11 = eq(io_en_a, UInt<3>("h5")) @[system.scala 42:17]
    node _GEN_15 = mux(_T_11, rules_5.io_n_out_0, _GEN_12) @[system.scala 42:25 43:13]
    node _GEN_16 = mux(_T_11, rules_5.io_n_out_1, _GEN_13) @[system.scala 42:25 43:13]
    node _GEN_17 = mux(_T_11, rules_5.io_x_out, _GEN_14) @[system.scala 42:25 44:13]
    node _T_12 = eq(io_en_a, UInt<3>("h6")) @[system.scala 41:31]
    node _T_13 = eq(io_en_a, UInt<3>("h6")) @[system.scala 42:17]
    node _GEN_18 = mux(_T_13, rules_6.io_n_out_0, _GEN_15) @[system.scala 42:25 43:13]
    node _GEN_19 = mux(_T_13, rules_6.io_n_out_1, _GEN_16) @[system.scala 42:25 43:13]
    node _GEN_20 = mux(_T_13, rules_6.io_x_out, _GEN_17) @[system.scala 42:25 44:13]
    node _T_14 = eq(io_en_a, UInt<3>("h7")) @[system.scala 41:31]
    node _T_15 = eq(io_en_a, UInt<3>("h7")) @[system.scala 42:17]
    node _GEN_21 = mux(_T_15, rules_7.io_n_out_0, _GEN_18) @[system.scala 42:25 43:13]
    node _GEN_22 = mux(_T_15, rules_7.io_n_out_1, _GEN_19) @[system.scala 42:25 43:13]
    node _GEN_23 = mux(_T_15, rules_7.io_x_out, _GEN_20) @[system.scala 42:25 44:13]
    node _T_16 = neq(UInt<1>("h0"), UInt<1>("h0")) @[system.scala 50:22]
    node _T_17 = eq(_T_16, UInt<1>("h0")) @[system.scala 50:15]
    node _T_18 = eq(n_reg_0, UInt<2>("h2")) @[system.scala 50:47]
    node _T_19 = eq(_T_18, UInt<1>("h0")) @[system.scala 50:35]
    node _T_20 = neq(n_reg_0, UInt<2>("h2")) @[system.scala 50:69]
    node _T_21 = or(_T_19, _T_20) @[system.scala 50:56]
    node _T_22 = or(_T_17, _T_21) @[system.scala 50:31]
    node _T_23 = bits(reset, 0, 0) @[system.scala 50:13]
    node _T_24 = eq(_T_23, UInt<1>("h0")) @[system.scala 50:13]
    node _T_25 = eq(_T_22, UInt<1>("h0")) @[system.scala 50:13]
    node _T_26 = neq(UInt<1>("h0"), UInt<1>("h1")) @[system.scala 50:22]
    node _T_27 = eq(_T_26, UInt<1>("h0")) @[system.scala 50:15]
    node _T_28 = eq(n_reg_0, UInt<2>("h2")) @[system.scala 50:47]
    node _T_29 = eq(_T_28, UInt<1>("h0")) @[system.scala 50:35]
    node _T_30 = neq(n_reg_1, UInt<2>("h2")) @[system.scala 50:69]
    node _T_31 = or(_T_29, _T_30) @[system.scala 50:56]
    node _T_32 = or(_T_27, _T_31) @[system.scala 50:31]
    node _T_33 = bits(reset, 0, 0) @[system.scala 50:13]
    node _T_34 = eq(_T_33, UInt<1>("h0")) @[system.scala 50:13]
    node _T_35 = eq(_T_32, UInt<1>("h0")) @[system.scala 50:13]
    node _T_36 = neq(UInt<1>("h1"), UInt<1>("h0")) @[system.scala 50:22]
    node _T_37 = eq(_T_36, UInt<1>("h0")) @[system.scala 50:15]
    node _T_38 = eq(n_reg_1, UInt<2>("h2")) @[system.scala 50:47]
    node _T_39 = eq(_T_38, UInt<1>("h0")) @[system.scala 50:35]
    node _T_40 = neq(n_reg_0, UInt<2>("h2")) @[system.scala 50:69]
    node _T_41 = or(_T_39, _T_40) @[system.scala 50:56]
    node _T_42 = or(_T_37, _T_41) @[system.scala 50:31]
    node _T_43 = bits(reset, 0, 0) @[system.scala 50:13]
    node _T_44 = eq(_T_43, UInt<1>("h0")) @[system.scala 50:13]
    node _T_45 = eq(_T_42, UInt<1>("h0")) @[system.scala 50:13]
    node _T_46 = neq(UInt<1>("h1"), UInt<1>("h1")) @[system.scala 50:22]
    node _T_47 = eq(_T_46, UInt<1>("h0")) @[system.scala 50:15]
    node _T_48 = eq(n_reg_1, UInt<2>("h2")) @[system.scala 50:47]
    node _T_49 = eq(_T_48, UInt<1>("h0")) @[system.scala 50:35]
    node _T_50 = neq(n_reg_1, UInt<2>("h2")) @[system.scala 50:69]
    node _T_51 = or(_T_49, _T_50) @[system.scala 50:56]
    node _T_52 = or(_T_47, _T_51) @[system.scala 50:31]
    node _T_53 = bits(reset, 0, 0) @[system.scala 50:13]
    node _T_54 = eq(_T_53, UInt<1>("h0")) @[system.scala 50:13]
    node _T_55 = eq(_T_52, UInt<1>("h0")) @[system.scala 50:13]
    node n_init_0 = UInt<2>("h0") @[system.scala 19:20 26:15]
    node n_init_1 = UInt<2>("h0") @[system.scala 19:20 26:15]
    node x_init = UInt<1>("h1") @[system.scala 22:20 28:10]
    io_n_out_0 <= n_reg_0 @[system.scala 21:11]
    io_n_out_1 <= n_reg_1 @[system.scala 21:11]
    io_x_out <= x_reg @[system.scala 24:11]
    n_reg_0 <= mux(reset, n_init_0, _GEN_21) @[system.scala 20:{22,22}]
    n_reg_1 <= mux(reset, n_init_1, _GEN_22) @[system.scala 20:{22,22}]
    x_reg <= mux(reset, x_init, _GEN_23) @[system.scala 23:{22,22}]
    rules_0.clock <= clock
    rules_0.reset <= reset
    rules_0.io_en_r <= _T @[system.scala 41:21]
    rules_0.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_0.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_0.io_x_in <= x_reg @[system.scala 40:22]
    rules_1.clock <= clock
    rules_1.reset <= reset
    rules_1.io_en_r <= _T_2 @[system.scala 41:21]
    rules_1.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_1.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_1.io_x_in <= x_reg @[system.scala 40:22]
    rules_2.clock <= clock
    rules_2.reset <= reset
    rules_2.io_en_r <= _T_4 @[system.scala 41:21]
    rules_2.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_2.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_2.io_x_in <= x_reg @[system.scala 40:22]
    rules_3.clock <= clock
    rules_3.reset <= reset
    rules_3.io_en_r <= _T_6 @[system.scala 41:21]
    rules_3.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_3.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_3.io_x_in <= x_reg @[system.scala 40:22]
    rules_4.clock <= clock
    rules_4.reset <= reset
    rules_4.io_en_r <= _T_8 @[system.scala 41:21]
    rules_4.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_4.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_4.io_x_in <= x_reg @[system.scala 40:22]
    rules_5.clock <= clock
    rules_5.reset <= reset
    rules_5.io_en_r <= _T_10 @[system.scala 41:21]
    rules_5.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_5.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_5.io_x_in <= x_reg @[system.scala 40:22]
    rules_6.clock <= clock
    rules_6.reset <= reset
    rules_6.io_en_r <= _T_12 @[system.scala 41:21]
    rules_6.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_6.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_6.io_x_in <= x_reg @[system.scala 40:22]
    rules_7.clock <= clock
    rules_7.reset <= reset
    rules_7.io_en_r <= _T_14 @[system.scala 41:21]
    rules_7.io_n_in_0 <= n_reg_0 @[system.scala 39:22]
    rules_7.io_n_in_1 <= n_reg_1 @[system.scala 39:22]
    rules_7.io_x_in <= x_reg @[system.scala 40:22]
    printf(clock, and(and(and(UInt<1>("h1"), _T_24), _T_25), UInt<1>("h1")), "Assertion failed\n    at system.scala:50 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf @[system.scala 50:13]
    assert(clock, _T_22, and(and(UInt<1>("h1"), _T_24), UInt<1>("h1")), "") : assert @[system.scala 50:13]
    printf(clock, and(and(and(UInt<1>("h1"), _T_34), _T_35), UInt<1>("h1")), "Assertion failed\n    at system.scala:50 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_1 @[system.scala 50:13]
    assert(clock, _T_32, and(and(UInt<1>("h1"), _T_34), UInt<1>("h1")), "") : assert_1 @[system.scala 50:13]
    printf(clock, and(and(and(UInt<1>("h1"), _T_44), _T_45), UInt<1>("h1")), "Assertion failed\n    at system.scala:50 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_2 @[system.scala 50:13]
    assert(clock, _T_42, and(and(UInt<1>("h1"), _T_44), UInt<1>("h1")), "") : assert_2 @[system.scala 50:13]
    printf(clock, and(and(and(UInt<1>("h1"), _T_54), _T_55), UInt<1>("h1")), "Assertion failed\n    at system.scala:50 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_3 @[system.scala 50:13]
    assert(clock, _T_52, and(and(UInt<1>("h1"), _T_54), UInt<1>("h1")), "") : assert_3 @[system.scala 50:13]
