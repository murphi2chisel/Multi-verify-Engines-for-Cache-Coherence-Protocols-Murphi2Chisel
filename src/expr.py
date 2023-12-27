"""
expr class in Murphi
"""

from enum import Enum
from typing import *
from decl import *


class op_class(Enum):
    Not = 1
    Forall = 2
    Exists = 3
    Or = 4
    And = 5
    Imply = 6
    Equal = 7
    Notequal = 8
    Add = 9
    GT = 10
    Sub = 11
    Div = 12
    Remainder = 13


def op2str(x: op_class):
    if x == op_class.Not:
        return "!"
    elif x == op_class.Or:
        return "||"
    elif x == op_class.And:
        return "&&"
    elif x == op_class.Equal:
        return "==="
    elif x == op_class.Notequal:
        return "=/="
    elif x == op_class.Add:
        return "+"
    elif x == op_class.GT:
        return ">"
    elif x == op_class.Sub:
        return "-"
    elif x == op_class.Div:
        return "/"
    elif x == op_class.Remainder:
        return "%"


class expr(object):
    """class expr

    expr in murphi including int/unary/binary/quantifier and so on

    Corresponding to the following grammar:
        ?designator: ID ( ("." ID) | ( "[" expr "]" ) )*
        ?expr: "(" expr ")"
            | designator
            | INT
            | "forall" quantifier (";" quantifier)* "do" expr ("endforall" | "end")
            | "exists" quantifier (";" quantifier)* "do" expr ("endexists" | "end")
            | "!" expr
            | expr "|" expr
            | expr "&" expr
            | expr "->" expr
            | expr "=" expr
            | expr "!=" expr
        ?quantifier: ID ":" typeexpr
            | ID ":" expr "to" expr

    """

    def __init__(self):
        self.typ = None  # decl type of the expr


class intexpr(expr):
    """class for int

    """

    def __init__(self, val):
        super().__init__()
        self.val = val  # the integer value

    def generate_code(self):
        return "%d" % self.val


class unaryexpr(expr):
    """class for all unary expression

    """

    def __init__(self, op: op_class, left: expr):
        super().__init__()
        self.op = op  # the operator type
        self.left = left  # the argument


class binaryexpr(expr):
    """class for all binary expression

    """

    def __init__(self, op: op_class, left: expr, right: expr):
        super().__init__()
        self.op = op  # the operator type
        self.left = left  # the argument1
        self.right = right  # the argument2


class notexpr(unaryexpr):
    """boolean not

    e.g. ! expr

    """

    def __init__(self, left: expr):
        super().__init__(op_class.Not, left)

    def generate_in(self):
        return "(%s%s)" % (op2str(self.op), self.left.generate_in())
    
    def generate_io_in(self):
        return "(%s%s)" % (op2str(self.op), self.left.generate_io_in())

    def generate_reg(self):
        return "(%s%s)" % (op2str(self.op), self.left.generate_reg())


class boolexpr(binaryexpr):
    """a binary expression of two boolean arguments

    e.g. expr1 & expr2

    """

    def __init__(self, op: op_class, left: expr, right: expr):
        super().__init__(op, left, right)

    def generate_in(self):
        if self.op == op_class.Imply:
            # chisel no imply
            # transform to !a|b
            return "(!%s||%s)" % (self.left.generate_in(), self.right.generate_in())
        return "(%s%s%s)" % (self.left.generate_in(), op2str(self.op), self.right.generate_in())
    
    def generate_io_in(self):
        # print(self.left,op2str(self.op),self.right)
        if self.op == op_class.Imply:
            # chisel no imply
            # transform to !a|b
            return "(!%s||%s)" % (self.left.generate_io_in(), self.right.generate_io_in())
        return "(%s%s%s)" % (self.left.generate_io_in(), op2str(self.op), self.right.generate_io_in())

    def generate_reg(self):
        if self.op == op_class.Imply:
            # chisel no imply
            # transform to !a|b
            return "(!%s||%s)" % (self.left.generate_reg(), self.right.generate_reg())
        return "(%s%s%s)" % (self.left.generate_reg(), op2str(self.op), self.right.generate_reg())


class equalexpr(binaryexpr):
    """equalexpr

    e.g. expr1 = expr2 or expr1 != expr2

    """

    def __init__(self, op: op_class, left: expr, right: expr):
        super().__init__(op, left, right)

    def generate_in(self):
        left = str(self.left) if isinstance(self.left,int) else self.left.generate_in()
        right = str(self.right) if isinstance(self.right,int) else self.right.generate_in()
        return "(%s%s%s)" % (left, op2str(self.op), right)
    
    def generate_io_in(self):
        left = str(self.left)+".U" if isinstance(self.left,int) else self.left.generate_io_in()
        right = str(self.right)+".U" if isinstance(self.right,int) else self.right.generate_io_in()
        return "(%s%s%s)" % (left, op2str(self.op), right)

    def generate_reg(self):
        # czh
        left = str(self.left) if isinstance(self.left,int) else self.left.generate_reg()
        right = str(self.right) + ".U" if isinstance(self.right,int) else self.right.generate_reg()
        return "(%s%s%s)" % (left, op2str(self.op), right)


