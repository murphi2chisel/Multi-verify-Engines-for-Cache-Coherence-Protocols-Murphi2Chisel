
grammar = r"""   
    
    ?program: (decl)* (rules)*          -> program
    ?decl: ("const"|"Const") (constdecl ";")*     -> const
        | ("type"|"Type") (typedecl ";")*        -> type
        | ("var"|"Var") (vardecl ";")*          -> var
    ?constdecl: ID ":" expr             -> constdecl
    ?typedecl: ID ":" typeexpr          -> typedecl
    ?typeexpr: ID                       -> pretypedecl
        | ("boolean"|"Boolean")                     -> booleantypedecl
        | expr ".." expr                -> subrangetypedecl
        | "enum" "{" ID ( "," ID )* "}" -> enumtypedecl
        | ("record"|"Record") ( vardecl ";")* "end"    -> recordtypedecl
        | "array" "[" typeexpr "]" "of" typeexpr    -> arraytypedecl
    ?vardecl: ID ( "," ID )* ":" typeexpr       -> vardecl

    ?designator: ID ( (DOTID) | ( "[" (ID | INT | expr ) "]" )  )*    -> designator

    
    ?atom_expr: "(" expr ")"     -> bracketexpr
        |  designator        -> designatorexpr
        | INT               -> intexpr
        | "forall" quantifier (";" quantifier)* "do" expr ("endforall" | "end") ->forallexpr
        | "exists" quantifier (";" quantifier)* "do" expr ("endexists" | "end") ->existexpr
    
    ?neg_expr:"!" atom_expr                          -> notexpr
        | atom_expr
    
    ?arith_expr:neg_expr "+" neg_expr                     -> addexpr
        | neg_expr "-" neg_expr                     -> subexpr
        | neg_expr "/" neg_expr                     -> divexpr
        | neg_expr "%" neg_expr                     -> remainderexpr
        | neg_expr ">" neg_expr                     -> gtexpr
        |   neg_expr
    
    ?eq_expr:arith_expr "=" arith_expr                    -> equalexpr
        | arith_expr "!=" arith_expr                    -> notequalexpr
        |arith_expr
    
    ?and_expr: eq_expr "&" and_expr         -> andexpr 
        | eq_expr

    ?or_expr: and_expr "|" or_expr          -> orexpr 
        | and_expr

    ?imp_expr: or_expr "->" imp_expr        -> implyexpr
        | or_expr
        
    ?expr: imp_expr
    



        
    ?quantifier: ID ":" typeexpr            -> quantifierparmeter1
        | ID ":" expr "to" expr             -> quantifierparmeter2
        

    ?stmts : stmt (";" [stmt] )*            -> stmts
    ?stmt: assignment                       -> stmtassignment   
        | ifstmt                            -> stmtifstmt
        | forstmt                           -> stmtforstmt
        | clearstmt                         -> clearstmt

    ?assignment: designator ":=" expr       -> assignment
    ?ifstmt: "if" expr "then" stmts ("elsif" expr "then" stmts)* ("else" stmts)? ("endif" | "end") ->ifstmt     
    ?forstmt: "for" quantifier (";" quantifier)* "do" stmts ("endfor" | "end")  -> forstmt
    ?clearstmt: "clear" designator

    ?rules: rule ( ";" rule )* [";"]        -> rules
    ?rule:simplerule                        ->rulesimplerule
        | startstate                        ->rulestartstate
        | invariant             ->ruleinvariant
        | ruleset               ->ruleruleset
    ?simplerule: "rule" [STRING] [expr "==>"] (decl)* [ "begin" ] [stmts] ("end" | "endrule")   ->simplerule
    ?startstate: "startstate" [STRING] (decl)* ["begin"] [stmts] ("end" | "endstartstate")  -> startstate
    ?invariant: "invariant" [STRING] expr   -> invariant
    ?ruleset: "ruleset" quantifier ( ";" quantifier)* "do" rules ("end" | "endruleset") -> ruleset


    COMMENT: "--" /[^\n]*/ NEWLINE
    DOTID : "." ID  


    %import common.NEWLINE
    %import common.CNAME    -> ID
    %import common.WS
    %import common.INT
    %import common.ESCAPED_STRING  -> STRING
    %import common.C_COMMENT
    %ignore WS
    %ignore COMMENT
    %ignore C_COMMENT


"""