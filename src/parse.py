from transform import *


class murphi_parser(object):
    def __init__(self, dir, srcfile):
        self.parser = Lark(grammar, start="program", parser="lalr", transformer=MurphiTransformer())
        self.dir = dir
        self.srcfile = srcfile

    def parse(self):
        stmt.protocolName = self.srcfile
        prog = parse_file(self.parser, self.srcfile)
        mkdir(self.dir)
        self.cache_pkg = prog.generate_pkg()
        self.node = prog.generate_node()
        self.router = prog.generate_router()
        self.system = prog.generate_system()
        with open(self.dir+"/cache_pkg.scala", "w") as f:
            f.write(prog.generate_pkg())
        with open(self.dir+"/node.scala", "w") as f:
            f.write(prog.generate_node())
        with open(self.dir+"/router.scala", "w") as f:
            f.write(prog.generate_router())
        with open(self.dir+"/system.scala", "w") as f:
            f.write(prog.generate_system())

# parser = murphi_parser("./flash","./example/flash.m")
# parser.parse()

# print(1)
