""" rule class in Murphi

"""
from stmt import *
from util import *


class rule(object):
    """rule class

    Corresponding to the following grammar:
        ?rules: rule ( ";" rule )* [";"]
        ?rule:simplerule
            | startstate
            | invariant
            | ruleset
        ?simplerule: "rule" [STRING] [expr "==>"] [ "begin" ] [stmts] ("end" | "endrule")
        ?startstate: "startstate" [STRING] ["begin"] [stmts] ("end" | "endstartstate")
        ?invariant: "invariant" [STRING] expr
        ?ruleset: "ruleset" quantifier ( ";" quantifier)* "do" rules ("end" | "endruleset")


    """
    pass


class simplerule(rule):
    """simple rule class

    only one "rule" ...

    """

    def __init__(self, name: str, condition: expr, body, enclosures, vars):
        super().__init__()
        self.vars = vars  # optional local var
        self.name = name  # rule name
        self.condition = condition  # condition for execution - guard
        self.body = body  # the statement code - action
        # the format of enclosures is list( {name, typedecl} )
        # enclosing ruleset params (if no ruleset , it should be None)
        self.enclosures = enclosures

    def generate_code(self):
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s:Int" % x.name)
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s:Int" % x[0])
        node_paras = []
        for x in constmap.values():
            node_paras.append("%s" % x.name)

        res = ""
        res += "class %s(%s) extends node(%s){\nwhen(io.en_r){\n" % (
            self.name, ','.join(class_paras), ','.join(node_paras))

        # local var
        const_paras = []
        for x in constmap.values():
            const_paras.append("%s:Int" % x.name)
        if self.vars is not None:
            for v in self.vars:
                v = v[0]
                name = v.name
                localvarmap[name] = v.typ
                if isinstance(v.typ, subrangetypedecl):
                    res += "var %s = Wire(UInt())\n" % name
                else:
                    print(name)
                    #   predefined type
                    type = typemap[v.typ.typename]
                    if isinstance(type, subrangetypedecl):
                        res += "var %s = Wire(UInt())\n" % name
                    else:
                        # record
                        res += "var %s = Wire(new %s(%s))\n" % (name,
                                                          v.typ.typename, ','.join(const_paras))
                        if name=="msg":
                            res+= "msg.opcode := ProbeBlock\n"\
                                 "msg.para := toB\n"

        res += "when(%s){\n" % self.condition.generate_io_in()
               # local var
        const_paras = []
        for x in constmap.values():
            const_paras.append("%s:Int" % x.name)
        for stmt in self.body:
            res += "%s\n" % stmt.generate_simplerule()
        res += "}\n}\n}\n"
        return res

    def generate_instance(self):
        res = ""
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s" % x.name)
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s" % x[0])

        e_paras = []
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                e_paras.append("%s <- %s" % (x[0], x[1].generate_forindex()))
        for i in e_paras:
            res += "for(%s){\n" % i
        res += "rules += Module(new %s(%s))\n" % (self.name,
                                                  ','.join(class_paras))
        for i in e_paras:
            res += "}\n"
        return res


