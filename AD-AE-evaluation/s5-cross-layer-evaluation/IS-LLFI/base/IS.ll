; ModuleID = 'c_print_results.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str8 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str9 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str11 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c" Center for Manycore Programming\0A\00", align 1
@.str13 = private unnamed_addr constant [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c" http://aces.snu.ac.kr\0A\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@elapsed = internal global [64 x double] zeroinitializer, align 16
@start = internal global [64 x double] zeroinitializer, align 16
@S_test_index_array = global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = global [5 x i32] [i32 1317351170, i32 995930646, i32 1157283250, i32 1503301535, i32 1453734525], align 16
@D_test_rank_array = global [5 x i32] [i32 1, i32 36538729, i32 1978098519, i32 2145192618, i32 2147425337], align 16
@randlc.KS = internal global i32 0, align 4
@randlc.R23 = internal global double 0.000000e+00, align 8
@randlc.R46 = internal global double 0.000000e+00, align 8
@randlc.T23 = internal global double 0.000000e+00, align 8
@randlc.T46 = internal global double 0.000000e+00, align 8
@key_array = common global [65536 x i32] zeroinitializer, align 16
@key_buff2 = common global [65536 x i32] zeroinitializer, align 16
@key_buff_ptr_global = common global i32* null, align 8
@.str16 = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@passed_verification = common global i32 0, align 4
@test_index_array = common global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = common global [5 x i32] zeroinitializer, align 16
@bucket_size = common global [512 x i32] zeroinitializer, align 16
@bucket_ptrs = common global [512 x i32] zeroinitializer, align 16
@key_buff1 = common global [2048 x i32] zeroinitializer, align 16
@test_rank_array = common global [5 x i32] zeroinitializer, align 16
@.str117 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str218 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str319 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str420 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", align 1
@.str521 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str622 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@.str723 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str824 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str925 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str1026 = private unnamed_addr constant [12 x i8] c"26 Jul 2018\00", align 1
@.str1127 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str1228 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str1329 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str1430 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str1531 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str1632 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"\0AAdditional timers -\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str20 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@.str33 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str134 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str235 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str336 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str437 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str538 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str639 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str740 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str841 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str942 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1043 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1144 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1245 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
@wtime_.sec = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* %compiletime, i8* %cc, i8* %clink, i8* %c_lib, i8* %c_inc, i8* %cflags, i8* %clinkflags) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %nn = alloca i64, align 8
  store i8* %name, i8** %1, align 8
  store i8 %class, i8* %2, align 1
  store i32 %n1, i32* %3, align 4
  store i32 %n2, i32* %4, align 4
  store i32 %n3, i32* %5, align 4
  store i32 %niter, i32* %6, align 4
  store double %t, double* %7, align 8
  store double %mops, double* %8, align 8
  store i8* %optype, i8** %9, align 8
  store i32 %passed_verification, i32* %10, align 4
  store i8* %npbversion, i8** %11, align 8
  store i8* %compiletime, i8** %12, align 8
  store i8* %cc, i8** %13, align 8
  store i8* %clink, i8** %14, align 8
  store i8* %c_lib, i8** %15, align 8
  store i8* %c_inc, i8** %16, align 8
  store i8* %cflags, i8** %17, align 8
  store i8* %clinkflags, i8** %18, align 8
  %19 = load i8** %1, align 8
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0), i8* %19)
  %21 = load i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str1, i32 0, i32 0), i32 %22)
  %24 = load i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

; <label>:26                                      ; preds = %0
  %27 = load i32* %3, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %nn, align 8
  %29 = load i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

; <label>:31                                      ; preds = %26
  %32 = load i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64* %nn, align 8
  %35 = mul nsw i64 %34, %33
  store i64 %35, i64* %nn, align 8
  br label %36

; <label>:36                                      ; preds = %31, %26
  %37 = load i64* %nn, align 8
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i32 0, i32 0), i64 %37)
  br label %44

; <label>:39                                      ; preds = %0
  %40 = load i32* %3, align 4
  %41 = load i32* %4, align 4
  %42 = load i32* %5, align 4
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str3, i32 0, i32 0), i32 %40, i32 %41, i32 %42)
  br label %44

; <label>:44                                      ; preds = %39, %36
  %45 = load i32* %6, align 4
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i32 0, i32 0), i32 %45)
  %47 = load i8** %9, align 8
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str5, i32 0, i32 0), i8* %47)
  %49 = load i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %44
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str6, i32 0, i32 0))
  br label %61

