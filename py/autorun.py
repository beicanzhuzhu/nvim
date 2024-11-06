import sys
import os
import subprocess

if len(sys.argv) > 2:
    print("too many arguments.")
    exit()

filename = sys.argv[1]
filetype = os.path.splitext(filename)[1]
outfile = os.path.splitext(filename)[0]+".out"

if filetype == ".py":
    subprocess.run(["python", filename])
    print("\n\nPush any key to contiue.")
    try:
        input()
    finally:
        pass
elif filetype == ".cpp":
    try:
        subprocess.run(["g++", "-Wall", "-O2", "-std=c++20", filename,
                        "-o", outfile],
                       check=True)
    except subprocess.CalledProcessError:
        exit()
    else:
        if sys.platform.startswith("linux"):
            os.system("clear")
        else:
            os.system("cls")
        subprocess.run("./"+outfile)
        print("\n\nPush any key to contiue.")
        try:
            input()
        finally:
            pass

else:
    print("Unspport filetype.")
