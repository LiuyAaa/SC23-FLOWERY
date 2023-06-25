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
@.str5 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str8 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str12 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"\0A Compile options:\0A\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str17 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@.str20 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c" Center for Manycore Programming\0A\00", align 1
@.str23 = private unnamed_addr constant [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", align 1
@.str24 = private unnamed_addr constant [24 x i8] c" http://aces.snu.ac.kr\0A\00", align 1
@.str25 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@elapsed = internal global [64 x double] zeroinitializer, align 16
@start = internal global [64 x double] zeroinitializer, align 16
@main.dum = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@.str26 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str329 = private unnamed_addr constant [58 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\0A\00", align 1
@.str430 = private unnamed_addr constant [44 x i8] c"\0A Number of random numbers generated: %15s\0A\00", align 1
@x = internal global [131072 x double] zeroinitializer, align 16
@q = internal global [10 x double] zeroinitializer, align 16
@.str531 = private unnamed_addr constant [25 x i8] c"\0AEP Benchmark Results:\0A\0A\00", align 1
@.str632 = private unnamed_addr constant [11 x i8] c"N = 2^%5d\0A\00", align 1
@.str733 = private unnamed_addr constant [30 x i8] c"No. Gaussian Pairs = %15.0lf\0A\00", align 1
@.str834 = private unnamed_addr constant [26 x i8] c"Sums = %25.15lE %25.15lE\0A\00", align 1
@.str935 = private unnamed_addr constant [10 x i8] c"Counts: \0A\00", align 1
@.str1036 = private unnamed_addr constant [12 x i8] c"%3d%15.0lf\0A\00", align 1
@.str1137 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str1238 = private unnamed_addr constant [25 x i8] c"Random numbers generated\00", align 1
@.str1339 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str1440 = private unnamed_addr constant [12 x i8] c"14 Feb 2018\00", align 1
@.str1541 = private unnamed_addr constant [34 x i8] c"$(LLFI_BUILD_ROOT)/llvm/bin/clang\00", align 1
@.str1642 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str1743 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str1844 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str1945 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str2046 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str2147 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@.str2248 = private unnamed_addr constant [34 x i8] c"\0ATotal time:     %9.3lf (%6.2lf)\0A\00", align 1
@.str2349 = private unnamed_addr constant [33 x i8] c"Gaussian pairs: %9.3lf (%6.2lf)\0A\00", align 1
@.str2450 = private unnamed_addr constant [33 x i8] c"Random numbers: %9.3lf (%6.2lf)\0A\00", align 1
@.str51 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str152 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str253 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str354 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str455 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str556 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str657 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str758 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str859 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str960 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1061 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1162 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1263 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
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
  %47 = load double* %7, align 8
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i32 0, i32 0), double %47)
  %49 = load double* %8, align 8
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0), double %49)
  %51 = load i8** %9, align 8
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str7, i32 0, i32 0), i8* %51)
  %53 = load i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %44
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str8, i32 0, i32 0))
  br label %65

; <label>:57                                      ; preds = %44
  %58 = load i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str9, i32 0, i32 0))
  br label %64

; <label>:62                                      ; preds = %57
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str10, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %62, %60
  br label %65

