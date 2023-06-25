import os, sys
import subprocess

appName = sys.argv[1]

os.chdir(appName + "-LLFI")
inputList = open('input.txt', 'r').readlines()
inputl = inputList[0].replace("\n", "")
os.chdir("../")
t = 0
outpin = [0,0,0,0,0]
level = [3,5,7]
os.system("mkdir PINFI")
os.system("cp -r " + appName + "-Pinfi PINFI/")
os.system("cp -r PINFI " + "~/pinfi/source/tools/pinfi/")
os.chdir("../../../pinfi/source/tools/pinfi/PINFI/" + appName + "-Pinfi")
os.system("rm -rf baseline activate error_output pin.instcount.txt prog_output pintool.log SDC-number.txt")
os.system("python faultinject.py " + appName + " 1 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[t] = out[0].replace("\n", "")
t = t + 1

for i in level:
    os.system("bash clean")
    os.system("python faultinject.py " + appName + "-0." + str(i) + " 1 \"" + inputl + "\"")
    os.system("python GetRate.py")
    out = open('SDC-number.txt', 'r').readlines()
    outpin[t] = out[0].replace("\n", "")
    t = t + 1

os.system("bash clean")
os.system("python faultinject.py " + appName + "-1.0 1 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[4] = out[0].replace("\n", "")
print outpin
