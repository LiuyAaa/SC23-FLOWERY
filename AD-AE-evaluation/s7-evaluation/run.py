import os, sys
import subprocess

appName = sys.argv[1]
#As the evaluation part only has flowery to implement, 
#we only run the flowery technique here, 
#other two lines can be run in s5--cross-layer-evaluation
os.system("cp -r ../s5-cross-layer-evaluation/" + appName + "-code ./")
os.system("cp -r ../s5-cross-layer-evaluation/" + appName + "-Pinfi ./")
os.system("cp ../pass/* " + appName + "-code/")


level = [3,5,7]
os.chdir(appName + "-code")
for i in level:
    os.system("opt -load ./SelectiveInstructionDuplication-Store.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=" + appName + "-0." + str(i) + ".txt -o " + appName + "-0." + str(i) +"-patch.ll")
    os.system("opt -load ./Branch.so ./" + appName + "-0." + str(i) + "-patch.ll -instruction_level -select_set_file=" + appName + "-0." + str(i) + ".txt -o " + appName + "-0." + str(i) +"-patch.ll")
    os.system("llvm-link external-final.ll " + appName + "-0." + str(i) +"-patch.ll -o " + appName + "-0." + str(i) +"-patch.ll")
    os.system("clang++ " + appName + "-0." + str(i) +"-patch.ll -o " + appName + "-0." + str(i) + "-patch")
    os.system("mv " + appName + "-0." + str(i) + "-patch ../" + appName + "-Pinfi")
os.system("opt -load ./SelectiveInstructionDuplication-Store.so ./" + appName + "-llfi_index.ll -bishe_insert -select_set_file=" + appName + "-1.0.txt -o " + appName + "-1.0-patch.ll")
os.system("opt -load ./Branch.so ./" + appName + "-1.0-patch.ll -instruction_level -select_set_file=" + appName + "-1.0.txt -o " + appName + "-1.0-patch.ll")
os.system("llvm-link external-final.ll " + appName + "-1.0-patch.ll -o " + appName + "-1.0-patch.ll")
os.system("clang++ " + appName + "-1.0-patch.ll -o " + appName + "-1.0-patch")
os.system("mv " + appName + "-1.0-patch ../" + appName + "-Pinfi")

outpin = [0.0,0.0,0.0,0.0,0.0]
os.chdir("../../s5-cross-layer-evaluation/" + appName + "-LLFI")
inputList = open('input.txt', 'r').readlines()
inputl = inputList[0].replace("\n", "")
os.chdir("../../s7-evaluation/")

#Assembly level fault injection
t = 0
os.system("rm -rf PINFI")
os.system("mkdir PINFI")
os.system("cp -r " + appName + "-Pinfi PINFI/")

os.system("cp -r PINFI " + "~/pinfi/source/tools/pinfi/")
os.chdir("../../../pinfi/source/tools/pinfi/PINFI/" + appName + "-Pinfi")
os.system("rm -rf baseline activate error_output pin.instcount.txt prog_output pintool.log SDC-number.txt")
os.system("python faultinject.py " + appName + " 1000 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[t] = out[0].replace("\n", "")
t = t + 1

for i in level:
    os.system("bash clean")
    os.system("python faultinject.py " + appName + "-0." + str(i) + "-patch 1000 \"" + inputl + "\"")
    os.system("python GetRate.py")
    out = open('SDC-number.txt', 'r').readlines()
    outpin[t] = out[0].replace("\n", "")
    t = t + 1

os.system("bash clean")
os.system("python faultinject.py " + appName + "-1.0-patch 1000 \"" + inputl + "\"")
os.system("python GetRate.py")
out = open('SDC-number.txt', 'r').readlines()
outpin[4] = out[0].replace("\n", "")
os.system("bash clean")

#outl and outpin is the final results
print("Benchmark: " + appName)
print("======30 Protection Level======")
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[1]))/float(outpin[0]))))
print("======50 Protection Level======")
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[2]))/float(outpin[0]))))
print("======70 Protection Level======")
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[3]))/float(outpin[0]))))
print("======full Protection Level======")
print("Assembly level SDC coverage: " + str(float((float(outpin[0])-float(outpin[4]))/float(outpin[0]))))