; <label>:65                                      ; preds = %64, %55
  %66 = load i8** %11, align 8
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str11, i32 0, i32 0), i8* %66)
  %68 = load i8** %12, align 8
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str12, i32 0, i32 0), i8* %68)
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str13, i32 0, i32 0))
  %71 = load i8** %13, align 8
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0), i8* %71)
  %73 = load i8** %14, align 8
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), i8* %73)
  %75 = load i8** %15, align 8
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %75)
  %77 = load i8** %16, align 8
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str17, i32 0, i32 0), i8* %77)
  %79 = load i8** %17, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), i8* %79)
  %81 = load i8** %18, align 8
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str19, i32 0, i32 0), i8* %81)
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str20, i32 0, i32 0))
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0))
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str22, i32 0, i32 0))
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0))
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str24, i32 0, i32 0))
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str25, i32 0, i32 0))
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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %Mops = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %t4 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %tm = alloca double, align 8
  %an = alloca double, align 8
  %tt = alloca double, align 8
  %gc = alloca double, align 8
  %sx_verify_value = alloca double, align 8
  %sy_verify_value = alloca double, align 8
  %sx_err = alloca double, align 8
  %sy_err = alloca double, align 8
  %np = alloca i32, align 4
  %i = alloca i32, align 4
  %ik = alloca i32, align 4
  %kk = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %nit = alloca i32, align 4
  %k_offset = alloca i32, align 4
  %j = alloca i32, align 4
  %verified = alloca i32, align 4
  %timers_enabled = alloca i32, align 4
  %dum = alloca [3 x double], align 16
  %size = alloca [16 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1
  %2 = bitcast [3 x double]* %dum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([3 x double]* @main.dum to i8*), i64 24, i32 16, i1 false)
  %3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str127, i32 0, i32 0))
  store %struct._IO_FILE* %3, %struct._IO_FILE** %fp, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i32 0, i32* %timers_enabled, align 4
  br label %9

; <label>:6                                       ; preds = %0
  store i32 1, i32* %timers_enabled, align 4
  %7 = load %struct._IO_FILE** %fp, align 8
  %8 = call i32 @fclose(%struct._IO_FILE* %7)
  br label %9

; <label>:9                                       ; preds = %6, %5
  %10 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0
  %11 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2
  %12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str228, i32 0, i32 0), double %11) #2
  store i32 14, i32* %j, align 4
  %13 = load i32* %j, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %14
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %9
  %20 = load i32* %j, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %j, align 4
  br label %22

; <label>:22                                      ; preds = %19, %9
  %23 = load i32* %j, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str329, i32 0, i32 0))
  %28 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str430, i32 0, i32 0), i8* %28)
  store i32 0, i32* %verified, align 4
  store i32 512, i32* %np, align 4
  %30 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0
  %31 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1
  %32 = load double* %31, align 8
  %33 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2
  call void @vranlc(i32 0, double* %30, double %32, double* %33)
  %34 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1
  %35 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2
  %36 = load double* %35, align 8
  %37 = call double @randlc(double* %34, double %36)
  %38 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0
  store double %37, double* %38, align 8
  store i32 0, i32* %i, align 4
  br label %39

; <label>:39                                      ; preds = %46, %22
  %40 = load i32* %i, align 4
  %41 = icmp slt i32 %40, 131072
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %39
  %43 = load i32* %i, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %44
  store double -1.000000e+99, double* %45, align 8
  br label %46

; <label>:46                                      ; preds = %42
  %47 = load i32* %i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4
  br label %39

; <label>:49                                      ; preds = %39
  %50 = call double @fabs(double 1.000000e+00) #5
  %51 = call double @sqrt(double %50) #2
  %52 = call double @log(double %51) #2
  store double %52, double* %Mops, align 8
  call void @timer_clear(i32 0)
  call void @timer_clear(i32 1)
  call void @timer_clear(i32 2)
  call void @timer_start(i32 0)
  store double 0x41D2309CE5400000, double* %t1, align 8
  call void @vranlc(i32 0, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0))
  store double 0x41D2309CE5400000, double* %t1, align 8
  store i32 0, i32* %i, align 4
  br label %53

; <label>:53                                      ; preds = %59, %49
  %54 = load i32* %i, align 4
  %55 = icmp slt i32 %54, 17
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %53
  %57 = load double* %t1, align 8
  %58 = call double @randlc(double* %t1, double %57)
  store double %58, double* %t2, align 8
  br label %59

; <label>:59                                      ; preds = %56
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %53

; <label>:62                                      ; preds = %53
  %63 = load double* %t1, align 8
  store double %63, double* %an, align 8
  store double 0x41B033C4D7000000, double* %tt, align 8
  store double 0.000000e+00, double* %gc, align 8
  store double 0.000000e+00, double* %sx, align 8
  store double 0.000000e+00, double* %sy, align 8
  store i32 0, i32* %i, align 4
  br label %64

; <label>:64                                      ; preds = %71, %62
  %65 = load i32* %i, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %74

