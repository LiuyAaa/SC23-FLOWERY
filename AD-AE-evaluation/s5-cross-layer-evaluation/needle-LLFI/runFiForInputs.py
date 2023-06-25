import os, sys
import subprocess

###############################
bmName = sys.argv[1]
progInput = sys.argv[2]
noOfThreads = int(sys.argv[3])
###############################

# Launch multiple threads for the FI of the input
jobQ = []
for t in range(0, noOfThreads):
	os.system("cp -r ./base fi-" + str(t))
	os.chdir("fi-" + str(t))
	p = subprocess.Popen(["python3", "runFi.py", bmName, progInput])
	jobQ.append(p)			
	os.chdir("../")
# Check if current inputs of all threads finish
allDone = 0
while allDone == 0:
	allDone = 1
	for eachP in jobQ:
		if eachP.poll() is None:
			allDone = 0
			break
