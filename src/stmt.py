"""
stmt class in Murphi
  -- assignment
  -- ifstmt
  -- forstmt
"""

from expr import *


class stmt(object):
    """class stmt

    Corresponding to the following grammar:
        ?stmts : stmt (";" [stmt] )*
        ?stmt: assignment
            | ifstmt
            | forstmt
            | clearstmt

        ?assignment: designator ":=" expr
        ?ifstmt: "if" expr "then" stmts ("elsif" expr "then" stmts)* ("else" stmts)? ("endif" | "end")
        ?forstmt: "for" quantifier (";" quantifier)* "do" stmts ("endfor" | "end")
        ?clearstmt: "clear" designator

    """
    protocolName = ""


class ifstmt(stmt):
    """class if statement

    """

    def __init__(self, test: expr, body: stmt, elsecode: [stmt, None]):
        # if test
        #   body
        # elsecode
        self.test = test
        self.body = body
        self.elsecode = elsecode

    def generate_simplerule(self):
        res = ""
        res += "when(%s){\n" % self.test.generate_io_in()
        for stm in self.body:
            res += "%s\n" % stm.generate_simplerule()
        if self.elsecode is not None:
            elsecode = self.elsecode[0]
            res += "}.otherwise{\n"
            res += "%s\n" % elsecode.generate_simplerule()
            res += "}\n"
        else:
            res += "}\n"
        return res


class forstmt(stmt):
    """class for statement

    """

    def __init__(self, index, body):
        # for index
        #   body
        self.index = index
        self.body = body

    def generate_simplerule(self):
        res = ""
        for i in self.index:
            iname = i[0]
            irange = i[1]
            
            res += "for(%s <- %s){\n" % (iname, irange.generate_forindex())
        for s in self.body:
            res += "%s\n" % s.generate_simplerule()
        for i in self.index:
            res += "}\n"
        return res

    def generate_startstate(self):
        res = ""
        for i in self.index:
            iname = i[0]
            irange = i[1]
            if "tilelink" in stmt.protocolName:
                res += "for(%s <- %s){\n" % (iname, irange.generate_forindex())
            else:
                res += "for(%s <- %s){\n" % (iname, irange.generate_forindex_only_right())
        for s in self.body:
            res += "%s\n" % s.generate_startstate()
        for i in self.index:
            res += "}"
        return res


class assignment(stmt):
    """class for assignment

    """

    def __init__(self, target: designator, src: expr):
        self.target = target
        self.src = src

    def generate_simplerule(self):
        if isinstance(self.src, int):
            return "%s := %d.U" % (self.target.generate_io_out(), self.src)
        return "%s := %s" % (self.target.generate_io_out(), self.src.generate_io_in())

    def generate_startstate(self):
        op = ":="
        if self.target.generate_init() in localvarmap:
            op = "="
            if isinstance(self.src, int):
                return "%s %s %d" % (self.target.generate_io_out(), op, self.src)
        if isinstance(self.src, int):
            return "%s %s %d.U" % (self.target.generate_init(), op, self.src)
        if self.src.generate_code() in localvarmap and isinstance(localvarmap[self.src.generate_code()],subrangetypedecl):
            return "%s %s %s.U" % (self.target.generate_init(), op, self.src.generate_code())
        return "%s %s %s" % (self.target.generate_init(), op, self.src.generate_code())