; <label>:67                                      ; preds = %64
  %68 = load i32* %i, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %69
  store double 0.000000e+00, double* %70, align 8
  br label %71

; <label>:71                                      ; preds = %67
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %64

; <label>:74                                      ; preds = %64
  store i32 -1, i32* %k_offset, align 4
  store i32 1, i32* %k, align 4
  br label %75

; <label>:75                                      ; preds = %199, %74
  %76 = load i32* %k, align 4
  %77 = load i32* %np, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %202

; <label>:79                                      ; preds = %75
  %80 = load i32* %k_offset, align 4
  %81 = load i32* %k, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %kk, align 4
  store double 0x41B033C4D7000000, double* %t1, align 8
  %83 = load double* %an, align 8
  store double %83, double* %t2, align 8
  store i32 1, i32* %i, align 4
  br label %84

; <label>:84                                      ; preds = %105, %79
  %85 = load i32* %i, align 4
  %86 = icmp sle i32 %85, 100
  br i1 %86, label %87, label %108

; <label>:87                                      ; preds = %84
  %88 = load i32* %kk, align 4
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %ik, align 4
  %90 = load i32* %ik, align 4
  %91 = mul nsw i32 2, %90
  %92 = load i32* %kk, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

; <label>:94                                      ; preds = %87
  %95 = load double* %t2, align 8
  %96 = call double @randlc(double* %t1, double %95)
  store double %96, double* %t3, align 8
  br label %97

; <label>:97                                      ; preds = %94, %87
  %98 = load i32* %ik, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %97
  br label %108

; <label>:101                                     ; preds = %97
  %102 = load double* %t2, align 8
  %103 = call double @randlc(double* %t2, double %102)
  store double %103, double* %t3, align 8
  %104 = load i32* %ik, align 4
  store i32 %104, i32* %kk, align 4
  br label %105

; <label>:105                                     ; preds = %101
  %106 = load i32* %i, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i, align 4
  br label %84

; <label>:108                                     ; preds = %100, %84
  %109 = load i32* %timers_enabled, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %108
  call void @timer_start(i32 2)
  br label %112

; <label>:112                                     ; preds = %111, %108
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0))
  %113 = load i32* %timers_enabled, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115                                     ; preds = %112
  call void @timer_stop(i32 2)
  br label %116

; <label>:116                                     ; preds = %115, %112
  %117 = load i32* %timers_enabled, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %116
  call void @timer_start(i32 1)
  br label %120

; <label>:120                                     ; preds = %119, %116
  store i32 0, i32* %i, align 4
  br label %121

; <label>:121                                     ; preds = %191, %120
  %122 = load i32* %i, align 4
  %123 = icmp slt i32 %122, 65536
  br i1 %123, label %124, label %194

; <label>:124                                     ; preds = %121
  %125 = load i32* %i, align 4
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %127
  %129 = load double* %128, align 8
  %130 = fmul double 2.000000e+00, %129
  %131 = fsub double %130, 1.000000e+00
  store double %131, double* %x1, align 8
  %132 = load i32* %i, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %135
  %137 = load double* %136, align 8
  %138 = fmul double 2.000000e+00, %137
  %139 = fsub double %138, 1.000000e+00
  store double %139, double* %x2, align 8
  %140 = load double* %x1, align 8
  %141 = load double* %x1, align 8
  %142 = fmul double %140, %141
  %143 = load double* %x2, align 8
  %144 = load double* %x2, align 8
  %145 = fmul double %143, %144
  %146 = fadd double %142, %145
  store double %146, double* %t1, align 8
  %147 = load double* %t1, align 8
  %148 = fcmp ole double %147, 1.000000e+00
  br i1 %148, label %149, label %190

