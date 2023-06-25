; ModuleID = 'cg.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@timeron = internal global i32 0, align 4
@.str2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"benchmk\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"conjgd\00", align 1
@firstrow = internal global i32 0, align 4
@lastrow = internal global i32 0, align 4
@firstcol = internal global i32 0, align 4
@lastcol = internal global i32 0, align 4
@.str5 = private unnamed_addr constant [59 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - CG Benchmark\0A\0A\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c" Size: %11d\0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@naa = internal global i32 0, align 4
@nzz = internal global i32 0, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal global double 0.000000e+00, align 8
@a = internal global [89600 x double] zeroinitializer, align 16
@colidx = internal global [89600 x i32] zeroinitializer, align 16
@rowstr = internal global [1401 x i32] zeroinitializer, align 16
@arow = internal global [1400 x i32] zeroinitializer, align 16
@acol = internal global [11200 x i32] zeroinitializer, align 16
@aelt = internal global [11200 x double] zeroinitializer, align 16
@iv = internal global [1400 x i32] zeroinitializer, align 16
@x = internal global [1402 x double] zeroinitializer, align 16
@q = internal global [1402 x double] zeroinitializer, align 16
@z = internal global [1402 x double] zeroinitializer, align 16
@r = internal global [1402 x double] zeroinitializer, align 16
@p = internal global [1402 x double] zeroinitializer, align 16
@.str9 = private unnamed_addr constant [52 x i8] c"\0A   iteration           ||r||                 zeta\0A\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14E%20.13f\0A\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c" Benchmark completed\0A\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c" VERIFICATION SUCCESSFUL\0A\00", align 1
@.str13 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.13E\0A\00", align 1
@.str14 = private unnamed_addr constant [21 x i8] c" Error is   %20.13E\0A\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c" VERIFICATION FAILED\0A\00", align 1
@.str16 = private unnamed_addr constant [30 x i8] c" Zeta                %20.13E\0A\00", align 1
@.str17 = private unnamed_addr constant [30 x i8] c" The correct zeta is %20.13E\0A\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c" Problem size unknown\0A\00", align 1
@.str19 = private unnamed_addr constant [28 x i8] c" NO VERIFICATION PERFORMED\0A\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"13 Feb 2018\00", align 1
@.str24 = private unnamed_addr constant [34 x i8] c"$(LLFI_BUILD_ROOT)/llvm/bin/clang\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@.str31 = private unnamed_addr constant [25 x i8] c"  SECTION   Time (secs)\0A\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"  %8s:%9.3f\0A\00", align 1
@.str33 = private unnamed_addr constant [24 x i8] c"  %8s:%9.3f  (%6.2f%%)\0A\00", align 1
@.str34 = private unnamed_addr constant [30 x i8] c"    --> %8s:%9.3f  (%6.2f%%)\0A\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str36 = private unnamed_addr constant [46 x i8] c"Space for matrix elements exceeded in sparse\0A\00", align 1
@.str37 = private unnamed_addr constant [21 x i8] c"nza, nzmax = %d, %d\0A\00", align 1
@.str38 = private unnamed_addr constant [32 x i8] c"internal error in sparse: i=%d\0A\00", align 1
@.str39 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str140 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str241 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str342 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str443 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str544 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str645 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str746 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str847 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str948 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str1049 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str1150 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1251 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str1352 = private unnamed_addr constant [20 x i8] c"\0A Compile options:\0A\00", align 1
@.str1453 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str1554 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str1655 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str1756 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str1857 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str1958 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@.str2059 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str2160 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@.str2261 = private unnamed_addr constant [34 x i8] c" Center for Manycore Programming\0A\00", align 1
@.str2362 = private unnamed_addr constant [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", align 1
@.str2463 = private unnamed_addr constant [24 x i8] c" http://aces.snu.ac.kr\0A\00", align 1
@.str2564 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@elapsed = internal global [64 x double] zeroinitializer, align 16
@start = internal global [64 x double] zeroinitializer, align 16
@.str73 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str174 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str275 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str376 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str477 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str578 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str679 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str780 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str881 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str982 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1083 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1184 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1285 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
@wtime_.sec = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %it = alloca i32, align 4
  %zeta = alloca double, align 8
  %rnorm = alloca double, align 8
  %norm_temp1 = alloca double, align 8
  %norm_temp2 = alloca double, align 8
  %t = alloca double, align 8
  %mflops = alloca double, align 8
  %tmax = alloca double, align 8
  %Class = alloca i8, align 1
  %verified = alloca i32, align 4
  %zeta_verify_value = alloca double, align 8
  %epsilon = alloca double, align 8
  %err = alloca double, align 8
  %t_names = alloca [3 x i8*], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %9, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  call void @timer_clear(i32 %8)
  br label %9

; <label>:9                                       ; preds = %7
  %10 = load i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %4

; <label>:12                                      ; preds = %4
  %13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %fp, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %12
  store i32 1, i32* @timeron, align 4
  %16 = getelementptr inbounds [3 x i8*]* %t_names, i32 0, i64 0
  store i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [3 x i8*]* %t_names, i32 0, i64 1
  store i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [3 x i8*]* %t_names, i32 0, i64 2
  store i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i8** %18, align 8
  %19 = load %struct._IO_FILE** %fp, align 8
  %20 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %22

; <label>:21                                      ; preds = %12
  store i32 0, i32* @timeron, align 4
  br label %22

; <label>:22                                      ; preds = %21, %15
  call void @timer_start(i32 0)
  store i32 0, i32* @firstrow, align 4
  store i32 1399, i32* @lastrow, align 4
  store i32 0, i32* @firstcol, align 4
  store i32 1399, i32* @lastcol, align 4
  store i8 83, i8* %Class, align 1
  store double 0x402131C140145F48, double* %zeta_verify_value, align 8
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str5, i32 0, i32 0))
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 1400)
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str7, i32 0, i32 0), i32 15)
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  store i32 1400, i32* @naa, align 4
  store i32 89600, i32* @nzz, align 4
  store double 0x41B2B9B0A1000000, double* @tran, align 8
  store double 0x41D2309CE5400000, double* @amult, align 8
  %27 = load double* @amult, align 8
  %28 = call double @randlc(double* @tran, double %27)
  store double %28, double* %zeta, align 8
  %29 = load i32* @naa, align 4
  %30 = load i32* @nzz, align 4
  %31 = load i32* @firstrow, align 4
  %32 = load i32* @lastrow, align 4
  %33 = load i32* @firstcol, align 4
  %34 = load i32* @lastcol, align 4
  call void @makea(i32 %29, i32 %30, double* getelementptr inbounds ([89600 x double]* @a, i32 0, i32 0), i32* getelementptr inbounds ([89600 x i32]* @colidx, i32 0, i32 0), i32* getelementptr inbounds ([1401 x i32]* @rowstr, i32 0, i32 0), i32 %31, i32 %32, i32 %33, i32 %34, i32* getelementptr inbounds ([1400 x i32]* @arow, i32 0, i32 0), [8 x i32]* bitcast ([11200 x i32]* @acol to [8 x i32]*), [8 x double]* bitcast ([11200 x double]* @aelt to [8 x double]*), i32* getelementptr inbounds ([1400 x i32]* @iv, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %35

; <label>:35                                      ; preds = %69, %22
  %36 = load i32* %j, align 4
  %37 = load i32* @lastrow, align 4
  %38 = load i32* @firstrow, align 4
  %39 = sub nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %72

; <label>:42                                      ; preds = %35
  %43 = load i32* %j, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1401 x i32]* @rowstr, i32 0, i64 %44
  %46 = load i32* %45, align 4
  store i32 %46, i32* %k, align 4
  br label %47

; <label>:47                                      ; preds = %65, %42
  %48 = load i32* %k, align 4
  %49 = load i32* %j, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1401 x i32]* @rowstr, i32 0, i64 %51
  %53 = load i32* %52, align 4
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %68

; <label>:55                                      ; preds = %47
  %56 = load i32* %k, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [89600 x i32]* @colidx, i32 0, i64 %57
  %59 = load i32* %58, align 4
  %60 = load i32* @firstcol, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32* %k, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [89600 x i32]* @colidx, i32 0, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

; <label>:65                                      ; preds = %55
  %66 = load i32* %k, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %k, align 4
  br label %47

; <label>:68                                      ; preds = %47
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32* %j, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %j, align 4
  br label %35

; <label>:72                                      ; preds = %35
  store i32 0, i32* %i, align 4
  br label %73

; <label>:73                                      ; preds = %80, %72
  %74 = load i32* %i, align 4
  %75 = icmp slt i32 %74, 1401
  br i1 %75, label %76, label %83

; <label>:76                                      ; preds = %73
  %77 = load i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %78
  store double 1.000000e+00, double* %79, align 8
  br label %80

; <label>:80                                      ; preds = %76
  %81 = load i32* %i, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %i, align 4
  br label %73

; <label>:83                                      ; preds = %73
  store i32 0, i32* %j, align 4
  br label %84

; <label>:84                                      ; preds = %104, %83
  %85 = load i32* %j, align 4
  %86 = load i32* @lastcol, align 4
  %87 = load i32* @firstcol, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %107

; <label>:91                                      ; preds = %84
  %92 = load i32* %j, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1402 x double]* @q, i32 0, i64 %93
  store double 0.000000e+00, double* %94, align 8
  %95 = load i32* %j, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %96
  store double 0.000000e+00, double* %97, align 8
  %98 = load i32* %j, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1402 x double]* @r, i32 0, i64 %99
  store double 0.000000e+00, double* %100, align 8
  %101 = load i32* %j, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [1402 x double]* @p, i32 0, i64 %102
  store double 0.000000e+00, double* %103, align 8
  br label %104