; <label>:53                                      ; preds = %44
  %54 = load i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %53
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str7, i32 0, i32 0))
  br label %60

; <label>:58                                      ; preds = %53
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str8, i32 0, i32 0))
  br label %60

; <label>:60                                      ; preds = %58, %56
  br label %61

; <label>:61                                      ; preds = %60, %51
  %62 = load i8** %11, align 8
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str9, i32 0, i32 0), i8* %62)
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str10, i32 0, i32 0))
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str11, i32 0, i32 0))
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str12, i32 0, i32 0))
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str13, i32 0, i32 0))
  %68 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str14, i32 0, i32 0))
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str15, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @timer_clear(i32 %n) #0 {
  %1 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %3
  store double 0.000000e+00, double* %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %1 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  %2 = call double @elapsed_time()
  %3 = load i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %4
  store double %2, double* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %1 = alloca i32, align 4
  %t = alloca double, align 8
  %now = alloca double, align 8
  store i32 %n, i32* %1, align 4
  %2 = call double @elapsed_time()
  store double %2, double* %now, align 8
  %3 = load double* %now, align 8
  %4 = load i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %5
  %7 = load double* %6, align 8
  %8 = fsub double %3, %7
  store double %8, double* %t, align 8
  %9 = load double* %t, align 8
  %10 = load i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %11
  %13 = load double* %12, align 8
  %14 = fadd double %13, %9
  store double %14, double* %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @timer_read(i32 %n) #0 {
  %1 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %3
  %5 = load double* %4, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal double @elapsed_time() #0 {
  %t = alloca double, align 8
  call void @wtime_(double* %t)
  %1 = load double* %t, align 8
  ret double %1
}

; Function Attrs: nounwind uwtable
define double @randlc(double* %X, double* %A) #0 {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %T1 = alloca double, align 8
  %T2 = alloca double, align 8
  %T3 = alloca double, align 8
  %T4 = alloca double, align 8
  %A1 = alloca double, align 8
  %A2 = alloca double, align 8
  %X1 = alloca double, align 8
  %X2 = alloca double, align 8
  %Z = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %X, double** %1, align 8
  store double* %A, double** %2, align 8
  %3 = load i32* @randlc.KS, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

; <label>:5                                       ; preds = %0
  store double 1.000000e+00, double* @randlc.R23, align 8
  store double 1.000000e+00, double* @randlc.R46, align 8
  store double 1.000000e+00, double* @randlc.T23, align 8
  store double 1.000000e+00, double* @randlc.T46, align 8
  store i32 1, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %14, %5
  %7 = load i32* %i, align 4
  %8 = icmp sle i32 %7, 23
  br i1 %8, label %9, label %17

; <label>:9                                       ; preds = %6
  %10 = load double* @randlc.R23, align 8
  %11 = fmul double 5.000000e-01, %10
  store double %11, double* @randlc.R23, align 8
  %12 = load double* @randlc.T23, align 8
  %13 = fmul double 2.000000e+00, %12
  store double %13, double* @randlc.T23, align 8
  br label %14

; <label>:14                                      ; preds = %9
  %15 = load i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %6

; <label>:17                                      ; preds = %6
  store i32 1, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %26, %17
  %19 = load i32* %i, align 4
  %20 = icmp sle i32 %19, 46
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %18
  %22 = load double* @randlc.R46, align 8
  %23 = fmul double 5.000000e-01, %22
  store double %23, double* @randlc.R46, align 8
  %24 = load double* @randlc.T46, align 8
  %25 = fmul double 2.000000e+00, %24
  store double %25, double* @randlc.T46, align 8
  br label %26

; <label>:26                                      ; preds = %21
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %18

; <label>:29                                      ; preds = %18
  store i32 1, i32* @randlc.KS, align 4
  br label %30

