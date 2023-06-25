; ModuleID = 'EP-1.0.ll'
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
@.str27 = private unnamed_addr constant [69 x i8] c"**********************SDC DETECTED!check-flag**********************\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* %compiletime, i8* %cc, i8* %clink, i8* %c_lib, i8* %c_inc, i8* %cflags, i8* %clinkflags) #0 {
  %1 = alloca i8*, align 8, !llfi_index !1
  %2 = alloca i8, align 1, !llfi_index !2
  %3 = alloca i32, align 4, !llfi_index !3
  %4 = alloca i32, align 4, !llfi_index !4
  %5 = alloca i32, align 4, !llfi_index !5
  %6 = alloca i32, align 4, !llfi_index !6
  %7 = alloca double, align 8, !llfi_index !7
  %8 = alloca double, align 8, !llfi_index !8
  %9 = alloca i8*, align 8, !llfi_index !9
  %10 = alloca i32, align 4, !llfi_index !10
  %11 = alloca i8*, align 8, !llfi_index !11
  %12 = alloca i8*, align 8, !llfi_index !12
  %13 = alloca i8*, align 8, !llfi_index !13
  %14 = alloca i8*, align 8, !llfi_index !14
  %15 = alloca i8*, align 8, !llfi_index !15
  %16 = alloca i8*, align 8, !llfi_index !16
  %17 = alloca i8*, align 8, !llfi_index !17
  %18 = alloca i8*, align 8, !llfi_index !18
  %nn = alloca i64, align 8, !llfi_index !19
  store i8* %name, i8** %1, align 8, !llfi_index !20
  store i8 %class, i8* %2, align 1, !llfi_index !21
  store i32 %n1, i32* %3, align 4, !llfi_index !22
  store i32 %n2, i32* %4, align 4, !llfi_index !23
  store i32 %n3, i32* %5, align 4, !llfi_index !24
  store i32 %niter, i32* %6, align 4, !llfi_index !25
  store double %t, double* %7, align 8, !llfi_index !26
  store double %mops, double* %8, align 8, !llfi_index !27
  store i8* %optype, i8** %9, align 8, !llfi_index !28
  store i32 %passed_verification, i32* %10, align 4, !llfi_index !29
  store i8* %npbversion, i8** %11, align 8, !llfi_index !30
  store i8* %compiletime, i8** %12, align 8, !llfi_index !31
  store i8* %cc, i8** %13, align 8, !llfi_index !32
  store i8* %clink, i8** %14, align 8, !llfi_index !33
  store i8* %c_lib, i8** %15, align 8, !llfi_index !34
  store i8* %c_inc, i8** %16, align 8, !llfi_index !35
  store i8* %cflags, i8** %17, align 8, !llfi_index !36
  store i8* %clinkflags, i8** %18, align 8, !llfi_index !37
  %19 = load i8** %1, align 8, !llfi_index !38
  %20 = load i8** %1, align 8, !llfi_index !38
  %check_cmp = icmp eq i8* %19, %20
  br i1 %check_cmp, label %21, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %21

; <label>:21                                      ; preds = %checkBb, %0
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0), i8* %19), !llfi_index !39
  %23 = load i8* %2, align 1, !llfi_index !40
  %24 = load i8* %2, align 1, !llfi_index !40
  %25 = sext i8 %23 to i32, !llfi_index !41
  %26 = sext i8 %24 to i32, !llfi_index !41
  %check_cmp1 = icmp eq i32 %25, %26
  br i1 %check_cmp1, label %27, label %checkBb2

checkBb2:                                         ; preds = %21
  call void @check_flag()
  br label %27

; <label>:27                                      ; preds = %checkBb2, %21
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str1, i32 0, i32 0), i32 %25), !llfi_index !42
  %29 = load i32* %5, align 4, !llfi_index !43
  %30 = load i32* %5, align 4, !llfi_index !43
  %31 = icmp eq i32 %29, 0, !llfi_index !44
  %32 = icmp eq i32 %30, 0, !llfi_index !44
  %check_cmp3 = icmp eq i1 %31, %32
  br i1 %check_cmp3, label %33, label %checkBb4

checkBb4:                                         ; preds = %27
  call void @check_flag()
  br label %33

; <label>:33                                      ; preds = %checkBb4, %27
  br i1 %31, label %34, label %60, !llfi_index !45

; <label>:34                                      ; preds = %33
  %35 = load i32* %3, align 4, !llfi_index !46
  %36 = load i32* %3, align 4, !llfi_index !46
  %37 = sext i32 %35 to i64, !llfi_index !47
  %38 = sext i32 %36 to i64, !llfi_index !47
  %check_cmp5 = icmp eq i64 %37, %38
  br i1 %check_cmp5, label %39, label %checkBb6

checkBb6:                                         ; preds = %34
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb6, %34
  store i64 %37, i64* %nn, align 8, !llfi_index !48
  %40 = load i32* %4, align 4, !llfi_index !49
  %41 = load i32* %4, align 4, !llfi_index !49
  %42 = icmp ne i32 %40, 0, !llfi_index !50
  %43 = icmp ne i32 %41, 0, !llfi_index !50
  %check_cmp7 = icmp eq i1 %42, %43
  br i1 %check_cmp7, label %44, label %checkBb8

checkBb8:                                         ; preds = %39
  call void @check_flag()
  br label %44

; <label>:44                                      ; preds = %checkBb8, %39
  br i1 %42, label %45, label %55, !llfi_index !51

; <label>:45                                      ; preds = %44
  %46 = load i32* %4, align 4, !llfi_index !52
  %47 = load i32* %4, align 4, !llfi_index !52
  %48 = sext i32 %46 to i64, !llfi_index !53
  %49 = sext i32 %47 to i64, !llfi_index !53
  %50 = load i64* %nn, align 8, !llfi_index !54
  %51 = load i64* %nn, align 8, !llfi_index !54
  %52 = mul nsw i64 %50, %48, !llfi_index !55
  %53 = mul nsw i64 %51, %49, !llfi_index !55
  %check_cmp9 = icmp eq i64 %52, %53
  br i1 %check_cmp9, label %54, label %checkBb10

checkBb10:                                        ; preds = %45
  call void @check_flag()
  br label %54

; <label>:54                                      ; preds = %checkBb10, %45
  store i64 %52, i64* %nn, align 8, !llfi_index !56
  br label %55, !llfi_index !57

; <label>:55                                      ; preds = %54, %44
  %56 = load i64* %nn, align 8, !llfi_index !58
  %57 = load i64* %nn, align 8, !llfi_index !58
  %check_cmp11 = icmp eq i64 %56, %57
  br i1 %check_cmp11, label %58, label %checkBb12

checkBb12:                                        ; preds = %55
  call void @check_flag()
  br label %58

; <label>:58                                      ; preds = %checkBb12, %55
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i32 0, i32 0), i64 %56), !llfi_index !59
  br label %71, !llfi_index !60

; <label>:60                                      ; preds = %33
  %61 = load i32* %3, align 4, !llfi_index !61
  %62 = load i32* %3, align 4, !llfi_index !61
  %check_cmp13 = icmp eq i32 %61, %62
  br i1 %check_cmp13, label %63, label %checkBb14

checkBb14:                                        ; preds = %60
  call void @check_flag()
  br label %63

; <label>:63                                      ; preds = %checkBb14, %60
  %64 = load i32* %4, align 4, !llfi_index !62
  %65 = load i32* %4, align 4, !llfi_index !62
  %check_cmp15 = icmp eq i32 %64, %65
  br i1 %check_cmp15, label %66, label %checkBb16

checkBb16:                                        ; preds = %63
  call void @check_flag()
  br label %66

; <label>:66                                      ; preds = %checkBb16, %63
  %67 = load i32* %5, align 4, !llfi_index !63
  %68 = load i32* %5, align 4, !llfi_index !63
  %check_cmp17 = icmp eq i32 %67, %68
  br i1 %check_cmp17, label %69, label %checkBb18

checkBb18:                                        ; preds = %66
  call void @check_flag()
  br label %69

; <label>:69                                      ; preds = %checkBb18, %66
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str3, i32 0, i32 0), i32 %61, i32 %64, i32 %67), !llfi_index !64
  br label %71, !llfi_index !65

; <label>:71                                      ; preds = %69, %58
  %72 = load i32* %6, align 4, !llfi_index !66
  %73 = load i32* %6, align 4, !llfi_index !66
  %check_cmp19 = icmp eq i32 %72, %73
  br i1 %check_cmp19, label %74, label %checkBb20

checkBb20:                                        ; preds = %71
  call void @check_flag()
  br label %74

; <label>:74                                      ; preds = %checkBb20, %71
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i32 0, i32 0), i32 %72), !llfi_index !67
  %76 = load double* %7, align 8, !llfi_index !68
  %77 = load double* %7, align 8, !llfi_index !68
  %check_cmp21 = fcmp ueq double %76, %77
  br i1 %check_cmp21, label %78, label %checkBb22

checkBb22:                                        ; preds = %74
  call void @check_flag()
  br label %78

; <label>:78                                      ; preds = %checkBb22, %74
  %79 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i32 0, i32 0), double %76), !llfi_index !69
  %80 = load double* %8, align 8, !llfi_index !70
  %81 = load double* %8, align 8, !llfi_index !70
  %check_cmp23 = fcmp ueq double %80, %81
  br i1 %check_cmp23, label %82, label %checkBb24

checkBb24:                                        ; preds = %78
  call void @check_flag()
  br label %82

; <label>:82                                      ; preds = %checkBb24, %78
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0), double %80), !llfi_index !71
  %84 = load i8** %9, align 8, !llfi_index !72
  %85 = load i8** %9, align 8, !llfi_index !72
  %check_cmp25 = icmp eq i8* %84, %85
  br i1 %check_cmp25, label %86, label %checkBb26

checkBb26:                                        ; preds = %82
  call void @check_flag()
  br label %86

; <label>:86                                      ; preds = %checkBb26, %82
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str7, i32 0, i32 0), i8* %84), !llfi_index !73
  %88 = load i32* %10, align 4, !llfi_index !74
  %89 = load i32* %10, align 4, !llfi_index !74
  %90 = icmp slt i32 %88, 0, !llfi_index !75
  %91 = icmp slt i32 %89, 0, !llfi_index !75
  %check_cmp27 = icmp eq i1 %90, %91
  br i1 %check_cmp27, label %92, label %checkBb28

checkBb28:                                        ; preds = %86
  call void @check_flag()
  br label %92

; <label>:92                                      ; preds = %checkBb28, %86
  br i1 %90, label %93, label %95, !llfi_index !76

; <label>:93                                      ; preds = %92
  %94 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str8, i32 0, i32 0)), !llfi_index !77
  br label %106, !llfi_index !78

; <label>:95                                      ; preds = %92
  %96 = load i32* %10, align 4, !llfi_index !79
  %97 = load i32* %10, align 4, !llfi_index !79
  %98 = icmp ne i32 %96, 0, !llfi_index !80
  %99 = icmp ne i32 %97, 0, !llfi_index !80
  %check_cmp29 = icmp eq i1 %98, %99
  br i1 %check_cmp29, label %100, label %checkBb30

checkBb30:                                        ; preds = %95
  call void @check_flag()
  br label %100

; <label>:100                                     ; preds = %checkBb30, %95
  br i1 %98, label %101, label %103, !llfi_index !81

; <label>:101                                     ; preds = %100
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str9, i32 0, i32 0)), !llfi_index !82
  br label %105, !llfi_index !83

; <label>:103                                     ; preds = %100
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str10, i32 0, i32 0)), !llfi_index !84
  br label %105, !llfi_index !85

; <label>:105                                     ; preds = %103, %101
  br label %106, !llfi_index !86

; <label>:106                                     ; preds = %105, %93
  %107 = load i8** %11, align 8, !llfi_index !87
  %108 = load i8** %11, align 8, !llfi_index !87
  %check_cmp31 = icmp eq i8* %107, %108
  br i1 %check_cmp31, label %109, label %checkBb32

checkBb32:                                        ; preds = %106
  call void @check_flag()
  br label %109

; <label>:109                                     ; preds = %checkBb32, %106
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str11, i32 0, i32 0), i8* %107), !llfi_index !88
  %111 = load i8** %12, align 8, !llfi_index !89
  %112 = load i8** %12, align 8, !llfi_index !89
  %check_cmp33 = icmp eq i8* %111, %112
  br i1 %check_cmp33, label %113, label %checkBb34

checkBb34:                                        ; preds = %109
  call void @check_flag()
  br label %113

; <label>:113                                     ; preds = %checkBb34, %109
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str12, i32 0, i32 0), i8* %111), !llfi_index !90
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str13, i32 0, i32 0)), !llfi_index !91
  %116 = load i8** %13, align 8, !llfi_index !92
  %117 = load i8** %13, align 8, !llfi_index !92
  %check_cmp35 = icmp eq i8* %116, %117
  br i1 %check_cmp35, label %118, label %checkBb36

checkBb36:                                        ; preds = %113
  call void @check_flag()
  br label %118

; <label>:118                                     ; preds = %checkBb36, %113
  %119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0), i8* %116), !llfi_index !93
  %120 = load i8** %14, align 8, !llfi_index !94
  %121 = load i8** %14, align 8, !llfi_index !94
  %check_cmp37 = icmp eq i8* %120, %121
  br i1 %check_cmp37, label %122, label %checkBb38

checkBb38:                                        ; preds = %118
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb38, %118
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), i8* %120), !llfi_index !95
  %124 = load i8** %15, align 8, !llfi_index !96
  %125 = load i8** %15, align 8, !llfi_index !96
  %check_cmp39 = icmp eq i8* %124, %125
  br i1 %check_cmp39, label %126, label %checkBb40

checkBb40:                                        ; preds = %122
  call void @check_flag()
  br label %126

; <label>:126                                     ; preds = %checkBb40, %122
  %127 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %124), !llfi_index !97
  %128 = load i8** %16, align 8, !llfi_index !98
  %129 = load i8** %16, align 8, !llfi_index !98
  %check_cmp41 = icmp eq i8* %128, %129
  br i1 %check_cmp41, label %130, label %checkBb42

checkBb42:                                        ; preds = %126
  call void @check_flag()
  br label %130

; <label>:130                                     ; preds = %checkBb42, %126
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str17, i32 0, i32 0), i8* %128), !llfi_index !99
  %132 = load i8** %17, align 8, !llfi_index !100
  %133 = load i8** %17, align 8, !llfi_index !100
  %check_cmp43 = icmp eq i8* %132, %133
  br i1 %check_cmp43, label %134, label %checkBb44

checkBb44:                                        ; preds = %130
  call void @check_flag()
  br label %134

; <label>:134                                     ; preds = %checkBb44, %130
  %135 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), i8* %132), !llfi_index !101
  %136 = load i8** %18, align 8, !llfi_index !102
  %137 = load i8** %18, align 8, !llfi_index !102
  %check_cmp45 = icmp eq i8* %136, %137
  br i1 %check_cmp45, label %138, label %checkBb46

checkBb46:                                        ; preds = %134
  call void @check_flag()
  br label %138

; <label>:138                                     ; preds = %checkBb46, %134
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str19, i32 0, i32 0), i8* %136), !llfi_index !103
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str20, i32 0, i32 0)), !llfi_index !104
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0)), !llfi_index !105
  %142 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str22, i32 0, i32 0)), !llfi_index !106
  %143 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0)), !llfi_index !107
  %144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str24, i32 0, i32 0)), !llfi_index !108
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str25, i32 0, i32 0)), !llfi_index !109
  ret void, !llfi_index !110
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @timer_clear(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !111
  store i32 %n, i32* %1, align 4, !llfi_index !112
  %2 = load i32* %1, align 4, !llfi_index !113
  %3 = load i32* %1, align 4, !llfi_index !113
  %4 = sext i32 %2 to i64, !llfi_index !114
  %5 = sext i32 %3 to i64, !llfi_index !114
  %6 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %4, !llfi_index !115
  %7 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %5, !llfi_index !115
  %check_cmp = icmp eq double* %6, %7
  br i1 %check_cmp, label %8, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb, %0
  store double 0.000000e+00, double* %6, align 8, !llfi_index !116
  ret void, !llfi_index !117
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !118
  store i32 %n, i32* %1, align 4, !llfi_index !119
  %2 = call double @elapsed_time(), !llfi_index !120
  %3 = load i32* %1, align 4, !llfi_index !121
  %4 = load i32* %1, align 4, !llfi_index !121
  %5 = sext i32 %3 to i64, !llfi_index !122
  %6 = sext i32 %4 to i64, !llfi_index !122
  %7 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %5, !llfi_index !123
  %8 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %6, !llfi_index !123
  %check_cmp = icmp eq double* %7, %8
  br i1 %check_cmp, label %9, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %9

; <label>:9                                       ; preds = %checkBb, %0
  store double %2, double* %7, align 8, !llfi_index !124
  ret void, !llfi_index !125
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !126
  %t = alloca double, align 8, !llfi_index !127
  %now = alloca double, align 8, !llfi_index !128
  store i32 %n, i32* %1, align 4, !llfi_index !129
  %2 = call double @elapsed_time(), !llfi_index !130
  store double %2, double* %now, align 8, !llfi_index !131
  %3 = load double* %now, align 8, !llfi_index !132
  %4 = load double* %now, align 8, !llfi_index !132
  %5 = load i32* %1, align 4, !llfi_index !133
  %6 = load i32* %1, align 4, !llfi_index !133
  %7 = sext i32 %5 to i64, !llfi_index !134
  %8 = sext i32 %6 to i64, !llfi_index !134
  %9 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %7, !llfi_index !135
  %10 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %8, !llfi_index !135
  %11 = load double* %9, align 8, !llfi_index !136
  %12 = load double* %10, align 8, !llfi_index !136
  %13 = fsub double %3, %11, !llfi_index !137
  %14 = fsub double %4, %12, !llfi_index !137
  %check_cmp = fcmp ueq double %13, %14
  br i1 %check_cmp, label %15, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %15

; <label>:15                                      ; preds = %checkBb, %0
  store double %13, double* %t, align 8, !llfi_index !138
  %16 = load double* %t, align 8, !llfi_index !139
  %17 = load double* %t, align 8, !llfi_index !139
  %18 = load i32* %1, align 4, !llfi_index !140
  %19 = load i32* %1, align 4, !llfi_index !140
  %20 = sext i32 %18 to i64, !llfi_index !141
  %21 = sext i32 %19 to i64, !llfi_index !141
  %22 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %20, !llfi_index !142
  %23 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %21, !llfi_index !142
  %24 = load double* %22, align 8, !llfi_index !143
  %25 = load double* %23, align 8, !llfi_index !143
  %26 = fadd double %24, %16, !llfi_index !144
  %27 = fadd double %25, %17, !llfi_index !144
  %check_cmp1 = fcmp ueq double %26, %27
  br i1 %check_cmp1, label %28, label %checkBb2

checkBb2:                                         ; preds = %15
  call void @check_flag()
  br label %28

; <label>:28                                      ; preds = %checkBb2, %15
  store double %26, double* %22, align 8, !llfi_index !145
  ret void, !llfi_index !146
}

; Function Attrs: nounwind uwtable
define double @timer_read(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !147
  store i32 %n, i32* %1, align 4, !llfi_index !148
  %2 = load i32* %1, align 4, !llfi_index !149
  %3 = load i32* %1, align 4, !llfi_index !149
  %4 = sext i32 %2 to i64, !llfi_index !150
  %5 = sext i32 %3 to i64, !llfi_index !150
  %6 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %4, !llfi_index !151
  %7 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %5, !llfi_index !151
  %8 = load double* %6, align 8, !llfi_index !152
  %9 = load double* %7, align 8, !llfi_index !152
  %check_cmp = fcmp ueq double %8, %9
  br i1 %check_cmp, label %10, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %10

; <label>:10                                      ; preds = %checkBb, %0
  ret double %8, !llfi_index !153
}

; Function Attrs: nounwind uwtable
define internal double @elapsed_time() #0 {
  %t = alloca double, align 8, !llfi_index !154
  call void @wtime_(double* %t), !llfi_index !155
  %1 = load double* %t, align 8, !llfi_index !156
  %2 = load double* %t, align 8, !llfi_index !156
  %check_cmp = fcmp ueq double %1, %2
  br i1 %check_cmp, label %3, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %3