; <label>:104                                     ; preds = %91
  %105 = load i32* %j, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %j, align 4
  br label %84

; <label>:107                                     ; preds = %84
  store double 0.000000e+00, double* %zeta, align 8
  store i32 1, i32* %it, align 4
  br label %108

; <label>:108                                     ; preds = %170, %107
  %109 = load i32* %it, align 4
  %110 = icmp sle i32 %109, 1
  br i1 %110, label %111, label %173

; <label>:111                                     ; preds = %108
  call void @conj_grad(i32* getelementptr inbounds ([89600 x i32]* @colidx, i32 0, i32 0), i32* getelementptr inbounds ([1401 x i32]* @rowstr, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @x, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @z, i32 0, i32 0), double* getelementptr inbounds ([89600 x double]* @a, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @p, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @q, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @r, i32 0, i32 0), double* %rnorm)
  store double 0.000000e+00, double* %norm_temp1, align 8
  store double 0.000000e+00, double* %norm_temp2, align 8
  store i32 0, i32* %j, align 4
  br label %112

; <label>:112                                     ; preds = %142, %111
  %113 = load i32* %j, align 4
  %114 = load i32* @lastcol, align 4
  %115 = load i32* @firstcol, align 4
  %116 = sub nsw i32 %114, %115
  %117 = add nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %145

; <label>:119                                     ; preds = %112
  %120 = load double* %norm_temp1, align 8
  %121 = load i32* %j, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %122
  %124 = load double* %123, align 8
  %125 = load i32* %j, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %126
  %128 = load double* %127, align 8
  %129 = fmul double %124, %128
  %130 = fadd double %120, %129
  store double %130, double* %norm_temp1, align 8
  %131 = load double* %norm_temp2, align 8
  %132 = load i32* %j, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %133
  %135 = load double* %134, align 8
  %136 = load i32* %j, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %137
  %139 = load double* %138, align 8
  %140 = fmul double %135, %139
  %141 = fadd double %131, %140
  store double %141, double* %norm_temp2, align 8
  br label %142

; <label>:142                                     ; preds = %119
  %143 = load i32* %j, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %j, align 4
  br label %112

; <label>:145                                     ; preds = %112
  %146 = load double* %norm_temp2, align 8
  %147 = call double @sqrt(double %146) #5
  %148 = fdiv double 1.000000e+00, %147
  store double %148, double* %norm_temp2, align 8
  store i32 0, i32* %j, align 4
  br label %149

; <label>:149                                     ; preds = %166, %145
  %150 = load i32* %j, align 4
  %151 = load i32* @lastcol, align 4
  %152 = load i32* @firstcol, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %169

; <label>:156                                     ; preds = %149
  %157 = load double* %norm_temp2, align 8
  %158 = load i32* %j, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %159
  %161 = load double* %160, align 8
  %162 = fmul double %157, %161
  %163 = load i32* %j, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %164
  store double %162, double* %165, align 8
  br label %166

; <label>:166                                     ; preds = %156
  %167 = load i32* %j, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %j, align 4
  br label %149

; <label>:169                                     ; preds = %149
  br label %170

; <label>:170                                     ; preds = %169
  %171 = load i32* %it, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %it, align 4
  br label %108

; <label>:173                                     ; preds = %108
  store i32 0, i32* %i, align 4
  br label %174

; <label>:174                                     ; preds = %181, %173
  %175 = load i32* %i, align 4
  %176 = icmp slt i32 %175, 1401
  br i1 %176, label %177, label %184

; <label>:177                                     ; preds = %174
  %178 = load i32* %i, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %179
  store double 1.000000e+00, double* %180, align 8
  br label %181

; <label>:181                                     ; preds = %177
  %182 = load i32* %i, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4
  br label %174

; <label>:184                                     ; preds = %174
  store double 0.000000e+00, double* %zeta, align 8
  call void @timer_stop(i32 0)
  call void @timer_start(i32 1)
  store i32 1, i32* %it, align 4
  br label %185

; <label>:185                                     ; preds = %267, %184
  %186 = load i32* %it, align 4
  %187 = icmp sle i32 %186, 15
  br i1 %187, label %188, label %270

; <label>:188                                     ; preds = %185
  %189 = load i32* @timeron, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %188
  call void @timer_start(i32 2)
  br label %192

; <label>:192                                     ; preds = %191, %188
  call void @conj_grad(i32* getelementptr inbounds ([89600 x i32]* @colidx, i32 0, i32 0), i32* getelementptr inbounds ([1401 x i32]* @rowstr, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @x, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @z, i32 0, i32 0), double* getelementptr inbounds ([89600 x double]* @a, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @p, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @q, i32 0, i32 0), double* getelementptr inbounds ([1402 x double]* @r, i32 0, i32 0), double* %rnorm)
  %193 = load i32* @timeron, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %192
  call void @timer_stop(i32 2)
  br label %196

; <label>:196                                     ; preds = %195, %192
  store double 0.000000e+00, double* %norm_temp1, align 8
  store double 0.000000e+00, double* %norm_temp2, align 8
  store i32 0, i32* %j, align 4
  br label %197

; <label>:197                                     ; preds = %227, %196
  %198 = load i32* %j, align 4
  %199 = load i32* @lastcol, align 4
  %200 = load i32* @firstcol, align 4
  %201 = sub nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %230

; <label>:204                                     ; preds = %197
  %205 = load double* %norm_temp1, align 8
  %206 = load i32* %j, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %207
  %209 = load double* %208, align 8
  %210 = load i32* %j, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %211
  %213 = load double* %212, align 8
  %214 = fmul double %209, %213
  %215 = fadd double %205, %214
  store double %215, double* %norm_temp1, align 8
  %216 = load double* %norm_temp2, align 8
  %217 = load i32* %j, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %218
  %220 = load double* %219, align 8
  %221 = load i32* %j, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %222
  %224 = load double* %223, align 8
  %225 = fmul double %220, %224
  %226 = fadd double %216, %225
  store double %226, double* %norm_temp2, align 8
  br label %227

; <label>:227                                     ; preds = %204
  %228 = load i32* %j, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %j, align 4
  br label %197

; <label>:230                                     ; preds = %197
  %231 = load double* %norm_temp2, align 8
  %232 = call double @sqrt(double %231) #5
  %233 = fdiv double 1.000000e+00, %232
  store double %233, double* %norm_temp2, align 8
  %234 = load double* %norm_temp1, align 8
  %235 = fdiv double 1.000000e+00, %234
  %236 = fadd double 1.000000e+01, %235
  store double %236, double* %zeta, align 8
  %237 = load i32* %it, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %241

; <label>:239                                     ; preds = %230
  %240 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str9, i32 0, i32 0))
  br label %241

; <label>:241                                     ; preds = %239, %230
  %242 = load i32* %it, align 4
  %243 = load double* %rnorm, align 8
  %244 = load double* %zeta, align 8
  %245 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str10, i32 0, i32 0), i32 %242, double %243, double %244)
  store i32 0, i32* %j, align 4
  br label %246

; <label>:246                                     ; preds = %263, %241
  %247 = load i32* %j, align 4
  %248 = load i32* @lastcol, align 4
  %249 = load i32* @firstcol, align 4
  %250 = sub nsw i32 %248, %249
  %251 = add nsw i32 %250, 1
  %252 = icmp slt i32 %247, %251
  br i1 %252, label %253, label %266

; <label>:253                                     ; preds = %246
  %254 = load double* %norm_temp2, align 8
  %255 = load i32* %j, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [1402 x double]* @z, i32 0, i64 %256
  %258 = load double* %257, align 8
  %259 = fmul double %254, %258
  %260 = load i32* %j, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [1402 x double]* @x, i32 0, i64 %261
  store double %259, double* %262, align 8
  br label %263

; <label>:263                                     ; preds = %253
  %264 = load i32* %j, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %j, align 4
  br label %246

; <label>:266                                     ; preds = %246
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32* %it, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %it, align 4
  br label %185

; <label>:270                                     ; preds = %185
  call void @timer_stop(i32 1)
  %271 = call double @timer_read(i32 1)
  store double %271, double* %t, align 8
  %272 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str11, i32 0, i32 0))
  store double 1.000000e-10, double* %epsilon, align 8
  %273 = load i8* %Class, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 85
  br i1 %275, label %276, label %299

; <label>:276                                     ; preds = %270
  %277 = load double* %zeta, align 8
  %278 = load double* %zeta_verify_value, align 8
  %279 = fsub double %277, %278
  %280 = call double @fabs(double %279) #6
  %281 = load double* %zeta_verify_value, align 8
  %282 = fdiv double %280, %281
  store double %282, double* %err, align 8
  %283 = load double* %err, align 8
  %284 = load double* %epsilon, align 8
  %285 = fcmp ole double %283, %284
  br i1 %285, label %286, label %292

; <label>:286                                     ; preds = %276
  store i32 1, i32* %verified, align 4
  %287 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str12, i32 0, i32 0))
  %288 = load double* %zeta, align 8
  %289 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str13, i32 0, i32 0), double %288)
  %290 = load double* %err, align 8
  %291 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str14, i32 0, i32 0), double %290)
  br label %298

; <label>:292                                     ; preds = %276
  store i32 0, i32* %verified, align 4
  %293 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str15, i32 0, i32 0))
  %294 = load double* %zeta, align 8
  %295 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str16, i32 0, i32 0), double %294)
  %296 = load double* %zeta_verify_value, align 8
  %297 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str17, i32 0, i32 0), double %296)
  br label %298