; <label>:30                                      ; preds = %29, %0
  %31 = load double* @randlc.R23, align 8
  %32 = load double** %2, align 8
  %33 = load double* %32, align 8
  %34 = fmul double %31, %33
  store double %34, double* %T1, align 8
  %35 = load double* %T1, align 8
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %j, align 4
  %37 = load i32* %j, align 4
  %38 = sitofp i32 %37 to double
  store double %38, double* %A1, align 8
  %39 = load double** %2, align 8
  %40 = load double* %39, align 8
  %41 = load double* @randlc.T23, align 8
  %42 = load double* %A1, align 8
  %43 = fmul double %41, %42
  %44 = fsub double %40, %43
  store double %44, double* %A2, align 8
  %45 = load double* @randlc.R23, align 8
  %46 = load double** %1, align 8
  %47 = load double* %46, align 8
  %48 = fmul double %45, %47
  store double %48, double* %T1, align 8
  %49 = load double* %T1, align 8
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %j, align 4
  %51 = load i32* %j, align 4
  %52 = sitofp i32 %51 to double
  store double %52, double* %X1, align 8
  %53 = load double** %1, align 8
  %54 = load double* %53, align 8
  %55 = load double* @randlc.T23, align 8
  %56 = load double* %X1, align 8
  %57 = fmul double %55, %56
  %58 = fsub double %54, %57
  store double %58, double* %X2, align 8
  %59 = load double* %A1, align 8
  %60 = load double* %X2, align 8
  %61 = fmul double %59, %60
  %62 = load double* %A2, align 8
  %63 = load double* %X1, align 8
  %64 = fmul double %62, %63
  %65 = fadd double %61, %64
  store double %65, double* %T1, align 8
  %66 = load double* @randlc.R23, align 8
  %67 = load double* %T1, align 8
  %68 = fmul double %66, %67
  %69 = fptosi double %68 to i32
  store i32 %69, i32* %j, align 4
  %70 = load i32* %j, align 4
  %71 = sitofp i32 %70 to double
  store double %71, double* %T2, align 8
  %72 = load double* %T1, align 8
  %73 = load double* @randlc.T23, align 8
  %74 = load double* %T2, align 8
  %75 = fmul double %73, %74
  %76 = fsub double %72, %75
  store double %76, double* %Z, align 8
  %77 = load double* @randlc.T23, align 8
  %78 = load double* %Z, align 8
  %79 = fmul double %77, %78
  %80 = load double* %A2, align 8
  %81 = load double* %X2, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %79, %82
  store double %83, double* %T3, align 8
  %84 = load double* @randlc.R46, align 8
  %85 = load double* %T3, align 8
  %86 = fmul double %84, %85
  %87 = fptosi double %86 to i32
  store i32 %87, i32* %j, align 4
  %88 = load i32* %j, align 4
  %89 = sitofp i32 %88 to double
  store double %89, double* %T4, align 8
  %90 = load double* %T3, align 8
  %91 = load double* @randlc.T46, align 8
  %92 = load double* %T4, align 8
  %93 = fmul double %91, %92
  %94 = fsub double %90, %93
  %95 = load double** %1, align 8
  store double %94, double* %95, align 8
  %96 = load double* @randlc.R46, align 8
  %97 = load double** %1, align 8
  %98 = load double* %97, align 8
  %99 = fmul double %96, %98
  ret double %99
}

; Function Attrs: nounwind uwtable
define void @create_seq(double %seed, double %a) #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store double %seed, double* %1, align 8
  store double %a, double* %2, align 8
  store i32 512, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %25, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 65536
  br i1 %5, label %6, label %28

; <label>:6                                       ; preds = %3
  %7 = call double @randlc(double* %1, double* %2)
  store double %7, double* %x, align 8
  %8 = call double @randlc(double* %1, double* %2)
  %9 = load double* %x, align 8
  %10 = fadd double %9, %8
  store double %10, double* %x, align 8
  %11 = call double @randlc(double* %1, double* %2)
  %12 = load double* %x, align 8
  %13 = fadd double %12, %11
  store double %13, double* %x, align 8
  %14 = call double @randlc(double* %1, double* %2)
  %15 = load double* %x, align 8
  %16 = fadd double %15, %14
  store double %16, double* %x, align 8
  %17 = load i32* %k, align 4
  %18 = sitofp i32 %17 to double
  %19 = load double* %x, align 8
  %20 = fmul double %18, %19
  %21 = fptosi double %20 to i32
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

; <label>:25                                      ; preds = %6
  %26 = load i32* %i, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %3