; <label>:149                                     ; preds = %124
  %150 = load double* %t1, align 8
  %151 = call double @log(double %150) #2
  %152 = fmul double -2.000000e+00, %151
  %153 = load double* %t1, align 8
  %154 = fdiv double %152, %153
  %155 = call double @sqrt(double %154) #2
  store double %155, double* %t2, align 8
  %156 = load double* %x1, align 8
  %157 = load double* %t2, align 8
  %158 = fmul double %156, %157
  store double %158, double* %t3, align 8
  %159 = load double* %x2, align 8
  %160 = load double* %t2, align 8
  %161 = fmul double %159, %160
  store double %161, double* %t4, align 8
  %162 = load double* %t3, align 8
  %163 = call double @fabs(double %162) #5
  %164 = load double* %t4, align 8
  %165 = call double @fabs(double %164) #5
  %166 = fcmp ogt double %163, %165
  br i1 %166, label %167, label %170

; <label>:167                                     ; preds = %149
  %168 = load double* %t3, align 8
  %169 = call double @fabs(double %168) #5
  br label %173

; <label>:170                                     ; preds = %149
  %171 = load double* %t4, align 8
  %172 = call double @fabs(double %171) #5
  br label %173

; <label>:173                                     ; preds = %170, %167
  %174 = phi double [ %169, %167 ], [ %172, %170 ]
  %175 = fptosi double %174 to i32
  store i32 %175, i32* %l, align 4
  %176 = load i32* %l, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %177
  %179 = load double* %178, align 8
  %180 = fadd double %179, 1.000000e+00
  %181 = load i32* %l, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %182
  store double %180, double* %183, align 8
  %184 = load double* %sx, align 8
  %185 = load double* %t3, align 8
  %186 = fadd double %184, %185
  store double %186, double* %sx, align 8
  %187 = load double* %sy, align 8
  %188 = load double* %t4, align 8
  %189 = fadd double %187, %188
  store double %189, double* %sy, align 8
  br label %190

; <label>:190                                     ; preds = %173, %124
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32* %i, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4
  br label %121

; <label>:194                                     ; preds = %121
  %195 = load i32* %timers_enabled, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %194
  call void @timer_stop(i32 1)
  br label %198

; <label>:198                                     ; preds = %197, %194
  br label %199

; <label>:199                                     ; preds = %198
  %200 = load i32* %k, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %k, align 4
  br label %75

; <label>:202                                     ; preds = %75
  store i32 0, i32* %i, align 4
  br label %203

; <label>:203                                     ; preds = %213, %202
  %204 = load i32* %i, align 4
  %205 = icmp slt i32 %204, 10
  br i1 %205, label %206, label %216

; <label>:206                                     ; preds = %203
  %207 = load double* %gc, align 8
  %208 = load i32* %i, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %209
  %211 = load double* %210, align 8
  %212 = fadd double %207, %211
  store double %212, double* %gc, align 8
  br label %213

; <label>:213                                     ; preds = %206
  %214 = load i32* %i, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %i, align 4
  br label %203

; <label>:216                                     ; preds = %203
  call void @timer_stop(i32 0)
  %217 = call double @timer_read(i32 0)
  store double %217, double* %tm, align 8
  store i32 0, i32* %nit, align 4
  store i32 1, i32* %verified, align 4
  store double 0xC0A65EA3B3DDC403, double* %sx_verify_value, align 8
  store double 0xC0B8B00DBDEA03C7, double* %sy_verify_value, align 8
  %218 = load i32* %verified, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %241

; <label>:220                                     ; preds = %216
  %221 = load double* %sx, align 8
  %222 = load double* %sx_verify_value, align 8
  %223 = fsub double %221, %222
  %224 = load double* %sx_verify_value, align 8
  %225 = fdiv double %223, %224
  %226 = call double @fabs(double %225) #5
  store double %226, double* %sx_err, align 8
  %227 = load double* %sy, align 8
  %228 = load double* %sy_verify_value, align 8
  %229 = fsub double %227, %228
  %230 = load double* %sy_verify_value, align 8
  %231 = fdiv double %229, %230
  %232 = call double @fabs(double %231) #5
  store double %232, double* %sy_err, align 8
  %233 = load double* %sx_err, align 8
  %234 = fcmp ole double %233, 1.000000e-08
  br i1 %234, label %235, label %238

; <label>:235                                     ; preds = %220
  %236 = load double* %sy_err, align 8
  %237 = fcmp ole double %236, 1.000000e-08
  br label %238