; <label>:298                                     ; preds = %292, %286
  br label %302

; <label>:299                                     ; preds = %270
  store i32 0, i32* %verified, align 4
  %300 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0))
  %301 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str19, i32 0, i32 0))
  br label %302

; <label>:302                                     ; preds = %299, %298
  %303 = load double* %t, align 8
  %304 = fcmp une double %303, 0.000000e+00
  br i1 %304, label %305, label %309

; <label>:305                                     ; preds = %302
  %306 = load double* %t, align 8
  %307 = fdiv double 6.665400e+07, %306
  %308 = fdiv double %307, 1.000000e+06
  store double %308, double* %mflops, align 8
  br label %310

; <label>:309                                     ; preds = %302
  store double 0.000000e+00, double* %mflops, align 8
  br label %310

; <label>:310                                     ; preds = %309, %305
  %311 = load i8* %Class, align 1
  %312 = load double* %t, align 8
  %313 = load double* %mflops, align 8
  %314 = load i32* %verified, align 4
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), i8 signext %311, i32 1400, i32 0, i32 0, i32 15, double %312, double %313, i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %314, i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str30, i32 0, i32 0))
  %315 = load i32* @timeron, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %368

; <label>:317                                     ; preds = %310
  %318 = call double @timer_read(i32 1)
  store double %318, double* %tmax, align 8
  %319 = load double* %tmax, align 8
  %320 = fcmp oeq double %319, 0.000000e+00
  br i1 %320, label %321, label %322

; <label>:321                                     ; preds = %317
  store double 1.000000e+00, double* %tmax, align 8
  br label %322

; <label>:322                                     ; preds = %321, %317
  %323 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %324

; <label>:324                                     ; preds = %364, %322
  %325 = load i32* %i, align 4
  %326 = icmp slt i32 %325, 3
  br i1 %326, label %327, label %367

; <label>:327                                     ; preds = %324
  %328 = load i32* %i, align 4
  %329 = call double @timer_read(i32 %328)
  store double %329, double* %t, align 8
  %330 = load i32* %i, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %339

; <label>:332                                     ; preds = %327
  %333 = load i32* %i, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [3 x i8*]* %t_names, i32 0, i64 %334
  %336 = load i8** %335, align 8
  %337 = load double* %t, align 8
  %338 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str32, i32 0, i32 0), i8* %336, double %337)
  br label %363

; <label>:339                                     ; preds = %327
  %340 = load i32* %i, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [3 x i8*]* %t_names, i32 0, i64 %341
  %343 = load i8** %342, align 8
  %344 = load double* %t, align 8
  %345 = load double* %t, align 8
  %346 = fmul double %345, 1.000000e+02
  %347 = load double* %tmax, align 8
  %348 = fdiv double %346, %347
  %349 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str33, i32 0, i32 0), i8* %343, double %344, double %348)
  %350 = load i32* %i, align 4
  %351 = icmp eq i32 %350, 2
  br i1 %351, label %352, label %362

; <label>:352                                     ; preds = %339
  %353 = load double* %tmax, align 8
  %354 = load double* %t, align 8
  %355 = fsub double %353, %354
  store double %355, double* %t, align 8
  %356 = load double* %t, align 8
  %357 = load double* %t, align 8
  %358 = fmul double %357, 1.000000e+02
  %359 = load double* %tmax, align 8
  %360 = fdiv double %358, %359
  %361 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), double %356, double %360)
  br label %362

; <label>:362                                     ; preds = %352, %339
  br label %363

; <label>:363                                     ; preds = %362, %332
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32* %i, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %i, align 4
  br label %324

; <label>:367                                     ; preds = %324
  br label %368

; <label>:368                                     ; preds = %367, %310
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @makea(i32 %n, i32 %nz, double* %a, i32* %colidx, i32* %rowstr, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol, i32* %arow, [8 x i32]* %acol, [8 x double]* %aelt, i32* %iv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [8 x i32]*, align 8
  %12 = alloca [8 x double]*, align 8
  %13 = alloca i32*, align 8
  %iouter = alloca i32, align 4
  %ivelt = alloca i32, align 4
  %nzv = alloca i32, align 4
  %nn1 = alloca i32, align 4
  %ivc = alloca [8 x i32], align 16
  %vc = alloca [8 x double], align 16
  store i32 %n, i32* %1, align 4
  store i32 %nz, i32* %2, align 4
  store double* %a, double** %3, align 8
  store i32* %colidx, i32** %4, align 8
  store i32* %rowstr, i32** %5, align 8
  store i32 %firstrow, i32* %6, align 4
  store i32 %lastrow, i32* %7, align 4
  store i32 %firstcol, i32* %8, align 4
  store i32 %lastcol, i32* %9, align 4
  store i32* %arow, i32** %10, align 8
  store [8 x i32]* %acol, [8 x i32]** %11, align 8
  store [8 x double]* %aelt, [8 x double]** %12, align 8
  store i32* %iv, i32** %13, align 8
  store i32 1, i32* %nn1, align 4
  br label %14

; <label>:14                                      ; preds = %17, %0
  %15 = load i32* %nn1, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %nn1, align 4
  br label %17

; <label>:17                                      ; preds = %14
  %18 = load i32* %nn1, align 4
  %19 = load i32* %1, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %14, label %21

; <label>:21                                      ; preds = %17
  store i32 0, i32* %iouter, align 4
  br label %22

; <label>:22                                      ; preds = %74, %21
  %23 = load i32* %iouter, align 4
  %24 = load i32* %1, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %77

; <label>:26                                      ; preds = %22
  store i32 7, i32* %nzv, align 4
  %27 = load i32* %1, align 4
  %28 = load i32* %nzv, align 4
  %29 = load i32* %nn1, align 4
  %30 = getelementptr inbounds [8 x double]* %vc, i32 0, i32 0
  %31 = getelementptr inbounds [8 x i32]* %ivc, i32 0, i32 0
  call void @sprnvc(i32 %27, i32 %28, i32 %29, double* %30, i32* %31)
  %32 = load i32* %1, align 4
  %33 = getelementptr inbounds [8 x double]* %vc, i32 0, i32 0
  %34 = getelementptr inbounds [8 x i32]* %ivc, i32 0, i32 0
  %35 = load i32* %iouter, align 4
  %36 = add nsw i32 %35, 1
  call void @vecset(i32 %32, double* %33, i32* %34, i32* %nzv, i32 %36, double 5.000000e-01)
  %37 = load i32* %nzv, align 4
  %38 = load i32* %iouter, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32** %10, align 8
  %41 = getelementptr inbounds i32* %40, i64 %39
  store i32 %37, i32* %41, align 4
  store i32 0, i32* %ivelt, align 4
  br label %42

; <label>:42                                      ; preds = %70, %26
  %43 = load i32* %ivelt, align 4
  %44 = load i32* %nzv, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %73

; <label>:46                                      ; preds = %42
  %47 = load i32* %ivelt, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32]* %ivc, i32 0, i64 %48
  %50 = load i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32* %ivelt, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32* %iouter, align 4
  %55 = sext i32 %54 to i64
  %56 = load [8 x i32]** %11, align 8
  %57 = getelementptr inbounds [8 x i32]* %56, i64 %55
  %58 = getelementptr inbounds [8 x i32]* %57, i32 0, i64 %53
  store i32 %51, i32* %58, align 4
  %59 = load i32* %ivelt, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x double]* %vc, i32 0, i64 %60
  %62 = load double* %61, align 8
  %63 = load i32* %ivelt, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32* %iouter, align 4
  %66 = sext i32 %65 to i64
  %67 = load [8 x double]** %12, align 8
  %68 = getelementptr inbounds [8 x double]* %67, i64 %66
  %69 = getelementptr inbounds [8 x double]* %68, i32 0, i64 %64
  store double %62, double* %69, align 8
  br label %70

; <label>:70                                      ; preds = %46
  %71 = load i32* %ivelt, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %ivelt, align 4
  br label %42

; <label>:73                                      ; preds = %42
  br label %74

; <label>:74                                      ; preds = %73
  %75 = load i32* %iouter, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %iouter, align 4
  br label %22

; <label>:77                                      ; preds = %22
  %78 = load double** %3, align 8
  %79 = load i32** %4, align 8
  %80 = load i32** %5, align 8
  %81 = load i32* %1, align 4
  %82 = load i32* %2, align 4
  %83 = load i32** %10, align 8
  %84 = load [8 x i32]** %11, align 8
  %85 = load [8 x double]** %12, align 8
  %86 = load i32* %6, align 4
  %87 = load i32* %7, align 4
  %88 = load i32** %13, align 8
  call void @sparse(double* %78, i32* %79, i32* %80, i32 %81, i32 %82, i32 7, i32* %83, [8 x i32]* %84, [8 x double]* %85, i32 %86, i32 %87, i32* %88, double 1.000000e-01, double 1.000000e+01)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @conj_grad(i32* %colidx, i32* %rowstr, double* %x, double* %z, double* %a, double* %p, double* %q, double* %r, double* %rnorm) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cgit = alloca i32, align 4
  %cgitmax = alloca i32, align 4
  %d = alloca double, align 8
  %sum = alloca double, align 8
  %rho = alloca double, align 8
  %rho0 = alloca double, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  store i32* %colidx, i32** %1, align 8
  store i32* %rowstr, i32** %2, align 8
  store double* %x, double** %3, align 8
  store double* %z, double** %4, align 8
  store double* %a, double** %5, align 8
  store double* %p, double** %6, align 8
  store double* %q, double** %7, align 8
  store double* %r, double** %8, align 8
  store double* %rnorm, double** %9, align 8
  store i32 25, i32* %cgitmax, align 4
  store double 0.000000e+00, double* %rho, align 8
  store i32 0, i32* %j, align 4
  br label %10