; <label>:28                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @full_verify() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %20, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 65536
  br i1 %3, label %4, label %23

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [65536 x i32]* @key_buff2, i32 0, i64 %6
  %8 = load i32* %7, align 4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [65536 x i32]* @key_buff2, i32 0, i64 %10
  %12 = load i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32** @key_buff_ptr_global, align 8
  %15 = getelementptr inbounds i32* %14, i64 %13
  %16 = load i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %18
  store i32 %8, i32* %19, align 4
  br label %20

; <label>:20                                      ; preds = %4
  %21 = load i32* %i, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %1

; <label>:23                                      ; preds = %1
  store i32 0, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %24

; <label>:24                                      ; preds = %42, %23
  %25 = load i32* %i, align 4
  %26 = icmp slt i32 %25, 65536
  br i1 %26, label %27, label %45

; <label>:27                                      ; preds = %24
  %28 = load i32* %i, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %30
  %32 = load i32* %31, align 4
  %33 = load i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %34
  %36 = load i32* %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %27
  %39 = load i32* %j, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %j, align 4
  br label %41

; <label>:41                                      ; preds = %38, %27
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %24

; <label>:45                                      ; preds = %24
  %46 = load i32* %j, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %45
  %49 = load i32* %j, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str16, i32 0, i32 0), i64 %50)
  br label %55

; <label>:52                                      ; preds = %45
  %53 = load i32* @passed_verification, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @passed_verification, align 4
  br label %55

; <label>:55                                      ; preds = %52, %48
  ret void
}

; Function Attrs: nounwind uwtable
define void @rank(i32 %iteration) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %key_buff_ptr = alloca i32*, align 8
  %key_buff_ptr2 = alloca i32*, align 8
  %shift = alloca i32, align 4
  %key = alloca i32, align 4
  %key_rank = alloca i32, align 4
  %failed = alloca i32, align 4
  store i32 %iteration, i32* %1, align 4
  store i32 2, i32* %shift, align 4
  %2 = load i32* %1, align 4
  %3 = load i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %4
  store i32 %2, i32* %5, align 4
  %6 = load i32* %1, align 4
  %7 = sub nsw i32 2048, %6
  %8 = load i32* %1, align 4
  %9 = add nsw i32 %8, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %10
  store i32 %7, i32* %11, align 4
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %26, %0
  %13 = load i32* %i, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %29

; <label>:15                                      ; preds = %12
  %16 = load i32* %i, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32]* @test_index_array, i32 0, i64 %17
  %19 = load i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %20
  %22 = load i32* %21, align 4
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i32]* @partial_verify_vals, i32 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

; <label>:26                                      ; preds = %15
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %12

; <label>:29                                      ; preds = %12
  store i32 0, i32* %i, align 4
  br label %30

; <label>:30                                      ; preds = %37, %29
  %31 = load i32* %i, align 4
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %30
  %34 = load i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x i32]* @bucket_size, i32 0, i64 %35
  store i32 0, i32* %36, align 4
  br label %37

; <label>:37                                      ; preds = %33
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %30

; <label>:40                                      ; preds = %30
  store i32 0, i32* %i, align 4
  br label %41

; <label>:41                                      ; preds = %55, %40
  %42 = load i32* %i, align 4
  %43 = icmp slt i32 %42, 65536
  br i1 %43, label %44, label %58

; <label>:44                                      ; preds = %41
  %45 = load i32* %i, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %46
  %48 = load i32* %47, align 4
  %49 = load i32* %shift, align 4
  %50 = ashr i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [512 x i32]* @bucket_size, i32 0, i64 %51
  %53 = load i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

; <label>:55                                      ; preds = %44
  %56 = load i32* %i, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %i, align 4
  br label %41

; <label>:58                                      ; preds = %41
  store i32 0, i32* getelementptr inbounds ([512 x i32]* @bucket_ptrs, i32 0, i64 0), align 4
  store i32 1, i32* %i, align 4
  br label %59

; <label>:59                                      ; preds = %77, %58
  %60 = load i32* %i, align 4
  %61 = icmp slt i32 %60, 512
  br i1 %61, label %62, label %80

; <label>:62                                      ; preds = %59
  %63 = load i32* %i, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i32 0, i64 %65
  %67 = load i32* %66, align 4
  %68 = load i32* %i, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [512 x i32]* @bucket_size, i32 0, i64 %70
  %72 = load i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = load i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i32 0, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

; <label>:77                                      ; preds = %62
  %78 = load i32* %i, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %i, align 4
  br label %59

