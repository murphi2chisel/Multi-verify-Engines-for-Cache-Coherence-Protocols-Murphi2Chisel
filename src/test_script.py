from load import *
import os 

py = "python3"

def run_abc(src,const,dst):
   os.system(f"{py} murphi2chisel.py -v1 -f {src} {const} -o {dst}")

def run_avr(src,const,dst):
   os.system(f"{py} murphi2chisel.py -v2 -f {src} {const} -o {dst}")

def run_murphi_bfs(src,dst):
    os.system(f"{py} murphi2chisel.py -v3 -f {src}  -o {dst}") 

def run_sat_bmc(src,const,dst):
    os.system(f"{py} murphi2chisel.py -v4 -f {src} {const} -o {dst}")

def run_smt_bmc(src,const,dst):
    os.system(f"{py} murphi2chisel.py -v5 -f {src} {const} -o {dst}")

def run_murphi_dfs(src,dst):
    os.system(f"{py} murphi2chisel.py -v6 -f {src} -c 0 -o {dst}") 
 

if __name__ == '__main__' :
    cwd = os.getcwd()

    # completement verify
    root = f"benchmark/benchmark1"
    mfiles = []
    for root, dirs, files in os.walk(root):
        mfiles = files
    for file in files:
        file_src_dir = f"{root}/{file}"
        const = ""
        if "flash" in file:
            if "-2" in file:
                const = "-c 2 2"
            elif "-3" in file:
                const = "-c 3 2"
        elif "german" in file:
            if "-2" in file:
                const = "-c 2 2"
            elif "-4" in file:
                const = "-c 4 2"
        elif "mutual" in file:
            if "-2" in file:
                const = "-c 2"
            elif "-16" in file:
                const = "-c 16"
        elif "TL" in file:
            if "_3" in file:
                const = "-c 2 3 2"
            if "_7" in file:
                const = "-c 4 7 2"
        # symbolic abc 
        run_abc(file_src_dir,const,f"../{file}abc-satpdr-completement-verify")
        # symbolic avr 
        run_avr(file_src_dir,const,f"../{file}avr-smt-pdr-completement-verify")
        # explicit state murphi bfs
        run_murphi_bfs(file_src_dir,f"../{file}murphi-bfs-completement-verify")
        # explicit state murphi dfs
        run_murphi_dfs(file_src_dir,f"../{file}murphi-dfs-completement-verify")
    # scalarset
    root = f"benchmark/benchmark2"
    mfiles = []
    for root, dirs, files in os.walk(root):
        mfiles = files    
    for file in files:
        file_src_dir = f"{root}/{file}"
        run_murphi_dfs(file_src_dir,f"../{file}murphi-scalarset-completement-verify")

    # bug detection
    root = f"benchmark/benchmark3"
    mfiles = []
    for root, dirs, files in os.walk(root):
        mfiles = files
    for file in files:
        file_src_dir = f"{root}/{file}"
        const = ""
        if "flash" in file:
            const = "-c 3 2"
        elif "german" in file:
            const = "-c 4 2"
        elif "cache_error_1" in file:
            const = "-c 10"
        elif "cache_error_2" in file:
            const = "-c 12"
        elif "TL" in file:
            const = "-c 4 7 2"
        # symbolic abc 
        run_abc(file_src_dir,const,f"../{file}abc-satpdr-bug-detection")
        # symbolic avr 
        run_avr(file_src_dir,const,f"../{file}avr-smt-pdr-bug-detection")
        # symbolic sat-bmc
        run_sat_bmc(file_src_dir,const,f"../{file}sat-bmc-bug-detection")
        #symbolic smt-bmc 
        run_smt_bmc(file_src_dir,const,f"../{file}smt-bmc-bug-detection")
        # explicit state murphi bfs
        run_murphi_bfs(file_src_dir,f"../{file}murphi-bfs-bug-detection")
        # explicit state murphi dfs
        run_murphi_dfs(file_src_dir,f"../{file}murphi-dfs-bug-detection")
        # scalarset
    root = f"benchmark/benchmark4"
    mfiles = []
    for root, dirs, files in os.walk(root):
        mfiles = files    
    for file in files:
        file_src_dir = f"{root}/{file}"
        run_murphi_dfs(file_src_dir,f"../{file}murphi-scalarset-bug-detection")

