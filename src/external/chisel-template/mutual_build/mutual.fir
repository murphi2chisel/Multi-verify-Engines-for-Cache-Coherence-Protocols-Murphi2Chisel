circuit mutual :
  module rule_Try :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 31:16]
      node _T = eq(io.n_in[0], UInt<1>("h0")) @[mutual.scala 33:22]
      when _T : @[mutual.scala 33:31]
        io.n_out[0] <= UInt<1>("h1") @[mutual.scala 34:19]

  module rule_Crit :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 43:16]
      node _T = eq(io.n_in[0], UInt<1>("h1")) @[mutual.scala 45:23]
      node _T_1 = eq(io.x_in, UInt<1>("h1")) @[mutual.scala 45:44]
      node _T_2 = and(_T, _T_1) @[mutual.scala 45:32]
      when _T_2 : @[mutual.scala 45:57]
        io.n_out[0] <= UInt<2>("h2") @[mutual.scala 46:19]
        io.x_out <= UInt<1>("h0") @[mutual.scala 47:16]

  module rule_Exit :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 56:16]
      node _T = eq(io.n_in[0], UInt<2>("h2")) @[mutual.scala 58:22]
      when _T : @[mutual.scala 58:31]
        io.n_out[0] <= UInt<2>("h3") @[mutual.scala 59:19]

  module rule_Idle :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 68:16]
      node _T = eq(io.n_in[0], UInt<2>("h3")) @[mutual.scala 70:22]
      when _T : @[mutual.scala 70:31]
        io.n_out[0] <= UInt<1>("h0") @[mutual.scala 71:19]
        io.x_out <= UInt<1>("h1") @[mutual.scala 72:16]

  module rule_Try_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 31:16]
      node _T = eq(io.n_in[1], UInt<1>("h0")) @[mutual.scala 33:22]
      when _T : @[mutual.scala 33:31]
        io.n_out[1] <= UInt<1>("h1") @[mutual.scala 34:19]

  module rule_Crit_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 43:16]
      node _T = eq(io.n_in[1], UInt<1>("h1")) @[mutual.scala 45:23]
      node _T_1 = eq(io.x_in, UInt<1>("h1")) @[mutual.scala 45:44]
      node _T_2 = and(_T, _T_1) @[mutual.scala 45:32]
      when _T_2 : @[mutual.scala 45:57]
        io.n_out[1] <= UInt<2>("h2") @[mutual.scala 46:19]
        io.x_out <= UInt<1>("h0") @[mutual.scala 47:16]

  module rule_Exit_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 56:16]
      node _T = eq(io.n_in[1], UInt<2>("h2")) @[mutual.scala 58:22]
      when _T : @[mutual.scala 58:31]
        io.n_out[1] <= UInt<2>("h3") @[mutual.scala 59:19]

  module rule_Idle_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip en_r : UInt<1>, flip n_in : UInt<2>[2], n_out : UInt<2>[2], flip x_in : UInt<1>, x_out : UInt<1>}

    io.n_out <= io.n_in @[mutual.scala 24:11]
    io.x_out <= io.x_in @[mutual.scala 25:11]
    when io.en_r : @[mutual.scala 68:16]
      node _T = eq(io.n_in[1], UInt<2>("h3")) @[mutual.scala 70:22]
      when _T : @[mutual.scala 70:31]
        io.n_out[1] <= UInt<1>("h0") @[mutual.scala 71:19]
        io.x_out <= UInt<1>("h1") @[mutual.scala 72:16]

  module mutual :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip en_a : UInt<3>, n_out : UInt<2>[2], x_out : UInt<1>}

    wire n_init : UInt<2>[2] @[mutual.scala 88:20]
    reg n_reg : UInt<2>[2], clock with :
      reset => (reset, n_init) @[mutual.scala 89:22]
    io.n_out <= n_reg @[mutual.scala 90:11]
    wire x_init : UInt<1> @[mutual.scala 91:20]
    reg x_reg : UInt<1>, clock with :
      reset => (reset, x_init) @[mutual.scala 92:22]
    io.x_out <= x_reg @[mutual.scala 93:11]
    n_init[0] <= UInt<1>("h0") @[mutual.scala 95:15]
    n_init[1] <= UInt<1>("h0") @[mutual.scala 95:15]
    x_init <= UInt<1>("h1") @[mutual.scala 97:10]
    inst rules_0 of rule_Try @[mutual.scala 101:20]
    rules_0.clock <= clock
    rules_0.reset <= reset
    inst rules_1 of rule_Crit @[mutual.scala 102:20]
    rules_1.clock <= clock
    rules_1.reset <= reset
    inst rules_2 of rule_Exit @[mutual.scala 103:20]
    rules_2.clock <= clock
    rules_2.reset <= reset
    inst rules_3 of rule_Idle @[mutual.scala 104:20]
    rules_3.clock <= clock
    rules_3.reset <= reset
    inst rules_4 of rule_Try_1 @[mutual.scala 101:20]
    rules_4.clock <= clock
    rules_4.reset <= reset
    inst rules_5 of rule_Crit_1 @[mutual.scala 102:20]
    rules_5.clock <= clock
    rules_5.reset <= reset
    inst rules_6 of rule_Exit_1 @[mutual.scala 103:20]
    rules_6.clock <= clock
    rules_6.reset <= reset
    inst rules_7 of rule_Idle_1 @[mutual.scala 104:20]
    rules_7.clock <= clock
    rules_7.reset <= reset
    rules_0.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_0.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_0.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T = eq(io.en_a, UInt<1>("h0")) @[mutual.scala 110:31]
    rules_0.io.en_r <= _T @[mutual.scala 110:21]
    node _T_1 = eq(io.en_a, UInt<1>("h0")) @[mutual.scala 111:17]
    when _T_1 : @[mutual.scala 111:25]
      n_reg <= rules_0.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_0.io.x_out @[mutual.scala 113:13]
    rules_1.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_1.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_1.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_2 = eq(io.en_a, UInt<1>("h1")) @[mutual.scala 110:31]
    rules_1.io.en_r <= _T_2 @[mutual.scala 110:21]
    node _T_3 = eq(io.en_a, UInt<1>("h1")) @[mutual.scala 111:17]
    when _T_3 : @[mutual.scala 111:25]
      n_reg <= rules_1.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_1.io.x_out @[mutual.scala 113:13]
    rules_2.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_2.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_2.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_4 = eq(io.en_a, UInt<2>("h2")) @[mutual.scala 110:31]
    rules_2.io.en_r <= _T_4 @[mutual.scala 110:21]
    node _T_5 = eq(io.en_a, UInt<2>("h2")) @[mutual.scala 111:17]
    when _T_5 : @[mutual.scala 111:25]
      n_reg <= rules_2.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_2.io.x_out @[mutual.scala 113:13]
    rules_3.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_3.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_3.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_6 = eq(io.en_a, UInt<2>("h3")) @[mutual.scala 110:31]
    rules_3.io.en_r <= _T_6 @[mutual.scala 110:21]
    node _T_7 = eq(io.en_a, UInt<2>("h3")) @[mutual.scala 111:17]
    when _T_7 : @[mutual.scala 111:25]
      n_reg <= rules_3.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_3.io.x_out @[mutual.scala 113:13]
    rules_4.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_4.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_4.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_8 = eq(io.en_a, UInt<3>("h4")) @[mutual.scala 110:31]
    rules_4.io.en_r <= _T_8 @[mutual.scala 110:21]
    node _T_9 = eq(io.en_a, UInt<3>("h4")) @[mutual.scala 111:17]
    when _T_9 : @[mutual.scala 111:25]
      n_reg <= rules_4.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_4.io.x_out @[mutual.scala 113:13]
    rules_5.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_5.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_5.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_10 = eq(io.en_a, UInt<3>("h5")) @[mutual.scala 110:31]
    rules_5.io.en_r <= _T_10 @[mutual.scala 110:21]
    node _T_11 = eq(io.en_a, UInt<3>("h5")) @[mutual.scala 111:17]
    when _T_11 : @[mutual.scala 111:25]
      n_reg <= rules_5.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_5.io.x_out @[mutual.scala 113:13]
    rules_6.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_6.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_6.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_12 = eq(io.en_a, UInt<3>("h6")) @[mutual.scala 110:31]
    rules_6.io.en_r <= _T_12 @[mutual.scala 110:21]
    node _T_13 = eq(io.en_a, UInt<3>("h6")) @[mutual.scala 111:17]
    when _T_13 : @[mutual.scala 111:25]
      n_reg <= rules_6.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_6.io.x_out @[mutual.scala 113:13]
    rules_7.io.n_in[0] <= n_reg[0] @[mutual.scala 108:22]
    rules_7.io.n_in[1] <= n_reg[1] @[mutual.scala 108:22]
    rules_7.io.x_in <= x_reg @[mutual.scala 109:22]
    node _T_14 = eq(io.en_a, UInt<3>("h7")) @[mutual.scala 110:31]
    rules_7.io.en_r <= _T_14 @[mutual.scala 110:21]
    node _T_15 = eq(io.en_a, UInt<3>("h7")) @[mutual.scala 111:17]
    when _T_15 : @[mutual.scala 111:25]
      n_reg <= rules_7.io.n_out @[mutual.scala 112:13]
      x_reg <= rules_7.io.x_out @[mutual.scala 113:13]
    node _T_16 = neq(UInt<1>("h0"), UInt<1>("h0")) @[mutual.scala 120:22]
    node _T_17 = eq(_T_16, UInt<1>("h0")) @[mutual.scala 120:15]
    node _T_18 = eq(n_reg[0], UInt<2>("h2")) @[mutual.scala 120:47]
    node _T_19 = eq(_T_18, UInt<1>("h0")) @[mutual.scala 120:35]
    node _T_20 = neq(n_reg[0], UInt<2>("h2")) @[mutual.scala 120:69]
    node _T_21 = or(_T_19, _T_20) @[mutual.scala 120:56]
    node _T_22 = or(_T_17, _T_21) @[mutual.scala 120:31]
    node _T_23 = bits(reset, 0, 0) @[mutual.scala 120:13]
    node _T_24 = eq(_T_23, UInt<1>("h0")) @[mutual.scala 120:13]
    when _T_24 : @[mutual.scala 120:13]
      node _T_25 = eq(_T_22, UInt<1>("h0")) @[mutual.scala 120:13]
      when _T_25 : @[mutual.scala 120:13]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf @[mutual.scala 120:13]
      assert(clock, _T_22, UInt<1>("h1"), "") : assert @[mutual.scala 120:13]
    node _T_26 = neq(UInt<1>("h0"), UInt<1>("h1")) @[mutual.scala 120:22]
    node _T_27 = eq(_T_26, UInt<1>("h0")) @[mutual.scala 120:15]
    node _T_28 = eq(n_reg[0], UInt<2>("h2")) @[mutual.scala 120:47]
    node _T_29 = eq(_T_28, UInt<1>("h0")) @[mutual.scala 120:35]
    node _T_30 = neq(n_reg[1], UInt<2>("h2")) @[mutual.scala 120:69]
    node _T_31 = or(_T_29, _T_30) @[mutual.scala 120:56]
    node _T_32 = or(_T_27, _T_31) @[mutual.scala 120:31]
    node _T_33 = bits(reset, 0, 0) @[mutual.scala 120:13]
    node _T_34 = eq(_T_33, UInt<1>("h0")) @[mutual.scala 120:13]
    when _T_34 : @[mutual.scala 120:13]
      node _T_35 = eq(_T_32, UInt<1>("h0")) @[mutual.scala 120:13]
      when _T_35 : @[mutual.scala 120:13]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_1 @[mutual.scala 120:13]
      assert(clock, _T_32, UInt<1>("h1"), "") : assert_1 @[mutual.scala 120:13]
    node _T_36 = neq(UInt<1>("h1"), UInt<1>("h0")) @[mutual.scala 120:22]
    node _T_37 = eq(_T_36, UInt<1>("h0")) @[mutual.scala 120:15]
    node _T_38 = eq(n_reg[1], UInt<2>("h2")) @[mutual.scala 120:47]
    node _T_39 = eq(_T_38, UInt<1>("h0")) @[mutual.scala 120:35]
    node _T_40 = neq(n_reg[0], UInt<2>("h2")) @[mutual.scala 120:69]
    node _T_41 = or(_T_39, _T_40) @[mutual.scala 120:56]
    node _T_42 = or(_T_37, _T_41) @[mutual.scala 120:31]
    node _T_43 = bits(reset, 0, 0) @[mutual.scala 120:13]
    node _T_44 = eq(_T_43, UInt<1>("h0")) @[mutual.scala 120:13]
    when _T_44 : @[mutual.scala 120:13]
      node _T_45 = eq(_T_42, UInt<1>("h0")) @[mutual.scala 120:13]
      when _T_45 : @[mutual.scala 120:13]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_2 @[mutual.scala 120:13]
      assert(clock, _T_42, UInt<1>("h1"), "") : assert_2 @[mutual.scala 120:13]
    node _T_46 = neq(UInt<1>("h1"), UInt<1>("h1")) @[mutual.scala 120:22]
    node _T_47 = eq(_T_46, UInt<1>("h0")) @[mutual.scala 120:15]
    node _T_48 = eq(n_reg[1], UInt<2>("h2")) @[mutual.scala 120:47]
    node _T_49 = eq(_T_48, UInt<1>("h0")) @[mutual.scala 120:35]
    node _T_50 = neq(n_reg[1], UInt<2>("h2")) @[mutual.scala 120:69]
    node _T_51 = or(_T_49, _T_50) @[mutual.scala 120:56]
    node _T_52 = or(_T_47, _T_51) @[mutual.scala 120:31]
    node _T_53 = bits(reset, 0, 0) @[mutual.scala 120:13]
    node _T_54 = eq(_T_53, UInt<1>("h0")) @[mutual.scala 120:13]
    when _T_54 : @[mutual.scala 120:13]
      node _T_55 = eq(_T_52, UInt<1>("h0")) @[mutual.scala 120:13]
      when _T_55 : @[mutual.scala 120:13]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n") : printf_3 @[mutual.scala 120:13]
      assert(clock, _T_52, UInt<1>("h1"), "") : assert_3 @[mutual.scala 120:13]