; <label>:80                                      ; preds = %59
  store i32 0, i32* %i, align 4
  br label %81

; <label>:81                                      ; preds = %99, %80
  %82 = load i32* %i, align 4
  %83 = icmp slt i32 %82, 65536
  br i1 %83, label %84, label %102

; <label>:84                                      ; preds = %81
  %85 = load i32* %i, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [65536 x i32]* @key_array, i32 0, i64 %86
  %88 = load i32* %87, align 4
  store i32 %88, i32* %key, align 4
  %89 = load i32* %key, align 4
  %90 = load i32* %key, align 4
  %91 = load i32* %shift, align 4
  %92 = ashr i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i32 0, i64 %93
  %95 = load i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds [65536 x i32]* @key_buff2, i32 0, i64 %97
  store i32 %89, i32* %98, align 4
  br label %99

; <label>:99                                      ; preds = %84
  %100 = load i32* %i, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %i, align 4
  br label %81

; <label>:102                                     ; preds = %81
  store i32* getelementptr inbounds ([65536 x i32]* @key_buff2, i32 0, i32 0), i32** %key_buff_ptr2, align 8
  store i32 0, i32* %i, align 4
  br label %103

; <label>:103                                     ; preds = %110, %102
  %104 = load i32* %i, align 4
  %105 = icmp slt i32 %104, 2048
  br i1 %105, label %106, label %113

; <label>:106                                     ; preds = %103
  %107 = load i32* %i, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2048 x i32]* @key_buff1, i32 0, i64 %108
  store i32 0, i32* %109, align 4
  br label %110

; <label>:110                                     ; preds = %106
  %111 = load i32* %i, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4
  br label %103

; <label>:113                                     ; preds = %103
  store i32* getelementptr inbounds ([2048 x i32]* @key_buff1, i32 0, i32 0), i32** %key_buff_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %114

; <label>:114                                     ; preds = %128, %113
  %115 = load i32* %i, align 4
  %116 = icmp slt i32 %115, 65536
  br i1 %116, label %117, label %131

; <label>:117                                     ; preds = %114
  %118 = load i32* %i, align 4
  %119 = sext i32 %118 to i64
  %120 = load i32** %key_buff_ptr2, align 8
  %121 = getelementptr inbounds i32* %120, i64 %119
  %122 = load i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i32** %key_buff_ptr, align 8
  %125 = getelementptr inbounds i32* %124, i64 %123
  %126 = load i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

; <label>:128                                     ; preds = %117
  %129 = load i32* %i, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4
  br label %114

; <label>:131                                     ; preds = %114
  store i32 0, i32* %i, align 4
  br label %132

; <label>:132                                     ; preds = %148, %131
  %133 = load i32* %i, align 4
  %134 = icmp slt i32 %133, 2047
  br i1 %134, label %135, label %151

; <label>:135                                     ; preds = %132
  %136 = load i32* %i, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32** %key_buff_ptr, align 8
  %139 = getelementptr inbounds i32* %138, i64 %137
  %140 = load i32* %139, align 4
  %141 = load i32* %i, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = load i32** %key_buff_ptr, align 8
  %145 = getelementptr inbounds i32* %144, i64 %143
  %146 = load i32* %145, align 4
  %147 = add nsw i32 %146, %140
  store i32 %147, i32* %145, align 4
  br label %148

; <label>:148                                     ; preds = %135
  %149 = load i32* %i, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %i, align 4
  br label %132

; <label>:151                                     ; preds = %132
  store i32 0, i32* %i, align 4
  br label %152

; <label>:152                                     ; preds = %211, %151
  %153 = load i32* %i, align 4
  %154 = icmp slt i32 %153, 5
  br i1 %154, label %155, label %214

; <label>:155                                     ; preds = %152
  %156 = load i32* %i, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [5 x i32]* @partial_verify_vals, i32 0, i64 %157
  %159 = load i32* %158, align 4
  store i32 %159, i32* %k, align 4
  %160 = load i32* %k, align 4
  %161 = icmp slt i32 0, %160
  br i1 %161, label %162, label %210

; <label>:162                                     ; preds = %155
  %163 = load i32* %k, align 4
  %164 = icmp sle i32 %163, 65535
  br i1 %164, label %165, label %210