; <label>:238                                     ; preds = %235, %220
  %239 = phi i1 [ false, %220 ], [ %237, %235 ]
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %verified, align 4
  br label %241

; <label>:241                                     ; preds = %238, %216
  %242 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2
  %243 = load double* %tm, align 8
  %244 = fdiv double %242, %243
  %245 = fdiv double %244, 1.000000e+06
  store double %245, double* %Mops, align 8
  %246 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str531, i32 0, i32 0))
  %247 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str632, i32 0, i32 0), i32 25)
  %248 = load double* %gc, align 8
  %249 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str733, i32 0, i32 0), double %248)
  %250 = load double* %sx, align 8
  %251 = load double* %sy, align 8
  %252 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str834, i32 0, i32 0), double %250, double %251)
  %253 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str935, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %254

; <label>:254                                     ; preds = %264, %241
  %255 = load i32* %i, align 4
  %256 = icmp slt i32 %255, 10
  br i1 %256, label %257, label %267

; <label>:257                                     ; preds = %254
  %258 = load i32* %i, align 4
  %259 = load i32* %i, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %260
  %262 = load double* %261, align 8
  %263 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1036, i32 0, i32 0), i32 %258, double %262)
  br label %264

; <label>:264                                     ; preds = %257
  %265 = load i32* %i, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %i, align 4
  br label %254

; <label>:267                                     ; preds = %254
  %268 = load i32* %nit, align 4
  %269 = load double* %tm, align 8
  %270 = load double* %Mops, align 8
  %271 = load i32* %verified, align 4
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str1137, i32 0, i32 0), i8 signext 87, i32 26, i32 0, i32 0, i32 %268, double %269, double %270, i8* getelementptr inbounds ([25 x i8]* @.str1238, i32 0, i32 0), i32 %271, i8* getelementptr inbounds ([6 x i8]* @.str1339, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1440, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1541, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1642, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1743, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1844, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1945, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2046, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2147, i32 0, i32 0))
  %272 = load i32* %timers_enabled, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %300

; <label>:274                                     ; preds = %267
  %275 = load double* %tm, align 8
  %276 = fcmp ole double %275, 0.000000e+00
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %274
  store double 1.000000e+00, double* %tm, align 8
  br label %278

; <label>:278                                     ; preds = %277, %274
  %279 = call double @timer_read(i32 0)
  store double %279, double* %tt, align 8
  %280 = load double* %tt, align 8
  %281 = load double* %tt, align 8
  %282 = fmul double %281, 1.000000e+02
  %283 = load double* %tm, align 8
  %284 = fdiv double %282, %283
  %285 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2248, i32 0, i32 0), double %280, double %284)
  %286 = call double @timer_read(i32 1)
  store double %286, double* %tt, align 8
  %287 = load double* %tt, align 8
  %288 = load double* %tt, align 8
  %289 = fmul double %288, 1.000000e+02
  %290 = load double* %tm, align 8
  %291 = fdiv double %289, %290
  %292 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2349, i32 0, i32 0), double %287, double %291)
  %293 = call double @timer_read(i32 2)
  store double %293, double* %tt, align 8
  %294 = load double* %tt, align 8
  %295 = load double* %tt, align 8
  %296 = fmul double %295, 1.000000e+02
  %297 = load double* %tm, align 8
  %298 = fdiv double %296, %297
  %299 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2450, i32 0, i32 0), double %294, double %298)
  br label %300

; <label>:300                                     ; preds = %278, %267
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

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
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str51, i32 0, i32 0), i8* %20)
  %22 = load i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str152, i32 0, i32 0), i32 %23)
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
  %46 = call double @pow(double 2.000000e+00, double %45) #2
  %47 = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8]* @.str253, i32 0, i32 0), double %46) #2
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
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str354, i32 0, i32 0), i8* %65)
  br label %70

; <label>:67                                      ; preds = %36, %30
  %68 = load i32* %3, align 4
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str455, i32 0, i32 0), i32 %68)
  br label %70