; <label>:3                                       ; preds = %checkBb, %0
  ret double %1, !llfi_index !157
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4, !llfi_index !158
  %Mops = alloca double, align 8, !llfi_index !159
  %t1 = alloca double, align 8, !llfi_index !160
  %t2 = alloca double, align 8, !llfi_index !161
  %t3 = alloca double, align 8, !llfi_index !162
  %t4 = alloca double, align 8, !llfi_index !163
  %x1 = alloca double, align 8, !llfi_index !164
  %x2 = alloca double, align 8, !llfi_index !165
  %sx = alloca double, align 8, !llfi_index !166
  %sy = alloca double, align 8, !llfi_index !167
  %tm = alloca double, align 8, !llfi_index !168
  %an = alloca double, align 8, !llfi_index !169
  %tt = alloca double, align 8, !llfi_index !170
  %gc = alloca double, align 8, !llfi_index !171
  %sx_verify_value = alloca double, align 8, !llfi_index !172
  %sy_verify_value = alloca double, align 8, !llfi_index !173
  %sx_err = alloca double, align 8, !llfi_index !174
  %sy_err = alloca double, align 8, !llfi_index !175
  %np = alloca i32, align 4, !llfi_index !176
  %i = alloca i32, align 4, !llfi_index !177
  %ik = alloca i32, align 4, !llfi_index !178
  %kk = alloca i32, align 4, !llfi_index !179
  %l = alloca i32, align 4, !llfi_index !180
  %k = alloca i32, align 4, !llfi_index !181
  %nit = alloca i32, align 4, !llfi_index !182
  %k_offset = alloca i32, align 4, !llfi_index !183
  %j = alloca i32, align 4, !llfi_index !184
  %verified = alloca i32, align 4, !llfi_index !185
  %timers_enabled = alloca i32, align 4, !llfi_index !186
  %dum = alloca [3 x double], align 16, !llfi_index !187
  %size = alloca [16 x i8], align 16, !llfi_index !188
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !189
  store i32 0, i32* %1, !llfi_index !190
  %2 = bitcast [3 x double]* %dum to i8*, !llfi_index !191
  %3 = bitcast [3 x double]* %dum to i8*, !llfi_index !191
  %check_cmp = icmp eq i8* %2, %3
  br i1 %check_cmp, label %4, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %4

; <label>:4                                       ; preds = %checkBb, %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([3 x double]* @main.dum to i8*), i64 24, i32 16, i1 false), !llfi_index !192
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str127, i32 0, i32 0)), !llfi_index !193
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8, !llfi_index !194
  %6 = icmp eq %struct._IO_FILE* %5, null, !llfi_index !195
  %7 = icmp eq %struct._IO_FILE* %5, null, !llfi_index !195
  %check_cmp1 = icmp eq i1 %6, %7
  br i1 %check_cmp1, label %8, label %checkBb2

checkBb2:                                         ; preds = %4
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb2, %4
  br i1 %6, label %9, label %10, !llfi_index !196

; <label>:9                                       ; preds = %8
  store i32 0, i32* %timers_enabled, align 4, !llfi_index !197
  br label %15, !llfi_index !198

; <label>:10                                      ; preds = %8
  store i32 1, i32* %timers_enabled, align 4, !llfi_index !199
  %11 = load %struct._IO_FILE** %fp, align 8, !llfi_index !200
  %12 = load %struct._IO_FILE** %fp, align 8, !llfi_index !200
  %check_cmp3 = icmp eq %struct._IO_FILE* %11, %12
  br i1 %check_cmp3, label %13, label %checkBb4

checkBb4:                                         ; preds = %10
  call void @check_flag()
  br label %13

; <label>:13                                      ; preds = %checkBb4, %10
  %14 = call i32 @fclose(%struct._IO_FILE* %11), !llfi_index !201
  br label %15, !llfi_index !202

; <label>:15                                      ; preds = %13, %9
  %16 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !203
  %17 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !203
  %check_cmp5 = icmp eq i8* %16, %17
  br i1 %check_cmp5, label %18, label %checkBb6

checkBb6:                                         ; preds = %15
  call void @check_flag()
  br label %18

; <label>:18                                      ; preds = %checkBb6, %15
  %19 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2, !llfi_index !204
  %20 = call i32 (i8*, i8*, ...)* @sprintf(i8* %16, i8* getelementptr inbounds ([8 x i8]* @.str228, i32 0, i32 0), double %19) #2, !llfi_index !205
  store i32 14, i32* %j, align 4, !llfi_index !206
  %21 = load i32* %j, align 4, !llfi_index !207
  %22 = load i32* %j, align 4, !llfi_index !207
  %23 = sext i32 %21 to i64, !llfi_index !208
  %24 = sext i32 %22 to i64, !llfi_index !208
  %25 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %23, !llfi_index !209
  %26 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %24, !llfi_index !209
  %27 = load i8* %25, align 1, !llfi_index !210
  %28 = load i8* %26, align 1, !llfi_index !210
  %29 = sext i8 %27 to i32, !llfi_index !211
  %30 = sext i8 %28 to i32, !llfi_index !211
  %31 = icmp eq i32 %29, 46, !llfi_index !212
  %32 = icmp eq i32 %30, 46, !llfi_index !212
  %check_cmp7 = icmp eq i1 %31, %32
  br i1 %check_cmp7, label %33, label %checkBb8

checkBb8:                                         ; preds = %18
  call void @check_flag()
  br label %33

; <label>:33                                      ; preds = %checkBb8, %18
  br i1 %31, label %34, label %40, !llfi_index !213

; <label>:34                                      ; preds = %33
  %35 = load i32* %j, align 4, !llfi_index !214
  %36 = load i32* %j, align 4, !llfi_index !214
  %37 = add nsw i32 %35, -1, !llfi_index !215
  %38 = add nsw i32 %36, -1, !llfi_index !215
  %check_cmp9 = icmp eq i32 %37, %38
  br i1 %check_cmp9, label %39, label %checkBb10

checkBb10:                                        ; preds = %34
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb10, %34
  store i32 %37, i32* %j, align 4, !llfi_index !216
  br label %40, !llfi_index !217

; <label>:40                                      ; preds = %39, %33
  %41 = load i32* %j, align 4, !llfi_index !218
  %42 = load i32* %j, align 4, !llfi_index !218
  %43 = add nsw i32 %41, 1, !llfi_index !219
  %44 = add nsw i32 %42, 1, !llfi_index !219
  %45 = sext i32 %43 to i64, !llfi_index !220
  %46 = sext i32 %44 to i64, !llfi_index !220
  %47 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %45, !llfi_index !221
  %48 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %46, !llfi_index !221
  %check_cmp11 = icmp eq i8* %47, %48
  br i1 %check_cmp11, label %49, label %checkBb12

checkBb12:                                        ; preds = %40
  call void @check_flag()
  br label %49

; <label>:49                                      ; preds = %checkBb12, %40
  store i8 0, i8* %47, align 1, !llfi_index !222
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str329, i32 0, i32 0)), !llfi_index !223
  %51 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !224
  %52 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !224
  %check_cmp13 = icmp eq i8* %51, %52
  br i1 %check_cmp13, label %53, label %checkBb14

checkBb14:                                        ; preds = %49
  call void @check_flag()
  br label %53

; <label>:53                                      ; preds = %checkBb14, %49
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str430, i32 0, i32 0), i8* %51), !llfi_index !225
  store i32 0, i32* %verified, align 4, !llfi_index !226
  store i32 512, i32* %np, align 4, !llfi_index !227
  %55 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !228
  %56 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !228
  %check_cmp15 = icmp eq double* %55, %56
  br i1 %check_cmp15, label %57, label %checkBb16

checkBb16:                                        ; preds = %53
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb16, %53
  %58 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !229
  %59 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !229
  %60 = load double* %58, align 8, !llfi_index !230
  %61 = load double* %59, align 8, !llfi_index !230
  %check_cmp17 = fcmp ueq double %60, %61
  br i1 %check_cmp17, label %62, label %checkBb18

checkBb18:                                        ; preds = %57
  call void @check_flag()
  br label %62

; <label>:62                                      ; preds = %checkBb18, %57
  %63 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !231
  %64 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !231
  %check_cmp19 = icmp eq double* %63, %64
  br i1 %check_cmp19, label %65, label %checkBb20

checkBb20:                                        ; preds = %62
  call void @check_flag()
  br label %65

; <label>:65                                      ; preds = %checkBb20, %62
  call void @vranlc(i32 0, double* %55, double %60, double* %63), !llfi_index !232
  %66 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !233
  %67 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !233
  %check_cmp21 = icmp eq double* %66, %67
  br i1 %check_cmp21, label %68, label %checkBb22

checkBb22:                                        ; preds = %65
  call void @check_flag()
  br label %68

; <label>:68                                      ; preds = %checkBb22, %65
  %69 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !234
  %70 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !234
  %71 = load double* %69, align 8, !llfi_index !235
  %72 = load double* %70, align 8, !llfi_index !235
  %check_cmp23 = fcmp ueq double %71, %72
  br i1 %check_cmp23, label %73, label %checkBb24

checkBb24:                                        ; preds = %68
  call void @check_flag()
  br label %73

; <label>:73                                      ; preds = %checkBb24, %68
  %74 = call double @randlc(double* %66, double %71), !llfi_index !236
  %75 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !237
  %76 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !237
  %check_cmp25 = icmp eq double* %75, %76
  br i1 %check_cmp25, label %77, label %checkBb26

checkBb26:                                        ; preds = %73
  call void @check_flag()
  br label %77

; <label>:77                                      ; preds = %checkBb26, %73
  store double %74, double* %75, align 8, !llfi_index !238
  store i32 0, i32* %i, align 4, !llfi_index !239
  br label %78, !llfi_index !240

; <label>:78                                      ; preds = %97, %77
  %79 = load i32* %i, align 4, !llfi_index !241
  %80 = load i32* %i, align 4, !llfi_index !241
  %81 = icmp slt i32 %79, 131072, !llfi_index !242
  %82 = icmp slt i32 %80, 131072, !llfi_index !242
  %check_cmp27 = icmp eq i1 %81, %82
  br i1 %check_cmp27, label %83, label %checkBb28

checkBb28:                                        ; preds = %78
  call void @check_flag()
  br label %83

; <label>:83                                      ; preds = %checkBb28, %78
  br i1 %81, label %84, label %98, !llfi_index !243

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4, !llfi_index !244
  %86 = load i32* %i, align 4, !llfi_index !244
  %87 = sext i32 %85 to i64, !llfi_index !245
  %88 = sext i32 %86 to i64, !llfi_index !245
  %89 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %87, !llfi_index !246
  %90 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %88, !llfi_index !246
  %check_cmp29 = icmp eq double* %89, %90
  br i1 %check_cmp29, label %91, label %checkBb30

checkBb30:                                        ; preds = %84
  call void @check_flag()
  br label %91

; <label>:91                                      ; preds = %checkBb30, %84
  store double -1.000000e+99, double* %89, align 8, !llfi_index !247
  br label %92, !llfi_index !248

; <label>:92                                      ; preds = %91
  %93 = load i32* %i, align 4, !llfi_index !249
  %94 = load i32* %i, align 4, !llfi_index !249
  %95 = add nsw i32 %93, 1, !llfi_index !250
  %96 = add nsw i32 %94, 1, !llfi_index !250
  %check_cmp31 = icmp eq i32 %95, %96
  br i1 %check_cmp31, label %97, label %checkBb32

checkBb32:                                        ; preds = %92
  call void @check_flag()
  br label %97

; <label>:97                                      ; preds = %checkBb32, %92
  store i32 %95, i32* %i, align 4, !llfi_index !251
  br label %78, !llfi_index !252

; <label>:98                                      ; preds = %83
  %99 = call double @fabs(double 1.000000e+00) #6, !llfi_index !253
  %100 = call double @sqrt(double %99) #2, !llfi_index !254
  %101 = call double @log(double %100) #2, !llfi_index !255
  store double %101, double* %Mops, align 8, !llfi_index !256
  call void @timer_clear(i32 0), !llfi_index !257
  call void @timer_clear(i32 1), !llfi_index !258
  call void @timer_clear(i32 2), !llfi_index !259
  call void @timer_start(i32 0), !llfi_index !260
  store double 0x41D2309CE5400000, double* %t1, align 8, !llfi_index !261
  call void @vranlc(i32 0, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0)), !llfi_index !262
  store double 0x41D2309CE5400000, double* %t1, align 8, !llfi_index !263
  store i32 0, i32* %i, align 4, !llfi_index !264
  br label %102, !llfi_index !265

; <label>:102                                     ; preds = %118, %98
  %103 = load i32* %i, align 4, !llfi_index !266
  %104 = load i32* %i, align 4, !llfi_index !266
  %105 = icmp slt i32 %103, 17, !llfi_index !267
  %106 = icmp slt i32 %104, 17, !llfi_index !267
  %check_cmp33 = icmp eq i1 %105, %106
  br i1 %check_cmp33, label %107, label %checkBb34

checkBb34:                                        ; preds = %102
  call void @check_flag()
  br label %107

; <label>:107                                     ; preds = %checkBb34, %102
  br i1 %105, label %108, label %119, !llfi_index !268

; <label>:108                                     ; preds = %107
  %109 = load double* %t1, align 8, !llfi_index !269
  %110 = load double* %t1, align 8, !llfi_index !269
  %check_cmp35 = fcmp ueq double %109, %110
  br i1 %check_cmp35, label %111, label %checkBb36

checkBb36:                                        ; preds = %108
  call void @check_flag()
  br label %111

; <label>:111                                     ; preds = %checkBb36, %108
  %112 = call double @randlc(double* %t1, double %109), !llfi_index !270
  store double %112, double* %t2, align 8, !llfi_index !271
  br label %113, !llfi_index !272

; <label>:113                                     ; preds = %111
  %114 = load i32* %i, align 4, !llfi_index !273
  %115 = load i32* %i, align 4, !llfi_index !273
  %116 = add nsw i32 %114, 1, !llfi_index !274
  %117 = add nsw i32 %115, 1, !llfi_index !274
  %check_cmp37 = icmp eq i32 %116, %117
  br i1 %check_cmp37, label %118, label %checkBb38

checkBb38:                                        ; preds = %113
  call void @check_flag()
  br label %118

; <label>:118                                     ; preds = %checkBb38, %113
  store i32 %116, i32* %i, align 4, !llfi_index !275
  br label %102, !llfi_index !276

; <label>:119                                     ; preds = %107
  %120 = load double* %t1, align 8, !llfi_index !277
  %121 = load double* %t1, align 8, !llfi_index !277
  %check_cmp39 = fcmp ueq double %120, %121
  br i1 %check_cmp39, label %122, label %checkBb40

checkBb40:                                        ; preds = %119
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb40, %119
  store double %120, double* %an, align 8, !llfi_index !278
  store double 0x41B033C4D7000000, double* %tt, align 8, !llfi_index !279
  store double 0.000000e+00, double* %gc, align 8, !llfi_index !280
  store double 0.000000e+00, double* %sx, align 8, !llfi_index !281
  store double 0.000000e+00, double* %sy, align 8, !llfi_index !282
  store i32 0, i32* %i, align 4, !llfi_index !283
  br label %123, !llfi_index !284

; <label>:123                                     ; preds = %142, %122
  %124 = load i32* %i, align 4, !llfi_index !285
  %125 = load i32* %i, align 4, !llfi_index !285
  %126 = icmp slt i32 %124, 10, !llfi_index !286
  %127 = icmp slt i32 %125, 10, !llfi_index !286
  %check_cmp41 = icmp eq i1 %126, %127
  br i1 %check_cmp41, label %128, label %checkBb42

checkBb42:                                        ; preds = %123
  call void @check_flag()
  br label %128

; <label>:128                                     ; preds = %checkBb42, %123
  br i1 %126, label %129, label %143, !llfi_index !287

; <label>:129                                     ; preds = %128
  %130 = load i32* %i, align 4, !llfi_index !288
  %131 = load i32* %i, align 4, !llfi_index !288
  %132 = sext i32 %130 to i64, !llfi_index !289
  %133 = sext i32 %131 to i64, !llfi_index !289
  %134 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %132, !llfi_index !290
  %135 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %133, !llfi_index !290
  %check_cmp43 = icmp eq double* %134, %135
  br i1 %check_cmp43, label %136, label %checkBb44

checkBb44:                                        ; preds = %129
  call void @check_flag()
  br label %136

; <label>:136                                     ; preds = %checkBb44, %129
  store double 0.000000e+00, double* %134, align 8, !llfi_index !291
  br label %137, !llfi_index !292

; <label>:137                                     ; preds = %136
  %138 = load i32* %i, align 4, !llfi_index !293
  %139 = load i32* %i, align 4, !llfi_index !293
  %140 = add nsw i32 %138, 1, !llfi_index !294
  %141 = add nsw i32 %139, 1, !llfi_index !294
  %check_cmp45 = icmp eq i32 %140, %141
  br i1 %check_cmp45, label %142, label %checkBb46

checkBb46:                                        ; preds = %137
  call void @check_flag()
  br label %142

; <label>:142                                     ; preds = %checkBb46, %137
  store i32 %140, i32* %i, align 4, !llfi_index !295
  br label %123, !llfi_index !296

; <label>:143                                     ; preds = %128
  store i32 -1, i32* %k_offset, align 4, !llfi_index !297
  store i32 1, i32* %k, align 4, !llfi_index !298
  br label %144, !llfi_index !299

; <label>:144                                     ; preds = %396, %143
  %145 = load i32* %k, align 4, !llfi_index !300
  %146 = load i32* %k, align 4, !llfi_index !300
  %147 = load i32* %np, align 4, !llfi_index !301
  %148 = load i32* %np, align 4, !llfi_index !301
  %149 = icmp sle i32 %145, %147, !llfi_index !302
  %150 = icmp sle i32 %146, %148, !llfi_index !302
  %check_cmp47 = icmp eq i1 %149, %150
  br i1 %check_cmp47, label %151, label %checkBb48

checkBb48:                                        ; preds = %144
  call void @check_flag()
  br label %151

; <label>:151                                     ; preds = %checkBb48, %144
  br i1 %149, label %152, label %397, !llfi_index !303

; <label>:152                                     ; preds = %151
  %153 = load i32* %k_offset, align 4, !llfi_index !304
  %154 = load i32* %k_offset, align 4, !llfi_index !304
  %155 = load i32* %k, align 4, !llfi_index !305
  %156 = load i32* %k, align 4, !llfi_index !305
  %157 = add nsw i32 %153, %155, !llfi_index !306
  %158 = add nsw i32 %154, %156, !llfi_index !306
  %check_cmp49 = icmp eq i32 %157, %158
  br i1 %check_cmp49, label %159, label %checkBb50

checkBb50:                                        ; preds = %152
  call void @check_flag()
  br label %159

; <label>:159                                     ; preds = %checkBb50, %152
  store i32 %157, i32* %kk, align 4, !llfi_index !307
  store double 0x41B033C4D7000000, double* %t1, align 8, !llfi_index !308
  %160 = load double* %an, align 8, !llfi_index !309
  %161 = load double* %an, align 8, !llfi_index !309
  %check_cmp51 = fcmp ueq double %160, %161
  br i1 %check_cmp51, label %162, label %checkBb52

checkBb52:                                        ; preds = %159
  call void @check_flag()
  br label %162

; <label>:162                                     ; preds = %checkBb52, %159
  store double %160, double* %t2, align 8, !llfi_index !310
  store i32 1, i32* %i, align 4, !llfi_index !311
  br label %163, !llfi_index !312

; <label>:163                                     ; preds = %209, %162
  %164 = load i32* %i, align 4, !llfi_index !313
  %165 = load i32* %i, align 4, !llfi_index !313
  %166 = icmp sle i32 %164, 100, !llfi_index !314
  %167 = icmp sle i32 %165, 100, !llfi_index !314
  %check_cmp53 = icmp eq i1 %166, %167
  br i1 %check_cmp53, label %168, label %checkBb54

checkBb54:                                        ; preds = %163
  call void @check_flag()
  br label %168

