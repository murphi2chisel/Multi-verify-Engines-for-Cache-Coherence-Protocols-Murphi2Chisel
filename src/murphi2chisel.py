import argparse

from load import *
import os


protocol_dir = ""
out_dir = ""
chisel_dir = ""
avr_dir = ""
cmurphi_dir = ""
constlist = []


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        prog='Murphi2Chisel',
        description='convert Murphi model to RTL in Chisel',
        epilog='Murphi2Chisel')
    parser.add_argument('-v1', '--verifyabc', action='store_true',
                        help='parse and verify in abc')
    parser.add_argument('-v2', '--verifyavr', action='store_true',
                        help='parse and verify in avr')
    parser.add_argument('-v3', '--verifycmurphi', action='store_true',
                        help='parse and verify in murphi')
    parser.add_argument('-v4', '--satbmc', action='store_true',
                        help='parse and verify in satbmc')
    parser.add_argument('-v5', '--smtbmc', action='store_true',
                        help='parse and verify in smtbmc')
    parser.add_argument('-v6', '--verifycmurphidfs', action='store_true',
                        help='parse and verify in murphidfs')
    parser.add_argument('-p', '--parse', action='store_true',
                        help='parse without verify in cmurphi')
    parser.add_argument('-f', '--file', dest="file",
                        type=str, help='input file in Muprhi')
    parser.add_argument("-c", "--constlist", dest="constlist",
                        type=int, nargs="+", help="const params in the protocol")
    parser.add_argument("-o", "--out", dest="out",
                        type=str, help="output dirname")
    args = parser.parse_args()
    return args

def chisel2verilog():
    t = [f"args({i}).toInt" for i in range(len(constlist))]
    s = gen_system_script(','.join(t))
    with open(f"{out_dir}/gen_system.scala", 'w') as f:
        f.write(s)
    for file_name in ['gen_system.scala', 'cache_pkg.scala', 'node.scala', 'router.scala', 'system.scala']:
        os.system(f"cp {out_dir}/{file_name} {chisel_dir}/src/main/scala")
    os.chdir(chisel_dir)
    os.system(f"sbt \"runMain gensystem {' '.join(str(const) for const in constlist)}\"")
    # remove initial reg init & add init of reset==1 && io_en_a==0
    with open(f"{chisel_dir}/system_build/system.sv") as f1, open(f"{out_dir}/protocol.sv", 'w') as f2:
        sv = ""
        flag = False
        for line in f1:
            if "`ifndef SYNTHESIS" in line:
                flag = True
            if not flag:
                sv += line
            if "`endif // SYNTHESIS" in line:
                flag = False
            if "initial begin" in line:
                sv += """
                initial begin
                    assume(reset==1 && io_en_a==0);
                end\n
                """
        f2.write(sv)
    os.chdir(out_dir)



if __name__ == "__main__":
    args = parse_args()
    cwd = os.getcwd()
    protocol_dir = f"{cwd}/{args.file}" if args.file else cwd
    out_dir = f"{cwd}/{args.out}" if args.out else cwd
    if not os.path.exists(out_dir):
        os.mkdir(out_dir)
    chisel_dir = f"{cwd}/external/chisel-template"
    avr_dir = f"{cwd}/external/avr-master"
    cmurphi_dir = f"{cwd}/external/cmurphi"
    parser = murphi_parser(out_dir, protocol_dir)
    constlist = args.constlist
    if args.parse:
        parser.parse()
        chisel2verilog()
    elif args.verifyabc:
        parser.parse()
        chisel2verilog()
        s = sby_script()
        with open("v.sby","w") as f:
            f.write(s)
        os.system("sby -f v.sby")
    elif args.satbmc:
        parser.parse()
        chisel2verilog()
        s = sby_script2()
        with open("v.sby","w") as f:
            f.write(s)
        os.system("sby -f v.sby")
    elif args.smtbmc:
        parser.parse()
        chisel2verilog()
        s = sby_script3()
        with open("v.sby","w") as f:
            f.write(s)
        os.system("sby -f v.sby")
    elif args.verifyavr:
        parser.parse()
        chisel2verilog()
        with open("./gen.ys", 'w') as f:
            f.write("""
            read -formal ./protocol.sv;
            prep -top system;
            flatten;
            memory -nomap;
            hierarchy -check;
            setundef -undriven -expose;
            write_btor protocol.btor2;
            """)
        os.system("yosys ./gen.ys")
        os.system(f"cp protocol.btor2 {avr_dir}")
        os.chdir(avr_dir)
        os.system(f"python3 avr.py -o {out_dir} -n bar ./protocol.btor2 " )
        os.system(f"cp out.log {out_dir}/ " )
    elif args.verifycmurphi:
        os.chdir(out_dir)
        os.system(f"cp {protocol_dir} {out_dir}/protocol.m")
        status = os.system(f"{cmurphi_dir}/src/mu -c protocol.m")
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system(f"g++ -o protocol.o protocol.cpp -I {cmurphi_dir}/include")
        if status:
            print('g++ failed to compile')
            exit(1)
        # ta 
        os.system(f"./protocol.o -pn -m51200 >{out_dir}/trace.txt ")
    elif args.verifycmurphidfs:
        os.chdir(out_dir)
        os.system(f"cp {protocol_dir} {out_dir}/protocol.m")
        status = os.system(f"{cmurphi_dir}/src/mu -c protocol.m")
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system(f"g++ -o protocol.o protocol.cpp -I {cmurphi_dir}/include")
        if status:
            print('g++ failed to compile')
            exit(1)
        os.system(f"./protocol.o -pn -vdfs  -m51200 >{out_dir}/trace.txt ")