; <label>:165                                     ; preds = %162
  %166 = load i32* %k, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = load i32** %key_buff_ptr, align 8
  %170 = getelementptr inbounds i32* %169, i64 %168
  %171 = load i32* %170, align 4
  store i32 %171, i32* %key_rank, align 4
  store i32 0, i32* %failed, align 4
  %172 = load i32* %i, align 4
  %173 = icmp sle i32 %172, 2
  br i1 %173, label %174, label %188

; <label>:174                                     ; preds = %165
  %175 = load i32* %key_rank, align 4
  %176 = load i32* %i, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [5 x i32]* @test_rank_array, i32 0, i64 %177
  %179 = load i32* %178, align 4
  %180 = load i32* %1, align 4
  %181 = add nsw i32 %179, %180
  %182 = icmp ne i32 %175, %181
  br i1 %182, label %183, label %184

; <label>:183                                     ; preds = %174
  store i32 1, i32* %failed, align 4
  br label %187

; <label>:184                                     ; preds = %174
  %185 = load i32* @passed_verification, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @passed_verification, align 4
  br label %187

; <label>:187                                     ; preds = %184, %183
  br label %202

; <label>:188                                     ; preds = %165
  %189 = load i32* %key_rank, align 4
  %190 = load i32* %i, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [5 x i32]* @test_rank_array, i32 0, i64 %191
  %193 = load i32* %192, align 4
  %194 = load i32* %1, align 4
  %195 = sub nsw i32 %193, %194
  %196 = icmp ne i32 %189, %195
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %188
  store i32 1, i32* %failed, align 4
  br label %201

; <label>:198                                     ; preds = %188
  %199 = load i32* @passed_verification, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @passed_verification, align 4
  br label %201

; <label>:201                                     ; preds = %198, %197
  br label %202

; <label>:202                                     ; preds = %201, %187
  %203 = load i32* %failed, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %209

; <label>:205                                     ; preds = %202
  %206 = load i32* %1, align 4
  %207 = load i32* %i, align 4
  %208 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str117, i32 0, i32 0), i32 %206, i32 %207)
  br label %209

; <label>:209                                     ; preds = %205, %202
  br label %210

; <label>:210                                     ; preds = %209, %162, %155
  br label %211

; <label>:211                                     ; preds = %210
  %212 = load i32* %i, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %i, align 4
  br label %152

; <label>:214                                     ; preds = %152
  %215 = load i32* %1, align 4
  %216 = icmp eq i32 %215, 10
  br i1 %216, label %217, label %219

; <label>:217                                     ; preds = %214
  %218 = load i32** %key_buff_ptr, align 8
  store i32* %218, i32** @key_buff_ptr_global, align 8
  br label %219

; <label>:219                                     ; preds = %217, %214
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %iteration = alloca i32, align 4
  %timer_on = alloca i32, align 4
  %timecounter = alloca double, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %t_total = alloca double, align 8
  %t_percent = alloca double, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %timer_on, align 4
  %4 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str319, i32 0, i32 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** %fp, align 8
  %5 = icmp ne %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** %fp, align 8
  %8 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 1, i32* %timer_on, align 4
  br label %9

; <label>:9                                       ; preds = %6, %0
  call void @timer_clear(i32 0)
  %10 = load i32* %timer_on, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  call void @timer_clear(i32 1)
  call void @timer_clear(i32 2)
  call void @timer_clear(i32 3)
  br label %13

; <label>:13                                      ; preds = %12, %9
  %14 = load i32* %timer_on, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void @timer_start(i32 3)
  br label %17

; <label>:17                                      ; preds = %16, %13
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %36, %17
  %19 = load i32* %i, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %39

; <label>:21                                      ; preds = %18
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i32]* @S_test_index_array, i32 0, i64 %23
  %25 = load i32* %24, align 4
  %26 = load i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32]* @test_index_array, i32 0, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32]* @S_test_rank_array, i32 0, i64 %30
  %32 = load i32* %31, align 4
  %33 = load i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32]* @test_rank_array, i32 0, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

; <label>:36                                      ; preds = %21
  %37 = load i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %18

; <label>:39                                      ; preds = %18
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str420, i32 0, i32 0))
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str521, i32 0, i32 0), i64 65536, i32 83)
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str622, i32 0, i32 0), i32 10)
  %43 = load i32* %timer_on, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %39
  call void @timer_start(i32 1)
  br label %46