; <label>:10                                      ; preds = %42, %0
  %11 = load i32* %j, align 4
  %12 = load i32* @naa, align 4
  %13 = add nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %45

; <label>:15                                      ; preds = %10
  %16 = load i32* %j, align 4
  %17 = sext i32 %16 to i64
  %18 = load double** %7, align 8
  %19 = getelementptr inbounds double* %18, i64 %17
  store double 0.000000e+00, double* %19, align 8
  %20 = load i32* %j, align 4
  %21 = sext i32 %20 to i64
  %22 = load double** %4, align 8
  %23 = getelementptr inbounds double* %22, i64 %21
  store double 0.000000e+00, double* %23, align 8
  %24 = load i32* %j, align 4
  %25 = sext i32 %24 to i64
  %26 = load double** %3, align 8
  %27 = getelementptr inbounds double* %26, i64 %25
  %28 = load double* %27, align 8
  %29 = load i32* %j, align 4
  %30 = sext i32 %29 to i64
  %31 = load double** %8, align 8
  %32 = getelementptr inbounds double* %31, i64 %30
  store double %28, double* %32, align 8
  %33 = load i32* %j, align 4
  %34 = sext i32 %33 to i64
  %35 = load double** %8, align 8
  %36 = getelementptr inbounds double* %35, i64 %34
  %37 = load double* %36, align 8
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = load double** %6, align 8
  %41 = getelementptr inbounds double* %40, i64 %39
  store double %37, double* %41, align 8
  br label %42

; <label>:42                                      ; preds = %15
  %43 = load i32* %j, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %j, align 4
  br label %10

; <label>:45                                      ; preds = %10
  store i32 0, i32* %j, align 4
  br label %46

; <label>:46                                      ; preds = %67, %45
  %47 = load i32* %j, align 4
  %48 = load i32* @lastcol, align 4
  %49 = load i32* @firstcol, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %70

; <label>:53                                      ; preds = %46
  %54 = load double* %rho, align 8
  %55 = load i32* %j, align 4
  %56 = sext i32 %55 to i64
  %57 = load double** %8, align 8
  %58 = getelementptr inbounds double* %57, i64 %56
  %59 = load double* %58, align 8
  %60 = load i32* %j, align 4
  %61 = sext i32 %60 to i64
  %62 = load double** %8, align 8
  %63 = getelementptr inbounds double* %62, i64 %61
  %64 = load double* %63, align 8
  %65 = fmul double %59, %64
  %66 = fadd double %54, %65
  store double %66, double* %rho, align 8
  br label %67

; <label>:67                                      ; preds = %53
  %68 = load i32* %j, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %j, align 4
  br label %46

; <label>:70                                      ; preds = %46
  store i32 1, i32* %cgit, align 4
  br label %71

; <label>:71                                      ; preds = %261, %70
  %72 = load i32* %cgit, align 4
  %73 = load i32* %cgitmax, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %264

; <label>:75                                      ; preds = %71
  store i32 0, i32* %j, align 4
  br label %76

; <label>:76                                      ; preds = %125, %75
  %77 = load i32* %j, align 4
  %78 = load i32* @lastrow, align 4
  %79 = load i32* @firstrow, align 4
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %128

; <label>:83                                      ; preds = %76
  store double 0.000000e+00, double* %sum, align 8
  %84 = load i32* %j, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32** %2, align 8
  %87 = getelementptr inbounds i32* %86, i64 %85
  %88 = load i32* %87, align 4
  store i32 %88, i32* %k, align 4
  br label %89

; <label>:89                                      ; preds = %116, %83
  %90 = load i32* %k, align 4
  %91 = load i32* %j, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = load i32** %2, align 8
  %95 = getelementptr inbounds i32* %94, i64 %93
  %96 = load i32* %95, align 4
  %97 = icmp slt i32 %90, %96
  br i1 %97, label %98, label %119

; <label>:98                                      ; preds = %89
  %99 = load double* %sum, align 8
  %100 = load i32* %k, align 4
  %101 = sext i32 %100 to i64
  %102 = load double** %5, align 8
  %103 = getelementptr inbounds double* %102, i64 %101
  %104 = load double* %103, align 8
  %105 = load i32* %k, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32** %1, align 8
  %108 = getelementptr inbounds i32* %107, i64 %106
  %109 = load i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load double** %6, align 8
  %112 = getelementptr inbounds double* %111, i64 %110
  %113 = load double* %112, align 8
  %114 = fmul double %104, %113
  %115 = fadd double %99, %114
  store double %115, double* %sum, align 8
  br label %116

; <label>:116                                     ; preds = %98
  %117 = load i32* %k, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %k, align 4
  br label %89

; <label>:119                                     ; preds = %89
  %120 = load double* %sum, align 8
  %121 = load i32* %j, align 4
  %122 = sext i32 %121 to i64
  %123 = load double** %7, align 8
  %124 = getelementptr inbounds double* %123, i64 %122
  store double %120, double* %124, align 8
  br label %125

; <label>:125                                     ; preds = %119
  %126 = load i32* %j, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %j, align 4
  br label %76

; <label>:128                                     ; preds = %76
  store double 0.000000e+00, double* %d, align 8
  store i32 0, i32* %j, align 4
  br label %129

; <label>:129                                     ; preds = %150, %128
  %130 = load i32* %j, align 4
  %131 = load i32* @lastcol, align 4
  %132 = load i32* @firstcol, align 4
  %133 = sub nsw i32 %131, %132
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %153

; <label>:136                                     ; preds = %129
  %137 = load double* %d, align 8
  %138 = load i32* %j, align 4
  %139 = sext i32 %138 to i64
  %140 = load double** %6, align 8
  %141 = getelementptr inbounds double* %140, i64 %139
  %142 = load double* %141, align 8
  %143 = load i32* %j, align 4
  %144 = sext i32 %143 to i64
  %145 = load double** %7, align 8
  %146 = getelementptr inbounds double* %145, i64 %144
  %147 = load double* %146, align 8
  %148 = fmul double %142, %147
  %149 = fadd double %137, %148
  store double %149, double* %d, align 8
  br label %150

; <label>:150                                     ; preds = %136
  %151 = load i32* %j, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %j, align 4
  br label %129

; <label>:153                                     ; preds = %129
  %154 = load double* %rho, align 8
  %155 = load double* %d, align 8
  %156 = fdiv double %154, %155
  store double %156, double* %alpha, align 8
  %157 = load double* %rho, align 8
  store double %157, double* %rho0, align 8
  store double 0.000000e+00, double* %rho, align 8
  store i32 0, i32* %j, align 4
  br label %158

; <label>:158                                     ; preds = %200, %153
  %159 = load i32* %j, align 4
  %160 = load i32* @lastcol, align 4
  %161 = load i32* @firstcol, align 4
  %162 = sub nsw i32 %160, %161
  %163 = add nsw i32 %162, 1
  %164 = icmp slt i32 %159, %163
  br i1 %164, label %165, label %203

; <label>:165                                     ; preds = %158
  %166 = load i32* %j, align 4
  %167 = sext i32 %166 to i64
  %168 = load double** %4, align 8
  %169 = getelementptr inbounds double* %168, i64 %167
  %170 = load double* %169, align 8
  %171 = load double* %alpha, align 8
  %172 = load i32* %j, align 4
  %173 = sext i32 %172 to i64
  %174 = load double** %6, align 8
  %175 = getelementptr inbounds double* %174, i64 %173
  %176 = load double* %175, align 8
  %177 = fmul double %171, %176
  %178 = fadd double %170, %177
  %179 = load i32* %j, align 4
  %180 = sext i32 %179 to i64
  %181 = load double** %4, align 8
  %182 = getelementptr inbounds double* %181, i64 %180
  store double %178, double* %182, align 8
  %183 = load i32* %j, align 4
  %184 = sext i32 %183 to i64
  %185 = load double** %8, align 8
  %186 = getelementptr inbounds double* %185, i64 %184
  %187 = load double* %186, align 8
  %188 = load double* %alpha, align 8
  %189 = load i32* %j, align 4
  %190 = sext i32 %189 to i64
  %191 = load double** %7, align 8
  %192 = getelementptr inbounds double* %191, i64 %190
  %193 = load double* %192, align 8
  %194 = fmul double %188, %193
  %195 = fsub double %187, %194
  %196 = load i32* %j, align 4
  %197 = sext i32 %196 to i64
  %198 = load double** %8, align 8
  %199 = getelementptr inbounds double* %198, i64 %197
  store double %195, double* %199, align 8
  br label %200

; <label>:200                                     ; preds = %165
  %201 = load i32* %j, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %j, align 4
  br label %158

; <label>:203                                     ; preds = %158
  store i32 0, i32* %j, align 4
  br label %204

; <label>:204                                     ; preds = %225, %203
  %205 = load i32* %j, align 4
  %206 = load i32* @lastcol, align 4
  %207 = load i32* @firstcol, align 4
  %208 = sub nsw i32 %206, %207
  %209 = add nsw i32 %208, 1
  %210 = icmp slt i32 %205, %209
  br i1 %210, label %211, label %228

; <label>:211                                     ; preds = %204
  %212 = load double* %rho, align 8
  %213 = load i32* %j, align 4
  %214 = sext i32 %213 to i64
  %215 = load double** %8, align 8
  %216 = getelementptr inbounds double* %215, i64 %214
  %217 = load double* %216, align 8
  %218 = load i32* %j, align 4
  %219 = sext i32 %218 to i64
  %220 = load double** %8, align 8
  %221 = getelementptr inbounds double* %220, i64 %219
  %222 = load double* %221, align 8
  %223 = fmul double %217, %222
  %224 = fadd double %212, %223
  store double %224, double* %rho, align 8
  br label %225