; <label>:168                                     ; preds = %checkBb54, %163
  br i1 %166, label %169, label %210, !llfi_index !315

; <label>:169                                     ; preds = %168
  %170 = load i32* %kk, align 4, !llfi_index !316
  %171 = load i32* %kk, align 4, !llfi_index !316
  %172 = sdiv i32 %170, 2, !llfi_index !317
  %173 = sdiv i32 %171, 2, !llfi_index !317
  %check_cmp55 = icmp eq i32 %172, %173
  br i1 %check_cmp55, label %174, label %checkBb56

checkBb56:                                        ; preds = %169
  call void @check_flag()
  br label %174

; <label>:174                                     ; preds = %checkBb56, %169
  store i32 %172, i32* %ik, align 4, !llfi_index !318
  %175 = load i32* %ik, align 4, !llfi_index !319
  %176 = load i32* %ik, align 4, !llfi_index !319
  %177 = mul nsw i32 2, %175, !llfi_index !320
  %178 = mul nsw i32 2, %176, !llfi_index !320
  %179 = load i32* %kk, align 4, !llfi_index !321
  %180 = load i32* %kk, align 4, !llfi_index !321
  %181 = icmp ne i32 %177, %179, !llfi_index !322
  %182 = icmp ne i32 %178, %180, !llfi_index !322
  %check_cmp57 = icmp eq i1 %181, %182
  br i1 %check_cmp57, label %183, label %checkBb58

checkBb58:                                        ; preds = %174
  call void @check_flag()
  br label %183

; <label>:183                                     ; preds = %checkBb58, %174
  br i1 %181, label %184, label %189, !llfi_index !323

; <label>:184                                     ; preds = %183
  %185 = load double* %t2, align 8, !llfi_index !324
  %186 = load double* %t2, align 8, !llfi_index !324
  %check_cmp59 = fcmp ueq double %185, %186
  br i1 %check_cmp59, label %187, label %checkBb60

checkBb60:                                        ; preds = %184
  call void @check_flag()
  br label %187

; <label>:187                                     ; preds = %checkBb60, %184
  %188 = call double @randlc(double* %t1, double %185), !llfi_index !325
  store double %188, double* %t3, align 8, !llfi_index !326
  br label %189, !llfi_index !327

; <label>:189                                     ; preds = %187, %183
  %190 = load i32* %ik, align 4, !llfi_index !328
  %191 = load i32* %ik, align 4, !llfi_index !328
  %192 = icmp eq i32 %190, 0, !llfi_index !329
  %193 = icmp eq i32 %191, 0, !llfi_index !329
  %check_cmp61 = icmp eq i1 %192, %193
  br i1 %check_cmp61, label %194, label %checkBb62

checkBb62:                                        ; preds = %189
  call void @check_flag()
  br label %194

; <label>:194                                     ; preds = %checkBb62, %189
  br i1 %192, label %195, label %196, !llfi_index !330

; <label>:195                                     ; preds = %194
  br label %210, !llfi_index !331

; <label>:196                                     ; preds = %194
  %197 = load double* %t2, align 8, !llfi_index !332
  %198 = load double* %t2, align 8, !llfi_index !332
  %check_cmp63 = fcmp ueq double %197, %198
  br i1 %check_cmp63, label %199, label %checkBb64

checkBb64:                                        ; preds = %196
  call void @check_flag()
  br label %199

; <label>:199                                     ; preds = %checkBb64, %196
  %200 = call double @randlc(double* %t2, double %197), !llfi_index !333
  store double %200, double* %t3, align 8, !llfi_index !334
  %201 = load i32* %ik, align 4, !llfi_index !335
  %202 = load i32* %ik, align 4, !llfi_index !335
  %check_cmp65 = icmp eq i32 %201, %202
  br i1 %check_cmp65, label %203, label %checkBb66

checkBb66:                                        ; preds = %199
  call void @check_flag()
  br label %203

; <label>:203                                     ; preds = %checkBb66, %199
  store i32 %201, i32* %kk, align 4, !llfi_index !336
  br label %204, !llfi_index !337

; <label>:204                                     ; preds = %203
  %205 = load i32* %i, align 4, !llfi_index !338
  %206 = load i32* %i, align 4, !llfi_index !338
  %207 = add nsw i32 %205, 1, !llfi_index !339
  %208 = add nsw i32 %206, 1, !llfi_index !339
  %check_cmp67 = icmp eq i32 %207, %208
  br i1 %check_cmp67, label %209, label %checkBb68

checkBb68:                                        ; preds = %204
  call void @check_flag()
  br label %209

; <label>:209                                     ; preds = %checkBb68, %204
  store i32 %207, i32* %i, align 4, !llfi_index !340
  br label %163, !llfi_index !341

; <label>:210                                     ; preds = %195, %168
  %211 = load i32* %timers_enabled, align 4, !llfi_index !342
  %212 = load i32* %timers_enabled, align 4, !llfi_index !342
  %213 = icmp ne i32 %211, 0, !llfi_index !343
  %214 = icmp ne i32 %212, 0, !llfi_index !343
  %check_cmp69 = icmp eq i1 %213, %214
  br i1 %check_cmp69, label %215, label %checkBb70

checkBb70:                                        ; preds = %210
  call void @check_flag()
  br label %215

; <label>:215                                     ; preds = %checkBb70, %210
  br i1 %213, label %216, label %217, !llfi_index !344

; <label>:216                                     ; preds = %215
  call void @timer_start(i32 2), !llfi_index !345
  br label %217, !llfi_index !346

; <label>:217                                     ; preds = %216, %215
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0)), !llfi_index !347
  %218 = load i32* %timers_enabled, align 4, !llfi_index !348
  %219 = load i32* %timers_enabled, align 4, !llfi_index !348
  %220 = icmp ne i32 %218, 0, !llfi_index !349
  %221 = icmp ne i32 %219, 0, !llfi_index !349
  %check_cmp71 = icmp eq i1 %220, %221
  br i1 %check_cmp71, label %222, label %checkBb72

checkBb72:                                        ; preds = %217
  call void @check_flag()
  br label %222

; <label>:222                                     ; preds = %checkBb72, %217
  br i1 %220, label %223, label %224, !llfi_index !350

; <label>:223                                     ; preds = %222
  call void @timer_stop(i32 2), !llfi_index !351
  br label %224, !llfi_index !352

; <label>:224                                     ; preds = %223, %222
  %225 = load i32* %timers_enabled, align 4, !llfi_index !353
  %226 = load i32* %timers_enabled, align 4, !llfi_index !353
  %227 = icmp ne i32 %225, 0, !llfi_index !354
  %228 = icmp ne i32 %226, 0, !llfi_index !354
  %check_cmp73 = icmp eq i1 %227, %228
  br i1 %check_cmp73, label %229, label %checkBb74

checkBb74:                                        ; preds = %224
  call void @check_flag()
  br label %229

; <label>:229                                     ; preds = %checkBb74, %224
  br i1 %227, label %230, label %231, !llfi_index !355

; <label>:230                                     ; preds = %229
  call void @timer_start(i32 1), !llfi_index !356
  br label %231, !llfi_index !357

; <label>:231                                     ; preds = %230, %229
  store i32 0, i32* %i, align 4, !llfi_index !358
  br label %232, !llfi_index !359

; <label>:232                                     ; preds = %382, %231
  %233 = load i32* %i, align 4, !llfi_index !360
  %234 = load i32* %i, align 4, !llfi_index !360
  %235 = icmp slt i32 %233, 65536, !llfi_index !361
  %236 = icmp slt i32 %234, 65536, !llfi_index !361
  %check_cmp75 = icmp eq i1 %235, %236
  br i1 %check_cmp75, label %237, label %checkBb76

checkBb76:                                        ; preds = %232
  call void @check_flag()
  br label %237

; <label>:237                                     ; preds = %checkBb76, %232
  br i1 %235, label %238, label %383, !llfi_index !362

; <label>:238                                     ; preds = %237
  %239 = load i32* %i, align 4, !llfi_index !363
  %240 = load i32* %i, align 4, !llfi_index !363
  %241 = mul nsw i32 2, %239, !llfi_index !364
  %242 = mul nsw i32 2, %240, !llfi_index !364
  %243 = sext i32 %241 to i64, !llfi_index !365
  %244 = sext i32 %242 to i64, !llfi_index !365
  %245 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %243, !llfi_index !366
  %246 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %244, !llfi_index !366
  %247 = load double* %245, align 8, !llfi_index !367
  %248 = load double* %246, align 8, !llfi_index !367
  %249 = fmul double 2.000000e+00, %247, !llfi_index !368
  %250 = fmul double 2.000000e+00, %248, !llfi_index !368
  %251 = fsub double %249, 1.000000e+00, !llfi_index !369
  %252 = fsub double %250, 1.000000e+00, !llfi_index !369
  %check_cmp77 = fcmp ueq double %251, %252
  br i1 %check_cmp77, label %253, label %checkBb78

checkBb78:                                        ; preds = %238
  call void @check_flag()
  br label %253

; <label>:253                                     ; preds = %checkBb78, %238
  store double %251, double* %x1, align 8, !llfi_index !370
  %254 = load i32* %i, align 4, !llfi_index !371
  %255 = load i32* %i, align 4, !llfi_index !371
  %256 = mul nsw i32 2, %254, !llfi_index !372
  %257 = mul nsw i32 2, %255, !llfi_index !372
  %258 = add nsw i32 %256, 1, !llfi_index !373
  %259 = add nsw i32 %257, 1, !llfi_index !373
  %260 = sext i32 %258 to i64, !llfi_index !374
  %261 = sext i32 %259 to i64, !llfi_index !374
  %262 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %260, !llfi_index !375
  %263 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %261, !llfi_index !375
  %264 = load double* %262, align 8, !llfi_index !376
  %265 = load double* %263, align 8, !llfi_index !376
  %266 = fmul double 2.000000e+00, %264, !llfi_index !377
  %267 = fmul double 2.000000e+00, %265, !llfi_index !377
  %268 = fsub double %266, 1.000000e+00, !llfi_index !378
  %269 = fsub double %267, 1.000000e+00, !llfi_index !378
  %check_cmp79 = fcmp ueq double %268, %269
  br i1 %check_cmp79, label %270, label %checkBb80

checkBb80:                                        ; preds = %253
  call void @check_flag()
  br label %270

; <label>:270                                     ; preds = %checkBb80, %253
  store double %268, double* %x2, align 8, !llfi_index !379
  %271 = load double* %x1, align 8, !llfi_index !380
  %272 = load double* %x1, align 8, !llfi_index !380
  %273 = load double* %x1, align 8, !llfi_index !381
  %274 = load double* %x1, align 8, !llfi_index !381
  %275 = fmul double %271, %273, !llfi_index !382
  %276 = fmul double %272, %274, !llfi_index !382
  %277 = load double* %x2, align 8, !llfi_index !383
  %278 = load double* %x2, align 8, !llfi_index !383
  %279 = load double* %x2, align 8, !llfi_index !384
  %280 = load double* %x2, align 8, !llfi_index !384
  %281 = fmul double %277, %279, !llfi_index !385
  %282 = fmul double %278, %280, !llfi_index !385
  %283 = fadd double %275, %281, !llfi_index !386
  %284 = fadd double %276, %282, !llfi_index !386
  %check_cmp81 = fcmp ueq double %283, %284
  br i1 %check_cmp81, label %285, label %checkBb82

checkBb82:                                        ; preds = %270
  call void @check_flag()
  br label %285

; <label>:285                                     ; preds = %checkBb82, %270
  store double %283, double* %t1, align 8, !llfi_index !387
  %286 = load double* %t1, align 8, !llfi_index !388
  %287 = load double* %t1, align 8, !llfi_index !388
  %288 = fcmp ole double %286, 1.000000e+00, !llfi_index !389
  %289 = fcmp ole double %287, 1.000000e+00, !llfi_index !389
  %check_cmp83 = icmp eq i1 %288, %289
  br i1 %check_cmp83, label %290, label %checkBb84

checkBb84:                                        ; preds = %285
  call void @check_flag()
  br label %290

; <label>:290                                     ; preds = %checkBb84, %285
  br i1 %288, label %291, label %376, !llfi_index !390

; <label>:291                                     ; preds = %290
  %292 = load double* %t1, align 8, !llfi_index !391
  %293 = load double* %t1, align 8, !llfi_index !391
  %check_cmp85 = fcmp ueq double %292, %293
  br i1 %check_cmp85, label %294, label %checkBb86

checkBb86:                                        ; preds = %291
  call void @check_flag()
  br label %294

; <label>:294                                     ; preds = %checkBb86, %291
  %295 = call double @log(double %292) #2, !llfi_index !392
  %296 = fmul double -2.000000e+00, %295, !llfi_index !393
  %297 = fmul double -2.000000e+00, %295, !llfi_index !393
  %298 = load double* %t1, align 8, !llfi_index !394
  %299 = load double* %t1, align 8, !llfi_index !394
  %300 = fdiv double %296, %298, !llfi_index !395
  %301 = fdiv double %297, %299, !llfi_index !395
  %check_cmp87 = fcmp ueq double %300, %301
  br i1 %check_cmp87, label %302, label %checkBb88

checkBb88:                                        ; preds = %294
  call void @check_flag()
  br label %302

; <label>:302                                     ; preds = %checkBb88, %294
  %303 = call double @sqrt(double %300) #2, !llfi_index !396
  store double %303, double* %t2, align 8, !llfi_index !397
  %304 = load double* %x1, align 8, !llfi_index !398
  %305 = load double* %x1, align 8, !llfi_index !398
  %306 = load double* %t2, align 8, !llfi_index !399
  %307 = load double* %t2, align 8, !llfi_index !399
  %308 = fmul double %304, %306, !llfi_index !400
  %309 = fmul double %305, %307, !llfi_index !400
  %check_cmp89 = fcmp ueq double %308, %309
  br i1 %check_cmp89, label %310, label %checkBb90

checkBb90:                                        ; preds = %302
  call void @check_flag()
  br label %310

; <label>:310                                     ; preds = %checkBb90, %302
  store double %308, double* %t3, align 8, !llfi_index !401
  %311 = load double* %x2, align 8, !llfi_index !402
  %312 = load double* %x2, align 8, !llfi_index !402
  %313 = load double* %t2, align 8, !llfi_index !403
  %314 = load double* %t2, align 8, !llfi_index !403
  %315 = fmul double %311, %313, !llfi_index !404
  %316 = fmul double %312, %314, !llfi_index !404
  %check_cmp91 = fcmp ueq double %315, %316
  br i1 %check_cmp91, label %317, label %checkBb92

checkBb92:                                        ; preds = %310
  call void @check_flag()
  br label %317

; <label>:317                                     ; preds = %checkBb92, %310
  store double %315, double* %t4, align 8, !llfi_index !405
  %318 = load double* %t3, align 8, !llfi_index !406
  %319 = load double* %t3, align 8, !llfi_index !406
  %check_cmp93 = fcmp ueq double %318, %319
  br i1 %check_cmp93, label %320, label %checkBb94

checkBb94:                                        ; preds = %317
  call void @check_flag()
  br label %320

; <label>:320                                     ; preds = %checkBb94, %317
  %321 = call double @fabs(double %318) #6, !llfi_index !407
  %322 = load double* %t4, align 8, !llfi_index !408
  %323 = load double* %t4, align 8, !llfi_index !408
  %check_cmp95 = fcmp ueq double %322, %323
  br i1 %check_cmp95, label %324, label %checkBb96

checkBb96:                                        ; preds = %320
  call void @check_flag()
  br label %324

; <label>:324                                     ; preds = %checkBb96, %320
  %325 = call double @fabs(double %322) #6, !llfi_index !409
  %326 = fcmp ogt double %321, %325, !llfi_index !410
  %327 = fcmp ogt double %321, %325, !llfi_index !410
  %check_cmp97 = icmp eq i1 %326, %327
  br i1 %check_cmp97, label %328, label %checkBb98

checkBb98:                                        ; preds = %324
  call void @check_flag()
  br label %328

; <label>:328                                     ; preds = %checkBb98, %324
  br i1 %326, label %329, label %334, !llfi_index !411

; <label>:329                                     ; preds = %328
  %330 = load double* %t3, align 8, !llfi_index !412
  %331 = load double* %t3, align 8, !llfi_index !412
  %check_cmp99 = fcmp ueq double %330, %331
  br i1 %check_cmp99, label %332, label %checkBb100

checkBb100:                                       ; preds = %329
  call void @check_flag()
  br label %332

; <label>:332                                     ; preds = %checkBb100, %329
  %333 = call double @fabs(double %330) #6, !llfi_index !413
  br label %339, !llfi_index !414

; <label>:334                                     ; preds = %328
  %335 = load double* %t4, align 8, !llfi_index !415
  %336 = load double* %t4, align 8, !llfi_index !415
  %check_cmp101 = fcmp ueq double %335, %336
  br i1 %check_cmp101, label %337, label %checkBb102

checkBb102:                                       ; preds = %334
  call void @check_flag()
  br label %337

; <label>:337                                     ; preds = %checkBb102, %334
  %338 = call double @fabs(double %335) #6, !llfi_index !416
  br label %339, !llfi_index !417

; <label>:339                                     ; preds = %337, %332
  %340 = phi double [ %333, %332 ], [ %338, %337 ], !llfi_index !418
  %341 = fptosi double %340 to i32, !llfi_index !419
  %342 = fptosi double %340 to i32, !llfi_index !419
  %check_cmp103 = icmp eq i32 %341, %342
  br i1 %check_cmp103, label %343, label %checkBb104

checkBb104:                                       ; preds = %339
  call void @check_flag()
  br label %343

; <label>:343                                     ; preds = %checkBb104, %339
  store i32 %341, i32* %l, align 4, !llfi_index !420
  %344 = load i32* %l, align 4, !llfi_index !421
  %345 = load i32* %l, align 4, !llfi_index !421
  %346 = sext i32 %344 to i64, !llfi_index !422
  %347 = sext i32 %345 to i64, !llfi_index !422
  %348 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %346, !llfi_index !423
  %349 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %347, !llfi_index !423
  %350 = load double* %348, align 8, !llfi_index !424
  %351 = load double* %349, align 8, !llfi_index !424
  %352 = fadd double %350, 1.000000e+00, !llfi_index !425
  %353 = fadd double %351, 1.000000e+00, !llfi_index !425
  %check_cmp105 = fcmp ueq double %352, %353
  br i1 %check_cmp105, label %354, label %checkBb106

checkBb106:                                       ; preds = %343
  call void @check_flag()
  br label %354

; <label>:354                                     ; preds = %checkBb106, %343
  %355 = load i32* %l, align 4, !llfi_index !426
  %356 = load i32* %l, align 4, !llfi_index !426
  %357 = sext i32 %355 to i64, !llfi_index !427
  %358 = sext i32 %356 to i64, !llfi_index !427
  %359 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %357, !llfi_index !428
  %360 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %358, !llfi_index !428
  %check_cmp107 = icmp eq double* %359, %360
  br i1 %check_cmp107, label %361, label %checkBb108

checkBb108:                                       ; preds = %354
  call void @check_flag()
  br label %361

; <label>:361                                     ; preds = %checkBb108, %354
  store double %352, double* %359, align 8, !llfi_index !429
  %362 = load double* %sx, align 8, !llfi_index !430
  %363 = load double* %sx, align 8, !llfi_index !430
  %364 = load double* %t3, align 8, !llfi_index !431
  %365 = load double* %t3, align 8, !llfi_index !431
  %366 = fadd double %362, %364, !llfi_index !432
  %367 = fadd double %363, %365, !llfi_index !432
  %check_cmp109 = fcmp ueq double %366, %367
  br i1 %check_cmp109, label %368, label %checkBb110

checkBb110:                                       ; preds = %361
  call void @check_flag()
  br label %368

; <label>:368                                     ; preds = %checkBb110, %361
  store double %366, double* %sx, align 8, !llfi_index !433
  %369 = load double* %sy, align 8, !llfi_index !434
  %370 = load double* %sy, align 8, !llfi_index !434
  %371 = load double* %t4, align 8, !llfi_index !435
  %372 = load double* %t4, align 8, !llfi_index !435
  %373 = fadd double %369, %371, !llfi_index !436
  %374 = fadd double %370, %372, !llfi_index !436
  %check_cmp111 = fcmp ueq double %373, %374
  br i1 %check_cmp111, label %375, label %checkBb112