; <label>:46                                      ; preds = %45, %39
  call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000)
  %47 = load i32* %timer_on, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  call void @timer_stop(i32 1)
  br label %50

; <label>:50                                      ; preds = %49, %46
  call void @rank(i32 1)
  store i32 0, i32* @passed_verification, align 4
  call void @timer_start(i32 0)
  store i32 1, i32* %iteration, align 4
  br label %51

; <label>:51                                      ; preds = %56, %50
  %52 = load i32* %iteration, align 4
  %53 = icmp sle i32 %52, 10
  br i1 %53, label %54, label %59

; <label>:54                                      ; preds = %51
  %55 = load i32* %iteration, align 4
  call void @rank(i32 %55)
  br label %56

; <label>:56                                      ; preds = %54
  %57 = load i32* %iteration, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %iteration, align 4
  br label %51

; <label>:59                                      ; preds = %51
  call void @timer_stop(i32 0)
  %60 = call double @timer_read(i32 0)
  store double %60, double* %timecounter, align 8
  %61 = load i32* %timer_on, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %59
  call void @timer_start(i32 2)
  br label %64

; <label>:64                                      ; preds = %63, %59
  call void @full_verify()
  %65 = load i32* %timer_on, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %64
  call void @timer_stop(i32 2)
  br label %68

; <label>:68                                      ; preds = %67, %64
  %69 = load i32* %timer_on, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  call void @timer_stop(i32 3)
  br label %72

; <label>:72                                      ; preds = %71, %68
  %73 = load i32* @passed_verification, align 4
  %74 = icmp ne i32 %73, 51
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %72
  store i32 0, i32* @passed_verification, align 4
  br label %76

; <label>:76                                      ; preds = %75, %72
  %77 = load double* %timecounter, align 8
  %78 = load double* %timecounter, align 8
  %79 = fdiv double 6.553600e+05, %78
  %80 = fdiv double %79, 1.000000e+06
  %81 = load i32* @passed_verification, align 4
  call void @c_print_results(i8* getelementptr inbounds ([3 x i8]* @.str723, i32 0, i32 0), i8 signext 83, i32 1024, i32 64, i32 0, i32 10, double %77, double %80, i8* getelementptr inbounds ([12 x i8]* @.str824, i32 0, i32 0), i32 %81, i8* getelementptr inbounds ([6 x i8]* @.str925, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1026, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1228, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1329, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1430, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1531, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1632, i32 0, i32 0))
  %82 = load i32* %timer_on, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

; <label>:84                                      ; preds = %76
  %85 = call double @timer_read(i32 3)
  store double %85, double* %t_total, align 8
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str17, i32 0, i32 0))
  %87 = load double* %t_total, align 8
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), double %87)
  %89 = load double* %t_total, align 8
  %90 = fcmp oeq double %89, 0.000000e+00
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  store double 1.000000e+00, double* %t_total, align 8
  br label %92

; <label>:92                                      ; preds = %91, %84
  %93 = call double @timer_read(i32 1)
  store double %93, double* %timecounter, align 8
  %94 = load double* %timecounter, align 8
  %95 = load double* %t_total, align 8
  %96 = fdiv double %94, %95
  %97 = fmul double %96, 1.000000e+02
  store double %97, double* %t_percent, align 8
  %98 = load double* %timecounter, align 8
  %99 = load double* %t_percent, align 8
  %100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str19, i32 0, i32 0), double %98, double %99)
  %101 = call double @timer_read(i32 0)
  store double %101, double* %timecounter, align 8
  %102 = load double* %timecounter, align 8
  %103 = load double* %t_total, align 8
  %104 = fdiv double %102, %103
  %105 = fmul double %104, 1.000000e+02
  store double %105, double* %t_percent, align 8
  %106 = load double* %timecounter, align 8
  %107 = load double* %t_percent, align 8
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str20, i32 0, i32 0), double %106, double %107)
  %109 = call double @timer_read(i32 2)
  store double %109, double* %timecounter, align 8
  %110 = load double* %timecounter, align 8
  %111 = load double* %t_total, align 8
  %112 = fdiv double %110, %111
  %113 = fmul double %112, 1.000000e+02
  store double %113, double* %t_percent, align 8
  %114 = load double* %timecounter, align 8
  %115 = load double* %t_percent, align 8
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str21, i32 0, i32 0), double %114, double %115)
  br label %117