; <label>:225                                     ; preds = %211
  %226 = load i32* %j, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %j, align 4
  br label %204

; <label>:228                                     ; preds = %204
  %229 = load double* %rho, align 8
  %230 = load double* %rho0, align 8
  %231 = fdiv double %229, %230
  store double %231, double* %beta, align 8
  store i32 0, i32* %j, align 4
  br label %232

; <label>:232                                     ; preds = %257, %228
  %233 = load i32* %j, align 4
  %234 = load i32* @lastcol, align 4
  %235 = load i32* @firstcol, align 4
  %236 = sub nsw i32 %234, %235
  %237 = add nsw i32 %236, 1
  %238 = icmp slt i32 %233, %237
  br i1 %238, label %239, label %260

; <label>:239                                     ; preds = %232
  %240 = load i32* %j, align 4
  %241 = sext i32 %240 to i64
  %242 = load double** %8, align 8
  %243 = getelementptr inbounds double* %242, i64 %241
  %244 = load double* %243, align 8
  %245 = load double* %beta, align 8
  %246 = load i32* %j, align 4
  %247 = sext i32 %246 to i64
  %248 = load double** %6, align 8
  %249 = getelementptr inbounds double* %248, i64 %247
  %250 = load double* %249, align 8
  %251 = fmul double %245, %250
  %252 = fadd double %244, %251
  %253 = load i32* %j, align 4
  %254 = sext i32 %253 to i64
  %255 = load double** %6, align 8
  %256 = getelementptr inbounds double* %255, i64 %254
  store double %252, double* %256, align 8
  br label %257

; <label>:257                                     ; preds = %239
  %258 = load i32* %j, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %j, align 4
  br label %232

; <label>:260                                     ; preds = %232
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32* %cgit, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %cgit, align 4
  br label %71

; <label>:264                                     ; preds = %71
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %j, align 4
  br label %265

; <label>:265                                     ; preds = %314, %264
  %266 = load i32* %j, align 4
  %267 = load i32* @lastrow, align 4
  %268 = load i32* @firstrow, align 4
  %269 = sub nsw i32 %267, %268
  %270 = add nsw i32 %269, 1
  %271 = icmp slt i32 %266, %270
  br i1 %271, label %272, label %317

; <label>:272                                     ; preds = %265
  store double 0.000000e+00, double* %d, align 8
  %273 = load i32* %j, align 4
  %274 = sext i32 %273 to i64
  %275 = load i32** %2, align 8
  %276 = getelementptr inbounds i32* %275, i64 %274
  %277 = load i32* %276, align 4
  store i32 %277, i32* %k, align 4
  br label %278

; <label>:278                                     ; preds = %305, %272
  %279 = load i32* %k, align 4
  %280 = load i32* %j, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = load i32** %2, align 8
  %284 = getelementptr inbounds i32* %283, i64 %282
  %285 = load i32* %284, align 4
  %286 = icmp slt i32 %279, %285
  br i1 %286, label %287, label %308

; <label>:287                                     ; preds = %278
  %288 = load double* %d, align 8
  %289 = load i32* %k, align 4
  %290 = sext i32 %289 to i64
  %291 = load double** %5, align 8
  %292 = getelementptr inbounds double* %291, i64 %290
  %293 = load double* %292, align 8
  %294 = load i32* %k, align 4
  %295 = sext i32 %294 to i64
  %296 = load i32** %1, align 8
  %297 = getelementptr inbounds i32* %296, i64 %295
  %298 = load i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = load double** %4, align 8
  %301 = getelementptr inbounds double* %300, i64 %299
  %302 = load double* %301, align 8
  %303 = fmul double %293, %302
  %304 = fadd double %288, %303
  store double %304, double* %d, align 8
  br label %305

; <label>:305                                     ; preds = %287
  %306 = load i32* %k, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %k, align 4
  br label %278

; <label>:308                                     ; preds = %278
  %309 = load double* %d, align 8
  %310 = load i32* %j, align 4
  %311 = sext i32 %310 to i64
  %312 = load double** %8, align 8
  %313 = getelementptr inbounds double* %312, i64 %311
  store double %309, double* %313, align 8
  br label %314

; <label>:314                                     ; preds = %308
  %315 = load i32* %j, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %j, align 4
  br label %265

; <label>:317                                     ; preds = %265
  store i32 0, i32* %j, align 4
  br label %318

; <label>:318                                     ; preds = %342, %317
  %319 = load i32* %j, align 4
  %320 = load i32* @lastcol, align 4
  %321 = load i32* @firstcol, align 4
  %322 = sub nsw i32 %320, %321
  %323 = add nsw i32 %322, 1
  %324 = icmp slt i32 %319, %323
  br i1 %324, label %325, label %345

; <label>:325                                     ; preds = %318
  %326 = load i32* %j, align 4
  %327 = sext i32 %326 to i64
  %328 = load double** %3, align 8
  %329 = getelementptr inbounds double* %328, i64 %327
  %330 = load double* %329, align 8
  %331 = load i32* %j, align 4
  %332 = sext i32 %331 to i64
  %333 = load double** %8, align 8
  %334 = getelementptr inbounds double* %333, i64 %332
  %335 = load double* %334, align 8
  %336 = fsub double %330, %335
  store double %336, double* %d, align 8
  %337 = load double* %sum, align 8
  %338 = load double* %d, align 8
  %339 = load double* %d, align 8
  %340 = fmul double %338, %339
  %341 = fadd double %337, %340
  store double %341, double* %sum, align 8
  br label %342

; <label>:342                                     ; preds = %325
  %343 = load i32* %j, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %j, align 4
  br label %318