class startstate(rule):
    """startstate

    should be executed first
    only the init body, no guard

    """

    def __init__(self, name: str, body: stmt, enclosures, vars):
        super().__init__()
        self.vars = vars
        self.name = name
        self.body = body
        # the format of enclosures is list( {name, typedecl} )
        # enclosing ruleset params (if no ruleset , it should be None)
        self.enclosures = enclosures

    def generate_code(self):
        res = ""
        class_paras = []
        # local var
        const_paras = []
        for x in constmap.values():
            const_paras.append("%s:Int" % x.name)
        if self.vars is not None:
            for v in self.vars:
                v = v[0]
                name = v.name
                localvarmap[name] = v.typ
                if isinstance(v.typ, subrangetypedecl):
                    res += "var %s = Wire(UInt())\n" % name
                else:
                    #   predefined type
                    type = typemap[v.typ.typename]
                    if isinstance(type, subrangetypedecl):
                        res += "var %s = Wire(UInt())\n" % name
                    else:
                        # record
                        res += "var %s = new %s(%s)\n" % (name,
                                                          v.typ.typename, ','.join(constmap))
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s <- %s" %
                                   (x[0], x[1].generate_forindex()))
        for i in class_paras:
            res += "for(%s){\n" % i

        for stmt in self.body:
            res += "%s\n" % stmt.generate_startstate()

        for i in class_paras:
            res += "}\n"
        return res

    def generate_startstate(self):
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s:Int" % x.name)
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s:Int" % x[0])
        node_paras = []
        for x in constmap.values():
            node_paras.append("%s" % x.name)

        res = ""
        res += "class %s(%s) extends node(%s){\nwhen(io.en_r){\n" % (
            self.name, ','.join(class_paras), ','.join(node_paras))

        # local var
        const_paras = []
        for x in constmap.values():
            const_paras.append("%s:Int" % x.name)
        if self.vars is not None:
            for v in self.vars:
                v = v[0]
                name = v.name
                localvarmap[name] = v.typ
                if isinstance(v.typ, subrangetypedecl):
                    res += "var %s = Wire(UInt())\n" % name
                else:
                    #   predefined type
                    type = typemap[v.typ.typename]
                    if isinstance(type, subrangetypedecl):
                        res += "var %s = Wire(UInt())\n" % name
                    else:
                        # record
                        res += "var %s = Wire(new %s(%s))\n" % (name,
                                                                v.typ.typename, ','.join(const_paras))
                        if name == "msg":
                            res += "msg.opcode := ProbeBlock\n" \
                                   "msg.para := toB\n"
        # local var
        const_paras = []
        for x in constmap.values():
            const_paras.append("%s:Int" % x.name)
        for stmt in self.body:
            res += "%s\n" % stmt.generate_simplerule()
        res += "}\n}\n"
        return res

    def generate_instance(self):
        res = ""
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s" % x.name)
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s" % x[0])

        e_paras = []
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                e_paras.append("%s <- %s" % (x[0], x[1].generate_forindex()))
        for i in e_paras:
            res += "for(%s){\n" % i
        res += "rules += Module(new %s(%s))\n" % (self.name,
                                                  ','.join(class_paras))
        for i in e_paras:
            res += "}\n"
        return res
class invariant(rule):
    """invariant

    only the expression

    """

    def __init__(self, name: str, body: expr, enclosures):
        super().__init__()
        self.name = name
        self.body = body
        # the format of enclosures is list( {name, typedecl} )
        # enclosing ruleset params (if no ruleset , it should be None)
        self.enclosures = enclosures

    def generate_code(self):
        res = ""
        class_paras = []
        if self.enclosures is not None:
            # the rule is enclosed by paras
            for x in self.enclosures:
                class_paras.append("%s <- %s" %
                                   (x[0], x[1].generate_forindex()))
        for i in class_paras:
            res += "for(%s){\n" % i
        res += "assert(%s)\n" % self.body.generate_reg()
        for i in class_paras:
            res += "}\n"
        return res


