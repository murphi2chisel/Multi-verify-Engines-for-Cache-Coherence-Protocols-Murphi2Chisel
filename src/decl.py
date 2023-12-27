"""
decl class in Murphi
"""

from enum import Enum
from typing import *
from error import *
from config import *


class decl_class(Enum):
    Type = 1
    Const = 2
    Var = 3


# return the type of decl
def get_decl_class(x):
    if not isinstance(x, decl):
        raise type_error(x)
    if isinstance(x, constdecl):
        return decl_class.Const
    elif isinstance(x, typedecl):
        return decl_class.Type
    elif isinstance(x, vardecl):
        return decl_class.Var
    else:
        return type_error(x)


def check_d_index(d):
    if d not in varmap and d not in constmap and d not in enumelementlist and d not in ["false.B",
                                                                                        "true.B"] and d not in localvarmap:
        return True
    return False


class designator(object):
    """class for designator

    var / var[index] / var.fieldref

    """

    def __init__(self, name, refs):
        self.name = name
        self.refs = refs  # .str / str (fieldref/arrayref)

    def generate_code(self):
        # index int expr
        if check_d_index(self.name):
            return "%s.U" % self.name
        res = "%s" % self.name
        for ref in self.refs:
            if ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                res += "(%s)" % ref
        return res

    def generate_in(self):
        if self.name in varmap:
            res = "%s_in" % self.name
        else:
            res = "%s" % self.name
        for ref in self.refs:
            if ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                res += "(%s)" % ref
        return res

    def generate_io_in(self):
        # index int expr
        if check_d_index(self.name):
            return "%s.U" % self.name
        if self.name in varmap:
            res = "io.%s_in" % self.name
        else:
            res = "%s" % self.name
        for ref in self.refs:
            if isinstance(ref,str) and ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                if ref == "home_current_client":
                    res += "(io.%s_in)" % ref
                    continue
                    # int/str/expr
                if isinstance(ref, (int, str)):
                    res += "(%s)" % ref
                else:
                    res += "(%s)" % ref.generate_io_in()
        return res

    def generate_io_out(self):

        if self.name in varmap:
            res = "io.%s_out" % self.name
        else:
            res = "%s" % self.name
        # print(self.refs)
        for ref in self.refs:
            if isinstance(ref,str) and ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                if ref == "home_current_client":
                    res += "(io.%s_in)" % ref
                    continue
                # int/str/expr
                if isinstance(ref,(int,str)):
                    res += "(%s)" % ref
                else:
                    res += "(%s)" % ref.generate_code()
        return res

    def generate_out(self):

        if self.name in varmap:
            res = "%s_out" % self.name
        else:
            res = "%s" % self.name
        for ref in self.refs:
            if ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                res += "(%s)" % ref
        return res

    def generate_reg(self):
        # index int expr
        if check_d_index(self.name):
            return "%s.U" % self.name

        if self.name in varmap:
            res = "%s_reg" % self.name
        else:
            res = "%s" % self.name
        for ref in self.refs:
            if ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                res += "(%s)" % ref
        return res

    def generate_init(self):
        if check_d_index(self.name):
            return "%s.U" % self.name

        if self.name in varmap:
            res = "%s_init" % self.name
        else:
            res = "%s" % self.name
        for ref in self.refs:
            if ref[0] == ".":
                #   fieldref
                res += "%s" % ref
            else:
                # arrayref
                res += "(%s)" % ref
        return res


class decl(object):
    """class decl

    decl in murphi including const/var/type and so on

    Corresponding to the following grammar:
        ?decl: "const" (constdecl ";")*
            | "type" (typedecl ";")*
            | "var" (vardecl ";")*
        ?constdecl: ID ":" expr
        ?typedecl: ID ":" typeexpr
        ?typeexpr: ID
            | "boolean"
            | expr ".." expr
            | "enum" "{" ID ( "," ID )* "}"
            | "record" ( vardecl ";")* "end"
            | "array" "[" typeexpr "]" "of" typeexpr
        ?vardecl: ID ( "," ID )* ":" typeexpr

    """

    def __init__(self, name: str):
        self.name = name  # what the object's name is


class typedecl(decl):
    """the ancestor class of all type description in murphi"""

    def __init__(self, name: str):
        super().__init__(name)

    def generate_code(self):
        return "typedecl %s" % self.name