checkBb112:                                       ; preds = %368
  call void @check_flag()
  br label %375

; <label>:375                                     ; preds = %checkBb112, %368
  store double %373, double* %sy, align 8, !llfi_index !437
  br label %376, !llfi_index !438

; <label>:376                                     ; preds = %375, %290
  br label %377, !llfi_index !439

; <label>:377                                     ; preds = %376
  %378 = load i32* %i, align 4, !llfi_index !440
  %379 = load i32* %i, align 4, !llfi_index !440
  %380 = add nsw i32 %378, 1, !llfi_index !441
  %381 = add nsw i32 %379, 1, !llfi_index !441
  %check_cmp113 = icmp eq i32 %380, %381
  br i1 %check_cmp113, label %382, label %checkBb114

checkBb114:                                       ; preds = %377
  call void @check_flag()
  br label %382

; <label>:382                                     ; preds = %checkBb114, %377
  store i32 %380, i32* %i, align 4, !llfi_index !442
  br label %232, !llfi_index !443

; <label>:383                                     ; preds = %237
  %384 = load i32* %timers_enabled, align 4, !llfi_index !444
  %385 = load i32* %timers_enabled, align 4, !llfi_index !444
  %386 = icmp ne i32 %384, 0, !llfi_index !445
  %387 = icmp ne i32 %385, 0, !llfi_index !445
  %check_cmp115 = icmp eq i1 %386, %387
  br i1 %check_cmp115, label %388, label %checkBb116

checkBb116:                                       ; preds = %383
  call void @check_flag()
  br label %388

; <label>:388                                     ; preds = %checkBb116, %383
  br i1 %386, label %389, label %390, !llfi_index !446

; <label>:389                                     ; preds = %388
  call void @timer_stop(i32 1), !llfi_index !447
  br label %390, !llfi_index !448

; <label>:390                                     ; preds = %389, %388
  br label %391, !llfi_index !449

; <label>:391                                     ; preds = %390
  %392 = load i32* %k, align 4, !llfi_index !450
  %393 = load i32* %k, align 4, !llfi_index !450
  %394 = add nsw i32 %392, 1, !llfi_index !451
  %395 = add nsw i32 %393, 1, !llfi_index !451
  %check_cmp117 = icmp eq i32 %394, %395
  br i1 %check_cmp117, label %396, label %checkBb118

checkBb118:                                       ; preds = %391
  call void @check_flag()
  br label %396

; <label>:396                                     ; preds = %checkBb118, %391
  store i32 %394, i32* %k, align 4, !llfi_index !452
  br label %144, !llfi_index !453

; <label>:397                                     ; preds = %151
  store i32 0, i32* %i, align 4, !llfi_index !454
  br label %398, !llfi_index !455

; <label>:398                                     ; preds = %423, %397
  %399 = load i32* %i, align 4, !llfi_index !456
  %400 = load i32* %i, align 4, !llfi_index !456
  %401 = icmp slt i32 %399, 10, !llfi_index !457
  %402 = icmp slt i32 %400, 10, !llfi_index !457
  %check_cmp119 = icmp eq i1 %401, %402
  br i1 %check_cmp119, label %403, label %checkBb120

checkBb120:                                       ; preds = %398
  call void @check_flag()
  br label %403

; <label>:403                                     ; preds = %checkBb120, %398
  br i1 %401, label %404, label %424, !llfi_index !458

; <label>:404                                     ; preds = %403
  %405 = load double* %gc, align 8, !llfi_index !459
  %406 = load double* %gc, align 8, !llfi_index !459
  %407 = load i32* %i, align 4, !llfi_index !460
  %408 = load i32* %i, align 4, !llfi_index !460
  %409 = sext i32 %407 to i64, !llfi_index !461
  %410 = sext i32 %408 to i64, !llfi_index !461
  %411 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %409, !llfi_index !462
  %412 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %410, !llfi_index !462
  %413 = load double* %411, align 8, !llfi_index !463
  %414 = load double* %412, align 8, !llfi_index !463
  %415 = fadd double %405, %413, !llfi_index !464
  %416 = fadd double %406, %414, !llfi_index !464
  %check_cmp121 = fcmp ueq double %415, %416
  br i1 %check_cmp121, label %417, label %checkBb122

checkBb122:                                       ; preds = %404
  call void @check_flag()
  br label %417

; <label>:417                                     ; preds = %checkBb122, %404
  store double %415, double* %gc, align 8, !llfi_index !465
  br label %418, !llfi_index !466

; <label>:418                                     ; preds = %417
  %419 = load i32* %i, align 4, !llfi_index !467
  %420 = load i32* %i, align 4, !llfi_index !467
  %421 = add nsw i32 %419, 1, !llfi_index !468
  %422 = add nsw i32 %420, 1, !llfi_index !468
  %check_cmp123 = icmp eq i32 %421, %422
  br i1 %check_cmp123, label %423, label %checkBb124

checkBb124:                                       ; preds = %418
  call void @check_flag()
  br label %423

; <label>:423                                     ; preds = %checkBb124, %418
  store i32 %421, i32* %i, align 4, !llfi_index !469
  br label %398, !llfi_index !470

; <label>:424                                     ; preds = %403
  call void @timer_stop(i32 0), !llfi_index !471
  %425 = call double @timer_read(i32 0), !llfi_index !472
  store double %425, double* %tm, align 8, !llfi_index !473
  store i32 0, i32* %nit, align 4, !llfi_index !474
  store i32 1, i32* %verified, align 4, !llfi_index !475
  store double 0xC0A65EA3B3DDC403, double* %sx_verify_value, align 8, !llfi_index !476
  store double 0xC0B8B00DBDEA03C7, double* %sy_verify_value, align 8, !llfi_index !477
  %426 = load i32* %verified, align 4, !llfi_index !478
  %427 = load i32* %verified, align 4, !llfi_index !478
  %428 = icmp ne i32 %426, 0, !llfi_index !479
  %429 = icmp ne i32 %427, 0, !llfi_index !479
  %check_cmp125 = icmp eq i1 %428, %429
  br i1 %check_cmp125, label %430, label %checkBb126

checkBb126:                                       ; preds = %424
  call void @check_flag()
  br label %430

; <label>:430                                     ; preds = %checkBb126, %424
  br i1 %428, label %431, label %472, !llfi_index !480

; <label>:431                                     ; preds = %430
  %432 = load double* %sx, align 8, !llfi_index !481
  %433 = load double* %sx, align 8, !llfi_index !481
  %434 = load double* %sx_verify_value, align 8, !llfi_index !482
  %435 = load double* %sx_verify_value, align 8, !llfi_index !482
  %436 = fsub double %432, %434, !llfi_index !483
  %437 = fsub double %433, %435, !llfi_index !483
  %438 = load double* %sx_verify_value, align 8, !llfi_index !484
  %439 = load double* %sx_verify_value, align 8, !llfi_index !484
  %440 = fdiv double %436, %438, !llfi_index !485
  %441 = fdiv double %437, %439, !llfi_index !485
  %check_cmp127 = fcmp ueq double %440, %441
  br i1 %check_cmp127, label %442, label %checkBb128

checkBb128:                                       ; preds = %431
  call void @check_flag()
  br label %442

; <label>:442                                     ; preds = %checkBb128, %431
  %443 = call double @fabs(double %440) #6, !llfi_index !486
  store double %443, double* %sx_err, align 8, !llfi_index !487
  %444 = load double* %sy, align 8, !llfi_index !488
  %445 = load double* %sy, align 8, !llfi_index !488
  %446 = load double* %sy_verify_value, align 8, !llfi_index !489
  %447 = load double* %sy_verify_value, align 8, !llfi_index !489
  %448 = fsub double %444, %446, !llfi_index !490
  %449 = fsub double %445, %447, !llfi_index !490
  %450 = load double* %sy_verify_value, align 8, !llfi_index !491
  %451 = load double* %sy_verify_value, align 8, !llfi_index !491
  %452 = fdiv double %448, %450, !llfi_index !492
  %453 = fdiv double %449, %451, !llfi_index !492
  %check_cmp129 = fcmp ueq double %452, %453
  br i1 %check_cmp129, label %454, label %checkBb130

checkBb130:                                       ; preds = %442
  call void @check_flag()
  br label %454

; <label>:454                                     ; preds = %checkBb130, %442
  %455 = call double @fabs(double %452) #6, !llfi_index !493
  store double %455, double* %sy_err, align 8, !llfi_index !494
  %456 = load double* %sx_err, align 8, !llfi_index !495
  %457 = load double* %sx_err, align 8, !llfi_index !495
  %458 = fcmp ole double %456, 1.000000e-08, !llfi_index !496
  %459 = fcmp ole double %457, 1.000000e-08, !llfi_index !496
  %check_cmp131 = icmp eq i1 %458, %459
  br i1 %check_cmp131, label %460, label %checkBb132

checkBb132:                                       ; preds = %454
  call void @check_flag()
  br label %460

; <label>:460                                     ; preds = %checkBb132, %454
  br i1 %458, label %461, label %467, !llfi_index !497

; <label>:461                                     ; preds = %460
  %462 = load double* %sy_err, align 8, !llfi_index !498
  %463 = load double* %sy_err, align 8, !llfi_index !498
  %464 = fcmp ole double %462, 1.000000e-08, !llfi_index !499
  %465 = fcmp ole double %463, 1.000000e-08, !llfi_index !499
  %check_cmp133 = icmp eq i1 %464, %465
  br i1 %check_cmp133, label %466, label %checkBb134

checkBb134:                                       ; preds = %461
  call void @check_flag()
  br label %466

; <label>:466                                     ; preds = %checkBb134, %461
  br label %467, !llfi_index !500

; <label>:467                                     ; preds = %466, %460
  %468 = phi i1 [ false, %460 ], [ %464, %466 ], !llfi_index !501
  %469 = zext i1 %468 to i32, !llfi_index !502
  %470 = zext i1 %468 to i32, !llfi_index !502
  %check_cmp135 = icmp eq i32 %469, %470
  br i1 %check_cmp135, label %471, label %checkBb136

checkBb136:                                       ; preds = %467
  call void @check_flag()
  br label %471

; <label>:471                                     ; preds = %checkBb136, %467
  store i32 %469, i32* %verified, align 4, !llfi_index !503
  br label %472, !llfi_index !504

; <label>:472                                     ; preds = %471, %430
  %473 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2, !llfi_index !505
  %474 = load double* %tm, align 8, !llfi_index !506
  %475 = load double* %tm, align 8, !llfi_index !506
  %476 = fdiv double %473, %474, !llfi_index !507
  %477 = fdiv double %473, %475, !llfi_index !507
  %478 = fdiv double %476, 1.000000e+06, !llfi_index !508
  %479 = fdiv double %477, 1.000000e+06, !llfi_index !508
  %check_cmp137 = fcmp ueq double %478, %479
  br i1 %check_cmp137, label %480, label %checkBb138

checkBb138:                                       ; preds = %472
  call void @check_flag()
  br label %480

; <label>:480                                     ; preds = %checkBb138, %472
  store double %478, double* %Mops, align 8, !llfi_index !509
  %481 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str531, i32 0, i32 0)), !llfi_index !510
  %482 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str632, i32 0, i32 0), i32 25), !llfi_index !511
  %483 = load double* %gc, align 8, !llfi_index !512
  %484 = load double* %gc, align 8, !llfi_index !512
  %check_cmp139 = fcmp ueq double %483, %484
  br i1 %check_cmp139, label %485, label %checkBb140

checkBb140:                                       ; preds = %480
  call void @check_flag()
  br label %485

; <label>:485                                     ; preds = %checkBb140, %480
  %486 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str733, i32 0, i32 0), double %483), !llfi_index !513
  %487 = load double* %sx, align 8, !llfi_index !514
  %488 = load double* %sx, align 8, !llfi_index !514
  %check_cmp141 = fcmp ueq double %487, %488
  br i1 %check_cmp141, label %489, label %checkBb142

checkBb142:                                       ; preds = %485
  call void @check_flag()
  br label %489

; <label>:489                                     ; preds = %checkBb142, %485
  %490 = load double* %sy, align 8, !llfi_index !515
  %491 = load double* %sy, align 8, !llfi_index !515
  %check_cmp143 = fcmp ueq double %490, %491
  br i1 %check_cmp143, label %492, label %checkBb144

checkBb144:                                       ; preds = %489
  call void @check_flag()
  br label %492

; <label>:492                                     ; preds = %checkBb144, %489
  %493 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str834, i32 0, i32 0), double %487, double %490), !llfi_index !516
  %494 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str935, i32 0, i32 0)), !llfi_index !517
  store i32 0, i32* %i, align 4, !llfi_index !518
  br label %495, !llfi_index !519

; <label>:495                                     ; preds = %520, %492
  %496 = load i32* %i, align 4, !llfi_index !520
  %497 = load i32* %i, align 4, !llfi_index !520
  %498 = icmp slt i32 %496, 10, !llfi_index !521
  %499 = icmp slt i32 %497, 10, !llfi_index !521
  %check_cmp145 = icmp eq i1 %498, %499
  br i1 %check_cmp145, label %500, label %checkBb146

checkBb146:                                       ; preds = %495
  call void @check_flag()
  br label %500

; <label>:500                                     ; preds = %checkBb146, %495
  br i1 %498, label %501, label %521, !llfi_index !522

; <label>:501                                     ; preds = %500
  %502 = load i32* %i, align 4, !llfi_index !523
  %503 = load i32* %i, align 4, !llfi_index !523
  %check_cmp147 = icmp eq i32 %502, %503
  br i1 %check_cmp147, label %504, label %checkBb148

checkBb148:                                       ; preds = %501
  call void @check_flag()
  br label %504

; <label>:504                                     ; preds = %checkBb148, %501
  %505 = load i32* %i, align 4, !llfi_index !524
  %506 = load i32* %i, align 4, !llfi_index !524
  %507 = sext i32 %505 to i64, !llfi_index !525
  %508 = sext i32 %506 to i64, !llfi_index !525
  %509 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %507, !llfi_index !526
  %510 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %508, !llfi_index !526
  %511 = load double* %509, align 8, !llfi_index !527
  %512 = load double* %510, align 8, !llfi_index !527
  %check_cmp149 = fcmp ueq double %511, %512
  br i1 %check_cmp149, label %513, label %checkBb150

checkBb150:                                       ; preds = %504
  call void @check_flag()
  br label %513

; <label>:513                                     ; preds = %checkBb150, %504
  %514 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1036, i32 0, i32 0), i32 %502, double %511), !llfi_index !528
  br label %515, !llfi_index !529

; <label>:515                                     ; preds = %513
  %516 = load i32* %i, align 4, !llfi_index !530
  %517 = load i32* %i, align 4, !llfi_index !530
  %518 = add nsw i32 %516, 1, !llfi_index !531
  %519 = add nsw i32 %517, 1, !llfi_index !531
  %check_cmp151 = icmp eq i32 %518, %519
  br i1 %check_cmp151, label %520, label %checkBb152

checkBb152:                                       ; preds = %515
  call void @check_flag()
  br label %520

; <label>:520                                     ; preds = %checkBb152, %515
  store i32 %518, i32* %i, align 4, !llfi_index !532
  br label %495, !llfi_index !533

; <label>:521                                     ; preds = %500
  %522 = load i32* %nit, align 4, !llfi_index !534
  %523 = load i32* %nit, align 4, !llfi_index !534
  %check_cmp153 = icmp eq i32 %522, %523
  br i1 %check_cmp153, label %524, label %checkBb154

checkBb154:                                       ; preds = %521
  call void @check_flag()
  br label %524

; <label>:524                                     ; preds = %checkBb154, %521
  %525 = load double* %tm, align 8, !llfi_index !535
  %526 = load double* %tm, align 8, !llfi_index !535
  %check_cmp155 = fcmp ueq double %525, %526
  br i1 %check_cmp155, label %527, label %checkBb156

checkBb156:                                       ; preds = %524
  call void @check_flag()
  br label %527

; <label>:527                                     ; preds = %checkBb156, %524
  %528 = load double* %Mops, align 8, !llfi_index !536
  %529 = load double* %Mops, align 8, !llfi_index !536
  %check_cmp157 = fcmp ueq double %528, %529
  br i1 %check_cmp157, label %530, label %checkBb158

checkBb158:                                       ; preds = %527
  call void @check_flag()
  br label %530

; <label>:530                                     ; preds = %checkBb158, %527
  %531 = load i32* %verified, align 4, !llfi_index !537
  %532 = load i32* %verified, align 4, !llfi_index !537
  %check_cmp159 = icmp eq i32 %531, %532
  br i1 %check_cmp159, label %533, label %checkBb160

checkBb160:                                       ; preds = %530
  call void @check_flag()
  br label %533

; <label>:533                                     ; preds = %checkBb160, %530
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str1137, i32 0, i32 0), i8 signext 87, i32 26, i32 0, i32 0, i32 %522, double %525, double %528, i8* getelementptr inbounds ([25 x i8]* @.str1238, i32 0, i32 0), i32 %531, i8* getelementptr inbounds ([6 x i8]* @.str1339, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1440, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1541, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1642, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1743, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1844, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1945, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2046, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2147, i32 0, i32 0)), !llfi_index !538
  %534 = load i32* %timers_enabled, align 4, !llfi_index !539
  %535 = load i32* %timers_enabled, align 4, !llfi_index !539
  %536 = icmp ne i32 %534, 0, !llfi_index !540
  %537 = icmp ne i32 %535, 0, !llfi_index !540
  %check_cmp161 = icmp eq i1 %536, %537
  br i1 %check_cmp161, label %538, label %checkBb162

checkBb162:                                       ; preds = %533
  call void @check_flag()
  br label %538

; <label>:538                                     ; preds = %checkBb162, %533
  br i1 %536, label %539, label %589, !llfi_index !541

; <label>:539                                     ; preds = %538
  %540 = load double* %tm, align 8, !llfi_index !542
  %541 = load double* %tm, align 8, !llfi_index !542
  %542 = fcmp ole double %540, 0.000000e+00, !llfi_index !543
  %543 = fcmp ole double %541, 0.000000e+00, !llfi_index !543
  %check_cmp163 = icmp eq i1 %542, %543
  br i1 %check_cmp163, label %544, label %checkBb164

checkBb164:                                       ; preds = %539
  call void @check_flag()
  br label %544

; <label>:544                                     ; preds = %checkBb164, %539
  br i1 %542, label %545, label %546, !llfi_index !544

; <label>:545                                     ; preds = %544
  store double 1.000000e+00, double* %tm, align 8, !llfi_index !545
  br label %546, !llfi_index !546

; <label>:546                                     ; preds = %545, %544
  %547 = call double @timer_read(i32 0), !llfi_index !547
  store double %547, double* %tt, align 8, !llfi_index !548
  %548 = load double* %tt, align 8, !llfi_index !549
  %549 = load double* %tt, align 8, !llfi_index !549
  %check_cmp165 = fcmp ueq double %548, %549
  br i1 %check_cmp165, label %550, label %checkBb166

checkBb166:                                       ; preds = %546
  call void @check_flag()
  br label %550

; <label>:550                                     ; preds = %checkBb166, %546
  %551 = load double* %tt, align 8, !llfi_index !550
  %552 = load double* %tt, align 8, !llfi_index !550
  %553 = fmul double %551, 1.000000e+02, !llfi_index !551
  %554 = fmul double %552, 1.000000e+02, !llfi_index !551
  %555 = load double* %tm, align 8, !llfi_index !552
  %556 = load double* %tm, align 8, !llfi_index !552
  %557 = fdiv double %553, %555, !llfi_index !553
  %558 = fdiv double %554, %556, !llfi_index !553
  %check_cmp167 = fcmp ueq double %557, %558
  br i1 %check_cmp167, label %559, label %checkBb168

checkBb168:                                       ; preds = %550
  call void @check_flag()
  br label %559