class quantexpr(expr):
    """a quantified expression.

    forall or exists

    """

    def __init__(self, op: op_class, parameter, left):
        super().__init__()
        self.op = op
        self.parameter = parameter  # the quantified variable
        self.left = left  # the sub-expression

    def generate_in(self):
        if len(self.parameter) == 1:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "forall(%s,%s,%s=>%s)" % (left, right, i, self.left.generate_in())
            else:
                return "List.range(%s, %s).exists(%s => bool2boolean(%s)).B" % (left, right, i, self.left.generate_in())
        elif len(self.parameter) == 2:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            para2 = self.parameter[1]
            i2 = para2[0]
            typ2 = para2[1]
            left2, right2 = typ2.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "List.range(%s, %s+1).forall(%s => List.range(%s, %s+1).forall(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_in())
            else:
                return "List.range(%s, %s+1).exists(%s => List.range(%s, %s+1).exists(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_in())
            
    def generate_io_in(self):
        if len(self.parameter) == 1:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "forall(%s,%s,%s=>%s)" % (left, right, i, self.left.generate_io_in())
            else:
                return "exists(%s,%s,%s=>%s)" % (left, right, i, self.left.generate_io_in())
        elif len(self.parameter) == 2:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            para2 = self.parameter[1]
            i2 = para2[0]
            typ2 = para2[1]
            left2, right2 = typ2.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "List.range(%s, %s+1).forall(%s => List.range(%s, %s+1).forall(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_io_in())
            else:
                return "List.range(%s, %s+1).exists(%s => List.range(%s, %s+1).exists(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_io_in())

    def generate_reg(self):
        if len(self.parameter) == 1:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "forall(%s,%s,%s=>%s)" % (left, right, i, self.left.generate_reg())
            else:
                return "exists(%s,%s,%s=>%s)" % (left, right, i, self.left.generate_reg())
        elif len(self.parameter) == 2:
            para = self.parameter[0]
            i = para[0]
            typ = para[1]
            left, right = typ.get_subrange_left_right()
            para2 = self.parameter[1]
            i2 = para2[0]
            typ2 = para2[1]
            left2, right2 = typ2.get_subrange_left_right()
            if self.op == op_class.Forall:
                return "List.range(%s, %s+1).forall(%s => List.range(%s, %s+1).forall(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_reg())
            else:
                return "List.range(%s, %s+1).exists(%s => List.range(%s, %s+1).exists(%s => bool2boolean(%s))).B" % (
                    left, right, i, left2, right2, i2, self.left.generate_reg())
    # def generate_in(self):


class addexpr(binaryexpr):
    def __init__(self, left: expr, right: expr):
        super().__init__(op_class.Add, left, right)

    def generate_in(self):
        return "(%s%s%s)" % (self.left.generate_in(), op2str(self.op), self.right.generate_in())
    
    def generate_io_in(self):
        left = str(self.left) + ".U" if isinstance(self.left, int) else self.left.generate_io_in()
        right = str(self.right) + ".U" if isinstance(self.right, int) else self.right.generate_io_in()
        return "(%s%s%s)" % (left, op2str(self.op), right)
    def generate_reg(self):
        return "(%s%s%s)" % (self.left.generate_reg(), op2str(self.op), self.right.generate_reg())

    def generate_code(self):
        left = str(self.left)+".U" if isinstance(self.left, int) else self.left.generate_code()
        right = str(self.right)+".U" if isinstance(self.right, int) else self.right.generate_code()
        return "(%s%s%s)" % (left, op2str(self.op), right)

class arithexpr(binaryexpr):
    def __init__(self,  op: op_class, left: expr, right: expr):
        super().__init__(op, left, right)

    def generate_code(self):
        left = str(self.left)+".U" if isinstance(self.left, int) else self.left.generate_code()
        right = str(self.right)+".U" if isinstance(self.right, int) else self.right.generate_code()
        return "(%s%s%s)" % (left, op2str(self.op), right)

    def generate_io_in(self):
        left = str(self.left)+".U" if isinstance(self.left, int) else self.left.generate_io_in()
        right = str(self.right)+".U" if isinstance(self.right, int) else self.right.generate_io_in()
        return "(%s%s%s)" % (left, op2str(self.op), right)

class gtexpr(binaryexpr):
    def __init__(self, left: expr, right: expr):
        super().__init__(op_class.GT, left, right)

    def generate_in(self):
        return "(%s%s%s)" % (self.left.generate_in(), op2str(self.op), self.right.generate_in())

    def generate_io_in(self):
        return "(%s%s%s)" % (
        str(self.left) + ".U" if isinstance(self.left, int) else self.left.generate_io_in(), op2str(self.op),
        str(self.right) + ".U" if isinstance(self.right, int) else self.right.generate_io_in())

    def generate_reg(self):
        return "(%s%s%s)" % (self.left.generate_reg(), op2str(self.op), self.right.generate_reg())

    def generate_code(self):
        left = str(self.left) if isinstance(self.left, int) else self.left.generate_code()
        right = str(self.right) if isinstance(self.right, int) else self.right.generate_code()
        return "(%s%s%s)" % (left, op2str(self.op), right)