; <label>:345                                     ; preds = %318
  %346 = load double* %sum, align 8
  %347 = call double @sqrt(double %346) #5
  %348 = load double** %9, align 8
  store double %347, double* %348, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal void @sprnvc(i32 %n, i32 %nz, i32 %nn1, double* %v, i32* %iv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32*, align 8
  %nzv = alloca i32, align 4
  %ii = alloca i32, align 4
  %i = alloca i32, align 4
  %vecelt = alloca double, align 8
  %vecloc = alloca double, align 8
  %was_gen = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store i32 %nz, i32* %2, align 4
  store i32 %nn1, i32* %3, align 4
  store double* %v, double** %4, align 8
  store i32* %iv, i32** %5, align 8
  store i32 0, i32* %nzv, align 4
  br label %6

; <label>:6                                       ; preds = %45, %44, %22, %0
  %7 = load i32* %nzv, align 4
  %8 = load i32* %2, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

; <label>:10                                      ; preds = %6
  %11 = load double* @amult, align 8
  %12 = call double @randlc(double* @tran, double %11)
  store double %12, double* %vecelt, align 8
  %13 = load double* @amult, align 8
  %14 = call double @randlc(double* @tran, double %13)
  store double %14, double* %vecloc, align 8
  %15 = load double* %vecloc, align 8
  %16 = load i32* %3, align 4
  %17 = call i32 @icnvrt(double %15, i32 %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  %19 = load i32* %i, align 4
  %20 = load i32* %1, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %10
  br label %6

; <label>:23                                      ; preds = %10
  store i32 0, i32* %was_gen, align 4
  store i32 0, i32* %ii, align 4
  br label %24

; <label>:24                                      ; preds = %38, %23
  %25 = load i32* %ii, align 4
  %26 = load i32* %nzv, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

; <label>:28                                      ; preds = %24
  %29 = load i32* %ii, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32** %5, align 8
  %32 = getelementptr inbounds i32* %31, i64 %30
  %33 = load i32* %32, align 4
  %34 = load i32* %i, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %28
  store i32 1, i32* %was_gen, align 4
  br label %41

; <label>:37                                      ; preds = %28
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load i32* %ii, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %ii, align 4
  br label %24

; <label>:41                                      ; preds = %36, %24
  %42 = load i32* %was_gen, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %41
  br label %6

; <label>:45                                      ; preds = %41
  %46 = load double* %vecelt, align 8
  %47 = load i32* %nzv, align 4
  %48 = sext i32 %47 to i64
  %49 = load double** %4, align 8
  %50 = getelementptr inbounds double* %49, i64 %48
  store double %46, double* %50, align 8
  %51 = load i32* %i, align 4
  %52 = load i32* %nzv, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32** %5, align 8
  %55 = getelementptr inbounds i32* %54, i64 %53
  store i32 %51, i32* %55, align 4
  %56 = load i32* %nzv, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %nzv, align 4
  br label %6

; <label>:58                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vecset(i32 %n, double* %v, i32* %iv, i32* %nzv, i32 %i, double %val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %k = alloca i32, align 4
  %set = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store double* %v, double** %2, align 8
  store i32* %iv, i32** %3, align 8
  store i32* %nzv, i32** %4, align 8
  store i32 %i, i32* %5, align 4
  store double %val, double* %6, align 8
  store i32 0, i32* %set, align 4
  store i32 0, i32* %k, align 4
  br label %7

; <label>:7                                       ; preds = %27, %0
  %8 = load i32* %k, align 4
  %9 = load i32** %4, align 8
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %7
  %13 = load i32* %k, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32** %3, align 8
  %16 = getelementptr inbounds i32* %15, i64 %14
  %17 = load i32* %16, align 4
  %18 = load i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

; <label>:20                                      ; preds = %12
  %21 = load double* %6, align 8
  %22 = load i32* %k, align 4
  %23 = sext i32 %22 to i64
  %24 = load double** %2, align 8
  %25 = getelementptr inbounds double* %24, i64 %23
  store double %21, double* %25, align 8
  store i32 1, i32* %set, align 4
  br label %26

; <label>:26                                      ; preds = %20, %12
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32* %k, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %k, align 4
  br label %7

; <label>:30                                      ; preds = %7
  %31 = load i32* %set, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

; <label>:33                                      ; preds = %30
  %34 = load double* %6, align 8
  %35 = load i32** %4, align 8
  %36 = load i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load double** %2, align 8
  %39 = getelementptr inbounds double* %38, i64 %37
  store double %34, double* %39, align 8
  %40 = load i32* %5, align 4
  %41 = load i32** %4, align 8
  %42 = load i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32** %3, align 8
  %45 = getelementptr inbounds i32* %44, i64 %43
  store i32 %40, i32* %45, align 4
  %46 = load i32** %4, align 8
  %47 = load i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %50

; <label>:50                                      ; preds = %33, %30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sparse(double* %a, i32* %colidx, i32* %rowstr, i32 %n, i32 %nz, i32 %nozer, i32* %arow, [8 x i32]* %acol, [8 x double]* %aelt, i32 %firstrow, i32 %lastrow, i32* %nzloc, double %rcond, double %shift) #0 {
  %1 = alloca double*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [8 x i32]*, align 8
  %9 = alloca [8 x double]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %nrows = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %nza = alloca i32, align 4
  %k = alloca i32, align 4
  %kk = alloca i32, align 4
  %nzrow = alloca i32, align 4
  %jcol = alloca i32, align 4
  %size = alloca double, align 8
  %scale = alloca double, align 8
  %ratio = alloca double, align 8
  %va = alloca double, align 8
  %cont40 = alloca i32, align 4
  store double* %a, double** %1, align 8
  store i32* %colidx, i32** %2, align 8
  store i32* %rowstr, i32** %3, align 8
  store i32 %n, i32* %4, align 4
  store i32 %nz, i32* %5, align 4
  store i32 %nozer, i32* %6, align 4
  store i32* %arow, i32** %7, align 8
  store [8 x i32]* %acol, [8 x i32]** %8, align 8
  store [8 x double]* %aelt, [8 x double]** %9, align 8
  store i32 %firstrow, i32* %10, align 4
  store i32 %lastrow, i32* %11, align 4
  store i32* %nzloc, i32** %12, align 8
  store double %rcond, double* %13, align 8
  store double %shift, double* %14, align 8
  %15 = load i32* %11, align 4
  %16 = load i32* %10, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %nrows, align 4
  store i32 0, i32* %j, align 4
  br label %19

; <label>:19                                      ; preds = %29, %0
  %20 = load i32* %j, align 4
  %21 = load i32* %nrows, align 4
  %22 = add nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %32

; <label>:24                                      ; preds = %19
  %25 = load i32* %j, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32** %3, align 8
  %28 = getelementptr inbounds i32* %27, i64 %26
  store i32 0, i32* %28, align 4
  br label %29

; <label>:29                                      ; preds = %24
  %30 = load i32* %j, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %j, align 4
  br label %19

; <label>:32                                      ; preds = %19
  store i32 0, i32* %i, align 4
  br label %33

; <label>:33                                      ; preds = %75, %32
  %34 = load i32* %i, align 4
  %35 = load i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %78

; <label>:37                                      ; preds = %33
  store i32 0, i32* %nza, align 4
  br label %38

; <label>:38                                      ; preds = %71, %37
  %39 = load i32* %nza, align 4
  %40 = load i32* %i, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32** %7, align 8
  %43 = getelementptr inbounds i32* %42, i64 %41
  %44 = load i32* %43, align 4
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %74

; <label>:46                                      ; preds = %38
  %47 = load i32* %nza, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load [8 x i32]** %8, align 8
  %52 = getelementptr inbounds [8 x i32]* %51, i64 %50
  %53 = getelementptr inbounds [8 x i32]* %52, i32 0, i64 %48
  %54 = load i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %j, align 4
  %56 = load i32* %j, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32** %3, align 8
  %59 = getelementptr inbounds i32* %58, i64 %57
  %60 = load i32* %59, align 4
  %61 = load i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32** %7, align 8
  %64 = getelementptr inbounds i32* %63, i64 %62
  %65 = load i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = load i32* %j, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32** %3, align 8
  %70 = getelementptr inbounds i32* %69, i64 %68
  store i32 %66, i32* %70, align 4
  br label %71

; <label>:71                                      ; preds = %46
  %72 = load i32* %nza, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %nza, align 4
  br label %38

; <label>:74                                      ; preds = %38
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load i32* %i, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %i, align 4
  br label %33

; <label>:78                                      ; preds = %33
  %79 = load i32** %3, align 8
  %80 = getelementptr inbounds i32* %79, i64 0
  store i32 0, i32* %80, align 4
  store i32 1, i32* %j, align 4
  br label %81

; <label>:81                                      ; preds = %103, %78
  %82 = load i32* %j, align 4
  %83 = load i32* %nrows, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %106

; <label>:86                                      ; preds = %81
  %87 = load i32* %j, align 4
  %88 = sext i32 %87 to i64
  %89 = load i32** %3, align 8
  %90 = getelementptr inbounds i32* %89, i64 %88
  %91 = load i32* %90, align 4
  %92 = load i32* %j, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i32** %3, align 8
  %96 = getelementptr inbounds i32* %95, i64 %94
  %97 = load i32* %96, align 4
  %98 = add nsw i32 %91, %97
  %99 = load i32* %j, align 4
  %100 = sext i32 %99 to i64
  %101 = load i32** %3, align 8
  %102 = getelementptr inbounds i32* %101, i64 %100
  store i32 %98, i32* %102, align 4
  br label %103

; <label>:103                                     ; preds = %86
  %104 = load i32* %j, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %j, align 4
  br label %81

; <label>:106                                     ; preds = %81
  %107 = load i32* %nrows, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32** %3, align 8
  %110 = getelementptr inbounds i32* %109, i64 %108
  %111 = load i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %nza, align 4
  %113 = load i32* %nza, align 4
  %114 = load i32* %5, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %121

; <label>:116                                     ; preds = %106
  %117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str36, i32 0, i32 0))
  %118 = load i32* %nza, align 4
  %119 = load i32* %5, align 4
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str37, i32 0, i32 0), i32 %118, i32 %119)
  call void @exit(i32 1) #7
  unreachable

; <label>:121                                     ; preds = %106
  store i32 0, i32* %j, align 4
  br label %122

; <label>:122                                     ; preds = %158, %121
  %123 = load i32* %j, align 4
  %124 = load i32* %nrows, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %161

; <label>:126                                     ; preds = %122
  %127 = load i32* %j, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32** %3, align 8
  %130 = getelementptr inbounds i32* %129, i64 %128
  %131 = load i32* %130, align 4
  store i32 %131, i32* %k, align 4
  br label %132

; <label>:132                                     ; preds = %150, %126
  %133 = load i32* %k, align 4
  %134 = load i32* %j, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = load i32** %3, align 8
  %138 = getelementptr inbounds i32* %137, i64 %136
  %139 = load i32* %138, align 4
  %140 = icmp slt i32 %133, %139
  br i1 %140, label %141, label %153

; <label>:141                                     ; preds = %132
  %142 = load i32* %k, align 4
  %143 = sext i32 %142 to i64
  %144 = load double** %1, align 8
  %145 = getelementptr inbounds double* %144, i64 %143
  store double 0.000000e+00, double* %145, align 8
  %146 = load i32* %k, align 4
  %147 = sext i32 %146 to i64
  %148 = load i32** %2, align 8
  %149 = getelementptr inbounds i32* %148, i64 %147
  store i32 -1, i32* %149, align 4
  br label %150

; <label>:150                                     ; preds = %141
  %151 = load i32* %k, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %k, align 4
  br label %132

; <label>:153                                     ; preds = %132
  %154 = load i32* %j, align 4
  %155 = sext i32 %154 to i64
  %156 = load i32** %12, align 8
  %157 = getelementptr inbounds i32* %156, i64 %155
  store i32 0, i32* %157, align 4
  br label %158

; <label>:158                                     ; preds = %153
  %159 = load i32* %j, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %j, align 4
  br label %122

; <label>:161                                     ; preds = %122
  store double 1.000000e+00, double* %size, align 8
  %162 = load double* %13, align 8
  %163 = load i32* %4, align 4
  %164 = sitofp i32 %163 to double
  %165 = fdiv double 1.000000e+00, %164
  %166 = call double @pow(double %162, double %165) #5
  store double %166, double* %ratio, align 8
  store i32 0, i32* %i, align 4
  br label %167

; <label>:167                                     ; preds = %383, %161
  %168 = load i32* %i, align 4
  %169 = load i32* %4, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %386

; <label>:171                                     ; preds = %167
  store i32 0, i32* %nza, align 4
  br label %172

; <label>:172                                     ; preds = %376, %171
  %173 = load i32* %nza, align 4
  %174 = load i32* %i, align 4
  %175 = sext i32 %174 to i64
  %176 = load i32** %7, align 8
  %177 = getelementptr inbounds i32* %176, i64 %175
  %178 = load i32* %177, align 4
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %379