; <label>:559                                     ; preds = %checkBb168, %550
  %560 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2248, i32 0, i32 0), double %548, double %557), !llfi_index !554
  %561 = call double @timer_read(i32 1), !llfi_index !555
  store double %561, double* %tt, align 8, !llfi_index !556
  %562 = load double* %tt, align 8, !llfi_index !557
  %563 = load double* %tt, align 8, !llfi_index !557
  %check_cmp169 = fcmp ueq double %562, %563
  br i1 %check_cmp169, label %564, label %checkBb170

checkBb170:                                       ; preds = %559
  call void @check_flag()
  br label %564

; <label>:564                                     ; preds = %checkBb170, %559
  %565 = load double* %tt, align 8, !llfi_index !558
  %566 = load double* %tt, align 8, !llfi_index !558
  %567 = fmul double %565, 1.000000e+02, !llfi_index !559
  %568 = fmul double %566, 1.000000e+02, !llfi_index !559
  %569 = load double* %tm, align 8, !llfi_index !560
  %570 = load double* %tm, align 8, !llfi_index !560
  %571 = fdiv double %567, %569, !llfi_index !561
  %572 = fdiv double %568, %570, !llfi_index !561
  %check_cmp171 = fcmp ueq double %571, %572
  br i1 %check_cmp171, label %573, label %checkBb172

checkBb172:                                       ; preds = %564
  call void @check_flag()
  br label %573

; <label>:573                                     ; preds = %checkBb172, %564
  %574 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2349, i32 0, i32 0), double %562, double %571), !llfi_index !562
  %575 = call double @timer_read(i32 2), !llfi_index !563
  store double %575, double* %tt, align 8, !llfi_index !564
  %576 = load double* %tt, align 8, !llfi_index !565
  %577 = load double* %tt, align 8, !llfi_index !565
  %check_cmp173 = fcmp ueq double %576, %577
  br i1 %check_cmp173, label %578, label %checkBb174

checkBb174:                                       ; preds = %573
  call void @check_flag()
  br label %578

; <label>:578                                     ; preds = %checkBb174, %573
  %579 = load double* %tt, align 8, !llfi_index !566
  %580 = load double* %tt, align 8, !llfi_index !566
  %581 = fmul double %579, 1.000000e+02, !llfi_index !567
  %582 = fmul double %580, 1.000000e+02, !llfi_index !567
  %583 = load double* %tm, align 8, !llfi_index !568
  %584 = load double* %tm, align 8, !llfi_index !568
  %585 = fdiv double %581, %583, !llfi_index !569
  %586 = fdiv double %582, %584, !llfi_index !569
  %check_cmp175 = fcmp ueq double %585, %586
  br i1 %check_cmp175, label %587, label %checkBb176

checkBb176:                                       ; preds = %578
  call void @check_flag()
  br label %587

; <label>:587                                     ; preds = %checkBb176, %578
  %588 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2450, i32 0, i32 0), double %576, double %585), !llfi_index !570
  br label %589, !llfi_index !571

; <label>:589                                     ; preds = %587, %538
  ret i32 0, !llfi_index !572
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
  %1 = alloca i8*, align 8, !llfi_index !573
  %2 = alloca i8, align 1, !llfi_index !574
  %3 = alloca i32, align 4, !llfi_index !575
  %4 = alloca i32, align 4, !llfi_index !576
  %5 = alloca i32, align 4, !llfi_index !577
  %6 = alloca i32, align 4, !llfi_index !578
  %7 = alloca double, align 8, !llfi_index !579
  %8 = alloca double, align 8, !llfi_index !580
  %9 = alloca i8*, align 8, !llfi_index !581
  %10 = alloca i32, align 4, !llfi_index !582
  %11 = alloca i8*, align 8, !llfi_index !583
  %12 = alloca i8*, align 8, !llfi_index !584
  %13 = alloca i8*, align 8, !llfi_index !585
  %14 = alloca i8*, align 8, !llfi_index !586
  %15 = alloca i8*, align 8, !llfi_index !587
  %16 = alloca i8*, align 8, !llfi_index !588
  %17 = alloca i8*, align 8, !llfi_index !589
  %18 = alloca i8*, align 8, !llfi_index !590
  %19 = alloca i8*, align 8, !llfi_index !591
  %size = alloca [16 x i8], align 16, !llfi_index !592
  %j = alloca i32, align 4, !llfi_index !593
  store i8* %name, i8** %1, align 8, !llfi_index !594
  store i8 %class, i8* %2, align 1, !llfi_index !595
  store i32 %n1, i32* %3, align 4, !llfi_index !596
  store i32 %n2, i32* %4, align 4, !llfi_index !597
  store i32 %n3, i32* %5, align 4, !llfi_index !598
  store i32 %niter, i32* %6, align 4, !llfi_index !599
  store double %t, double* %7, align 8, !llfi_index !600
  store double %mops, double* %8, align 8, !llfi_index !601
  store i8* %optype, i8** %9, align 8, !llfi_index !602
  store i32 %verified, i32* %10, align 4, !llfi_index !603
  store i8* %npbversion, i8** %11, align 8, !llfi_index !604
  store i8* %compiletime, i8** %12, align 8, !llfi_index !605
  store i8* %cs1, i8** %13, align 8, !llfi_index !606
  store i8* %cs2, i8** %14, align 8, !llfi_index !607
  store i8* %cs3, i8** %15, align 8, !llfi_index !608
  store i8* %cs4, i8** %16, align 8, !llfi_index !609
  store i8* %cs5, i8** %17, align 8, !llfi_index !610
  store i8* %cs6, i8** %18, align 8, !llfi_index !611
  store i8* %cs7, i8** %19, align 8, !llfi_index !612
  %20 = load i8** %1, align 8, !llfi_index !613
  %21 = load i8** %1, align 8, !llfi_index !613
  %check_cmp = icmp eq i8* %20, %21
  br i1 %check_cmp, label %22, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %22

; <label>:22                                      ; preds = %checkBb, %0
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str51, i32 0, i32 0), i8* %20), !llfi_index !614
  %24 = load i8* %2, align 1, !llfi_index !615
  %25 = load i8* %2, align 1, !llfi_index !615
  %26 = sext i8 %24 to i32, !llfi_index !616
  %27 = sext i8 %25 to i32, !llfi_index !616
  %check_cmp1 = icmp eq i32 %26, %27
  br i1 %check_cmp1, label %28, label %checkBb2

checkBb2:                                         ; preds = %22
  call void @check_flag()
  br label %28

; <label>:28                                      ; preds = %checkBb2, %22
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str152, i32 0, i32 0), i32 %26), !llfi_index !617
  %30 = load i32* %4, align 4, !llfi_index !618
  %31 = load i32* %4, align 4, !llfi_index !618
  %32 = icmp eq i32 %30, 0, !llfi_index !619
  %33 = icmp eq i32 %31, 0, !llfi_index !619
  %check_cmp3 = icmp eq i1 %32, %33
  br i1 %check_cmp3, label %34, label %checkBb4

checkBb4:                                         ; preds = %28
  call void @check_flag()
  br label %34

; <label>:34                                      ; preds = %checkBb4, %28
  br i1 %32, label %35, label %122, !llfi_index !620

; <label>:35                                      ; preds = %34
  %36 = load i32* %5, align 4, !llfi_index !621
  %37 = load i32* %5, align 4, !llfi_index !621
  %38 = icmp eq i32 %36, 0, !llfi_index !622
  %39 = icmp eq i32 %37, 0, !llfi_index !622
  %check_cmp5 = icmp eq i1 %38, %39
  br i1 %check_cmp5, label %40, label %checkBb6

checkBb6:                                         ; preds = %35
  call void @check_flag()
  br label %40

; <label>:40                                      ; preds = %checkBb6, %35
  br i1 %38, label %41, label %122, !llfi_index !623

; <label>:41                                      ; preds = %40
  %42 = load i8** %1, align 8, !llfi_index !624
  %43 = load i8** %1, align 8, !llfi_index !624
  %44 = getelementptr inbounds i8* %42, i64 0, !llfi_index !625
  %45 = getelementptr inbounds i8* %43, i64 0, !llfi_index !625
  %46 = load i8* %44, align 1, !llfi_index !626
  %47 = load i8* %45, align 1, !llfi_index !626
  %48 = sext i8 %46 to i32, !llfi_index !627
  %49 = sext i8 %47 to i32, !llfi_index !627
  %50 = icmp eq i32 %48, 69, !llfi_index !628
  %51 = icmp eq i32 %49, 69, !llfi_index !628
  %check_cmp7 = icmp eq i1 %50, %51
  br i1 %check_cmp7, label %52, label %checkBb8

checkBb8:                                         ; preds = %41
  call void @check_flag()
  br label %52

; <label>:52                                      ; preds = %checkBb8, %41
  br i1 %50, label %53, label %116, !llfi_index !629

; <label>:53                                      ; preds = %52
  %54 = load i8** %1, align 8, !llfi_index !630
  %55 = load i8** %1, align 8, !llfi_index !630
  %56 = getelementptr inbounds i8* %54, i64 1, !llfi_index !631
  %57 = getelementptr inbounds i8* %55, i64 1, !llfi_index !631
  %58 = load i8* %56, align 1, !llfi_index !632
  %59 = load i8* %57, align 1, !llfi_index !632
  %60 = sext i8 %58 to i32, !llfi_index !633
  %61 = sext i8 %59 to i32, !llfi_index !633
  %62 = icmp eq i32 %60, 80, !llfi_index !634
  %63 = icmp eq i32 %61, 80, !llfi_index !634
  %check_cmp9 = icmp eq i1 %62, %63
  br i1 %check_cmp9, label %64, label %checkBb10

checkBb10:                                        ; preds = %53
  call void @check_flag()
  br label %64

; <label>:64                                      ; preds = %checkBb10, %53
  br i1 %62, label %65, label %116, !llfi_index !635

; <label>:65                                      ; preds = %64
  %66 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !636
  %67 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !636
  %check_cmp11 = icmp eq i8* %66, %67
  br i1 %check_cmp11, label %68, label %checkBb12

checkBb12:                                        ; preds = %65
  call void @check_flag()
  br label %68

; <label>:68                                      ; preds = %checkBb12, %65
  %69 = load i32* %3, align 4, !llfi_index !637
  %70 = load i32* %3, align 4, !llfi_index !637
  %71 = sitofp i32 %69 to double, !llfi_index !638
  %72 = sitofp i32 %70 to double, !llfi_index !638
  %check_cmp13 = fcmp ueq double %71, %72
  br i1 %check_cmp13, label %73, label %checkBb14

checkBb14:                                        ; preds = %68
  call void @check_flag()
  br label %73

; <label>:73                                      ; preds = %checkBb14, %68
  %74 = call double @pow(double 2.000000e+00, double %71) #2, !llfi_index !639
  %75 = call i32 (i8*, i8*, ...)* @sprintf(i8* %66, i8* getelementptr inbounds ([8 x i8]* @.str253, i32 0, i32 0), double %74) #2, !llfi_index !640
  store i32 14, i32* %j, align 4, !llfi_index !641
  %76 = load i32* %j, align 4, !llfi_index !642
  %77 = load i32* %j, align 4, !llfi_index !642
  %78 = sext i32 %76 to i64, !llfi_index !643
  %79 = sext i32 %77 to i64, !llfi_index !643
  %80 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %78, !llfi_index !644
  %81 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %79, !llfi_index !644
  %82 = load i8* %80, align 1, !llfi_index !645
  %83 = load i8* %81, align 1, !llfi_index !645
  %84 = sext i8 %82 to i32, !llfi_index !646
  %85 = sext i8 %83 to i32, !llfi_index !646
  %86 = icmp eq i32 %84, 46, !llfi_index !647
  %87 = icmp eq i32 %85, 46, !llfi_index !647
  %check_cmp15 = icmp eq i1 %86, %87
  br i1 %check_cmp15, label %88, label %checkBb16

checkBb16:                                        ; preds = %73
  call void @check_flag()
  br label %88

; <label>:88                                      ; preds = %checkBb16, %73
  br i1 %86, label %89, label %102, !llfi_index !648

; <label>:89                                      ; preds = %88
  %90 = load i32* %j, align 4, !llfi_index !649
  %91 = load i32* %j, align 4, !llfi_index !649
  %92 = sext i32 %90 to i64, !llfi_index !650
  %93 = sext i32 %91 to i64, !llfi_index !650
  %94 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %92, !llfi_index !651
  %95 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %93, !llfi_index !651
  %check_cmp17 = icmp eq i8* %94, %95
  br i1 %check_cmp17, label %96, label %checkBb18

checkBb18:                                        ; preds = %89
  call void @check_flag()
  br label %96

; <label>:96                                      ; preds = %checkBb18, %89
  store i8 32, i8* %94, align 1, !llfi_index !652
  %97 = load i32* %j, align 4, !llfi_index !653
  %98 = load i32* %j, align 4, !llfi_index !653
  %99 = add nsw i32 %97, -1, !llfi_index !654
  %100 = add nsw i32 %98, -1, !llfi_index !654
  %check_cmp19 = icmp eq i32 %99, %100
  br i1 %check_cmp19, label %101, label %checkBb20

checkBb20:                                        ; preds = %96
  call void @check_flag()
  br label %101

; <label>:101                                     ; preds = %checkBb20, %96
  store i32 %99, i32* %j, align 4, !llfi_index !655
  br label %102, !llfi_index !656

; <label>:102                                     ; preds = %101, %88
  %103 = load i32* %j, align 4, !llfi_index !657
  %104 = load i32* %j, align 4, !llfi_index !657
  %105 = add nsw i32 %103, 1, !llfi_index !658
  %106 = add nsw i32 %104, 1, !llfi_index !658
  %107 = sext i32 %105 to i64, !llfi_index !659
  %108 = sext i32 %106 to i64, !llfi_index !659
  %109 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %107, !llfi_index !660
  %110 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %108, !llfi_index !660
  %check_cmp21 = icmp eq i8* %109, %110
  br i1 %check_cmp21, label %111, label %checkBb22

checkBb22:                                        ; preds = %102
  call void @check_flag()
  br label %111

; <label>:111                                     ; preds = %checkBb22, %102
  store i8 0, i8* %109, align 1, !llfi_index !661
  %112 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !662
  %113 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !662
  %check_cmp23 = icmp eq i8* %112, %113
  br i1 %check_cmp23, label %114, label %checkBb24

checkBb24:                                        ; preds = %111
  call void @check_flag()
  br label %114

; <label>:114                                     ; preds = %checkBb24, %111
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str354, i32 0, i32 0), i8* %112), !llfi_index !663
  br label %121, !llfi_index !664

; <label>:116                                     ; preds = %64, %52
  %117 = load i32* %3, align 4, !llfi_index !665
  %118 = load i32* %3, align 4, !llfi_index !665
  %check_cmp25 = icmp eq i32 %117, %118
  br i1 %check_cmp25, label %119, label %checkBb26

checkBb26:                                        ; preds = %116
  call void @check_flag()
  br label %119

; <label>:119                                     ; preds = %checkBb26, %116
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str455, i32 0, i32 0), i32 %117), !llfi_index !666
  br label %121, !llfi_index !667

; <label>:121                                     ; preds = %119, %114
  br label %133, !llfi_index !668

; <label>:122                                     ; preds = %40, %34
  %123 = load i32* %3, align 4, !llfi_index !669
  %124 = load i32* %3, align 4, !llfi_index !669
  %check_cmp27 = icmp eq i32 %123, %124
  br i1 %check_cmp27, label %125, label %checkBb28

checkBb28:                                        ; preds = %122
  call void @check_flag()
  br label %125

; <label>:125                                     ; preds = %checkBb28, %122
  %126 = load i32* %4, align 4, !llfi_index !670
  %127 = load i32* %4, align 4, !llfi_index !670
  %check_cmp29 = icmp eq i32 %126, %127
  br i1 %check_cmp29, label %128, label %checkBb30

checkBb30:                                        ; preds = %125
  call void @check_flag()
  br label %128

; <label>:128                                     ; preds = %checkBb30, %125
  %129 = load i32* %5, align 4, !llfi_index !671
  %130 = load i32* %5, align 4, !llfi_index !671
  %check_cmp31 = icmp eq i32 %129, %130
  br i1 %check_cmp31, label %131, label %checkBb32

checkBb32:                                        ; preds = %128
  call void @check_flag()
  br label %131

; <label>:131                                     ; preds = %checkBb32, %128
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str556, i32 0, i32 0), i32 %123, i32 %126, i32 %129), !llfi_index !672
  br label %133, !llfi_index !673

; <label>:133                                     ; preds = %131, %121
  %134 = load i32* %6, align 4, !llfi_index !674
  %135 = load i32* %6, align 4, !llfi_index !674
  %check_cmp33 = icmp eq i32 %134, %135
  br i1 %check_cmp33, label %136, label %checkBb34

checkBb34:                                        ; preds = %133
  call void @check_flag()
  br label %136

; <label>:136                                     ; preds = %checkBb34, %133
  %137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str657, i32 0, i32 0), i32 %134), !llfi_index !675
  %138 = load i8** %9, align 8, !llfi_index !676
  %139 = load i8** %9, align 8, !llfi_index !676
  %check_cmp35 = icmp eq i8* %138, %139
  br i1 %check_cmp35, label %140, label %checkBb36

checkBb36:                                        ; preds = %136
  call void @check_flag()
  br label %140

; <label>:140                                     ; preds = %checkBb36, %136
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str758, i32 0, i32 0), i8* %138), !llfi_index !677
  %142 = load i32* %10, align 4, !llfi_index !678
  %143 = load i32* %10, align 4, !llfi_index !678
  %144 = icmp ne i32 %142, 0, !llfi_index !679
  %145 = icmp ne i32 %143, 0, !llfi_index !679
  %check_cmp37 = icmp eq i1 %144, %145
  br i1 %check_cmp37, label %146, label %checkBb38

checkBb38:                                        ; preds = %140
  call void @check_flag()
  br label %146

; <label>:146                                     ; preds = %checkBb38, %140
  br i1 %144, label %147, label %149, !llfi_index !680

; <label>:147                                     ; preds = %146
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str960, i32 0, i32 0)), !llfi_index !681
  br label %151, !llfi_index !682

; <label>:149                                     ; preds = %146
  %150 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1061, i32 0, i32 0)), !llfi_index !683
  br label %151, !llfi_index !684

; <label>:151                                     ; preds = %149, %147
  %152 = load i8** %11, align 8, !llfi_index !685
  %153 = load i8** %11, align 8, !llfi_index !685
  %check_cmp39 = icmp eq i8* %152, %153
  br i1 %check_cmp39, label %154, label %checkBb40

checkBb40:                                        ; preds = %151
  call void @check_flag()
  br label %154

; <label>:154                                     ; preds = %checkBb40, %151
  %155 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1162, i32 0, i32 0), i8* %152), !llfi_index !686
  %156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([195 x i8]* @.str1263, i32 0, i32 0)), !llfi_index !687
  ret void, !llfi_index !688
}

; Function Attrs: nounwind uwtable
define double @randlc(double* %x, double %a) #0 {
  %1 = alloca double*, align 8, !llfi_index !689
  %2 = alloca double, align 8, !llfi_index !690
  %r23 = alloca double, align 8, !llfi_index !691
  %r46 = alloca double, align 8, !llfi_index !692
  %t23 = alloca double, align 8, !llfi_index !693
  %t46 = alloca double, align 8, !llfi_index !694
  %t1 = alloca double, align 8, !llfi_index !695
  %t2 = alloca double, align 8, !llfi_index !696
  %t3 = alloca double, align 8, !llfi_index !697
  %t4 = alloca double, align 8, !llfi_index !698
  %a1 = alloca double, align 8, !llfi_index !699
  %a2 = alloca double, align 8, !llfi_index !700
  %x1 = alloca double, align 8, !llfi_index !701
  %x2 = alloca double, align 8, !llfi_index !702
  %z = alloca double, align 8, !llfi_index !703
  %r = alloca double, align 8, !llfi_index !704
  store double* %x, double** %1, align 8, !llfi_index !705
  store double %a, double* %2, align 8, !llfi_index !706
  store double 0x3E80000000000000, double* %r23, align 8, !llfi_index !707
  store double 0x3D10000000000000, double* %r46, align 8, !llfi_index !708
  store double 8.388608e+06, double* %t23, align 8, !llfi_index !709
  store double 0x42D0000000000000, double* %t46, align 8, !llfi_index !710
  %3 = load double* %2, align 8, !llfi_index !711
  %4 = load double* %2, align 8, !llfi_index !711
  %5 = fmul double 0x3E80000000000000, %3, !llfi_index !712
  %6 = fmul double 0x3E80000000000000, %4, !llfi_index !712
  %check_cmp = fcmp ueq double %5, %6
  br i1 %check_cmp, label %7, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %7

