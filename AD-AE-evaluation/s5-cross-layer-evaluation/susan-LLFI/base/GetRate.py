import os, sys
import filecmp

#bmName = sys.argv[1]
#progInput = sys.argv[2]
#appName = bmName.split('-')[0]


# get the SDC rate of given instruction
def get_SDC_number():
    temp_path = ""
    file_gld_out = temp_path + "baseline/output.prof.txt"
    run_count = 1000
    SDC_count = 0
    benign_count = 0
    crash_count = 0
    hang_count = 0
    # print("\rChecking files in " + temp_path + " ......")
    for f in range(run_count):
        file_out = temp_path + "prog_output" + "/output.0-" + str(f) + ".txt"
        try:
            file_err = open(temp_path + "error_output" + "/errorfile-run-0-" + str(f))
            error_msg = file_err.read()
            file_err.close()
        except IOError: # no error output
            error_msg = ""
        if("hang" in error_msg):
            hang_count += 1
        elif("crash" in error_msg):
            crash_count += 1
        elif(filecmp.cmp(file_out, file_gld_out)):
            benign_count += 1
        else:
            print("sdc not detected" + str(file_out))
            SDC_count += 1
    print("SDC_count" + str(SDC_count))
    print("Crash_count" + str(crash_count))
    print("benign_count" + str(benign_count))
    print("hang_count" + str(hang_count))
    return SDC_count


#os.system("instrument --readable " + bmName + ".ll -lm")
#os.system("profile llfi/" + bmName + "-profiling.exe " + progInput)
#fiString = "injectfault llfi/" + bmName + "-faultinjection.exe " + progInput
#print("Run FI with this command: " + fiString)
#print(fiString)
#os.system(fiString)
sdc_number = get_SDC_number()

# Write files
write_sdc_rate = open("SDC-number.txt", 'w')
write_sdc_rate.write(str(sdc_number))
write_sdc_rate.close()

# In order to save the storage, remove all temporay FI data. 
#os.system("rm -rf llfi*")