; <label>:180                                     ; preds = %172
  %181 = load i32* %nza, align 4
  %182 = sext i32 %181 to i64
  %183 = load i32* %i, align 4
  %184 = sext i32 %183 to i64
  %185 = load [8 x i32]** %8, align 8
  %186 = getelementptr inbounds [8 x i32]* %185, i64 %184
  %187 = getelementptr inbounds [8 x i32]* %186, i32 0, i64 %182
  %188 = load i32* %187, align 4
  store i32 %188, i32* %j, align 4
  %189 = load double* %size, align 8
  %190 = load i32* %nza, align 4
  %191 = sext i32 %190 to i64
  %192 = load i32* %i, align 4
  %193 = sext i32 %192 to i64
  %194 = load [8 x double]** %9, align 8
  %195 = getelementptr inbounds [8 x double]* %194, i64 %193
  %196 = getelementptr inbounds [8 x double]* %195, i32 0, i64 %191
  %197 = load double* %196, align 8
  %198 = fmul double %189, %197
  store double %198, double* %scale, align 8
  store i32 0, i32* %nzrow, align 4
  br label %199

; <label>:199                                     ; preds = %372, %180
  %200 = load i32* %nzrow, align 4
  %201 = load i32* %i, align 4
  %202 = sext i32 %201 to i64
  %203 = load i32** %7, align 8
  %204 = getelementptr inbounds i32* %203, i64 %202
  %205 = load i32* %204, align 4
  %206 = icmp slt i32 %200, %205
  br i1 %206, label %207, label %375

; <label>:207                                     ; preds = %199
  %208 = load i32* %nzrow, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32* %i, align 4
  %211 = sext i32 %210 to i64
  %212 = load [8 x i32]** %8, align 8
  %213 = getelementptr inbounds [8 x i32]* %212, i64 %211
  %214 = getelementptr inbounds [8 x i32]* %213, i32 0, i64 %209
  %215 = load i32* %214, align 4
  store i32 %215, i32* %jcol, align 4
  %216 = load i32* %nzrow, align 4
  %217 = sext i32 %216 to i64
  %218 = load i32* %i, align 4
  %219 = sext i32 %218 to i64
  %220 = load [8 x double]** %9, align 8
  %221 = getelementptr inbounds [8 x double]* %220, i64 %219
  %222 = getelementptr inbounds [8 x double]* %221, i32 0, i64 %217
  %223 = load double* %222, align 8
  %224 = load double* %scale, align 8
  %225 = fmul double %223, %224
  store double %225, double* %va, align 8
  %226 = load i32* %jcol, align 4
  %227 = load i32* %j, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %239

; <label>:229                                     ; preds = %207
  %230 = load i32* %j, align 4
  %231 = load i32* %i, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

; <label>:233                                     ; preds = %229
  %234 = load double* %va, align 8
  %235 = load double* %13, align 8
  %236 = fadd double %234, %235
  %237 = load double* %14, align 8
  %238 = fsub double %236, %237
  store double %238, double* %va, align 8
  br label %239

; <label>:239                                     ; preds = %233, %229, %207
  store i32 0, i32* %cont40, align 4
  %240 = load i32* %j, align 4
  %241 = sext i32 %240 to i64
  %242 = load i32** %3, align 8
  %243 = getelementptr inbounds i32* %242, i64 %241
  %244 = load i32* %243, align 4
  store i32 %244, i32* %k, align 4
  br label %245

; <label>:245                                     ; preds = %351, %239
  %246 = load i32* %k, align 4
  %247 = load i32* %j, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = load i32** %3, align 8
  %251 = getelementptr inbounds i32* %250, i64 %249
  %252 = load i32* %251, align 4
  %253 = icmp slt i32 %246, %252
  br i1 %253, label %254, label %354

; <label>:254                                     ; preds = %245
  %255 = load i32* %k, align 4
  %256 = sext i32 %255 to i64
  %257 = load i32** %2, align 8
  %258 = getelementptr inbounds i32* %257, i64 %256
  %259 = load i32* %258, align 4
  %260 = load i32* %jcol, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %316

; <label>:262                                     ; preds = %254
  %263 = load i32* %j, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = load i32** %3, align 8
  %267 = getelementptr inbounds i32* %266, i64 %265
  %268 = load i32* %267, align 4
  %269 = sub nsw i32 %268, 2
  store i32 %269, i32* %kk, align 4
  br label %270

; <label>:270                                     ; preds = %303, %262
  %271 = load i32* %kk, align 4
  %272 = load i32* %k, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %306

; <label>:274                                     ; preds = %270
  %275 = load i32* %kk, align 4
  %276 = sext i32 %275 to i64
  %277 = load i32** %2, align 8
  %278 = getelementptr inbounds i32* %277, i64 %276
  %279 = load i32* %278, align 4
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %281, label %302

; <label>:281                                     ; preds = %274
  %282 = load i32* %kk, align 4
  %283 = sext i32 %282 to i64
  %284 = load double** %1, align 8
  %285 = getelementptr inbounds double* %284, i64 %283
  %286 = load double* %285, align 8
  %287 = load i32* %kk, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = load double** %1, align 8
  %291 = getelementptr inbounds double* %290, i64 %289
  store double %286, double* %291, align 8
  %292 = load i32* %kk, align 4
  %293 = sext i32 %292 to i64
  %294 = load i32** %2, align 8
  %295 = getelementptr inbounds i32* %294, i64 %293
  %296 = load i32* %295, align 4
  %297 = load i32* %kk, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = load i32** %2, align 8
  %301 = getelementptr inbounds i32* %300, i64 %299
  store i32 %296, i32* %301, align 4
  br label %302

; <label>:302                                     ; preds = %281, %274
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32* %kk, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %kk, align 4
  br label %270

; <label>:306                                     ; preds = %270
  %307 = load i32* %jcol, align 4
  %308 = load i32* %k, align 4
  %309 = sext i32 %308 to i64
  %310 = load i32** %2, align 8
  %311 = getelementptr inbounds i32* %310, i64 %309
  store i32 %307, i32* %311, align 4
  %312 = load i32* %k, align 4
  %313 = sext i32 %312 to i64
  %314 = load double** %1, align 8
  %315 = getelementptr inbounds double* %314, i64 %313
  store double 0.000000e+00, double* %315, align 8
  store i32 1, i32* %cont40, align 4
  br label %354

; <label>:316                                     ; preds = %254
  %317 = load i32* %k, align 4
  %318 = sext i32 %317 to i64
  %319 = load i32** %2, align 8
  %320 = getelementptr inbounds i32* %319, i64 %318
  %321 = load i32* %320, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %329

; <label>:323                                     ; preds = %316
  %324 = load i32* %jcol, align 4
  %325 = load i32* %k, align 4
  %326 = sext i32 %325 to i64
  %327 = load i32** %2, align 8
  %328 = getelementptr inbounds i32* %327, i64 %326
  store i32 %324, i32* %328, align 4
  store i32 1, i32* %cont40, align 4
  br label %354

; <label>:329                                     ; preds = %316
  %330 = load i32* %k, align 4
  %331 = sext i32 %330 to i64
  %332 = load i32** %2, align 8
  %333 = getelementptr inbounds i32* %332, i64 %331
  %334 = load i32* %333, align 4
  %335 = load i32* %jcol, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %348

; <label>:337                                     ; preds = %329
  %338 = load i32* %j, align 4
  %339 = sext i32 %338 to i64
  %340 = load i32** %12, align 8
  %341 = getelementptr inbounds i32* %340, i64 %339
  %342 = load i32* %341, align 4
  %343 = add nsw i32 %342, 1
  %344 = load i32* %j, align 4
  %345 = sext i32 %344 to i64
  %346 = load i32** %12, align 8
  %347 = getelementptr inbounds i32* %346, i64 %345
  store i32 %343, i32* %347, align 4
  store i32 1, i32* %cont40, align 4
  br label %354

; <label>:348                                     ; preds = %329
  br label %349

; <label>:349                                     ; preds = %348
  br label %350

; <label>:350                                     ; preds = %349
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32* %k, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %k, align 4
  br label %245

; <label>:354                                     ; preds = %337, %323, %306, %245
  %355 = load i32* %cont40, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %360

; <label>:357                                     ; preds = %354
  %358 = load i32* %i, align 4
  %359 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str38, i32 0, i32 0), i32 %358)
  call void @exit(i32 1) #7
  unreachable

; <label>:360                                     ; preds = %354
  %361 = load i32* %k, align 4
  %362 = sext i32 %361 to i64
  %363 = load double** %1, align 8
  %364 = getelementptr inbounds double* %363, i64 %362
  %365 = load double* %364, align 8
  %366 = load double* %va, align 8
  %367 = fadd double %365, %366
  %368 = load i32* %k, align 4
  %369 = sext i32 %368 to i64
  %370 = load double** %1, align 8
  %371 = getelementptr inbounds double* %370, i64 %369
  store double %367, double* %371, align 8
  br label %372

; <label>:372                                     ; preds = %360
  %373 = load i32* %nzrow, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %nzrow, align 4
  br label %199

; <label>:375                                     ; preds = %199
  br label %376

; <label>:376                                     ; preds = %375
  %377 = load i32* %nza, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %nza, align 4
  br label %172

; <label>:379                                     ; preds = %172
  %380 = load double* %size, align 8
  %381 = load double* %ratio, align 8
  %382 = fmul double %380, %381
  store double %382, double* %size, align 8
  br label %383

; <label>:383                                     ; preds = %379
  %384 = load i32* %i, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %i, align 4
  br label %167

; <label>:386                                     ; preds = %167
  store i32 1, i32* %j, align 4
  br label %387

; <label>:387                                     ; preds = %408, %386
  %388 = load i32* %j, align 4
  %389 = load i32* %nrows, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %411