; <label>:7                                       ; preds = %checkBb, %0
  store double %5, double* %t1, align 8, !llfi_index !713
  %8 = load double* %t1, align 8, !llfi_index !714
  %9 = load double* %t1, align 8, !llfi_index !714
  %10 = fptosi double %8 to i32, !llfi_index !715
  %11 = fptosi double %9 to i32, !llfi_index !715
  %12 = sitofp i32 %10 to double, !llfi_index !716
  %13 = sitofp i32 %11 to double, !llfi_index !716
  %check_cmp1 = fcmp ueq double %12, %13
  br i1 %check_cmp1, label %14, label %checkBb2

checkBb2:                                         ; preds = %7
  call void @check_flag()
  br label %14

; <label>:14                                      ; preds = %checkBb2, %7
  store double %12, double* %a1, align 8, !llfi_index !717
  %15 = load double* %2, align 8, !llfi_index !718
  %16 = load double* %2, align 8, !llfi_index !718
  %17 = load double* %a1, align 8, !llfi_index !719
  %18 = load double* %a1, align 8, !llfi_index !719
  %19 = fmul double 8.388608e+06, %17, !llfi_index !720
  %20 = fmul double 8.388608e+06, %18, !llfi_index !720
  %21 = fsub double %15, %19, !llfi_index !721
  %22 = fsub double %16, %20, !llfi_index !721
  %check_cmp3 = fcmp ueq double %21, %22
  br i1 %check_cmp3, label %23, label %checkBb4

checkBb4:                                         ; preds = %14
  call void @check_flag()
  br label %23

; <label>:23                                      ; preds = %checkBb4, %14
  store double %21, double* %a2, align 8, !llfi_index !722
  %24 = load double** %1, align 8, !llfi_index !723
  %25 = load double** %1, align 8, !llfi_index !723
  %26 = load double* %24, align 8, !llfi_index !724
  %27 = load double* %25, align 8, !llfi_index !724
  %28 = fmul double 0x3E80000000000000, %26, !llfi_index !725
  %29 = fmul double 0x3E80000000000000, %27, !llfi_index !725
  %check_cmp5 = fcmp ueq double %28, %29
  br i1 %check_cmp5, label %30, label %checkBb6

checkBb6:                                         ; preds = %23
  call void @check_flag()
  br label %30

; <label>:30                                      ; preds = %checkBb6, %23
  store double %28, double* %t1, align 8, !llfi_index !726
  %31 = load double* %t1, align 8, !llfi_index !727
  %32 = load double* %t1, align 8, !llfi_index !727
  %33 = fptosi double %31 to i32, !llfi_index !728
  %34 = fptosi double %32 to i32, !llfi_index !728
  %35 = sitofp i32 %33 to double, !llfi_index !729
  %36 = sitofp i32 %34 to double, !llfi_index !729
  %check_cmp7 = fcmp ueq double %35, %36
  br i1 %check_cmp7, label %37, label %checkBb8

checkBb8:                                         ; preds = %30
  call void @check_flag()
  br label %37

; <label>:37                                      ; preds = %checkBb8, %30
  store double %35, double* %x1, align 8, !llfi_index !730
  %38 = load double** %1, align 8, !llfi_index !731
  %39 = load double** %1, align 8, !llfi_index !731
  %40 = load double* %38, align 8, !llfi_index !732
  %41 = load double* %39, align 8, !llfi_index !732
  %42 = load double* %x1, align 8, !llfi_index !733
  %43 = load double* %x1, align 8, !llfi_index !733
  %44 = fmul double 8.388608e+06, %42, !llfi_index !734
  %45 = fmul double 8.388608e+06, %43, !llfi_index !734
  %46 = fsub double %40, %44, !llfi_index !735
  %47 = fsub double %41, %45, !llfi_index !735
  %check_cmp9 = fcmp ueq double %46, %47
  br i1 %check_cmp9, label %48, label %checkBb10

checkBb10:                                        ; preds = %37
  call void @check_flag()
  br label %48

; <label>:48                                      ; preds = %checkBb10, %37
  store double %46, double* %x2, align 8, !llfi_index !736
  %49 = load double* %a1, align 8, !llfi_index !737
  %50 = load double* %a1, align 8, !llfi_index !737
  %51 = load double* %x2, align 8, !llfi_index !738
  %52 = load double* %x2, align 8, !llfi_index !738
  %53 = fmul double %49, %51, !llfi_index !739
  %54 = fmul double %50, %52, !llfi_index !739
  %55 = load double* %a2, align 8, !llfi_index !740
  %56 = load double* %a2, align 8, !llfi_index !740
  %57 = load double* %x1, align 8, !llfi_index !741
  %58 = load double* %x1, align 8, !llfi_index !741
  %59 = fmul double %55, %57, !llfi_index !742
  %60 = fmul double %56, %58, !llfi_index !742
  %61 = fadd double %53, %59, !llfi_index !743
  %62 = fadd double %54, %60, !llfi_index !743
  %check_cmp11 = fcmp ueq double %61, %62
  br i1 %check_cmp11, label %63, label %checkBb12

checkBb12:                                        ; preds = %48
  call void @check_flag()
  br label %63

; <label>:63                                      ; preds = %checkBb12, %48
  store double %61, double* %t1, align 8, !llfi_index !744
  %64 = load double* %t1, align 8, !llfi_index !745
  %65 = load double* %t1, align 8, !llfi_index !745
  %66 = fmul double 0x3E80000000000000, %64, !llfi_index !746
  %67 = fmul double 0x3E80000000000000, %65, !llfi_index !746
  %68 = fptosi double %66 to i32, !llfi_index !747
  %69 = fptosi double %67 to i32, !llfi_index !747
  %70 = sitofp i32 %68 to double, !llfi_index !748
  %71 = sitofp i32 %69 to double, !llfi_index !748
  %check_cmp13 = fcmp ueq double %70, %71
  br i1 %check_cmp13, label %72, label %checkBb14

checkBb14:                                        ; preds = %63
  call void @check_flag()
  br label %72

; <label>:72                                      ; preds = %checkBb14, %63
  store double %70, double* %t2, align 8, !llfi_index !749
  %73 = load double* %t1, align 8, !llfi_index !750
  %74 = load double* %t1, align 8, !llfi_index !750
  %75 = load double* %t2, align 8, !llfi_index !751
  %76 = load double* %t2, align 8, !llfi_index !751
  %77 = fmul double 8.388608e+06, %75, !llfi_index !752
  %78 = fmul double 8.388608e+06, %76, !llfi_index !752
  %79 = fsub double %73, %77, !llfi_index !753
  %80 = fsub double %74, %78, !llfi_index !753
  %check_cmp15 = fcmp ueq double %79, %80
  br i1 %check_cmp15, label %81, label %checkBb16

checkBb16:                                        ; preds = %72
  call void @check_flag()
  br label %81

; <label>:81                                      ; preds = %checkBb16, %72
  store double %79, double* %z, align 8, !llfi_index !754
  %82 = load double* %z, align 8, !llfi_index !755
  %83 = load double* %z, align 8, !llfi_index !755
  %84 = fmul double 8.388608e+06, %82, !llfi_index !756
  %85 = fmul double 8.388608e+06, %83, !llfi_index !756
  %86 = load double* %a2, align 8, !llfi_index !757
  %87 = load double* %a2, align 8, !llfi_index !757
  %88 = load double* %x2, align 8, !llfi_index !758
  %89 = load double* %x2, align 8, !llfi_index !758
  %90 = fmul double %86, %88, !llfi_index !759
  %91 = fmul double %87, %89, !llfi_index !759
  %92 = fadd double %84, %90, !llfi_index !760
  %93 = fadd double %85, %91, !llfi_index !760
  %check_cmp17 = fcmp ueq double %92, %93
  br i1 %check_cmp17, label %94, label %checkBb18

checkBb18:                                        ; preds = %81
  call void @check_flag()
  br label %94

; <label>:94                                      ; preds = %checkBb18, %81
  store double %92, double* %t3, align 8, !llfi_index !761
  %95 = load double* %t3, align 8, !llfi_index !762
  %96 = load double* %t3, align 8, !llfi_index !762
  %97 = fmul double 0x3D10000000000000, %95, !llfi_index !763
  %98 = fmul double 0x3D10000000000000, %96, !llfi_index !763
  %99 = fptosi double %97 to i32, !llfi_index !764
  %100 = fptosi double %98 to i32, !llfi_index !764
  %101 = sitofp i32 %99 to double, !llfi_index !765
  %102 = sitofp i32 %100 to double, !llfi_index !765
  %check_cmp19 = fcmp ueq double %101, %102
  br i1 %check_cmp19, label %103, label %checkBb20

checkBb20:                                        ; preds = %94
  call void @check_flag()
  br label %103

; <label>:103                                     ; preds = %checkBb20, %94
  store double %101, double* %t4, align 8, !llfi_index !766
  %104 = load double* %t3, align 8, !llfi_index !767
  %105 = load double* %t3, align 8, !llfi_index !767
  %106 = load double* %t4, align 8, !llfi_index !768
  %107 = load double* %t4, align 8, !llfi_index !768
  %108 = fmul double 0x42D0000000000000, %106, !llfi_index !769
  %109 = fmul double 0x42D0000000000000, %107, !llfi_index !769
  %110 = fsub double %104, %108, !llfi_index !770
  %111 = fsub double %105, %109, !llfi_index !770
  %check_cmp21 = fcmp ueq double %110, %111
  br i1 %check_cmp21, label %112, label %checkBb22

checkBb22:                                        ; preds = %103
  call void @check_flag()
  br label %112

; <label>:112                                     ; preds = %checkBb22, %103
  %113 = load double** %1, align 8, !llfi_index !771
  %114 = load double** %1, align 8, !llfi_index !771
  %check_cmp23 = icmp eq double* %113, %114
  br i1 %check_cmp23, label %115, label %checkBb24

checkBb24:                                        ; preds = %112
  call void @check_flag()
  br label %115

; <label>:115                                     ; preds = %checkBb24, %112
  store double %110, double* %113, align 8, !llfi_index !772
  %116 = load double** %1, align 8, !llfi_index !773
  %117 = load double** %1, align 8, !llfi_index !773
  %118 = load double* %116, align 8, !llfi_index !774
  %119 = load double* %117, align 8, !llfi_index !774
  %120 = fmul double 0x3D10000000000000, %118, !llfi_index !775
  %121 = fmul double 0x3D10000000000000, %119, !llfi_index !775
  %check_cmp25 = fcmp ueq double %120, %121
  br i1 %check_cmp25, label %122, label %checkBb26

checkBb26:                                        ; preds = %115
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb26, %115
  store double %120, double* %r, align 8, !llfi_index !776
  %123 = load double* %r, align 8, !llfi_index !777
  %124 = load double* %r, align 8, !llfi_index !777
  %check_cmp27 = fcmp ueq double %123, %124
  br i1 %check_cmp27, label %125, label %checkBb28

checkBb28:                                        ; preds = %122
  call void @check_flag()
  br label %125

; <label>:125                                     ; preds = %checkBb28, %122
  ret double %123, !llfi_index !778
}

; Function Attrs: nounwind uwtable
define void @vranlc(i32 %n, double* %x, double %a, double* %y) #0 {
  %1 = alloca i32, align 4, !llfi_index !779
  %2 = alloca double*, align 8, !llfi_index !780
  %3 = alloca double, align 8, !llfi_index !781
  %4 = alloca double*, align 8, !llfi_index !782
  %r23 = alloca double, align 8, !llfi_index !783
  %r46 = alloca double, align 8, !llfi_index !784
  %t23 = alloca double, align 8, !llfi_index !785
  %t46 = alloca double, align 8, !llfi_index !786
  %t1 = alloca double, align 8, !llfi_index !787
  %t2 = alloca double, align 8, !llfi_index !788
  %t3 = alloca double, align 8, !llfi_index !789
  %t4 = alloca double, align 8, !llfi_index !790
  %a1 = alloca double, align 8, !llfi_index !791
  %a2 = alloca double, align 8, !llfi_index !792
  %x1 = alloca double, align 8, !llfi_index !793
  %x2 = alloca double, align 8, !llfi_index !794
  %z = alloca double, align 8, !llfi_index !795
  %i = alloca i32, align 4, !llfi_index !796
  store i32 %n, i32* %1, align 4, !llfi_index !797
  store double* %x, double** %2, align 8, !llfi_index !798
  store double %a, double* %3, align 8, !llfi_index !799
  store double* %y, double** %4, align 8, !llfi_index !800
  store double 0x3E80000000000000, double* %r23, align 8, !llfi_index !801
  store double 0x3D10000000000000, double* %r46, align 8, !llfi_index !802
  store double 8.388608e+06, double* %t23, align 8, !llfi_index !803
  store double 0x42D0000000000000, double* %t46, align 8, !llfi_index !804
  %5 = load double* %3, align 8, !llfi_index !805
  %6 = load double* %3, align 8, !llfi_index !805
  %7 = fmul double 0x3E80000000000000, %5, !llfi_index !806
  %8 = fmul double 0x3E80000000000000, %6, !llfi_index !806
  %check_cmp = fcmp ueq double %7, %8
  br i1 %check_cmp, label %9, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %9

; <label>:9                                       ; preds = %checkBb, %0
  store double %7, double* %t1, align 8, !llfi_index !807
  %10 = load double* %t1, align 8, !llfi_index !808
  %11 = load double* %t1, align 8, !llfi_index !808
  %12 = fptosi double %10 to i32, !llfi_index !809
  %13 = fptosi double %11 to i32, !llfi_index !809
  %14 = sitofp i32 %12 to double, !llfi_index !810
  %15 = sitofp i32 %13 to double, !llfi_index !810
  %check_cmp1 = fcmp ueq double %14, %15
  br i1 %check_cmp1, label %16, label %checkBb2

checkBb2:                                         ; preds = %9
  call void @check_flag()
  br label %16

; <label>:16                                      ; preds = %checkBb2, %9
  store double %14, double* %a1, align 8, !llfi_index !811
  %17 = load double* %3, align 8, !llfi_index !812
  %18 = load double* %3, align 8, !llfi_index !812
  %19 = load double* %a1, align 8, !llfi_index !813
  %20 = load double* %a1, align 8, !llfi_index !813
  %21 = fmul double 8.388608e+06, %19, !llfi_index !814
  %22 = fmul double 8.388608e+06, %20, !llfi_index !814
  %23 = fsub double %17, %21, !llfi_index !815
  %24 = fsub double %18, %22, !llfi_index !815
  %check_cmp3 = fcmp ueq double %23, %24
  br i1 %check_cmp3, label %25, label %checkBb4

checkBb4:                                         ; preds = %16
  call void @check_flag()
  br label %25

; <label>:25                                      ; preds = %checkBb4, %16
  store double %23, double* %a2, align 8, !llfi_index !816
  store i32 0, i32* %i, align 4, !llfi_index !817
  br label %26, !llfi_index !818

; <label>:26                                      ; preds = %148, %25
  %27 = load i32* %i, align 4, !llfi_index !819
  %28 = load i32* %i, align 4, !llfi_index !819
  %29 = load i32* %1, align 4, !llfi_index !820
  %30 = load i32* %1, align 4, !llfi_index !820
  %31 = icmp slt i32 %27, %29, !llfi_index !821
  %32 = icmp slt i32 %28, %30, !llfi_index !821
  %check_cmp5 = icmp eq i1 %31, %32
  br i1 %check_cmp5, label %33, label %checkBb6

checkBb6:                                         ; preds = %26
  call void @check_flag()
  br label %33

; <label>:33                                      ; preds = %checkBb6, %26
  br i1 %31, label %34, label %149, !llfi_index !822

; <label>:34                                      ; preds = %33
  %35 = load double** %2, align 8, !llfi_index !823
  %36 = load double** %2, align 8, !llfi_index !823
  %37 = load double* %35, align 8, !llfi_index !824
  %38 = load double* %36, align 8, !llfi_index !824
  %39 = fmul double 0x3E80000000000000, %37, !llfi_index !825
  %40 = fmul double 0x3E80000000000000, %38, !llfi_index !825
  %check_cmp7 = fcmp ueq double %39, %40
  br i1 %check_cmp7, label %41, label %checkBb8

checkBb8:                                         ; preds = %34
  call void @check_flag()
  br label %41

; <label>:41                                      ; preds = %checkBb8, %34
  store double %39, double* %t1, align 8, !llfi_index !826
  %42 = load double* %t1, align 8, !llfi_index !827
  %43 = load double* %t1, align 8, !llfi_index !827
  %44 = fptosi double %42 to i32, !llfi_index !828
  %45 = fptosi double %43 to i32, !llfi_index !828
  %46 = sitofp i32 %44 to double, !llfi_index !829
  %47 = sitofp i32 %45 to double, !llfi_index !829
  %check_cmp9 = fcmp ueq double %46, %47
  br i1 %check_cmp9, label %48, label %checkBb10

checkBb10:                                        ; preds = %41
  call void @check_flag()
  br label %48

; <label>:48                                      ; preds = %checkBb10, %41
  store double %46, double* %x1, align 8, !llfi_index !830
  %49 = load double** %2, align 8, !llfi_index !831
  %50 = load double** %2, align 8, !llfi_index !831
  %51 = load double* %49, align 8, !llfi_index !832
  %52 = load double* %50, align 8, !llfi_index !832
  %53 = load double* %x1, align 8, !llfi_index !833
  %54 = load double* %x1, align 8, !llfi_index !833
  %55 = fmul double 8.388608e+06, %53, !llfi_index !834
  %56 = fmul double 8.388608e+06, %54, !llfi_index !834
  %57 = fsub double %51, %55, !llfi_index !835
  %58 = fsub double %52, %56, !llfi_index !835
  %check_cmp11 = fcmp ueq double %57, %58
  br i1 %check_cmp11, label %59, label %checkBb12

checkBb12:                                        ; preds = %48
  call void @check_flag()
  br label %59

; <label>:59                                      ; preds = %checkBb12, %48
  store double %57, double* %x2, align 8, !llfi_index !836
  %60 = load double* %a1, align 8, !llfi_index !837
  %61 = load double* %a1, align 8, !llfi_index !837
  %62 = load double* %x2, align 8, !llfi_index !838
  %63 = load double* %x2, align 8, !llfi_index !838
  %64 = fmul double %60, %62, !llfi_index !839
  %65 = fmul double %61, %63, !llfi_index !839
  %66 = load double* %a2, align 8, !llfi_index !840
  %67 = load double* %a2, align 8, !llfi_index !840
  %68 = load double* %x1, align 8, !llfi_index !841
  %69 = load double* %x1, align 8, !llfi_index !841
  %70 = fmul double %66, %68, !llfi_index !842
  %71 = fmul double %67, %69, !llfi_index !842
  %72 = fadd double %64, %70, !llfi_index !843
  %73 = fadd double %65, %71, !llfi_index !843
  %check_cmp13 = fcmp ueq double %72, %73
  br i1 %check_cmp13, label %74, label %checkBb14

checkBb14:                                        ; preds = %59
  call void @check_flag()
  br label %74

; <label>:74                                      ; preds = %checkBb14, %59
  store double %72, double* %t1, align 8, !llfi_index !844
  %75 = load double* %t1, align 8, !llfi_index !845
  %76 = load double* %t1, align 8, !llfi_index !845
  %77 = fmul double 0x3E80000000000000, %75, !llfi_index !846
  %78 = fmul double 0x3E80000000000000, %76, !llfi_index !846
  %79 = fptosi double %77 to i32, !llfi_index !847
  %80 = fptosi double %78 to i32, !llfi_index !847
  %81 = sitofp i32 %79 to double, !llfi_index !848
  %82 = sitofp i32 %80 to double, !llfi_index !848
  %check_cmp15 = fcmp ueq double %81, %82
  br i1 %check_cmp15, label %83, label %checkBb16