; <label>:117                                     ; preds = %92, %76
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %verified, i8* %npbversion, i8* %compiletime, i8* %cs1, i8* %cs2, i8* %cs3, i8* %cs4, i8* %cs5, i8* %cs6, i8* %cs7) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %size = alloca [16 x i8], align 16
  %j = alloca i32, align 4
  store i8* %name, i8** %1, align 8
  store i8 %class, i8* %2, align 1
  store i32 %n1, i32* %3, align 4
  store i32 %n2, i32* %4, align 4
  store i32 %n3, i32* %5, align 4
  store i32 %niter, i32* %6, align 4
  store double %t, double* %7, align 8
  store double %mops, double* %8, align 8
  store i8* %optype, i8** %9, align 8
  store i32 %verified, i32* %10, align 4
  store i8* %npbversion, i8** %11, align 8
  store i8* %compiletime, i8** %12, align 8
  store i8* %cs1, i8** %13, align 8
  store i8* %cs2, i8** %14, align 8
  store i8* %cs3, i8** %15, align 8
  store i8* %cs4, i8** %16, align 8
  store i8* %cs5, i8** %17, align 8
  store i8* %cs6, i8** %18, align 8
  store i8* %cs7, i8** %19, align 8
  %20 = load i8** %1, align 8
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str33, i32 0, i32 0), i8* %20)
  %22 = load i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str134, i32 0, i32 0), i32 %23)
  %25 = load i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %71

; <label>:27                                      ; preds = %0
  %28 = load i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71

; <label>:30                                      ; preds = %27
  %31 = load i8** %1, align 8
  %32 = getelementptr inbounds i8* %31, i64 0
  %33 = load i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 69
  br i1 %35, label %36, label %67

; <label>:36                                      ; preds = %30
  %37 = load i8** %1, align 8
  %38 = getelementptr inbounds i8* %37, i64 1
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 80
  br i1 %41, label %42, label %67

; <label>:42                                      ; preds = %36
  %43 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0
  %44 = load i32* %3, align 4
  %45 = sitofp i32 %44 to double
  %46 = call double @pow(double 2.000000e+00, double %45) #3
  %47 = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8]* @.str235, i32 0, i32 0), double %46) #3
  store i32 14, i32* %j, align 4
  %48 = load i32* %j, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %49
  %51 = load i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %60

; <label>:54                                      ; preds = %42
  %55 = load i32* %j, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %56
  store i8 32, i8* %57, align 1
  %58 = load i32* %j, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %j, align 4
  br label %60

; <label>:60                                      ; preds = %54, %42
  %61 = load i32* %j, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str336, i32 0, i32 0), i8* %65)
  br label %70

; <label>:67                                      ; preds = %36, %30
  %68 = load i32* %3, align 4
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str437, i32 0, i32 0), i32 %68)
  br label %70

; <label>:70                                      ; preds = %67, %60
  br label %76

; <label>:71                                      ; preds = %27, %0
  %72 = load i32* %3, align 4
  %73 = load i32* %4, align 4
  %74 = load i32* %5, align 4
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str538, i32 0, i32 0), i32 %72, i32 %73, i32 %74)
  br label %76

; <label>:76                                      ; preds = %71, %70
  %77 = load i32* %6, align 4
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str639, i32 0, i32 0), i32 %77)
  %79 = load i8** %9, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str740, i32 0, i32 0), i8* %79)
  %81 = load i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %76
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str841, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str942, i32 0, i32 0))
  br label %87

; <label>:85                                      ; preds = %76
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str841, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1043, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %85, %83
  %88 = load i8** %11, align 8
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1144, i32 0, i32 0), i8* %88)
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([195 x i8]* @.str1245, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define void @wtime_(double* %t) #0 {
  %1 = alloca double*, align 8
  %tv = alloca %struct.timeval, align 8
  store double* %t, double** %1, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #3
  %3 = load i32* @wtime_.sec, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %7 = load i64* %6, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @wtime_.sec, align 4
  br label %9

; <label>:9                                       ; preds = %5, %0
  %10 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %11 = load i64* %10, align 8
  %12 = load i32* @wtime_.sec, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %11, %13
  %15 = sitofp i64 %14 to double
  %16 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fmul double 1.000000e-06, %18
  %20 = fadd double %15, %19
  %21 = load double** %1, align 8
  store double %20, double* %21, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