; <label>:391                                     ; preds = %387
  %392 = load i32* %j, align 4
  %393 = sext i32 %392 to i64
  %394 = load i32** %12, align 8
  %395 = getelementptr inbounds i32* %394, i64 %393
  %396 = load i32* %395, align 4
  %397 = load i32* %j, align 4
  %398 = sub nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = load i32** %12, align 8
  %401 = getelementptr inbounds i32* %400, i64 %399
  %402 = load i32* %401, align 4
  %403 = add nsw i32 %396, %402
  %404 = load i32* %j, align 4
  %405 = sext i32 %404 to i64
  %406 = load i32** %12, align 8
  %407 = getelementptr inbounds i32* %406, i64 %405
  store i32 %403, i32* %407, align 4
  br label %408

; <label>:408                                     ; preds = %391
  %409 = load i32* %j, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %j, align 4
  br label %387

; <label>:411                                     ; preds = %387
  store i32 0, i32* %j, align 4
  br label %412

; <label>:412                                     ; preds = %481, %411
  %413 = load i32* %j, align 4
  %414 = load i32* %nrows, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %484

; <label>:416                                     ; preds = %412
  %417 = load i32* %j, align 4
  %418 = icmp sgt i32 %417, 0
  br i1 %418, label %419, label %432

; <label>:419                                     ; preds = %416
  %420 = load i32* %j, align 4
  %421 = sext i32 %420 to i64
  %422 = load i32** %3, align 8
  %423 = getelementptr inbounds i32* %422, i64 %421
  %424 = load i32* %423, align 4
  %425 = load i32* %j, align 4
  %426 = sub nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = load i32** %12, align 8
  %429 = getelementptr inbounds i32* %428, i64 %427
  %430 = load i32* %429, align 4
  %431 = sub nsw i32 %424, %430
  store i32 %431, i32* %j1, align 4
  br label %433

; <label>:432                                     ; preds = %416
  store i32 0, i32* %j1, align 4
  br label %433

; <label>:433                                     ; preds = %432, %419
  %434 = load i32* %j, align 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = load i32** %3, align 8
  %438 = getelementptr inbounds i32* %437, i64 %436
  %439 = load i32* %438, align 4
  %440 = load i32* %j, align 4
  %441 = sext i32 %440 to i64
  %442 = load i32** %12, align 8
  %443 = getelementptr inbounds i32* %442, i64 %441
  %444 = load i32* %443, align 4
  %445 = sub nsw i32 %439, %444
  store i32 %445, i32* %j2, align 4
  %446 = load i32* %j, align 4
  %447 = sext i32 %446 to i64
  %448 = load i32** %3, align 8
  %449 = getelementptr inbounds i32* %448, i64 %447
  %450 = load i32* %449, align 4
  store i32 %450, i32* %nza, align 4
  %451 = load i32* %j1, align 4
  store i32 %451, i32* %k, align 4
  br label %452

; <label>:452                                     ; preds = %477, %433
  %453 = load i32* %k, align 4
  %454 = load i32* %j2, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %480

; <label>:456                                     ; preds = %452
  %457 = load i32* %nza, align 4
  %458 = sext i32 %457 to i64
  %459 = load double** %1, align 8
  %460 = getelementptr inbounds double* %459, i64 %458
  %461 = load double* %460, align 8
  %462 = load i32* %k, align 4
  %463 = sext i32 %462 to i64
  %464 = load double** %1, align 8
  %465 = getelementptr inbounds double* %464, i64 %463
  store double %461, double* %465, align 8
  %466 = load i32* %nza, align 4
  %467 = sext i32 %466 to i64
  %468 = load i32** %2, align 8
  %469 = getelementptr inbounds i32* %468, i64 %467
  %470 = load i32* %469, align 4
  %471 = load i32* %k, align 4
  %472 = sext i32 %471 to i64
  %473 = load i32** %2, align 8
  %474 = getelementptr inbounds i32* %473, i64 %472
  store i32 %470, i32* %474, align 4
  %475 = load i32* %nza, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %nza, align 4
  br label %477

; <label>:477                                     ; preds = %456
  %478 = load i32* %k, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %k, align 4
  br label %452

; <label>:480                                     ; preds = %452
  br label %481

; <label>:481                                     ; preds = %480
  %482 = load i32* %j, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %j, align 4
  br label %412

; <label>:484                                     ; preds = %412
  store i32 1, i32* %j, align 4
  br label %485

; <label>:485                                     ; preds = %507, %484
  %486 = load i32* %j, align 4
  %487 = load i32* %nrows, align 4
  %488 = add nsw i32 %487, 1
  %489 = icmp slt i32 %486, %488
  br i1 %489, label %490, label %510

; <label>:490                                     ; preds = %485
  %491 = load i32* %j, align 4
  %492 = sext i32 %491 to i64
  %493 = load i32** %3, align 8
  %494 = getelementptr inbounds i32* %493, i64 %492
  %495 = load i32* %494, align 4
  %496 = load i32* %j, align 4
  %497 = sub nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = load i32** %12, align 8
  %500 = getelementptr inbounds i32* %499, i64 %498
  %501 = load i32* %500, align 4
  %502 = sub nsw i32 %495, %501
  %503 = load i32* %j, align 4
  %504 = sext i32 %503 to i64
  %505 = load i32** %3, align 8
  %506 = getelementptr inbounds i32* %505, i64 %504
  store i32 %502, i32* %506, align 4
  br label %507

; <label>:507                                     ; preds = %490
  %508 = load i32* %j, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %j, align 4
  br label %485

; <label>:510                                     ; preds = %485
  %511 = load i32* %nrows, align 4
  %512 = sext i32 %511 to i64
  %513 = load i32** %3, align 8
  %514 = getelementptr inbounds i32* %513, i64 %512
  %515 = load i32* %514, align 4
  %516 = sub nsw i32 %515, 1
  store i32 %516, i32* %nza, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @icnvrt(double %x, i32 %ipwr2) #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  store double %x, double* %1, align 8
  store i32 %ipwr2, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = load double* %1, align 8
  %6 = fmul double %4, %5
  %7 = fptosi double %6 to i32
  ret i32 %7
}

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
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str39, i32 0, i32 0), i8* %19)
  %21 = load i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str140, i32 0, i32 0), i32 %22)
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
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str241, i32 0, i32 0), i64 %37)
  br label %44

; <label>:39                                      ; preds = %0
  %40 = load i32* %3, align 4
  %41 = load i32* %4, align 4
  %42 = load i32* %5, align 4
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str342, i32 0, i32 0), i32 %40, i32 %41, i32 %42)
  br label %44

; <label>:44                                      ; preds = %39, %36
  %45 = load i32* %6, align 4
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str443, i32 0, i32 0), i32 %45)
  %47 = load double* %7, align 8
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str544, i32 0, i32 0), double %47)
  %49 = load double* %8, align 8
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str645, i32 0, i32 0), double %49)
  %51 = load i8** %9, align 8
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str746, i32 0, i32 0), i8* %51)
  %53 = load i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %44
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str847, i32 0, i32 0))
  br label %65

; <label>:57                                      ; preds = %44
  %58 = load i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str948, i32 0, i32 0))
  br label %64

; <label>:62                                      ; preds = %57
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str1049, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %62, %60
  br label %65

; <label>:65                                      ; preds = %64, %55
  %66 = load i8** %11, align 8
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1150, i32 0, i32 0), i8* %66)
  %68 = load i8** %12, align 8
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1251, i32 0, i32 0), i8* %68)
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str1352, i32 0, i32 0))
  %71 = load i8** %13, align 8
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1453, i32 0, i32 0), i8* %71)
  %73 = load i8** %14, align 8
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1554, i32 0, i32 0), i8* %73)
  %75 = load i8** %15, align 8
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1655, i32 0, i32 0), i8* %75)
  %77 = load i8** %16, align 8
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1756, i32 0, i32 0), i8* %77)
  %79 = load i8** %17, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1857, i32 0, i32 0), i8* %79)
  %81 = load i8** %18, align 8
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1958, i32 0, i32 0), i8* %81)
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str2059, i32 0, i32 0))
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str2160, i32 0, i32 0))
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2261, i32 0, i32 0))
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str2362, i32 0, i32 0))
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str2463, i32 0, i32 0))
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str2564, i32 0, i32 0))
  ret void
}

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
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str73, i32 0, i32 0), i8* %20)
  %22 = load i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str174, i32 0, i32 0), i32 %23)
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
  %46 = call double @pow(double 2.000000e+00, double %45) #5
  %47 = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8]* @.str275, i32 0, i32 0), double %46) #5
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
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str376, i32 0, i32 0), i8* %65)
  br label %70

; <label>:67                                      ; preds = %36, %30
  %68 = load i32* %3, align 4
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str477, i32 0, i32 0), i32 %68)
  br label %70

; <label>:70                                      ; preds = %67, %60
  br label %76

; <label>:71                                      ; preds = %27, %0
  %72 = load i32* %3, align 4
  %73 = load i32* %4, align 4
  %74 = load i32* %5, align 4
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str578, i32 0, i32 0), i32 %72, i32 %73, i32 %74)
  br label %76

; <label>:76                                      ; preds = %71, %70
  %77 = load i32* %6, align 4
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str679, i32 0, i32 0), i32 %77)
  %79 = load i8** %9, align 8
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str780, i32 0, i32 0), i8* %79)
  %81 = load i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %76
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str881, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str982, i32 0, i32 0))
  br label %87

; <label>:85                                      ; preds = %76
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str881, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1083, i32 0, i32 0))
  br label %87

; <label>:87                                      ; preds = %85, %83
  %88 = load i8** %11, align 8
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1184, i32 0, i32 0), i8* %88)
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([195 x i8]* @.str1285, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

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
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #5
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
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