checkBb16:                                        ; preds = %74
  call void @check_flag()
  br label %83

; <label>:83                                      ; preds = %checkBb16, %74
  store double %81, double* %t2, align 8, !llfi_index !849
  %84 = load double* %t1, align 8, !llfi_index !850
  %85 = load double* %t1, align 8, !llfi_index !850
  %86 = load double* %t2, align 8, !llfi_index !851
  %87 = load double* %t2, align 8, !llfi_index !851
  %88 = fmul double 8.388608e+06, %86, !llfi_index !852
  %89 = fmul double 8.388608e+06, %87, !llfi_index !852
  %90 = fsub double %84, %88, !llfi_index !853
  %91 = fsub double %85, %89, !llfi_index !853
  %check_cmp17 = fcmp ueq double %90, %91
  br i1 %check_cmp17, label %92, label %checkBb18

checkBb18:                                        ; preds = %83
  call void @check_flag()
  br label %92

; <label>:92                                      ; preds = %checkBb18, %83
  store double %90, double* %z, align 8, !llfi_index !854
  %93 = load double* %z, align 8, !llfi_index !855
  %94 = load double* %z, align 8, !llfi_index !855
  %95 = fmul double 8.388608e+06, %93, !llfi_index !856
  %96 = fmul double 8.388608e+06, %94, !llfi_index !856
  %97 = load double* %a2, align 8, !llfi_index !857
  %98 = load double* %a2, align 8, !llfi_index !857
  %99 = load double* %x2, align 8, !llfi_index !858
  %100 = load double* %x2, align 8, !llfi_index !858
  %101 = fmul double %97, %99, !llfi_index !859
  %102 = fmul double %98, %100, !llfi_index !859
  %103 = fadd double %95, %101, !llfi_index !860
  %104 = fadd double %96, %102, !llfi_index !860
  %check_cmp19 = fcmp ueq double %103, %104
  br i1 %check_cmp19, label %105, label %checkBb20

checkBb20:                                        ; preds = %92
  call void @check_flag()
  br label %105

; <label>:105                                     ; preds = %checkBb20, %92
  store double %103, double* %t3, align 8, !llfi_index !861
  %106 = load double* %t3, align 8, !llfi_index !862
  %107 = load double* %t3, align 8, !llfi_index !862
  %108 = fmul double 0x3D10000000000000, %106, !llfi_index !863
  %109 = fmul double 0x3D10000000000000, %107, !llfi_index !863
  %110 = fptosi double %108 to i32, !llfi_index !864
  %111 = fptosi double %109 to i32, !llfi_index !864
  %112 = sitofp i32 %110 to double, !llfi_index !865
  %113 = sitofp i32 %111 to double, !llfi_index !865
  %check_cmp21 = fcmp ueq double %112, %113
  br i1 %check_cmp21, label %114, label %checkBb22

checkBb22:                                        ; preds = %105
  call void @check_flag()
  br label %114

; <label>:114                                     ; preds = %checkBb22, %105
  store double %112, double* %t4, align 8, !llfi_index !866
  %115 = load double* %t3, align 8, !llfi_index !867
  %116 = load double* %t3, align 8, !llfi_index !867
  %117 = load double* %t4, align 8, !llfi_index !868
  %118 = load double* %t4, align 8, !llfi_index !868
  %119 = fmul double 0x42D0000000000000, %117, !llfi_index !869
  %120 = fmul double 0x42D0000000000000, %118, !llfi_index !869
  %121 = fsub double %115, %119, !llfi_index !870
  %122 = fsub double %116, %120, !llfi_index !870
  %check_cmp23 = fcmp ueq double %121, %122
  br i1 %check_cmp23, label %123, label %checkBb24

checkBb24:                                        ; preds = %114
  call void @check_flag()
  br label %123

; <label>:123                                     ; preds = %checkBb24, %114
  %124 = load double** %2, align 8, !llfi_index !871
  %125 = load double** %2, align 8, !llfi_index !871
  %check_cmp25 = icmp eq double* %124, %125
  br i1 %check_cmp25, label %126, label %checkBb26

checkBb26:                                        ; preds = %123
  call void @check_flag()
  br label %126

; <label>:126                                     ; preds = %checkBb26, %123
  store double %121, double* %124, align 8, !llfi_index !872
  %127 = load double** %2, align 8, !llfi_index !873
  %128 = load double** %2, align 8, !llfi_index !873
  %129 = load double* %127, align 8, !llfi_index !874
  %130 = load double* %128, align 8, !llfi_index !874
  %131 = fmul double 0x3D10000000000000, %129, !llfi_index !875
  %132 = fmul double 0x3D10000000000000, %130, !llfi_index !875
  %check_cmp27 = fcmp ueq double %131, %132
  br i1 %check_cmp27, label %133, label %checkBb28

checkBb28:                                        ; preds = %126
  call void @check_flag()
  br label %133

; <label>:133                                     ; preds = %checkBb28, %126
  %134 = load i32* %i, align 4, !llfi_index !876
  %135 = load i32* %i, align 4, !llfi_index !876
  %136 = sext i32 %134 to i64, !llfi_index !877
  %137 = sext i32 %135 to i64, !llfi_index !877
  %138 = load double** %4, align 8, !llfi_index !878
  %139 = load double** %4, align 8, !llfi_index !878
  %140 = getelementptr inbounds double* %138, i64 %136, !llfi_index !879
  %141 = getelementptr inbounds double* %139, i64 %137, !llfi_index !879
  %check_cmp29 = icmp eq double* %140, %141
  br i1 %check_cmp29, label %142, label %checkBb30

checkBb30:                                        ; preds = %133
  call void @check_flag()
  br label %142

; <label>:142                                     ; preds = %checkBb30, %133
  store double %131, double* %140, align 8, !llfi_index !880
  br label %143, !llfi_index !881

; <label>:143                                     ; preds = %142
  %144 = load i32* %i, align 4, !llfi_index !882
  %145 = load i32* %i, align 4, !llfi_index !882
  %146 = add nsw i32 %144, 1, !llfi_index !883
  %147 = add nsw i32 %145, 1, !llfi_index !883
  %check_cmp31 = icmp eq i32 %146, %147
  br i1 %check_cmp31, label %148, label %checkBb32

checkBb32:                                        ; preds = %143
  call void @check_flag()
  br label %148

; <label>:148                                     ; preds = %checkBb32, %143
  store i32 %146, i32* %i, align 4, !llfi_index !884
  br label %26, !llfi_index !885

; <label>:149                                     ; preds = %33
  ret void, !llfi_index !886
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* %t) #0 {
  %1 = alloca double*, align 8, !llfi_index !887
  %tv = alloca %struct.timeval, align 8, !llfi_index !888
  store double* %t, double** %1, align 8, !llfi_index !889
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !890
  %3 = load i32* @wtime_.sec, align 4, !llfi_index !891
  %4 = load i32* @wtime_.sec, align 4, !llfi_index !891
  %5 = icmp slt i32 %3, 0, !llfi_index !892
  %6 = icmp slt i32 %4, 0, !llfi_index !892
  %check_cmp = icmp eq i1 %5, %6
  br i1 %check_cmp, label %7, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %7

; <label>:7                                       ; preds = %checkBb, %0
  br i1 %5, label %8, label %16, !llfi_index !893

; <label>:8                                       ; preds = %7
  %9 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !894
  %10 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !894
  %11 = load i64* %9, align 8, !llfi_index !895
  %12 = load i64* %10, align 8, !llfi_index !895
  %13 = trunc i64 %11 to i32, !llfi_index !896
  %14 = trunc i64 %12 to i32, !llfi_index !896
  %check_cmp1 = icmp eq i32 %13, %14
  br i1 %check_cmp1, label %15, label %checkBb2

checkBb2:                                         ; preds = %8
  call void @check_flag()
  br label %15

; <label>:15                                      ; preds = %checkBb2, %8
  store i32 %13, i32* @wtime_.sec, align 4, !llfi_index !897
  br label %16, !llfi_index !898

; <label>:16                                      ; preds = %15, %7
  %17 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !899
  %18 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !899
  %19 = load i64* %17, align 8, !llfi_index !900
  %20 = load i64* %18, align 8, !llfi_index !900
  %21 = load i32* @wtime_.sec, align 4, !llfi_index !901
  %22 = load i32* @wtime_.sec, align 4, !llfi_index !901
  %23 = sext i32 %21 to i64, !llfi_index !902
  %24 = sext i32 %22 to i64, !llfi_index !902
  %25 = sub nsw i64 %19, %23, !llfi_index !903
  %26 = sub nsw i64 %20, %24, !llfi_index !903
  %27 = sitofp i64 %25 to double, !llfi_index !904
  %28 = sitofp i64 %26 to double, !llfi_index !904
  %29 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1, !llfi_index !905
  %30 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1, !llfi_index !905
  %31 = load i64* %29, align 8, !llfi_index !906
  %32 = load i64* %30, align 8, !llfi_index !906
  %33 = sitofp i64 %31 to double, !llfi_index !907
  %34 = sitofp i64 %32 to double, !llfi_index !907
  %35 = fmul double 1.000000e-06, %33, !llfi_index !908
  %36 = fmul double 1.000000e-06, %34, !llfi_index !908
  %37 = fadd double %27, %35, !llfi_index !909
  %38 = fadd double %28, %36, !llfi_index !909
  %check_cmp3 = fcmp ueq double %37, %38
  br i1 %check_cmp3, label %39, label %checkBb4

checkBb4:                                         ; preds = %16
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb4, %16
  %40 = load double** %1, align 8, !llfi_index !910
  %41 = load double** %1, align 8, !llfi_index !910
  %check_cmp5 = icmp eq double* %40, %41
  br i1 %check_cmp5, label %42, label %checkBb6

checkBb6:                                         ; preds = %39
  call void @check_flag()
  br label %42

; <label>:42                                      ; preds = %checkBb6, %39
  store double %37, double* %40, align 8, !llfi_index !911
  ret void, !llfi_index !912
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str27, i32 0, i32 0))
  call void @exit(i32 99) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{i64 8}
