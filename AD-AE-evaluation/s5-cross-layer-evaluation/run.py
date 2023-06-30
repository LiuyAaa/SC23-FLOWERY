import os, sys
import subprocess

appName = sys.argv[1]

#Prepare code
os.chdir(appName + "-code")
os.system("mv numbers.txt " + appName + "-1.0.txt")

level = [3,5,7]

for i in level:
    os.system("opt -load ./SelectiveInstructionDuplication.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=" + appName + "-0." + str(i) + ".txt -o " + appName + "-0." + str(i) +".ll")
    os.system("llvm-link external.ll " + appName + "-0." + str(i) +".ll -o " + appName + "-0." + str(i) +".ll")
    os.system("clang++ " + appName + "-0." + str(i) +".ll -o " + appName + "-0." + str(i))
    os.system("mv " + appName + "-0." + str(i) + " ../" + appName + "-Pinfi")
    os.system("mv " + appName + "-0." + str(i) + ".ll ../" + appName + "-LLFI/base")
os.system("opt -load ./SelectiveInstructionDuplication.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=" + appName + "-1.0.txt -o " + appName + "-1.0.ll")
os.system("llvm-link external.ll " + appName + "-1.0.ll -o " + appName + "-1.0.ll")
os.system("clang++ " + appName + "-1.0.ll -o " + appName + "-1.0")
os.system("clang++ " + appName + "-llfi_index.ll -o " + appName)
os.system("mv " + appName + "-1.0.ll" + " ../" + appName + "-LLFI/base")
os.system("mv " + appName + "-1.0" + " ../" + appName + "-Pinfi")
os.system("cp " + appName + "-llfi_index.ll" + " ../" + appName + "-LLFI/base/" + appName + ".ll")
os.system("mv " + appName + " ../" + appName + "-Pinfi/")


#IR level Fault Injection
os.chdir("../")
os.chdir(appName + "-LLFI")
inputList = open('input.txt', 'r').readlines()
inputl = inputList[0].replace("\n", "")
outl = [0.0,0.0,0.0,0.0,0.0]
outpin = [0.0,0.0,0.0,0.0,0.0]
t = 0

os.system("rm -rf fi*")
os.system("python runFiForInputs.py " + appName + " \"" + inputl + "\"" + " 1")
os.chdir("fi-0/")
out = open('SDC-number.txt', 'r').readlines()
outl[t] = out[0].replace("\n", "")
t = t + 1
os.chdir("../")

for i in level:
    os.system("rm -rf fi*")
    os.system("python runFiForInputs.py " + appName + "-0." + str(i) + " \"" + inputl + "\"" + " 1")
    os.chdir("fi-0/")
    out = open('SDC-number.txt', 'r').readlines()
    outl[t] = out[0].replace("\n", "")
    t = t + 1
    os.chdir("../")

os.system("rm -rf fi*")
os.system("python runFiForInputs.py " + appName + "-1.0 \"" + inputl + "\"" + " 1")
os.chdir("fi-0")
out = open('SDC-number.txt', 'r').readlines()
outl[4] = out[0].replace("\n", "")
os.chdir("../")
os.system("rm -rf fi-0")
os.chdir("../")
#Assembly level fault injection
t = 0
os.system("rm -rf PINFI")
os.system("mkdir PINFI")
os.system("cp -r " + appName + "-Pinfi PINFI/")
os.system("rm -rf ../../../pinfi/source/tools/pinfi/PINFI")
os.system("cp -r PINFI " + "../../../pinfi/source/tools/pinfi/")
os.chdir("../../../pinfi/source/tools/pinfi/PINFI/" + appName + "-Pinfi")
os.system("rm -rf baseline activate error_output pin.instcount.txt prog_output pintool.log SDC-number.txt")
os.system("python faultinject.py " + appName + " 1000 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[t] = out[0].replace("\n", "")
t = t + 1

for i in level:
    os.system("bash clean")
    os.system("python faultinject.py " + appName + "-0." + str(i) + " 1000 \"" + inputl + "\"")
    os.system("python GetRate.py")
    out = open('SDC-number.txt', 'r').readlines()
    outpin[t] = out[0].replace("\n", "")
    t = t + 1

os.system("bash clean")
os.system("python faultinject.py " + appName + "-1.0 1000 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[4] = out[0].replace("\n", "")
os.system("bash clean")

#outl and outpin is the final results
print("Benchmark: " + appName)
print("======30 Protection Level======")
print("IR level SDC coverage: " + str(float((float(outl[0])-float(outl[1]))/float(outl[0]))))
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[1]))/float(outpin[0]))))
print("======50 Protection Level======")
print("IR level SDC coverage: " + str(float((float(outl[0])-float(outl[2]))/float(outl[0]))))
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[2]))/float(outpin[0]))))
print("======70 Protection Level======")
print("IR level SDC coverage: " + str(float((float(outl[0])-float(outl[3]))/float(outl[0]))))
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[3]))/float(outpin[0]))))
print("======full Protection Level======")
print("IR level SDC coverage: " + str(float((float(outl[0])-float(outl[4]))/float(outl[0]))))
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[4]))/float(outpin[0]))))