class pretypedecl(typedecl):
    """ a previously defined type

    name : a previously defined typename

    """

    def __init__(self, name: str, typename: str):
        super().__init__(name)
        self.typename = typename

    def generate_code(self):
        typ = typemap[self.typename]
        return "%s" % typ.generate_code()

    def generate_forindex(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error()
        return typ.generate_forindex()

    def generate_forindex_only_right(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error()
        return typ.generate_forindex_only_right()

    def generate_arrayindex(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error()
        return typ.generate_arrayindex()

    def get_size_of_subrange(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error()
        left = None
        right = None
        if isinstance(typ.left, designator):
            constname = typ.left.generate_code()
            left = constmap[constname].name
        elif isinstance(typ.left, int):
            left = str(typ.left)
        if isinstance(typ.right, designator):
            constname = typ.right.generate_code()
            right = constmap[constname].name
        elif isinstance(typ.right, int):
            right = str(typ.right)
        return "("+right + "-" + left + "+1)"

    def get_size_of_subrange2(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error()
        left = None
        right = None
        if isinstance(typ.left, designator):
            constname = typ.left.generate_code()
            left = constmap[constname].value
        elif isinstance(typ.left, int):
            left = typ.left
        if isinstance(typ.right, designator):
            constname = typ.right.generate_code()
            right = constmap[constname].value
        elif isinstance(typ.right, int):
            right = typ.right
        return right - left + 1

    def get_subrange_left_right(self):
        typ = typemap[self.typename]
        if not isinstance(typ, subrangetypedecl):
            raise type_error(typ)
        left = None
        right = None
        if isinstance(typ.left, designator):
            left = typ.left.generate_code()
        elif isinstance(typ.left, int):
            left = typ.left
        if isinstance(typ.right, designator):
            right = typ.right.generate_code()
        elif isinstance(typ.right, int):
            right = typ.right
        return str(left), str(right)


class booleantypedecl(typedecl):
    """boolean type, in which its ancestor class is type decl

    decl a boolean type
    name : boolean

    """

    def __init__(self, name: str):
        super().__init__(name)

    def generate_code(self):
        return "Bool()"


class subrangetypedecl(typedecl):
    """subrange type, in which its ancestor class is type decl

    decl a subrange type
    name : left .. right(int/designator)

    """

    def __init__(self, name: str, left, right):
        super().__init__(name)
        self.left = left  # least value
        self.right = right  # greatest value

    def generate_code(self):
        if isinstance(self.right, designator):
            return "UInt(log2Ceil((%s+1)).W)" % self.right.generate_code()
        elif isinstance(self.right, int):
            return "UInt(log2Ceil(%d).W)" % (self.right + 1)
        else:
            raise type_error("subrange can only be int or str")

    def generate_arrayindex(self):
        if isinstance(self.right, designator):
            return "%s" % self.right.generate_code()
        elif isinstance(self.right, int):
            return "%d" % self.right
        else:
            raise type_error("subrange can only be int or str", self.right)

    def generate_forindex(self):
        res = ""
        if isinstance(self.left, designator):
            res += "%s" % self.left.generate_code()
        elif isinstance(self.left, int):
            res += "%d" % self.left
        else:
            raise type_error("subrange can only be int or str")
        res += " until "
        if isinstance(self.right, designator):
            res += "(%s+1)" % self.right.generate_code()
        elif isinstance(self.right, int):
            res += "%d" % (self.right + 1)
        else:
            raise type_error("subrange can only be int or str")
        return res

    def generate_forindex_only_right(self):
        res = "0"
        res += " until "
        if isinstance(self.right, designator):
            res += "(%s+1)" % self.right.generate_code()
        elif isinstance(self.right, int):
            res += "%d" % (self.right + 1)
        else:
            raise type_error("subrange can only be int or str")
        return res


class enumtypedecl(typedecl):
    """enum type, in which its ancestor class is type decl

    decl a enum type
    name : enum {e1, e2, ...}

    """

    def __init__(self, name: str, idvalues):
        super().__init__(name)
        self.idvalues = idvalues  # the names of enums

    def generate_code(self):
        return "%s()" % self.name

    def generate_pkg(self):
        return "object %s extends ChiselEnum {\n" \
               "val %s = Value\n" \
               "}\n" % (self.name, ",".join(self.idvalues))


class arraytypedecl(typedecl):
    """array type, in which its ancestor class is type decl

    decl an array type
    name : array [2] of boolean

    """

    def __init__(self, name: str, indextype: typedecl, elementtype: typedecl):
        super().__init__(name)
        self.indextype = indextype  # index type in []
        self.elementtype = elementtype  # element type behind "of"

    def generate_code(self):
        if isinstance(self.indextype, (subrangetypedecl, pretypedecl)):
            return "Vec(%s+1,%s)" % (self.indextype.generate_arrayindex(), self.elementtype.generate_code())
        else:
            return "Vec(%s+1,%s)" % (self.indextype.generate_code(), self.elementtype.generate_code())


class vardecl(decl):
    """var type, in which its ancestor class is decl

    decl a var
    name : typedecl

    """

    def __init__(self, name: str, typ: typedecl):
        super().__init__(name)
        self.typ = typ  # typedecl of the varname

    def generate_code(self):
        return "%s" % self.name

    def generate_io(self):
        return "val %s_in = Input(%s)\n" \
               "val %s_out = Output(%s)" % (self.name, self.typ.generate_code(), self.name, self.typ.generate_code())

    def generate_io_out(self):
        return "val %s_out = Output(%s)" % (self.name, self.typ.generate_code())

    def generate_reg_init(self):
        return "val %s_reg = Reg(%s)\n" \
               "io.%s_out:=%s_reg\n" % (self.name, self.typ.generate_code(), self.name, self.name)


class recordtypedecl(typedecl):
    """record type, in which its ancestor class is type decl

    decl a record type
    name : record name1:type1 ; name2:type2 ... end

    """

    def __init__(self, name: str, fields):
        super().__init__(name)
        self.fields = fields  # fields represent the List of all typedecl in the record

    def generate_code(self):
        class_paras = []
        for x in constmap.values():
            class_paras.append("%s" % x.name)
        return "new %s(%s)" % (self.name, ",".join(class_paras))

    def generate_pkg(self):
        res = ""
        class_paras = []
        for x in constmap.values():
            class_paras.append("val %s:Int" % x.name)
        res += "class %s(%s) extends Bundle{\n" % (self.name, ",".join(class_paras))
        for vd in self.fields:
            varname = vd.name
            type = vd.typ
            res += "val %s = %s\n" % (varname, type.generate_code())
        res += "}\n"
        return res


class constdecl(decl):
    """const type, in which its ancestor class is decl

    decl a const
    name : int

    """

    def __init__(self, name: str, value: int):
        super().__init__(name)
        self.value = value  # the const value can only be int

    def generate_code(self):
        if not isinstance(self.value, int):
            raise type_error(" const not int ", self.value)
        return "%s" % self.name


constmap = {}
typemap = {}
varmap = {}
localvarmap = {}
enumelementlist = []