!9 = metadata !{i64 9}
!10 = metadata !{i64 10}
!11 = metadata !{i64 11}
!12 = metadata !{i64 12}
!13 = metadata !{i64 13}
!14 = metadata !{i64 14}
!15 = metadata !{i64 15}
!16 = metadata !{i64 16}
!17 = metadata !{i64 17}
!18 = metadata !{i64 18}
!19 = metadata !{i64 19}
!20 = metadata !{i64 20}
!21 = metadata !{i64 21}
!22 = metadata !{i64 22}
!23 = metadata !{i64 23}
!24 = metadata !{i64 24}
!25 = metadata !{i64 25}
!26 = metadata !{i64 26}
!27 = metadata !{i64 27}
!28 = metadata !{i64 28}
!29 = metadata !{i64 29}
!30 = metadata !{i64 30}
!31 = metadata !{i64 31}
!32 = metadata !{i64 32}
!33 = metadata !{i64 33}
!34 = metadata !{i64 34}
!35 = metadata !{i64 35}
!36 = metadata !{i64 36}
!37 = metadata !{i64 37}
!38 = metadata !{i64 38}
!39 = metadata !{i64 39}
!40 = metadata !{i64 40}
!41 = metadata !{i64 41}
!42 = metadata !{i64 42}
!43 = metadata !{i64 43}
!44 = metadata !{i64 44}
!45 = metadata !{i64 45}
!46 = metadata !{i64 46}
!47 = metadata !{i64 47}
!48 = metadata !{i64 48}
!49 = metadata !{i64 49}
!50 = metadata !{i64 50}
!51 = metadata !{i64 51}
!52 = metadata !{i64 52}
!53 = metadata !{i64 53}
!54 = metadata !{i64 54}
!55 = metadata !{i64 55}
!56 = metadata !{i64 56}
!57 = metadata !{i64 57}
!58 = metadata !{i64 58}
!59 = metadata !{i64 59}
!60 = metadata !{i64 60}
!61 = metadata !{i64 61}
!62 = metadata !{i64 62}
!63 = metadata !{i64 63}
!64 = metadata !{i64 64}
!65 = metadata !{i64 65}
!66 = metadata !{i64 66}
!67 = metadata !{i64 67}
!68 = metadata !{i64 68}
!69 = metadata !{i64 69}
!70 = metadata !{i64 70}
!71 = metadata !{i64 71}
!72 = metadata !{i64 72}
!73 = metadata !{i64 73}
!74 = metadata !{i64 74}
!75 = metadata !{i64 75}
!76 = metadata !{i64 76}
!77 = metadata !{i64 77}
!78 = metadata !{i64 78}
!79 = metadata !{i64 79}
!80 = metadata !{i64 80}
!81 = metadata !{i64 81}
!82 = metadata !{i64 82}
!83 = metadata !{i64 83}
!84 = metadata !{i64 84}
!85 = metadata !{i64 85}
!86 = metadata !{i64 86}
!87 = metadata !{i64 87}
!88 = metadata !{i64 88}
!89 = metadata !{i64 89}
!90 = metadata !{i64 90}
!91 = metadata !{i64 91}
!92 = metadata !{i64 92}
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}
!169 = metadata !{i64 169}
!170 = metadata !{i64 170}
!171 = metadata !{i64 171}
!172 = metadata !{i64 172}
!173 = metadata !{i64 173}
!174 = metadata !{i64 174}
!175 = metadata !{i64 175}
!176 = metadata !{i64 176}
!177 = metadata !{i64 177}
!178 = metadata !{i64 178}
!179 = metadata !{i64 179}
!180 = metadata !{i64 180}
!181 = metadata !{i64 181}
!182 = metadata !{i64 182}
!183 = metadata !{i64 183}
!184 = metadata !{i64 184}
!185 = metadata !{i64 185}
!186 = metadata !{i64 186}
!187 = metadata !{i64 187}
!188 = metadata !{i64 188}
!189 = metadata !{i64 189}
!190 = metadata !{i64 190}
!191 = metadata !{i64 191}
!192 = metadata !{i64 192}
!193 = metadata !{i64 193}
!194 = metadata !{i64 194}
!195 = metadata !{i64 195}
!196 = metadata !{i64 196}
!197 = metadata !{i64 197}
!198 = metadata !{i64 198}
!199 = metadata !{i64 199}
!200 = metadata !{i64 200}
!201 = metadata !{i64 201}
!202 = metadata !{i64 202}
!203 = metadata !{i64 203}
!204 = metadata !{i64 204}
!205 = metadata !{i64 205}
!206 = metadata !{i64 206}
!207 = metadata !{i64 207}
!208 = metadata !{i64 208}
!209 = metadata !{i64 209}
!210 = metadata !{i64 210}
!211 = metadata !{i64 211}
!212 = metadata !{i64 212}
!213 = metadata !{i64 213}
!214 = metadata !{i64 214}
!215 = metadata !{i64 215}
!216 = metadata !{i64 216}
!217 = metadata !{i64 217}
!218 = metadata !{i64 218}
!219 = metadata !{i64 219}
!220 = metadata !{i64 220}
!221 = metadata !{i64 221}
!222 = metadata !{i64 222}
!223 = metadata !{i64 223}
!224 = metadata !{i64 224}
!225 = metadata !{i64 225}
!226 = metadata !{i64 226}
!227 = metadata !{i64 227}
!228 = metadata !{i64 228}
!229 = metadata !{i64 229}
!230 = metadata !{i64 230}
!231 = metadata !{i64 231}
!232 = metadata !{i64 232}
!233 = metadata !{i64 233}
!234 = metadata !{i64 234}
!235 = metadata !{i64 235}
!236 = metadata !{i64 236}
!237 = metadata !{i64 237}
!238 = metadata !{i64 238}
!239 = metadata !{i64 239}
!240 = metadata !{i64 240}
!241 = metadata !{i64 241}
!242 = metadata !{i64 242}
!243 = metadata !{i64 243}
!244 = metadata !{i64 244}
!245 = metadata !{i64 245}
!246 = metadata !{i64 246}
!247 = metadata !{i64 247}
!248 = metadata !{i64 248}
!249 = metadata !{i64 249}
!250 = metadata !{i64 250}
!251 = metadata !{i64 251}
!252 = metadata !{i64 252}
!253 = metadata !{i64 253}
!254 = metadata !{i64 254}
!255 = metadata !{i64 255}
!256 = metadata !{i64 256}
!257 = metadata !{i64 257}
!258 = metadata !{i64 258}
!259 = metadata !{i64 259}
!260 = metadata !{i64 260}
!261 = metadata !{i64 261}
!262 = metadata !{i64 262}
!263 = metadata !{i64 263}
!264 = metadata !{i64 264}
!265 = metadata !{i64 265}
!266 = metadata !{i64 266}
!267 = metadata !{i64 267}
!268 = metadata !{i64 268}
!269 = metadata !{i64 269}
!270 = metadata !{i64 270}
!271 = metadata !{i64 271}
!272 = metadata !{i64 272}
!273 = metadata !{i64 273}
!274 = metadata !{i64 274}
!275 = metadata !{i64 275}
!276 = metadata !{i64 276}
!277 = metadata !{i64 277}
!278 = metadata !{i64 278}
!279 = metadata !{i64 279}
!280 = metadata !{i64 280}
!281 = metadata !{i64 281}
!282 = metadata !{i64 282}
!283 = metadata !{i64 283}
!284 = metadata !{i64 284}
!285 = metadata !{i64 285}
!286 = metadata !{i64 286}
!287 = metadata !{i64 287}
!288 = metadata !{i64 288}
!289 = metadata !{i64 289}
!290 = metadata !{i64 290}
!291 = metadata !{i64 291}
!292 = metadata !{i64 292}
!293 = metadata !{i64 293}
!294 = metadata !{i64 294}
!295 = metadata !{i64 295}
!296 = metadata !{i64 296}
!297 = metadata !{i64 297}
!298 = metadata !{i64 298}
!299 = metadata !{i64 299}
!300 = metadata !{i64 300}
!301 = metadata !{i64 301}
!302 = metadata !{i64 302}
!303 = metadata !{i64 303}
!304 = metadata !{i64 304}
!305 = metadata !{i64 305}
!306 = metadata !{i64 306}
!307 = metadata !{i64 307}
!308 = metadata !{i64 308}
!309 = metadata !{i64 309}
!310 = metadata !{i64 310}
!311 = metadata !{i64 311}
!312 = metadata !{i64 312}
!313 = metadata !{i64 313}
!314 = metadata !{i64 314}
!315 = metadata !{i64 315}
!316 = metadata !{i64 316}
!317 = metadata !{i64 317}
!318 = metadata !{i64 318}
!319 = metadata !{i64 319}
!320 = metadata !{i64 320}
!321 = metadata !{i64 321}
!322 = metadata !{i64 322}
!323 = metadata !{i64 323}
!324 = metadata !{i64 324}
!325 = metadata !{i64 325}
!326 = metadata !{i64 326}
!327 = metadata !{i64 327}
!328 = metadata !{i64 328}
!329 = metadata !{i64 329}
!330 = metadata !{i64 330}
!331 = metadata !{i64 331}
!332 = metadata !{i64 332}
!333 = metadata !{i64 333}
!334 = metadata !{i64 334}
!335 = metadata !{i64 335}
!336 = metadata !{i64 336}
!337 = metadata !{i64 337}
!338 = metadata !{i64 338}
!339 = metadata !{i64 339}
!340 = metadata !{i64 340}
!341 = metadata !{i64 341}
!342 = metadata !{i64 342}
!343 = metadata !{i64 343}
!344 = metadata !{i64 344}
!345 = metadata !{i64 345}
!346 = metadata !{i64 346}
!347 = metadata !{i64 347}
!348 = metadata !{i64 348}
!349 = metadata !{i64 349}
!350 = metadata !{i64 350}
!351 = metadata !{i64 351}
!352 = metadata !{i64 352}
!353 = metadata !{i64 353}
!354 = metadata !{i64 354}
!355 = metadata !{i64 355}
!356 = metadata !{i64 356}
!357 = metadata !{i64 357}
!358 = metadata !{i64 358}
!359 = metadata !{i64 359}
!360 = metadata !{i64 360}
!361 = metadata !{i64 361}
!362 = metadata !{i64 362}
!363 = metadata !{i64 363}
!364 = metadata !{i64 364}
!365 = metadata !{i64 365}
!366 = metadata !{i64 366}
!367 = metadata !{i64 367}
!368 = metadata !{i64 368}
!369 = metadata !{i64 369}
!370 = metadata !{i64 370}
!371 = metadata !{i64 371}
!372 = metadata !{i64 372}
!373 = metadata !{i64 373}
!374 = metadata !{i64 374}
!375 = metadata !{i64 375}
!376 = metadata !{i64 376}
!377 = metadata !{i64 377}
!378 = metadata !{i64 378}
!379 = metadata !{i64 379}
!380 = metadata !{i64 380}
!381 = metadata !{i64 381}
!382 = metadata !{i64 382}
!383 = metadata !{i64 383}
!384 = metadata !{i64 384}
!385 = metadata !{i64 385}
!386 = metadata !{i64 386}
!387 = metadata !{i64 387}
!388 = metadata !{i64 388}
!389 = metadata !{i64 389}
!390 = metadata !{i64 390}
!391 = metadata !{i64 391}
!392 = metadata !{i64 392}
!393 = metadata !{i64 393}
!394 = metadata !{i64 394}
!395 = metadata !{i64 395}
!396 = metadata !{i64 396}
!397 = metadata !{i64 397}
!398 = metadata !{i64 398}
!399 = metadata !{i64 399}
!400 = metadata !{i64 400}
!401 = metadata !{i64 401}
!402 = metadata !{i64 402}
!403 = metadata !{i64 403}
!404 = metadata !{i64 404}
!405 = metadata !{i64 405}
!406 = metadata !{i64 406}
!407 = metadata !{i64 407}
!408 = metadata !{i64 408}
!409 = metadata !{i64 409}
!410 = metadata !{i64 410}
!411 = metadata !{i64 411}
!412 = metadata !{i64 412}
!413 = metadata !{i64 413}
!414 = metadata !{i64 414}
!415 = metadata !{i64 415}
!416 = metadata !{i64 416}
!417 = metadata !{i64 417}
!418 = metadata !{i64 418}
!419 = metadata !{i64 419}
!420 = metadata !{i64 420}
!421 = metadata !{i64 421}
!422 = metadata !{i64 422}
!423 = metadata !{i64 423}
!424 = metadata !{i64 424}
!425 = metadata !{i64 425}
!426 = metadata !{i64 426}
!427 = metadata !{i64 427}
!428 = metadata !{i64 428}
!429 = metadata !{i64 429}
!430 = metadata !{i64 430}
!431 = metadata !{i64 431}
!432 = metadata !{i64 432}
!433 = metadata !{i64 433}
!434 = metadata !{i64 434}
!435 = metadata !{i64 435}
!436 = metadata !{i64 436}
!437 = metadata !{i64 437}
!438 = metadata !{i64 438}
!439 = metadata !{i64 439}
!440 = metadata !{i64 440}
!441 = metadata !{i64 441}
!442 = metadata !{i64 442}
!443 = metadata !{i64 443}
!444 = metadata !{i64 444}
!445 = metadata !{i64 445}
!446 = metadata !{i64 446}
!447 = metadata !{i64 447}
!448 = metadata !{i64 448}
!449 = metadata !{i64 449}
!450 = metadata !{i64 450}
!451 = metadata !{i64 451}
!452 = metadata !{i64 452}
!453 = metadata !{i64 453}
!454 = metadata !{i64 454}
!455 = metadata !{i64 455}
!456 = metadata !{i64 456}
!457 = metadata !{i64 457}
!458 = metadata !{i64 458}
!459 = metadata !{i64 459}
!460 = metadata !{i64 460}
!461 = metadata !{i64 461}
!462 = metadata !{i64 462}
!463 = metadata !{i64 463}
!464 = metadata !{i64 464}
!465 = metadata !{i64 465}
!466 = metadata !{i64 466}
!467 = metadata !{i64 467}
!468 = metadata !{i64 468}
!469 = metadata !{i64 469}
!470 = metadata !{i64 470}
!471 = metadata !{i64 471}
!472 = metadata !{i64 472}
!473 = metadata !{i64 473}
!474 = metadata !{i64 474}
!475 = metadata !{i64 475}
!476 = metadata !{i64 476}
!477 = metadata !{i64 477}
!478 = metadata !{i64 478}
!479 = metadata !{i64 479}
!480 = metadata !{i64 480}
!481 = metadata !{i64 481}
!482 = metadata !{i64 482}
!483 = metadata !{i64 483}
!484 = metadata !{i64 484}
!485 = metadata !{i64 485}
!486 = metadata !{i64 486}
!487 = metadata !{i64 487}
!488 = metadata !{i64 488}
!489 = metadata !{i64 489}
!490 = metadata !{i64 490}
!491 = metadata !{i64 491}
!492 = metadata !{i64 492}
!493 = metadata !{i64 493}
!494 = metadata !{i64 494}
!495 = metadata !{i64 495}
!496 = metadata !{i64 496}
!497 = metadata !{i64 497}
!498 = metadata !{i64 498}
!499 = metadata !{i64 499}
!500 = metadata !{i64 500}
!501 = metadata !{i64 501}
!502 = metadata !{i64 502}
!503 = metadata !{i64 503}
!504 = metadata !{i64 504}
!505 = metadata !{i64 505}
!506 = metadata !{i64 506}
!507 = metadata !{i64 507}
!508 = metadata !{i64 508}
!509 = metadata !{i64 509}
!510 = metadata !{i64 510}
!511 = metadata !{i64 511}
!512 = metadata !{i64 512}
!513 = metadata !{i64 513}
!514 = metadata !{i64 514}
!515 = metadata !{i64 515}
!516 = metadata !{i64 516}
!517 = metadata !{i64 517}
!518 = metadata !{i64 518}
!519 = metadata !{i64 519}
!520 = metadata !{i64 520}
!521 = metadata !{i64 521}
!522 = metadata !{i64 522}
!523 = metadata !{i64 523}
!524 = metadata !{i64 524}
!525 = metadata !{i64 525}
!526 = metadata !{i64 526}
!527 = metadata !{i64 527}
!528 = metadata !{i64 528}
!529 = metadata !{i64 529}
!530 = metadata !{i64 530}
!531 = metadata !{i64 531}
!532 = metadata !{i64 532}
!533 = metadata !{i64 533}
!534 = metadata !{i64 534}
!535 = metadata !{i64 535}
!536 = metadata !{i64 536}
!537 = metadata !{i64 537}
!538 = metadata !{i64 538}
!539 = metadata !{i64 539}
!540 = metadata !{i64 540}
!541 = metadata !{i64 541}
!542 = metadata !{i64 542}
!543 = metadata !{i64 543}
!544 = metadata !{i64 544}
!545 = metadata !{i64 545}
!546 = metadata !{i64 546}
!547 = metadata !{i64 547}
!548 = metadata !{i64 548}
!549 = metadata !{i64 549}
!550 = metadata !{i64 550}
!551 = metadata !{i64 551}
!552 = metadata !{i64 552}
!553 = metadata !{i64 553}
!554 = metadata !{i64 554}
!555 = metadata !{i64 555}
!556 = metadata !{i64 556}
!557 = metadata !{i64 557}
!558 = metadata !{i64 558}
!559 = metadata !{i64 559}
!560 = metadata !{i64 560}
!561 = metadata !{i64 561}
!562 = metadata !{i64 562}
!563 = metadata !{i64 563}
!564 = metadata !{i64 564}
!565 = metadata !{i64 565}
!566 = metadata !{i64 566}
!567 = metadata !{i64 567}
!568 = metadata !{i64 568}
!569 = metadata !{i64 569}
!570 = metadata !{i64 570}
!571 = metadata !{i64 571}
!572 = metadata !{i64 572}
!573 = metadata !{i64 573}
!574 = metadata !{i64 574}
!575 = metadata !{i64 575}
!576 = metadata !{i64 576}
!577 = metadata !{i64 577}
!578 = metadata !{i64 578}
!579 = metadata !{i64 579}
!580 = metadata !{i64 580}
!581 = metadata !{i64 581}
!582 = metadata !{i64 582}
!583 = metadata !{i64 583}
!584 = metadata !{i64 584}
!585 = metadata !{i64 585}
!586 = metadata !{i64 586}
!587 = metadata !{i64 587}
!588 = metadata !{i64 588}
!589 = metadata !{i64 589}
!590 = metadata !{i64 590}
!591 = metadata !{i64 591}
!592 = metadata !{i64 592}
!593 = metadata !{i64 593}
!594 = metadata !{i64 594}
!595 = metadata !{i64 595}
!596 = metadata !{i64 596}
!597 = metadata !{i64 597}
!598 = metadata !{i64 598}
!599 = metadata !{i64 599}
!600 = metadata !{i64 600}
!601 = metadata !{i64 601}
!602 = metadata !{i64 602}
!603 = metadata !{i64 603}
!604 = metadata !{i64 604}
!605 = metadata !{i64 605}
!606 = metadata !{i64 606}
!607 = metadata !{i64 607}
!608 = metadata !{i64 608}
!609 = metadata !{i64 609}
!610 = metadata !{i64 610}
!611 = metadata !{i64 611}
!612 = metadata !{i64 612}
!613 = metadata !{i64 613}
!614 = metadata !{i64 614}
!615 = metadata !{i64 615}
!616 = metadata !{i64 616}
!617 = metadata !{i64 617}
!618 = metadata !{i64 618}
!619 = metadata !{i64 619}
!620 = metadata !{i64 620}
!621 = metadata !{i64 621}
!622 = metadata !{i64 622}
!623 = metadata !{i64 623}
!624 = metadata !{i64 624}
!625 = metadata !{i64 625}
!626 = metadata !{i64 626}
!627 = metadata !{i64 627}
!628 = metadata !{i64 628}
!629 = metadata !{i64 629}
!630 = metadata !{i64 630}
!631 = metadata !{i64 631}
!632 = metadata !{i64 632}
!633 = metadata !{i64 633}
!634 = metadata !{i64 634}
!635 = metadata !{i64 635}
!636 = metadata !{i64 636}
!637 = metadata !{i64 637}
!638 = metadata !{i64 638}
!639 = metadata !{i64 639}
!640 = metadata !{i64 640}
!641 = metadata !{i64 641}
!642 = metadata !{i64 642}
!643 = metadata !{i64 643}
!644 = metadata !{i64 644}
!645 = metadata !{i64 645}
!646 = metadata !{i64 646}
!647 = metadata !{i64 647}
!648 = metadata !{i64 648}
!649 = metadata !{i64 649}
!650 = metadata !{i64 650}
!651 = metadata !{i64 651}
!652 = metadata !{i64 652}
!653 = metadata !{i64 653}
!654 = metadata !{i64 654}
!655 = metadata !{i64 655}
!656 = metadata !{i64 656}
!657 = metadata !{i64 657}
!658 = metadata !{i64 658}
!659 = metadata !{i64 659}
!660 = metadata !{i64 660}
!661 = metadata !{i64 661}
!662 = metadata !{i64 662}
!663 = metadata !{i64 663}
!664 = metadata !{i64 664}
!665 = metadata !{i64 665}
!666 = metadata !{i64 666}
!667 = metadata !{i64 667}
!668 = metadata !{i64 668}
!669 = metadata !{i64 669}
!670 = metadata !{i64 670}
!671 = metadata !{i64 671}
!672 = metadata !{i64 672}
!673 = metadata !{i64 673}
!674 = metadata !{i64 674}
!675 = metadata !{i64 675}
!676 = metadata !{i64 676}
!677 = metadata !{i64 677}
!678 = metadata !{i64 678}
!679 = metadata !{i64 679}
!680 = metadata !{i64 680}
!681 = metadata !{i64 681}
!682 = metadata !{i64 682}
!683 = metadata !{i64 683}
!684 = metadata !{i64 684}
!685 = metadata !{i64 685}
!686 = metadata !{i64 686}
!687 = metadata !{i64 687}
!688 = metadata !{i64 688}
!689 = metadata !{i64 689}
!690 = metadata !{i64 690}
!691 = metadata !{i64 691}
!692 = metadata !{i64 692}
!693 = metadata !{i64 693}
!694 = metadata !{i64 694}
!695 = metadata !{i64 695}
!696 = metadata !{i64 696}
!697 = metadata !{i64 697}
!698 = metadata !{i64 698}
!699 = metadata !{i64 699}
!700 = metadata !{i64 700}
!701 = metadata !{i64 701}
!702 = metadata !{i64 702}
!703 = metadata !{i64 703}
!704 = metadata !{i64 704}
!705 = metadata !{i64 705}
!706 = metadata !{i64 706}
!707 = metadata !{i64 707}
!708 = metadata !{i64 708}
!709 = metadata !{i64 709}
!710 = metadata !{i64 710}
!711 = metadata !{i64 711}
!712 = metadata !{i64 712}
!713 = metadata !{i64 713}
!714 = metadata !{i64 714}
!715 = metadata !{i64 715}
!716 = metadata !{i64 716}
!717 = metadata !{i64 717}
!718 = metadata !{i64 718}
!719 = metadata !{i64 719}
!720 = metadata !{i64 720}
!721 = metadata !{i64 721}
!722 = metadata !{i64 722}
!723 = metadata !{i64 723}
!724 = metadata !{i64 724}
!725 = metadata !{i64 725}
!726 = metadata !{i64 726}
!727 = metadata !{i64 727}
!728 = metadata !{i64 728}
!729 = metadata !{i64 729}
!730 = metadata !{i64 730}
!731 = metadata !{i64 731}
!732 = metadata !{i64 732}
!733 = metadata !{i64 733}
!734 = metadata !{i64 734}
!735 = metadata !{i64 735}
!736 = metadata !{i64 736}
!737 = metadata !{i64 737}
!738 = metadata !{i64 738}
!739 = metadata !{i64 739}
!740 = metadata !{i64 740}
!741 = metadata !{i64 741}
!742 = metadata !{i64 742}
!743 = metadata !{i64 743}
!744 = metadata !{i64 744}
!745 = metadata !{i64 745}
!746 = metadata !{i64 746}
!747 = metadata !{i64 747}
!748 = metadata !{i64 748}
!749 = metadata !{i64 749}
!750 = metadata !{i64 750}
!751 = metadata !{i64 751}
!752 = metadata !{i64 752}
!753 = metadata !{i64 753}
!754 = metadata !{i64 754}
!755 = metadata !{i64 755}
!756 = metadata !{i64 756}
!757 = metadata !{i64 757}
!758 = metadata !{i64 758}
!759 = metadata !{i64 759}
!760 = metadata !{i64 760}
!761 = metadata !{i64 761}
!762 = metadata !{i64 762}
!763 = metadata !{i64 763}
!764 = metadata !{i64 764}
!765 = metadata !{i64 765}
!766 = metadata !{i64 766}
!767 = metadata !{i64 767}
!768 = metadata !{i64 768}
!769 = metadata !{i64 769}
!770 = metadata !{i64 770}
!771 = metadata !{i64 771}
!772 = metadata !{i64 772}
!773 = metadata !{i64 773}
!774 = metadata !{i64 774}
!775 = metadata !{i64 775}
!776 = metadata !{i64 776}
!777 = metadata !{i64 777}
!778 = metadata !{i64 778}
!779 = metadata !{i64 779}
!780 = metadata !{i64 780}
!781 = metadata !{i64 781}
!782 = metadata !{i64 782}
!783 = metadata !{i64 783}
!784 = metadata !{i64 784}
!785 = metadata !{i64 785}
!786 = metadata !{i64 786}
!787 = metadata !{i64 787}
!788 = metadata !{i64 788}
!789 = metadata !{i64 789}
!790 = metadata !{i64 790}
!791 = metadata !{i64 791}
!792 = metadata !{i64 792}
!793 = metadata !{i64 793}
!794 = metadata !{i64 794}
!795 = metadata !{i64 795}
!796 = metadata !{i64 796}
!797 = metadata !{i64 797}
!798 = metadata !{i64 798}
!799 = metadata !{i64 799}
!800 = metadata !{i64 800}
!801 = metadata !{i64 801}
!802 = metadata !{i64 802}
!803 = metadata !{i64 803}
!804 = metadata !{i64 804}
!805 = metadata !{i64 805}
!806 = metadata !{i64 806}
!807 = metadata !{i64 807}
!808 = metadata !{i64 808}
!809 = metadata !{i64 809}
!810 = metadata !{i64 810}
!811 = metadata !{i64 811}
!812 = metadata !{i64 812}
!813 = metadata !{i64 813}
!814 = metadata !{i64 814}
!815 = metadata !{i64 815}
!816 = metadata !{i64 816}
!817 = metadata !{i64 817}
!818 = metadata !{i64 818}
!819 = metadata !{i64 819}
!820 = metadata !{i64 820}
!821 = metadata !{i64 821}
!822 = metadata !{i64 822}
!823 = metadata !{i64 823}
!824 = metadata !{i64 824}
!825 = metadata !{i64 825}
!826 = metadata !{i64 826}
!827 = metadata !{i64 827}
!828 = metadata !{i64 828}
!829 = metadata !{i64 829}
!830 = metadata !{i64 830}
!831 = metadata !{i64 831}
!832 = metadata !{i64 832}
!833 = metadata !{i64 833}
!834 = metadata !{i64 834}
!835 = metadata !{i64 835}
!836 = metadata !{i64 836}
!837 = metadata !{i64 837}
!838 = metadata !{i64 838}
!839 = metadata !{i64 839}
!840 = metadata !{i64 840}
!841 = metadata !{i64 841}
!842 = metadata !{i64 842}
!843 = metadata !{i64 843}
!844 = metadata !{i64 844}
!845 = metadata !{i64 845}
!846 = metadata !{i64 846}
!847 = metadata !{i64 847}
!848 = metadata !{i64 848}
!849 = metadata !{i64 849}
!850 = metadata !{i64 850}
!851 = metadata !{i64 851}
!852 = metadata !{i64 852}
!853 = metadata !{i64 853}
!854 = metadata !{i64 854}
!855 = metadata !{i64 855}
!856 = metadata !{i64 856}
!857 = metadata !{i64 857}
!858 = metadata !{i64 858}
!859 = metadata !{i64 859}
!860 = metadata !{i64 860}
!861 = metadata !{i64 861}
!862 = metadata !{i64 862}
!863 = metadata !{i64 863}
!864 = metadata !{i64 864}
!865 = metadata !{i64 865}
!866 = metadata !{i64 866}
!867 = metadata !{i64 867}
!868 = metadata !{i64 868}
!869 = metadata !{i64 869}
!870 = metadata !{i64 870}
!871 = metadata !{i64 871}
!872 = metadata !{i64 872}
!873 = metadata !{i64 873}
!874 = metadata !{i64 874}
!875 = metadata !{i64 875}
!876 = metadata !{i64 876}
!877 = metadata !{i64 877}
!878 = metadata !{i64 878}
!879 = metadata !{i64 879}
!880 = metadata !{i64 880}
!881 = metadata !{i64 881}
!882 = metadata !{i64 882}
!883 = metadata !{i64 883}
!884 = metadata !{i64 884}
!885 = metadata !{i64 885}
!886 = metadata !{i64 886}
!887 = metadata !{i64 887}
!888 = metadata !{i64 888}
!889 = metadata !{i64 889}
!890 = metadata !{i64 890}
!891 = metadata !{i64 891}
!892 = metadata !{i64 892}
!893 = metadata !{i64 893}
!894 = metadata !{i64 894}
!895 = metadata !{i64 895}
!896 = metadata !{i64 896}
!897 = metadata !{i64 897}
!898 = metadata !{i64 898}
!899 = metadata !{i64 899}
!900 = metadata !{i64 900}
!901 = metadata !{i64 901}
!902 = metadata !{i64 902}
!903 = metadata !{i64 903}
!904 = metadata !{i64 904}
!905 = metadata !{i64 905}
!906 = metadata !{i64 906}
!907 = metadata !{i64 907}
!908 = metadata !{i64 908}
!909 = metadata !{i64 909}
!910 = metadata !{i64 910}
!911 = metadata !{i64 911}
!912 = metadata !{i64 912}