; <label>:70                                      ; preds = %67, %60
  br label %76

; <label>:71                                      ; preds = %27, %0
  %72 = load i32* %3, align 4
  %73 = load i32* %4, align 4
  %74 = load i32* %5, align 4
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str556, i32 0, i32 0), i32 %72, i32 %73, i32 %74)
  br label %76

; <label>:76                                      ; preds = %71, %70
  %77 = load i32* %6, align 4
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str657, i32 0, i32 0), i32 %77)
  %79 = load i8** %9, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str758, i32 0, i32 0), i8* %79)
  %81 = load i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %76
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str960, i32 0, i32 0))
  br label %87

; <label>:85                                      ; preds = %76
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1061, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %85, %83
  %88 = load i8** %11, align 8
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1162, i32 0, i32 0), i8* %88)
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([195 x i8]* @.str1263, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define double @randlc(double* %x, double %a) #0 {
  %1 = alloca double*, align 8
  %2 = alloca double, align 8
  %r23 = alloca double, align 8
  %r46 = alloca double, align 8
  %t23 = alloca double, align 8
  %t46 = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %t4 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  store double* %x, double** %1, align 8
  store double %a, double* %2, align 8
  store double 0x3E80000000000000, double* %r23, align 8
  store double 0x3D10000000000000, double* %r46, align 8
  store double 8.388608e+06, double* %t23, align 8
  store double 0x42D0000000000000, double* %t46, align 8
  %3 = load double* %2, align 8
  %4 = fmul double 0x3E80000000000000, %3
  store double %4, double* %t1, align 8
  %5 = load double* %t1, align 8
  %6 = fptosi double %5 to i32
  %7 = sitofp i32 %6 to double
  store double %7, double* %a1, align 8
  %8 = load double* %2, align 8
  %9 = load double* %a1, align 8
  %10 = fmul double 8.388608e+06, %9
  %11 = fsub double %8, %10
  store double %11, double* %a2, align 8
  %12 = load double** %1, align 8
  %13 = load double* %12, align 8
  %14 = fmul double 0x3E80000000000000, %13
  store double %14, double* %t1, align 8
  %15 = load double* %t1, align 8
  %16 = fptosi double %15 to i32
  %17 = sitofp i32 %16 to double
  store double %17, double* %x1, align 8
  %18 = load double** %1, align 8
  %19 = load double* %18, align 8
  %20 = load double* %x1, align 8
  %21 = fmul double 8.388608e+06, %20
  %22 = fsub double %19, %21
  store double %22, double* %x2, align 8
  %23 = load double* %a1, align 8
  %24 = load double* %x2, align 8
  %25 = fmul double %23, %24
  %26 = load double* %a2, align 8
  %27 = load double* %x1, align 8
  %28 = fmul double %26, %27
  %29 = fadd double %25, %28
  store double %29, double* %t1, align 8
  %30 = load double* %t1, align 8
  %31 = fmul double 0x3E80000000000000, %30
  %32 = fptosi double %31 to i32
  %33 = sitofp i32 %32 to double
  store double %33, double* %t2, align 8
  %34 = load double* %t1, align 8
  %35 = load double* %t2, align 8
  %36 = fmul double 8.388608e+06, %35
  %37 = fsub double %34, %36
  store double %37, double* %z, align 8
  %38 = load double* %z, align 8
  %39 = fmul double 8.388608e+06, %38
  %40 = load double* %a2, align 8
  %41 = load double* %x2, align 8
  %42 = fmul double %40, %41
  %43 = fadd double %39, %42
  store double %43, double* %t3, align 8
  %44 = load double* %t3, align 8
  %45 = fmul double 0x3D10000000000000, %44
  %46 = fptosi double %45 to i32
  %47 = sitofp i32 %46 to double
  store double %47, double* %t4, align 8
  %48 = load double* %t3, align 8
  %49 = load double* %t4, align 8
  %50 = fmul double 0x42D0000000000000, %49
  %51 = fsub double %48, %50
  %52 = load double** %1, align 8
  store double %51, double* %52, align 8
  %53 = load double** %1, align 8
  %54 = load double* %53, align 8
  %55 = fmul double 0x3D10000000000000, %54
  store double %55, double* %r, align 8
  %56 = load double* %r, align 8
  ret double %56
}