class program(object):
    def __init__(self, decls, rules):
        self.decls = decls
        self.rules = rules

        for d in decls:
            if isinstance(d, enumtypedecl):
                for v in d.idvalues:
                    enumelementlist.append(v)

        # decl map
        #   constmap
        #   typemap
        #   varmap
        for d in decls:
            if get_decl_class(d) is decl_class.Const:
                constmap[d.name] = d
            elif get_decl_class(d) is decl_class.Type:
                typemap[d.name] = d
            elif get_decl_class(d) is decl_class.Var:
                varmap[d.name] = d
        

    def get_num_of_rule(self):
        # input: rules in prog
        # return : the number of all the closures of simple rules
        res = 0
        m = {}
        for rule in self.rules:
            if isinstance(rule, simplerule):
                if rule.enclosures is None:
                    res += 1
                else:
                    t = []
                    for enclosure in rule.enclosures:
                        t.append(enclosure[1].get_size_of_subrange())
                    val = '*'.join(t)
                    if val not in m:
                        m[val]=1
                    else:
                        m[val]+=1
        res2 = []
        for x in m:
            res2.append("%s*%d" % (x,m[x]))
        return "%s+%d" % ('+'.join(res2),res)

    def get_num_of_startstate(self):
        for rule in self.rules:
            if isinstance(rule, startstate):
                if rule.enclosures is None:
                    return str(1)
                else:
                    t = []
                    for enclosure in rule.enclosures:
                        t.append(enclosure[1].get_size_of_subrange())
                    return '*'.join(t)

    def generate_router(self):
        # generate router
        res = "import chisel3._\n" \
              "import chisel3.util._\n"
        for d in self.decls:
            if isinstance(d, enumtypedecl):
                res += "import %s._\n" % d.name
        for rule in self.rules:
            if isinstance(rule, simplerule):
                res += rule.generate_code()
            elif isinstance(rule,startstate):
                res+=rule.generate_startstate()
        return res

    def generate_node(self):
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s:Int" % x.name)
        res = "import chisel3._\n" \
              "import chisel3.util._\n"
        for d in self.decls:
            if isinstance(d, enumtypedecl):
                res += "import %s._\n" % d.name
        res += "class node(%s) extends Module{\n" % ','.join(class_paras)
        res += "val io = IO(new Bundle {\nval en_r = Input(Bool())\n"
        for d in varmap.values():
            res += "%s\n" % d.generate_io()
        res += "})\n"
        res += """
  def forall(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) & f(i + 1)
    }
    return v(right - left)
  }

  def exists(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) | f(i + 1)
    }
    return v(right - left)
  }
"""
        for d in varmap.values():
            res += "io.%s_out:=io.%s_in\n" % (d.generate_code(),
                                              d.generate_code())
        res += "}\n"
        return res

    def generate_pkg(self):
        res = "import chisel3._\n" \
              "import chisel3.util._\n" \
              "import chisel3.experimental.ChiselEnum\n"
        x = typemap
        for typ in typemap.values():
            if isinstance(typ, enumtypedecl):
                res += "%s\n" % typ.generate_pkg()
            elif isinstance(typ, recordtypedecl):
                res += "%s\n" % typ.generate_pkg()
        return res

    def generate_system(self):
        res = "import chisel3._\n" \
              "import chisel3.util._\n" \
              "import scala.collection.mutable.ArrayBuffer\n"
        for d in self.decls:
            if isinstance(d, enumtypedecl):
                res += "import %s._\n" % d.name

        # generate class
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s:Int" % x.name)
        res += "class system(%s) extends Module{\n" % ','.join(class_paras)

        # generate io
        res += "val io = IO(new Bundle {\n"
        res += "val en_a = Input(UInt(log2Ceil(%s+%s).W))\n" % (self.get_num_of_rule(),self.get_num_of_startstate())
        for d in varmap.values():
            res += "%s\n" % d.generate_io_out()
        res += "})\n"

        # generate init - startstate and reg decl
        res += "var rules = ArrayBuffer[node]()\n"
        for d in varmap.values():
            res += "%s" % d.generate_reg_init()


        # generate rule instance
        for rule in self.rules:
            if isinstance(rule, simplerule):
                res += rule.generate_instance()
            elif isinstance(rule, startstate):
                res += rule.generate_instance()
        res += "for(i <- 0 until %s+%s) {\n" % (self.get_num_of_rule(),self.get_num_of_startstate())
        for v in varmap.values():
            res += "rules(i).io.%s_in := %s_reg\n" % (v.name, v.name)
        res += "rules(i).io.en_r:=(io.en_a=== i.U)\n"
        res += "when(io.en_a=== i.U){\n"
        for v in varmap.values():
            res += "%s_reg := rules(i).io.%s_out\n" % (v.name, v.name)
        res += "}\n"
        res += "}\n"

        # generate assertion
        res += """
  def forall(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) & f(i + 1)
    }
    return v(right - left)
  }
  def exists(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) | f(i + 1)
    }
    return v(right - left)
  }
"""
        for rule in self.rules:
            if isinstance(rule, invariant):
                res += rule.generate_code()
        res += "}"
        return res

    def generate_code(self):
        print(self.generate_pkg())
        print(self.generate_node())
        print(self.generate_router())
        print(self.generate_system())
