from load import *
from util import init_ifstmt


@v_args(inline=True)
class MurphiTransformer(Transformer):
    def program(self, *args):
        decls = []
        rules = []

        # args should be decls or rules
        for arg in args:
            if isinstance(arg, decl):
                decls.append(arg)
            elif isinstance(arg, rule):
                rules.append(arg)
            elif isinstance(arg, (tuple, list)):
                # decls and rules may be returned in tuples or list
                if isinstance(arg[0], decl):
                    for x in arg:
                        decls.append(x)
                elif isinstance(arg[0], rule):
                    for x in arg:
                        rules.append(x)
                else:
                    raise syntax_error(str(arg))
            else:
                raise syntax_error(str(arg))

        return program(decls, rules)

    def const(self, *constdecls):
        return constdecls

    def type(self, *typedecls):
        return typedecls

    def var(self, *vardecls):
        return vardecls

    def constdecl(self, ID, expr):
        if not isinstance(expr, int):
            raise syntax_error(str(ID))
        return constdecl(name=ID, value=expr)

    def typedecl(self, ID, typeexpr):
        if not isinstance(typeexpr, typedecl):
            raise syntax_error(str(typeexpr))
        typeexpr.name = ID
        return typeexpr

    def vardecl(self, ID, typeexpr):
        return vardecl(name=ID, typ=typeexpr)

    def pretypedecl(self, ID):
        return pretypedecl(name="", typename=ID)

    def booleantypedecl(self):
        return booleantypedecl(name="")

    def subrangetypedecl(self, e1, e2):
        if not isinstance(e1, (int, designator)) or not isinstance(e2, (int, designator)):
            raise syntax_error("subrange", e1, str(e2))
        return subrangetypedecl(name="", left=e1, right=e2)

    def enumtypedecl(self, *args):
        return enumtypedecl(name="", idvalues=list(args))

    def recordtypedecl(self, *args):
        return recordtypedecl(name="", fields=list(args))

    def arraytypedecl(self, e1, e2):
        return arraytypedecl(name="", indextype=e1, elementtype=e2)

    def dotid(self, ID):
        return "." + ID

    def designator(self, ID, *args):
        if ID == "false" or ID == "true":
            # transform to chisel syntax bool
            ID += ".B"
        return designator(name=ID, refs=args)

    def bracketexpr(self, expr):
        return expr

    def designatorexpr(self, d):
        return d

    def intexpr(self, i):
        return int(i)

    def forallexpr(self, *args):
        parameters = args[:-1]
        e = args[-1]
        return quantexpr(op=op_class.Forall, parameter=parameters, left=e)

    def existexpr(self, *args):
        parameters = args[:-1]
        e = args[-1]
        return quantexpr(op=op_class.Exists, parameter=parameters, left=e)

    def notexpr(self, e):
        return notexpr(left=e)

    def orexpr(self, e1, e2):
        return boolexpr(op=op_class.Or, left=e1, right=e2)

    def andexpr(self, e1, e2):
        return boolexpr(op=op_class.And, left=e1, right=e2)

    def implyexpr(self, e1, e2):
        return boolexpr(op=op_class.Imply, left=e1, right=e2)

    def equalexpr(self, e1, e2):
        return equalexpr(op=op_class.Equal, left=e1, right=e2)

    def notequalexpr(self, e1, e2):
        return equalexpr(op=op_class.Notequal, left=e1, right=e2)

    def quantifierparmeter1(self, ID, typeexpr):
        return ID, typeexpr

    def quantifierparmeter2(self, ID, left, right):
        return ID, left, right

    def stmts(self, *args):
        if args[-1] is None:
            args = args[:-1]
        return list(args)

    def stmtassignment(self, a):
        return a

    def stmtifstmt(self, a):
        return a

    def stmtforstmt(self, a):
        return a

    def clearstmt(self, a):
        return a

    def assignment(self, designator, expr):
        return assignment(target=designator, src=expr)

    def ifstmt(self, *args):
        return init_ifstmt(list(args))

    def forstmt(self, *args):
        return forstmt(index=args[:-1], body=args[-1])

    def rules(self, *rules):
        res = []
        for r in rules:
            if isinstance(r, rule):
                res.append(r)
            else:
                # ruleset:return a list of rule
                for x in r:
                    res.append(x)
        return res

    def rulesimplerule(self, a):
        return a

    def rulestartstate(self, a):
        return a

    def ruleinvariant(self, a):
        return a

    def ruleruleset(self, a):
        return a

    def simplerule(self, *args):
        if len(args) == 3:
            return simplerule(name=args[0], condition=args[1], body=args[2], enclosures=None, vars=None)
        else:
            return simplerule(name=args[0], condition=args[1], body=args[-1], enclosures=None, vars=args[2:-1])

    def startstate(self, *args):
        if len(args) == 2:
            return startstate(name=args[0], body=args[1], enclosures=None, vars=None)
        else:
            return startstate(name=args[0], body=args[-1], enclosures=None, vars=args[1:-1])

    def invariant(self, string, stmts):
        return invariant(name=string, body=stmts, enclosures=None)

    def ruleset(self, *args):
        paras = []
        rules = []
        for arg in args:
            if isinstance(arg[0], str):
                # is para of ruleset
                paras.append(arg)
        for arg in args:
            if not isinstance(arg[0], str):
                # is rule list
                for rule in arg:
                    rule.enclosures = paras
                    rules.append(rule)
        return rules

    def STRING(self,s):
        # remove \" and \"
        return str(s)[1:-1]

    def ID(self, s):
        return str(s)

    def DOTID(self, s):
        return str(s)

    def addexpr(self, e1, e2):
        return addexpr(left=e1, right=e2)

    def gtexpr(self, e1, e2):
        return gtexpr(left=e1, right=e2)

    def subexpr(self,e1,e2):
        return arithexpr(op_class.Sub,e1,e2)

    def divexpr(self,e1,e2):
        return arithexpr(op_class.Div,e1,e2)

    def remainderexpr(self,e1,e2):
        return arithexpr(op_class.Remainder,e1,e2)
    
    


# murphi_parser = Lark(grammar, start="program", parser="lalr", transformer=MurphiTransformer())







# print(1)