; Function Attrs: nounwind uwtable
define void @vranlc(i32 %n, double* %x, double %a, double* %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %r23 = alloca double, align 8
  %r46 = alloca double, align 8
  %t23 = alloca double, align 8
  %t46 = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %t4 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %z = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store double* %x, double** %2, align 8
  store double %a, double* %3, align 8
  store double* %y, double** %4, align 8
  store double 0x3E80000000000000, double* %r23, align 8
  store double 0x3D10000000000000, double* %r46, align 8
  store double 8.388608e+06, double* %t23, align 8
  store double 0x42D0000000000000, double* %t46, align 8
  %5 = load double* %3, align 8
  %6 = fmul double 0x3E80000000000000, %5
  store double %6, double* %t1, align 8
  %7 = load double* %t1, align 8
  %8 = fptosi double %7 to i32
  %9 = sitofp i32 %8 to double
  store double %9, double* %a1, align 8
  %10 = load double* %3, align 8
  %11 = load double* %a1, align 8
  %12 = fmul double 8.388608e+06, %11
  %13 = fsub double %10, %12
  store double %13, double* %a2, align 8
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %67, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %1, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

; <label>:18                                      ; preds = %14
  %19 = load double** %2, align 8
  %20 = load double* %19, align 8
  %21 = fmul double 0x3E80000000000000, %20
  store double %21, double* %t1, align 8
  %22 = load double* %t1, align 8
  %23 = fptosi double %22 to i32
  %24 = sitofp i32 %23 to double
  store double %24, double* %x1, align 8
  %25 = load double** %2, align 8
  %26 = load double* %25, align 8
  %27 = load double* %x1, align 8
  %28 = fmul double 8.388608e+06, %27
  %29 = fsub double %26, %28
  store double %29, double* %x2, align 8
  %30 = load double* %a1, align 8
  %31 = load double* %x2, align 8
  %32 = fmul double %30, %31
  %33 = load double* %a2, align 8
  %34 = load double* %x1, align 8
  %35 = fmul double %33, %34
  %36 = fadd double %32, %35
  store double %36, double* %t1, align 8
  %37 = load double* %t1, align 8
  %38 = fmul double 0x3E80000000000000, %37
  %39 = fptosi double %38 to i32
  %40 = sitofp i32 %39 to double
  store double %40, double* %t2, align 8
  %41 = load double* %t1, align 8
  %42 = load double* %t2, align 8
  %43 = fmul double 8.388608e+06, %42
  %44 = fsub double %41, %43
  store double %44, double* %z, align 8
  %45 = load double* %z, align 8
  %46 = fmul double 8.388608e+06, %45
  %47 = load double* %a2, align 8
  %48 = load double* %x2, align 8
  %49 = fmul double %47, %48
  %50 = fadd double %46, %49
  store double %50, double* %t3, align 8
  %51 = load double* %t3, align 8
  %52 = fmul double 0x3D10000000000000, %51
  %53 = fptosi double %52 to i32
  %54 = sitofp i32 %53 to double
  store double %54, double* %t4, align 8
  %55 = load double* %t3, align 8
  %56 = load double* %t4, align 8
  %57 = fmul double 0x42D0000000000000, %56
  %58 = fsub double %55, %57
  %59 = load double** %2, align 8
  store double %58, double* %59, align 8
  %60 = load double** %2, align 8
  %61 = load double* %60, align 8
  %62 = fmul double 0x3D10000000000000, %61
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load double** %4, align 8
  %66 = getelementptr inbounds double* %65, i64 %64
  store double %62, double* %66, align 8
  br label %67

; <label>:67                                      ; preds = %18
  %68 = load i32* %i, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4
  br label %14

; <label>:70                                      ; preds = %14
  ret void
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* %t) #0 {
  %1 = alloca double*, align 8
  %tv = alloca %struct.timeval, align 8
  store double* %t, double** %1, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2
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
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
