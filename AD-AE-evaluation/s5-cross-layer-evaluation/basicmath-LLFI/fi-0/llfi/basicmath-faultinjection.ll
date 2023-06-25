; ModuleID = '/home/foo/SC23/AD-AE-evaluation/s5-cross-layer-evaluation/basicmath-LLFI/fi-0/llfi/basicmath-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@select_namestr = internal constant [7 x i8] c"select\00"
@sitofp_namestr = internal constant [7 x i8] c"sitofp\00"
@shl_namestr = internal constant [4 x i8] c"shl\00"
@and_namestr = internal constant [4 x i8] c"and\00"
@lshr_namestr = internal constant [5 x i8] c"lshr\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1
  %a1 = alloca double, align 8, !llfi_index !2
  %b1 = alloca double, align 8, !llfi_index !3
  %c1 = alloca double, align 8, !llfi_index !4
  %d1 = alloca double, align 8, !llfi_index !5
  %a2 = alloca double, align 8, !llfi_index !6
  %b2 = alloca double, align 8, !llfi_index !7
  %c2 = alloca double, align 8, !llfi_index !8
  %d2 = alloca double, align 8, !llfi_index !9
  %a3 = alloca double, align 8, !llfi_index !10
  %b3 = alloca double, align 8, !llfi_index !11
  %c3 = alloca double, align 8, !llfi_index !12
  %d3 = alloca double, align 8, !llfi_index !13
  %a4 = alloca double, align 8, !llfi_index !14
  %b4 = alloca double, align 8, !llfi_index !15
  %c4 = alloca double, align 8, !llfi_index !16
  %d4 = alloca double, align 8, !llfi_index !17
  %x = alloca [3 x double], align 16, !llfi_index !18
  %X = alloca double, align 8, !llfi_index !19
  %solutions = alloca i32, align 4, !llfi_index !20
  %i = alloca i32, align 4, !llfi_index !21
  %l = alloca i64, align 8, !llfi_index !22
  %q = alloca %struct.int_sqrt, align 4, !llfi_index !23
  %n = alloca i64, align 8, !llfi_index !24
  store i32 0, i32* %1, !llfi_index !25
  store double 1.000000e+00, double* %a1, align 8, !llfi_index !26
  store double -1.050000e+01, double* %b1, align 8, !llfi_index !27
  store double 3.200000e+01, double* %c1, align 8, !llfi_index !28
  store double -3.000000e+01, double* %d1, align 8, !llfi_index !29
  store double 1.000000e+00, double* %a2, align 8, !llfi_index !30
  store double -4.500000e+00, double* %b2, align 8, !llfi_index !31
  store double 1.700000e+01, double* %c2, align 8, !llfi_index !32
  store double -3.000000e+01, double* %d2, align 8, !llfi_index !33
  store double 1.000000e+00, double* %a3, align 8, !llfi_index !34
  store double -3.500000e+00, double* %b3, align 8, !llfi_index !35
  store double 2.200000e+01, double* %c3, align 8, !llfi_index !36
  store double -3.100000e+01, double* %d3, align 8, !llfi_index !37
  store double 1.000000e+00, double* %a4, align 8, !llfi_index !38
  store double -1.370000e+01, double* %b4, align 8, !llfi_index !39
  store double 1.000000e+00, double* %c4, align 8, !llfi_index !40
  store double -3.500000e+01, double* %d4, align 8, !llfi_index !41
  store i64 1072497001, i64* %l, align 8, !llfi_index !42
  store i64 0, i64* %n, align 8, !llfi_index !43
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0)), !llfi_index !44
  %3 = load double* %a1, align 8, !llfi_index !45
  %fi31 = call double @injectFault1(i64 45, double %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %4 = load double* %b1, align 8, !llfi_index !47
  %fi2 = call double @injectFault1(i64 46, double %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %5 = load double* %c1, align 8, !llfi_index !48
  %fi3 = call double @injectFault1(i64 47, double %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %6 = load double* %d1, align 8, !llfi_index !49
  %fi4 = call double @injectFault1(i64 48, double %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %7 = getelementptr [3 x double]* %x, i32 0, i32 0, !llfi_index !50
  %fi = call double* @injectFault0(i64 49, double* %7, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @SolveCubic(double %fi31, double %fi2, double %fi3, double %fi4, i32* %solutions, double* %fi), !llfi_index !51
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !52
  store i32 0, i32* %i, align 4, !llfi_index !53
  br label %9, !llfi_index !54

; <label>:9                                       ; preds = %19, %0
  %10 = load i32* %i, align 4, !llfi_index !55
  %fi15 = call i32 @injectFault2(i64 54, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %11 = load i32* %solutions, align 4, !llfi_index !56
  %fi16 = call i32 @injectFault2(i64 55, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %12 = icmp slt i32 %fi15, %fi16, !llfi_index !57
  %fi17 = call i1 @injectFault3(i64 56, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi17, label %13, label %22, !llfi_index !58

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4, !llfi_index !59
  %fi18 = call i32 @injectFault2(i64 58, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %15 = sext i32 %fi18 to i64, !llfi_index !60
  %fi19 = call i64 @injectFault4(i64 59, i64 %15, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %16 = getelementptr [3 x double]* %x, i32 0, i64 %fi19, !llfi_index !61
  %fi20 = call double* @injectFault0(i64 60, double* %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %17 = load double* %fi20, align 8, !llfi_index !62
  %fi1 = call double @injectFault1(i64 61, double %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %fi1), !llfi_index !63
  br label %19, !llfi_index !64

; <label>:19                                      ; preds = %13
  %20 = load i32* %i, align 4, !llfi_index !65
  %fi22 = call i32 @injectFault2(i64 64, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %21 = add nsw i32 %fi22, 1, !llfi_index !66
  %fi23 = call i32 @injectFault2(i64 65, i32 %21, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi23, i32* %i, align 4, !llfi_index !67
  br label %9, !llfi_index !68

; <label>:22                                      ; preds = %9
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !69
  %24 = load double* %a2, align 8, !llfi_index !70
  %fi24 = call double @injectFault1(i64 69, double %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %25 = load double* %b2, align 8, !llfi_index !71
  %fi25 = call double @injectFault1(i64 70, double %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %26 = load double* %c2, align 8, !llfi_index !72
  %fi26 = call double @injectFault1(i64 71, double %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %27 = load double* %d2, align 8, !llfi_index !73
  %fi27 = call double @injectFault1(i64 72, double %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %28 = getelementptr [3 x double]* %x, i32 0, i32 0, !llfi_index !74
  %fi28 = call double* @injectFault0(i64 73, double* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @SolveCubic(double %fi24, double %fi25, double %fi26, double %fi27, i32* %solutions, double* %fi28), !llfi_index !75
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !76
  store i32 0, i32* %i, align 4, !llfi_index !77
  br label %30, !llfi_index !78

; <label>:30                                      ; preds = %40, %22
  %31 = load i32* %i, align 4, !llfi_index !79
  %fi29 = call i32 @injectFault2(i64 78, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %32 = load i32* %solutions, align 4, !llfi_index !80
  %fi30 = call i32 @injectFault2(i64 79, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %33 = icmp slt i32 %fi29, %fi30, !llfi_index !81
  %fi21 = call i1 @injectFault3(i64 80, i1 %33, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi21, label %34, label %43, !llfi_index !82

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !llfi_index !83
  %fi34 = call i32 @injectFault2(i64 82, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %36 = sext i32 %fi34 to i64, !llfi_index !84
  %fi35 = call i64 @injectFault4(i64 83, i64 %36, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %37 = getelementptr [3 x double]* %x, i32 0, i64 %fi35, !llfi_index !85
  %fi36 = call double* @injectFault0(i64 84, double* %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %38 = load double* %fi36, align 8, !llfi_index !86
  %fi37 = call double @injectFault1(i64 85, double %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %fi37), !llfi_index !87
  br label %40, !llfi_index !88

; <label>:40                                      ; preds = %34
  %41 = load i32* %i, align 4, !llfi_index !89
  %fi38 = call i32 @injectFault2(i64 88, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %42 = add nsw i32 %fi38, 1, !llfi_index !90
  %fi39 = call i32 @injectFault2(i64 89, i32 %42, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi39, i32* %i, align 4, !llfi_index !91
  br label %30, !llfi_index !92

; <label>:43                                      ; preds = %30
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !93
  %45 = load double* %a3, align 8, !llfi_index !94
  %fi40 = call double @injectFault1(i64 93, double %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %46 = load double* %b3, align 8, !llfi_index !95
  %fi41 = call double @injectFault1(i64 94, double %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %47 = load double* %c3, align 8, !llfi_index !96
  %fi42 = call double @injectFault1(i64 95, double %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %48 = load double* %d3, align 8, !llfi_index !97
  %fi43 = call double @injectFault1(i64 96, double %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %49 = getelementptr [3 x double]* %x, i32 0, i32 0, !llfi_index !98
  %fi5 = call double* @injectFault0(i64 97, double* %49, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @SolveCubic(double %fi40, double %fi41, double %fi42, double %fi43, i32* %solutions, double* %fi5), !llfi_index !99
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !100
  store i32 0, i32* %i, align 4, !llfi_index !101
  br label %51, !llfi_index !102

; <label>:51                                      ; preds = %61, %43
  %52 = load i32* %i, align 4, !llfi_index !103
  %fi6 = call i32 @injectFault2(i64 102, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %53 = load i32* %solutions, align 4, !llfi_index !104
  %fi7 = call i32 @injectFault2(i64 103, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %54 = icmp slt i32 %fi6, %fi7, !llfi_index !105
  %fi8 = call i1 @injectFault3(i64 104, i1 %54, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi8, label %55, label %64, !llfi_index !106

; <label>:55                                      ; preds = %51
  %56 = load i32* %i, align 4, !llfi_index !107
  %fi9 = call i32 @injectFault2(i64 106, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %57 = sext i32 %fi9 to i64, !llfi_index !108
  %fi10 = call i64 @injectFault4(i64 107, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %58 = getelementptr [3 x double]* %x, i32 0, i64 %fi10, !llfi_index !109
  %fi11 = call double* @injectFault0(i64 108, double* %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %59 = load double* %fi11, align 8, !llfi_index !110
  %fi12 = call double @injectFault1(i64 109, double %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %fi12), !llfi_index !111
  br label %61, !llfi_index !112

; <label>:61                                      ; preds = %55
  %62 = load i32* %i, align 4, !llfi_index !113
  %fi13 = call i32 @injectFault2(i64 112, i32 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %63 = add nsw i32 %fi13, 1, !llfi_index !114
  %fi14 = call i32 @injectFault2(i64 113, i32 %63, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi14, i32* %i, align 4, !llfi_index !115
  br label %51, !llfi_index !116

; <label>:64                                      ; preds = %51
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !117
  %66 = load double* %a4, align 8, !llfi_index !118
  %fi32 = call double @injectFault1(i64 117, double %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %67 = load double* %b4, align 8, !llfi_index !119
  %fi33 = call double @injectFault1(i64 118, double %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %68 = load double* %c4, align 8, !llfi_index !120
  %fi63 = call double @injectFault1(i64 119, double %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %69 = load double* %d4, align 8, !llfi_index !121
  %fi64 = call double @injectFault1(i64 120, double %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %70 = getelementptr [3 x double]* %x, i32 0, i32 0, !llfi_index !122
  %fi65 = call double* @injectFault0(i64 121, double* %70, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @SolveCubic(double %fi32, double %fi33, double %fi63, double %fi64, i32* %solutions, double* %fi65), !llfi_index !123
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !124
  store i32 0, i32* %i, align 4, !llfi_index !125
  br label %72, !llfi_index !126

; <label>:72                                      ; preds = %82, %64
  %73 = load i32* %i, align 4, !llfi_index !127
  %fi66 = call i32 @injectFault2(i64 126, i32 %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %74 = load i32* %solutions, align 4, !llfi_index !128
  %fi67 = call i32 @injectFault2(i64 127, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %75 = icmp slt i32 %fi66, %fi67, !llfi_index !129
  %fi68 = call i1 @injectFault3(i64 128, i1 %75, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi68, label %76, label %85, !llfi_index !130

; <label>:76                                      ; preds = %72
  %77 = load i32* %i, align 4, !llfi_index !131
  %fi69 = call i32 @injectFault2(i64 130, i32 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %78 = sext i32 %fi69 to i64, !llfi_index !132
  %fi70 = call i64 @injectFault4(i64 131, i64 %78, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %79 = getelementptr [3 x double]* %x, i32 0, i64 %fi70, !llfi_index !133
  %fi71 = call double* @injectFault0(i64 132, double* %79, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %80 = load double* %fi71, align 8, !llfi_index !134
  %fi72 = call double @injectFault1(i64 133, double %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %fi72), !llfi_index !135
  br label %82, !llfi_index !136

; <label>:82                                      ; preds = %76
  %83 = load i32* %i, align 4, !llfi_index !137
  %fi73 = call i32 @injectFault2(i64 136, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %84 = add nsw i32 %fi73, 1, !llfi_index !138
  %fi74 = call i32 @injectFault2(i64 137, i32 %84, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi74, i32* %i, align 4, !llfi_index !139
  br label %72, !llfi_index !140

; <label>:85                                      ; preds = %72
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !141
  store double 1.000000e+00, double* %a1, align 8, !llfi_index !142
  br label %87, !llfi_index !143

; <label>:87                                      ; preds = %136, %85
  %88 = load double* %a1, align 8, !llfi_index !144
  %fi75 = call double @injectFault1(i64 143, double %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %89 = fcmp olt double %fi75, 1.000000e+01, !llfi_index !145
  %fi76 = call i1 @injectFault3(i64 144, i1 %89, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi76, label %90, label %139, !llfi_index !146

; <label>:90                                      ; preds = %87
  store double 1.000000e+01, double* %b1, align 8, !llfi_index !147
  br label %91, !llfi_index !148

; <label>:91                                      ; preds = %132, %90
  %92 = load double* %b1, align 8, !llfi_index !149
  %fi77 = call double @injectFault1(i64 148, double %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %93 = fcmp ogt double %fi77, 0.000000e+00, !llfi_index !150
  %fi78 = call i1 @injectFault3(i64 149, i1 %93, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi78, label %94, label %135, !llfi_index !151

; <label>:94                                      ; preds = %91
  store double 5.000000e+00, double* %c1, align 8, !llfi_index !152
  br label %95, !llfi_index !153

; <label>:95                                      ; preds = %128, %94
  %96 = load double* %c1, align 8, !llfi_index !154
  %fi79 = call double @injectFault1(i64 153, double %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %97 = fcmp olt double %fi79, 1.500000e+01, !llfi_index !155
  %fi80 = call i1 @injectFault3(i64 154, i1 %97, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi80, label %98, label %131, !llfi_index !156

; <label>:98                                      ; preds = %95
  store double -1.000000e+00, double* %d1, align 8, !llfi_index !157
  br label %99, !llfi_index !158

; <label>:99                                      ; preds = %124, %98
  %100 = load double* %d1, align 8, !llfi_index !159
  %fi81 = call double @injectFault1(i64 158, double %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %101 = fcmp ogt double %fi81, -1.100000e+01, !llfi_index !160
  %fi82 = call i1 @injectFault3(i64 159, i1 %101, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi82, label %102, label %127, !llfi_index !161

; <label>:102                                     ; preds = %99
  %103 = load double* %a1, align 8, !llfi_index !162
  %fi83 = call double @injectFault1(i64 161, double %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %104 = load double* %b1, align 8, !llfi_index !163
  %fi84 = call double @injectFault1(i64 162, double %104, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %105 = load double* %c1, align 8, !llfi_index !164
  %fi85 = call double @injectFault1(i64 163, double %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %106 = load double* %d1, align 8, !llfi_index !165
  %fi86 = call double @injectFault1(i64 164, double %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %107 = getelementptr [3 x double]* %x, i32 0, i32 0, !llfi_index !166
  %fi87 = call double* @injectFault0(i64 165, double* %107, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @SolveCubic(double %fi83, double %fi84, double %fi85, double %fi86, i32* %solutions, double* %fi87), !llfi_index !167
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !168
  store i32 0, i32* %i, align 4, !llfi_index !169
  br label %109, !llfi_index !170

; <label>:109                                     ; preds = %119, %102
  %110 = load i32* %i, align 4, !llfi_index !171
  %fi88 = call i32 @injectFault2(i64 170, i32 %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %111 = load i32* %solutions, align 4, !llfi_index !172
  %fi89 = call i32 @injectFault2(i64 171, i32 %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %112 = icmp slt i32 %fi88, %fi89, !llfi_index !173
  %fi90 = call i1 @injectFault3(i64 172, i1 %112, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi90, label %113, label %122, !llfi_index !174

; <label>:113                                     ; preds = %109
  %114 = load i32* %i, align 4, !llfi_index !175
  %fi91 = call i32 @injectFault2(i64 174, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %115 = sext i32 %fi91 to i64, !llfi_index !176
  %fi92 = call i64 @injectFault4(i64 175, i64 %115, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %116 = getelementptr [3 x double]* %x, i32 0, i64 %fi92, !llfi_index !177
  %fi93 = call double* @injectFault0(i64 176, double* %116, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %117 = load double* %fi93, align 8, !llfi_index !178
  %fi94 = call double @injectFault1(i64 177, double %117, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %fi94), !llfi_index !179
  br label %119, !llfi_index !180

; <label>:119                                     ; preds = %113
  %120 = load i32* %i, align 4, !llfi_index !181
  %fi95 = call i32 @injectFault2(i64 180, i32 %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %121 = add nsw i32 %fi95, 1, !llfi_index !182
  %fi96 = call i32 @injectFault2(i64 181, i32 %121, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi96, i32* %i, align 4, !llfi_index !183
  br label %109, !llfi_index !184

; <label>:122                                     ; preds = %109
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !185
  br label %124, !llfi_index !186

; <label>:124                                     ; preds = %122
  %125 = load double* %d1, align 8, !llfi_index !187
  %fi97 = call double @injectFault1(i64 186, double %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %126 = fadd double %fi97, -1.000000e+00, !llfi_index !188
  %fi98 = call double @injectFault1(i64 187, double %126, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi98, double* %d1, align 8, !llfi_index !189
  br label %99, !llfi_index !190

; <label>:127                                     ; preds = %99
  br label %128, !llfi_index !191

; <label>:128                                     ; preds = %127
  %129 = load double* %c1, align 8, !llfi_index !192
  %fi61 = call double @injectFault1(i64 191, double %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %130 = fadd double %fi61, 5.000000e-01, !llfi_index !193
  %fi62 = call double @injectFault1(i64 192, double %130, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi62, double* %c1, align 8, !llfi_index !194
  br label %95, !llfi_index !195

; <label>:131                                     ; preds = %95
  br label %132, !llfi_index !196

; <label>:132                                     ; preds = %131
  %133 = load double* %b1, align 8, !llfi_index !197
  %fi44 = call double @injectFault1(i64 196, double %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %134 = fadd double %fi44, -1.000000e+00, !llfi_index !198
  %fi45 = call double @injectFault1(i64 197, double %134, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi45, double* %b1, align 8, !llfi_index !199
  br label %91, !llfi_index !200

; <label>:135                                     ; preds = %91
  br label %136, !llfi_index !201

; <label>:136                                     ; preds = %135
  %137 = load double* %a1, align 8, !llfi_index !202
  %fi46 = call double @injectFault1(i64 201, double %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %138 = fadd double %fi46, 1.000000e+00, !llfi_index !203
  %fi47 = call double @injectFault1(i64 202, double %138, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi47, double* %a1, align 8, !llfi_index !204
  br label %87, !llfi_index !205

; <label>:139                                     ; preds = %87
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0)), !llfi_index !206
  store i32 0, i32* %i, align 4, !llfi_index !207
  br label %141, !llfi_index !208

; <label>:141                                     ; preds = %151, %139
  %142 = load i32* %i, align 4, !llfi_index !209
  %fi48 = call i32 @injectFault2(i64 208, i32 %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %143 = icmp slt i32 %fi48, 1001, !llfi_index !210
  %fi49 = call i1 @injectFault3(i64 209, i1 %143, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi49, label %144, label %154, !llfi_index !211

; <label>:144                                     ; preds = %141
  %145 = load i32* %i, align 4, !llfi_index !212
  %fi50 = call i32 @injectFault2(i64 211, i32 %145, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %146 = sext i32 %fi50 to i64, !llfi_index !213
  %fi51 = call i64 @injectFault4(i64 212, i64 %146, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @usqrt(i64 %fi51, %struct.int_sqrt* %q), !llfi_index !214
  %147 = load i32* %i, align 4, !llfi_index !215
  %fi52 = call i32 @injectFault2(i64 214, i32 %147, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %148 = getelementptr %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !216
  %fi53 = call i32* @injectFault5(i64 215, i32* %148, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %149 = load i32* %fi53, align 4, !llfi_index !217
  %fi54 = call i32 @injectFault2(i64 216, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %150 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i32 %fi52, i32 %fi54), !llfi_index !218
  br label %151, !llfi_index !219

; <label>:151                                     ; preds = %144
  %152 = load i32* %i, align 4, !llfi_index !220
  %fi55 = call i32 @injectFault2(i64 219, i32 %152, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %153 = add nsw i32 %fi55, 1, !llfi_index !221
  %fi56 = call i32 @injectFault2(i64 220, i32 %153, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi56, i32* %i, align 4, !llfi_index !222
  br label %141, !llfi_index !223

; <label>:154                                     ; preds = %141
  %155 = load i64* %l, align 8, !llfi_index !224
  %fi57 = call i64 @injectFault4(i64 223, i64 %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @usqrt(i64 %fi57, %struct.int_sqrt* %q), !llfi_index !225
  %156 = load i64* %l, align 8, !llfi_index !226
  %fi58 = call i64 @injectFault4(i64 225, i64 %156, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %157 = getelementptr %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !227
  %fi59 = call i32* @injectFault5(i64 226, i32* %157, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %158 = load i32* %fi59, align 4, !llfi_index !228
  %fi60 = call i32 @injectFault2(i64 227, i32 %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %159 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0), i64 %fi58, i32 %fi60), !llfi_index !229
  %160 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0)), !llfi_index !230
  store double 0.000000e+00, double* %X, align 8, !llfi_index !231
  br label %161, !llfi_index !232

; <label>:161                                     ; preds = %172, %154
  %162 = load double* %X, align 8, !llfi_index !233
  %fi99 = call double @injectFault1(i64 232, double %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %163 = fcmp ole double %fi99, 3.600000e+02, !llfi_index !234
  %fi100 = call i1 @injectFault3(i64 233, i1 %163, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi100, label %164, label %175, !llfi_index !235

; <label>:164                                     ; preds = %161
  %165 = load double* %X, align 8, !llfi_index !236
  %fi101 = call double @injectFault1(i64 235, double %165, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %166 = load double* %X, align 8, !llfi_index !237
  %fi102 = call double @injectFault1(i64 236, double %166, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %167 = call double @atan(double 1.000000e+00) #4, !llfi_index !238
  %168 = fmul double 4.000000e+00, %167, !llfi_index !239
  %fi103 = call double @injectFault1(i64 238, double %168, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %169 = fmul double %fi102, %fi103, !llfi_index !240
  %fi104 = call double @injectFault1(i64 239, double %169, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %170 = fdiv double %fi104, 1.800000e+02, !llfi_index !241
  %fi105 = call double @injectFault1(i64 240, double %170, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), double %fi101, double %fi105), !llfi_index !242
  br label %172, !llfi_index !243

; <label>:172                                     ; preds = %164
  %173 = load double* %X, align 8, !llfi_index !244
  %fi106 = call double @injectFault1(i64 243, double %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %174 = fadd double %fi106, 1.000000e+00, !llfi_index !245
  %fi107 = call double @injectFault1(i64 244, double %174, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi107, double* %X, align 8, !llfi_index !246
  br label %161, !llfi_index !247

; <label>:175                                     ; preds = %161
  %176 = call i32 (i8*, ...)* bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8]* @.str9, i32 0, i32 0)), !llfi_index !248
  store double 0.000000e+00, double* %X, align 8, !llfi_index !249
  br label %177, !llfi_index !250

; <label>:177                                     ; preds = %192, %175
  %178 = load double* %X, align 8, !llfi_index !251
  %fi108 = call double @injectFault1(i64 250, double %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %179 = call double @atan(double 1.000000e+00) #4, !llfi_index !252
  %180 = fmul double 4.000000e+00, %179, !llfi_index !253
  %fi109 = call double @injectFault1(i64 252, double %180, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %181 = fmul double 2.000000e+00, %fi109, !llfi_index !254
  %fi110 = call double @injectFault1(i64 253, double %181, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %182 = fadd double %fi110, 1.000000e-06, !llfi_index !255
  %fi111 = call double @injectFault1(i64 254, double %182, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %183 = fcmp ole double %fi108, %fi111, !llfi_index !256
  %fi112 = call i1 @injectFault3(i64 255, i1 %183, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi112, label %184, label %198, !llfi_index !257

; <label>:184                                     ; preds = %177
  %185 = load double* %X, align 8, !llfi_index !258
  %fi113 = call double @injectFault1(i64 257, double %185, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %186 = load double* %X, align 8, !llfi_index !259
  %fi114 = call double @injectFault1(i64 258, double %186, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %187 = fmul double %fi114, 1.800000e+02, !llfi_index !260
  %fi115 = call double @injectFault1(i64 259, double %187, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %188 = call double @atan(double 1.000000e+00) #4, !llfi_index !261
  %189 = fmul double 4.000000e+00, %188, !llfi_index !262
  %fi116 = call double @injectFault1(i64 261, double %189, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %190 = fdiv double %fi115, %fi116, !llfi_index !263
  %fi117 = call double @injectFault1(i64 262, double %190, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), double %fi113, double %fi117), !llfi_index !264
  br label %192, !llfi_index !265

; <label>:192                                     ; preds = %184
  %193 = call double @atan(double 1.000000e+00) #4, !llfi_index !266
  %194 = fmul double 4.000000e+00, %193, !llfi_index !267
  %fi118 = call double @injectFault1(i64 266, double %194, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %195 = fdiv double %fi118, 1.800000e+02, !llfi_index !268
  %fi119 = call double @injectFault1(i64 267, double %195, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %196 = load double* %X, align 8, !llfi_index !269
  %fi120 = call double @injectFault1(i64 268, double %196, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %197 = fadd double %fi120, %fi119, !llfi_index !270
  %fi121 = call double @injectFault1(i64 269, double %197, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi121, double* %X, align 8, !llfi_index !271
  br label %177, !llfi_index !272

; <label>:198                                     ; preds = %177
  call void @postInjections()
  ret i32 0, !llfi_index !273
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(...) #1

; Function Attrs: nounwind uwtable
define void @SolveCubic(double %a, double %b, double %c, double %d, i32* %solutions, double* %x) #0 {
  %1 = alloca double, align 8, !llfi_index !274
  %2 = alloca double, align 8, !llfi_index !275
  %3 = alloca double, align 8, !llfi_index !276
  %4 = alloca double, align 8, !llfi_index !277
  %5 = alloca i32*, align 8, !llfi_index !278
  %6 = alloca double*, align 8, !llfi_index !279
  %a1 = alloca x86_fp80, align 16, !llfi_index !280
  %a2 = alloca x86_fp80, align 16, !llfi_index !281
  %a3 = alloca x86_fp80, align 16, !llfi_index !282
  %Q = alloca x86_fp80, align 16, !llfi_index !283
  %R = alloca x86_fp80, align 16, !llfi_index !284
  %R2_Q3 = alloca double, align 8, !llfi_index !285
  %theta = alloca double, align 8, !llfi_index !286
  store double %a, double* %1, align 8, !llfi_index !287
  store double %b, double* %2, align 8, !llfi_index !288
  store double %c, double* %3, align 8, !llfi_index !289
  store double %d, double* %4, align 8, !llfi_index !290
  store i32* %solutions, i32** %5, align 8, !llfi_index !291
  store double* %x, double** %6, align 8, !llfi_index !292
  %7 = load double* %2, align 8, !llfi_index !293
  %fi55 = call double @injectFault1(i64 292, double %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %8 = load double* %1, align 8, !llfi_index !294
  %fi56 = call double @injectFault1(i64 293, double %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %9 = fdiv double %fi55, %fi56, !llfi_index !295
  %fi58 = call double @injectFault1(i64 294, double %9, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %10 = fpext double %fi58 to x86_fp80, !llfi_index !296
  %fi59 = call x86_fp80 @injectFault6(i64 295, x86_fp80 %10, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store x86_fp80 %fi59, x86_fp80* %a1, align 16, !llfi_index !297
  %11 = load double* %3, align 8, !llfi_index !298
  %fi60 = call double @injectFault1(i64 297, double %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %12 = load double* %1, align 8, !llfi_index !299
  %fi61 = call double @injectFault1(i64 298, double %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %13 = fdiv double %fi60, %fi61, !llfi_index !300
  %fi62 = call double @injectFault1(i64 299, double %13, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %14 = fpext double %fi62 to x86_fp80, !llfi_index !301
  %fi63 = call x86_fp80 @injectFault6(i64 300, x86_fp80 %14, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store x86_fp80 %fi63, x86_fp80* %a2, align 16, !llfi_index !302
  %15 = load double* %4, align 8, !llfi_index !303
  %fi64 = call double @injectFault1(i64 302, double %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %16 = load double* %1, align 8, !llfi_index !304
  %fi65 = call double @injectFault1(i64 303, double %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %17 = fdiv double %fi64, %fi65, !llfi_index !305
  %fi57 = call double @injectFault1(i64 304, double %17, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %18 = fpext double %fi57 to x86_fp80, !llfi_index !306
  %fi67 = call x86_fp80 @injectFault6(i64 305, x86_fp80 %18, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store x86_fp80 %fi67, x86_fp80* %a3, align 16, !llfi_index !307
  %19 = load x86_fp80* %a1, align 16, !llfi_index !308
  %fi68 = call x86_fp80 @injectFault6(i64 307, x86_fp80 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %20 = load x86_fp80* %a1, align 16, !llfi_index !309
  %fi69 = call x86_fp80 @injectFault6(i64 308, x86_fp80 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %21 = fmul x86_fp80 %fi68, %fi69, !llfi_index !310
  %fi70 = call x86_fp80 @injectFault6(i64 309, x86_fp80 %21, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %22 = load x86_fp80* %a2, align 16, !llfi_index !311
  %fi71 = call x86_fp80 @injectFault6(i64 310, x86_fp80 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %23 = fmul x86_fp80 0xK4000C000000000000000, %fi71, !llfi_index !312
  %fi72 = call x86_fp80 @injectFault6(i64 311, x86_fp80 %23, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %24 = fsub x86_fp80 %fi70, %fi72, !llfi_index !313
  %fi73 = call x86_fp80 @injectFault6(i64 312, x86_fp80 %24, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %25 = fdiv x86_fp80 %fi73, 0xK40029000000000000000, !llfi_index !314
  %fi74 = call x86_fp80 @injectFault6(i64 313, x86_fp80 %25, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store x86_fp80 %fi74, x86_fp80* %Q, align 16, !llfi_index !315
  %26 = load x86_fp80* %a1, align 16, !llfi_index !316
  %fi75 = call x86_fp80 @injectFault6(i64 315, x86_fp80 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %27 = fmul x86_fp80 0xK40008000000000000000, %fi75, !llfi_index !317
  %fi76 = call x86_fp80 @injectFault6(i64 316, x86_fp80 %27, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %28 = load x86_fp80* %a1, align 16, !llfi_index !318
  %fi77 = call x86_fp80 @injectFault6(i64 317, x86_fp80 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %29 = fmul x86_fp80 %fi76, %fi77, !llfi_index !319
  %fi78 = call x86_fp80 @injectFault6(i64 318, x86_fp80 %29, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %30 = load x86_fp80* %a1, align 16, !llfi_index !320
  %fi79 = call x86_fp80 @injectFault6(i64 319, x86_fp80 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %31 = fmul x86_fp80 %fi78, %fi79, !llfi_index !321
  %fi80 = call x86_fp80 @injectFault6(i64 320, x86_fp80 %31, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %32 = load x86_fp80* %a1, align 16, !llfi_index !322
  %fi81 = call x86_fp80 @injectFault6(i64 321, x86_fp80 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %33 = fmul x86_fp80 0xK40029000000000000000, %fi81, !llfi_index !323
  %fi66 = call x86_fp80 @injectFault6(i64 322, x86_fp80 %33, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %34 = load x86_fp80* %a2, align 16, !llfi_index !324
  %fi83 = call x86_fp80 @injectFault6(i64 323, x86_fp80 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %35 = fmul x86_fp80 %fi66, %fi83, !llfi_index !325
  %fi84 = call x86_fp80 @injectFault6(i64 324, x86_fp80 %35, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %36 = fsub x86_fp80 %fi80, %fi84, !llfi_index !326
  %fi85 = call x86_fp80 @injectFault6(i64 325, x86_fp80 %36, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %37 = load x86_fp80* %a3, align 16, !llfi_index !327
  %fi86 = call x86_fp80 @injectFault6(i64 326, x86_fp80 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %38 = fmul x86_fp80 0xK4003D800000000000000, %fi86, !llfi_index !328
  %fi87 = call x86_fp80 @injectFault6(i64 327, x86_fp80 %38, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %39 = fadd x86_fp80 %fi85, %fi87, !llfi_index !329
  %fi88 = call x86_fp80 @injectFault6(i64 328, x86_fp80 %39, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %40 = fdiv x86_fp80 %fi88, 0xK4004D800000000000000, !llfi_index !330
  %fi89 = call x86_fp80 @injectFault6(i64 329, x86_fp80 %40, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store x86_fp80 %fi89, x86_fp80* %R, align 16, !llfi_index !331
  %41 = load x86_fp80* %R, align 16, !llfi_index !332
  %fi90 = call x86_fp80 @injectFault6(i64 331, x86_fp80 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %42 = load x86_fp80* %R, align 16, !llfi_index !333
  %fi91 = call x86_fp80 @injectFault6(i64 332, x86_fp80 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %43 = fmul x86_fp80 %fi90, %fi91, !llfi_index !334
  %fi92 = call x86_fp80 @injectFault6(i64 333, x86_fp80 %43, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %44 = load x86_fp80* %Q, align 16, !llfi_index !335
  %fi93 = call x86_fp80 @injectFault6(i64 334, x86_fp80 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %45 = load x86_fp80* %Q, align 16, !llfi_index !336
  %fi94 = call x86_fp80 @injectFault6(i64 335, x86_fp80 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %46 = fmul x86_fp80 %fi93, %fi94, !llfi_index !337
  %fi95 = call x86_fp80 @injectFault6(i64 336, x86_fp80 %46, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %47 = load x86_fp80* %Q, align 16, !llfi_index !338
  %fi96 = call x86_fp80 @injectFault6(i64 337, x86_fp80 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %48 = fmul x86_fp80 %fi95, %fi96, !llfi_index !339
  %fi97 = call x86_fp80 @injectFault6(i64 338, x86_fp80 %48, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %49 = fsub x86_fp80 %fi92, %fi97, !llfi_index !340
  %fi98 = call x86_fp80 @injectFault6(i64 339, x86_fp80 %49, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %50 = fptrunc x86_fp80 %fi98 to double, !llfi_index !341
  %fi99 = call double @injectFault1(i64 340, double %50, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi99, double* %R2_Q3, align 8, !llfi_index !342
  %51 = load double* %R2_Q3, align 8, !llfi_index !343
  %fi100 = call double @injectFault1(i64 342, double %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %52 = fcmp ole double %fi100, 0.000000e+00, !llfi_index !344
  %fi101 = call i1 @injectFault3(i64 343, i1 %52, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi101, label %53, label %120, !llfi_index !345

; <label>:53                                      ; preds = %0
  %54 = load i32** %5, align 8, !llfi_index !346
  %fi102 = call i32* @injectFault5(i64 345, i32* %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 3, i32* %fi102, align 4, !llfi_index !347
  %55 = load x86_fp80* %R, align 16, !llfi_index !348
  %fi103 = call x86_fp80 @injectFault6(i64 347, x86_fp80 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %56 = load x86_fp80* %Q, align 16, !llfi_index !349
  %fi104 = call x86_fp80 @injectFault6(i64 348, x86_fp80 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %57 = load x86_fp80* %Q, align 16, !llfi_index !350
  %fi105 = call x86_fp80 @injectFault6(i64 349, x86_fp80 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %58 = fmul x86_fp80 %fi104, %fi105, !llfi_index !351
  %fi106 = call x86_fp80 @injectFault6(i64 350, x86_fp80 %58, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %59 = load x86_fp80* %Q, align 16, !llfi_index !352
  %fi107 = call x86_fp80 @injectFault6(i64 351, x86_fp80 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %60 = fmul x86_fp80 %fi106, %fi107, !llfi_index !353
  %fi108 = call x86_fp80 @injectFault6(i64 352, x86_fp80 %60, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %61 = fptrunc x86_fp80 %fi108 to double, !llfi_index !354
  %fi109 = call double @injectFault1(i64 353, double %61, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %62 = call double @sqrt(double %fi109) #4, !llfi_index !355
  %63 = fpext double %62 to x86_fp80, !llfi_index !356
  %fi110 = call x86_fp80 @injectFault6(i64 355, x86_fp80 %63, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %64 = fdiv x86_fp80 %fi103, %fi110, !llfi_index !357
  %fi111 = call x86_fp80 @injectFault6(i64 356, x86_fp80 %64, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %65 = fptrunc x86_fp80 %fi111 to double, !llfi_index !358
  %fi82 = call double @injectFault1(i64 357, double %65, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %66 = call double @acos(double %fi82) #4, !llfi_index !359
  store double %66, double* %theta, align 8, !llfi_index !360
  %67 = load x86_fp80* %Q, align 16, !llfi_index !361
  %fi117 = call x86_fp80 @injectFault6(i64 360, x86_fp80 %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %68 = fptrunc x86_fp80 %fi117 to double, !llfi_index !362
  %fi118 = call double @injectFault1(i64 361, double %68, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %69 = call double @sqrt(double %fi118) #4, !llfi_index !363
  %70 = fmul double -2.000000e+00, %69, !llfi_index !364
  %fi119 = call double @injectFault1(i64 363, double %70, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %71 = load double* %theta, align 8, !llfi_index !365
  %fi120 = call double @injectFault1(i64 364, double %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %72 = fdiv double %fi120, 3.000000e+00, !llfi_index !366
  %fi121 = call double @injectFault1(i64 365, double %72, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %73 = call double @cos(double %fi121) #4, !llfi_index !367
  %74 = fmul double %fi119, %73, !llfi_index !368
  %fi122 = call double @injectFault1(i64 367, double %74, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %75 = fpext double %fi122 to x86_fp80, !llfi_index !369
  %fi123 = call x86_fp80 @injectFault6(i64 368, x86_fp80 %75, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %76 = load x86_fp80* %a1, align 16, !llfi_index !370
  %fi124 = call x86_fp80 @injectFault6(i64 369, x86_fp80 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %77 = fdiv x86_fp80 %fi124, 0xK4000C000000000000000, !llfi_index !371
  %fi125 = call x86_fp80 @injectFault6(i64 370, x86_fp80 %77, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %78 = fsub x86_fp80 %fi123, %fi125, !llfi_index !372
  %fi126 = call x86_fp80 @injectFault6(i64 371, x86_fp80 %78, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %79 = fptrunc x86_fp80 %fi126 to double, !llfi_index !373
  %fi127 = call double @injectFault1(i64 372, double %79, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %80 = load double** %6, align 8, !llfi_index !374
  %fi128 = call double* @injectFault0(i64 373, double* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %81 = getelementptr double* %fi128, i64 0, !llfi_index !375
  %fi129 = call double* @injectFault0(i64 374, double* %81, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi127, double* %fi129, align 8, !llfi_index !376
  %82 = load x86_fp80* %Q, align 16, !llfi_index !377
  %fi130 = call x86_fp80 @injectFault6(i64 376, x86_fp80 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %83 = fptrunc x86_fp80 %fi130 to double, !llfi_index !378
  %fi131 = call double @injectFault1(i64 377, double %83, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %84 = call double @sqrt(double %fi131) #4, !llfi_index !379
  %85 = fmul double -2.000000e+00, %84, !llfi_index !380
  %fi132 = call double @injectFault1(i64 379, double %85, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %86 = load double* %theta, align 8, !llfi_index !381
  %fi133 = call double @injectFault1(i64 380, double %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %87 = call double @atan(double 1.000000e+00) #4, !llfi_index !382
  %88 = fmul double 4.000000e+00, %87, !llfi_index !383
  %fi134 = call double @injectFault1(i64 382, double %88, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %89 = fmul double 2.000000e+00, %fi134, !llfi_index !384
  %fi135 = call double @injectFault1(i64 383, double %89, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %90 = fadd double %fi133, %fi135, !llfi_index !385
  %fi136 = call double @injectFault1(i64 384, double %90, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %91 = fdiv double %fi136, 3.000000e+00, !llfi_index !386
  %fi = call double @injectFault1(i64 385, double %91, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %92 = call double @cos(double %fi) #4, !llfi_index !387
  %93 = fmul double %fi132, %92, !llfi_index !388
  %fi1 = call double @injectFault1(i64 387, double %93, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %94 = fpext double %fi1 to x86_fp80, !llfi_index !389
  %fi2 = call x86_fp80 @injectFault6(i64 388, x86_fp80 %94, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %95 = load x86_fp80* %a1, align 16, !llfi_index !390
  %fi3 = call x86_fp80 @injectFault6(i64 389, x86_fp80 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %96 = fdiv x86_fp80 %fi3, 0xK4000C000000000000000, !llfi_index !391
  %fi4 = call x86_fp80 @injectFault6(i64 390, x86_fp80 %96, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %97 = fsub x86_fp80 %fi2, %fi4, !llfi_index !392
  %fi5 = call x86_fp80 @injectFault6(i64 391, x86_fp80 %97, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %98 = fptrunc x86_fp80 %fi5 to double, !llfi_index !393
  %fi6 = call double @injectFault1(i64 392, double %98, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %99 = load double** %6, align 8, !llfi_index !394
  %fi7 = call double* @injectFault0(i64 393, double* %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %100 = getelementptr double* %fi7, i64 1, !llfi_index !395
  %fi8 = call double* @injectFault0(i64 394, double* %100, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi6, double* %fi8, align 8, !llfi_index !396
  %101 = load x86_fp80* %Q, align 16, !llfi_index !397
  %fi9 = call x86_fp80 @injectFault6(i64 396, x86_fp80 %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %102 = fptrunc x86_fp80 %fi9 to double, !llfi_index !398
  %fi10 = call double @injectFault1(i64 397, double %102, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %103 = call double @sqrt(double %fi10) #4, !llfi_index !399
  %104 = fmul double -2.000000e+00, %103, !llfi_index !400
  %fi11 = call double @injectFault1(i64 399, double %104, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %105 = load double* %theta, align 8, !llfi_index !401
  %fi12 = call double @injectFault1(i64 400, double %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %106 = call double @atan(double 1.000000e+00) #4, !llfi_index !402
  %107 = fmul double 4.000000e+00, %106, !llfi_index !403
  %fi13 = call double @injectFault1(i64 402, double %107, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %108 = fmul double 4.000000e+00, %fi13, !llfi_index !404
  %fi14 = call double @injectFault1(i64 403, double %108, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %109 = fadd double %fi12, %fi14, !llfi_index !405
  %fi15 = call double @injectFault1(i64 404, double %109, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %110 = fdiv double %fi15, 3.000000e+00, !llfi_index !406
  %fi16 = call double @injectFault1(i64 405, double %110, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %111 = call double @cos(double %fi16) #4, !llfi_index !407
  %112 = fmul double %fi11, %111, !llfi_index !408
  %fi17 = call double @injectFault1(i64 407, double %112, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %113 = fpext double %fi17 to x86_fp80, !llfi_index !409
  %fi18 = call x86_fp80 @injectFault6(i64 408, x86_fp80 %113, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %114 = load x86_fp80* %a1, align 16, !llfi_index !410
  %fi19 = call x86_fp80 @injectFault6(i64 409, x86_fp80 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %115 = fdiv x86_fp80 %fi19, 0xK4000C000000000000000, !llfi_index !411
  %fi20 = call x86_fp80 @injectFault6(i64 410, x86_fp80 %115, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %116 = fsub x86_fp80 %fi18, %fi20, !llfi_index !412
  %fi21 = call x86_fp80 @injectFault6(i64 411, x86_fp80 %116, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %117 = fptrunc x86_fp80 %fi21 to double, !llfi_index !413
  %fi22 = call double @injectFault1(i64 412, double %117, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %118 = load double** %6, align 8, !llfi_index !414
  %fi23 = call double* @injectFault0(i64 413, double* %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %119 = getelementptr double* %fi23, i64 2, !llfi_index !415
  %fi24 = call double* @injectFault0(i64 414, double* %119, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi22, double* %fi24, align 8, !llfi_index !416
  br label %159, !llfi_index !417

; <label>:120                                     ; preds = %0
  %121 = load i32** %5, align 8, !llfi_index !418
  %fi25 = call i32* @injectFault5(i64 417, i32* %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 1, i32* %fi25, align 4, !llfi_index !419
  %122 = load double* %R2_Q3, align 8, !llfi_index !420
  %fi26 = call double @injectFault1(i64 419, double %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %123 = call double @sqrt(double %fi26) #4, !llfi_index !421
  %124 = load x86_fp80* %R, align 16, !llfi_index !422
  %fi27 = call x86_fp80 @injectFault6(i64 421, x86_fp80 %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %125 = fptrunc x86_fp80 %fi27 to double, !llfi_index !423
  %fi28 = call double @injectFault1(i64 422, double %125, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %126 = call double @fabs(double %fi28) #5, !llfi_index !424
  %127 = fadd double %123, %126, !llfi_index !425
  %fi29 = call double @injectFault1(i64 424, double %127, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %128 = call double @pow(double %fi29, double 0x3FD5555555555555) #4, !llfi_index !426
  %129 = load double** %6, align 8, !llfi_index !427
  %fi112 = call double* @injectFault0(i64 426, double* %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %130 = getelementptr double* %fi112, i64 0, !llfi_index !428
  %fi113 = call double* @injectFault0(i64 427, double* %130, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %128, double* %fi113, align 8, !llfi_index !429
  %131 = load x86_fp80* %Q, align 16, !llfi_index !430
  %fi114 = call x86_fp80 @injectFault6(i64 429, x86_fp80 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %132 = load double** %6, align 8, !llfi_index !431
  %fi115 = call double* @injectFault0(i64 430, double* %132, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %133 = getelementptr double* %fi115, i64 0, !llfi_index !432
  %fi116 = call double* @injectFault0(i64 431, double* %133, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %134 = load double* %fi116, align 8, !llfi_index !433
  %fi30 = call double @injectFault1(i64 432, double %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %135 = fpext double %fi30 to x86_fp80, !llfi_index !434
  %fi31 = call x86_fp80 @injectFault6(i64 433, x86_fp80 %135, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %136 = fdiv x86_fp80 %fi114, %fi31, !llfi_index !435
  %fi32 = call x86_fp80 @injectFault6(i64 434, x86_fp80 %136, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %137 = load double** %6, align 8, !llfi_index !436
  %fi33 = call double* @injectFault0(i64 435, double* %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %138 = getelementptr double* %fi33, i64 0, !llfi_index !437
  %fi34 = call double* @injectFault0(i64 436, double* %138, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %139 = load double* %fi34, align 8, !llfi_index !438
  %fi35 = call double @injectFault1(i64 437, double %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %140 = fpext double %fi35 to x86_fp80, !llfi_index !439
  %fi36 = call x86_fp80 @injectFault6(i64 438, x86_fp80 %140, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %141 = fadd x86_fp80 %fi36, %fi32, !llfi_index !440
  %fi37 = call x86_fp80 @injectFault6(i64 439, x86_fp80 %141, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %142 = fptrunc x86_fp80 %fi37 to double, !llfi_index !441
  %fi38 = call double @injectFault1(i64 440, double %142, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi38, double* %fi34, align 8, !llfi_index !442
  %143 = load x86_fp80* %R, align 16, !llfi_index !443
  %fi39 = call x86_fp80 @injectFault6(i64 442, x86_fp80 %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %144 = fcmp olt x86_fp80 %fi39, 0xK00000000000000000000, !llfi_index !444
  %fi40 = call i1 @injectFault3(i64 443, i1 %144, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %145 = select i1 %fi40, i32 1, i32 -1, !llfi_index !445
  %fi41 = call i32 @injectFault2(i64 444, i32 %145, i32 50, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @select_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %146 = sitofp i32 %fi41 to double, !llfi_index !446
  %fi42 = call double @injectFault1(i64 445, double %146, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %147 = load double** %6, align 8, !llfi_index !447
  %fi43 = call double* @injectFault0(i64 446, double* %147, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %148 = getelementptr double* %fi43, i64 0, !llfi_index !448
  %fi44 = call double* @injectFault0(i64 447, double* %148, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %149 = load double* %fi44, align 8, !llfi_index !449
  %fi45 = call double @injectFault1(i64 448, double %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %150 = fmul double %fi45, %fi42, !llfi_index !450
  %fi46 = call double @injectFault1(i64 449, double %150, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi46, double* %fi44, align 8, !llfi_index !451
  %151 = load x86_fp80* %a1, align 16, !llfi_index !452
  %fi47 = call x86_fp80 @injectFault6(i64 451, x86_fp80 %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %152 = fdiv x86_fp80 %fi47, 0xK4000C000000000000000, !llfi_index !453
  %fi48 = call x86_fp80 @injectFault6(i64 452, x86_fp80 %152, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %153 = load double** %6, align 8, !llfi_index !454
  %fi49 = call double* @injectFault0(i64 453, double* %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %154 = getelementptr double* %fi49, i64 0, !llfi_index !455
  %fi50 = call double* @injectFault0(i64 454, double* %154, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %155 = load double* %fi50, align 8, !llfi_index !456
  %fi51 = call double @injectFault1(i64 455, double %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %156 = fpext double %fi51 to x86_fp80, !llfi_index !457
  %fi52 = call x86_fp80 @injectFault6(i64 456, x86_fp80 %156, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %157 = fsub x86_fp80 %fi52, %fi48, !llfi_index !458
  %fi53 = call x86_fp80 @injectFault6(i64 457, x86_fp80 %157, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %158 = fptrunc x86_fp80 %fi53 to double, !llfi_index !459
  %fi54 = call double @injectFault1(i64 458, double %158, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store double %fi54, double* %fi50, align 8, !llfi_index !460
  br label %159, !llfi_index !461

; <label>:159                                     ; preds = %120, %53
  ret void, !llfi_index !462
}

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define void @usqrt(i64 %x, %struct.int_sqrt* %q) #0 {
  %1 = alloca i64, align 8, !llfi_index !463
  %2 = alloca %struct.int_sqrt*, align 8, !llfi_index !464
  %a = alloca i64, align 8, !llfi_index !465
  %r = alloca i64, align 8, !llfi_index !466
  %e = alloca i64, align 8, !llfi_index !467
  %i = alloca i32, align 4, !llfi_index !468
  store i64 %x, i64* %1, align 8, !llfi_index !469
  store %struct.int_sqrt* %q, %struct.int_sqrt** %2, align 8, !llfi_index !470
  store i64 0, i64* %a, align 8, !llfi_index !471
  store i64 0, i64* %r, align 8, !llfi_index !472
  store i64 0, i64* %e, align 8, !llfi_index !473
  store i32 0, i32* %i, align 4, !llfi_index !474
  br label %3, !llfi_index !475

; <label>:3                                       ; preds = %30, %0
  %4 = load i32* %i, align 4, !llfi_index !476
  %fi = call i32 @injectFault2(i64 475, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %5 = icmp slt i32 %fi, 32, !llfi_index !477
  %fi1 = call i1 @injectFault3(i64 476, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi1, label %6, label %33, !llfi_index !478

; <label>:6                                       ; preds = %3
  %7 = load i64* %r, align 8, !llfi_index !479
  %fi2 = call i64 @injectFault4(i64 478, i64 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %8 = shl i64 %fi2, 2, !llfi_index !480
  %fi3 = call i64 @injectFault4(i64 479, i64 %8, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %9 = load i64* %1, align 8, !llfi_index !481
  %fi4 = call i64 @injectFault4(i64 480, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %10 = and i64 %fi4, 3221225472, !llfi_index !482
  %fi5 = call i64 @injectFault4(i64 481, i64 %10, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %11 = lshr i64 %fi5, 30, !llfi_index !483
  %fi6 = call i64 @injectFault4(i64 482, i64 %11, i32 21, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @lshr_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %12 = add i64 %fi3, %fi6, !llfi_index !484
  %fi7 = call i64 @injectFault4(i64 483, i64 %12, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi7, i64* %r, align 8, !llfi_index !485
  %13 = load i64* %1, align 8, !llfi_index !486
  %fi8 = call i64 @injectFault4(i64 485, i64 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %14 = shl i64 %fi8, 2, !llfi_index !487
  %fi9 = call i64 @injectFault4(i64 486, i64 %14, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi9, i64* %1, align 8, !llfi_index !488
  %15 = load i64* %a, align 8, !llfi_index !489
  %fi10 = call i64 @injectFault4(i64 488, i64 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %16 = shl i64 %fi10, 1, !llfi_index !490
  %fi11 = call i64 @injectFault4(i64 489, i64 %16, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi11, i64* %a, align 8, !llfi_index !491
  %17 = load i64* %a, align 8, !llfi_index !492
  %fi12 = call i64 @injectFault4(i64 491, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %18 = shl i64 %fi12, 1, !llfi_index !493
  %fi13 = call i64 @injectFault4(i64 492, i64 %18, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %19 = add i64 %fi13, 1, !llfi_index !494
  %fi14 = call i64 @injectFault4(i64 493, i64 %19, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi14, i64* %e, align 8, !llfi_index !495
  %20 = load i64* %r, align 8, !llfi_index !496
  %fi15 = call i64 @injectFault4(i64 495, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %21 = load i64* %e, align 8, !llfi_index !497
  %fi16 = call i64 @injectFault4(i64 496, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %22 = icmp uge i64 %fi15, %fi16, !llfi_index !498
  %fi17 = call i1 @injectFault3(i64 497, i1 %22, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !46
  br i1 %fi17, label %23, label %29, !llfi_index !499

; <label>:23                                      ; preds = %6
  %24 = load i64* %e, align 8, !llfi_index !500
  %fi18 = call i64 @injectFault4(i64 499, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %25 = load i64* %r, align 8, !llfi_index !501
  %fi19 = call i64 @injectFault4(i64 500, i64 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %26 = sub i64 %fi19, %fi18, !llfi_index !502
  %fi20 = call i64 @injectFault4(i64 501, i64 %26, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi20, i64* %r, align 8, !llfi_index !503
  %27 = load i64* %a, align 8, !llfi_index !504
  %fi21 = call i64 @injectFault4(i64 503, i64 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %28 = add i64 %fi21, 1, !llfi_index !505
  %fi22 = call i64 @injectFault4(i64 504, i64 %28, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i64 %fi22, i64* %a, align 8, !llfi_index !506
  br label %29, !llfi_index !507

; <label>:29                                      ; preds = %23, %6
  br label %30, !llfi_index !508

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4, !llfi_index !509
  %fi23 = call i32 @injectFault2(i64 508, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %32 = add nsw i32 %fi23, 1, !llfi_index !510
  %fi24 = call i32 @injectFault2(i64 509, i32 %32, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !46
  store i32 %fi24, i32* %i, align 4, !llfi_index !511
  br label %3, !llfi_index !512

; <label>:33                                      ; preds = %3
  %34 = load %struct.int_sqrt** %2, align 8, !llfi_index !513
  %fi25 = call %struct.int_sqrt* @injectFault7(i64 512, %struct.int_sqrt* %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %35 = bitcast %struct.int_sqrt* %fi25 to i8*, !llfi_index !514
  %fi26 = call i8* @injectFault8(i64 513, i8* %35, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %36 = bitcast i64* %a to i8*, !llfi_index !515
  %fi27 = call i8* @injectFault8(i64 514, i8* %36, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi26, i8* %fi27, i64 8, i32 4, i1 false), !llfi_index !516
  ret void, !llfi_index !517
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define double @rad2deg(double %rad) #0 {
  %1 = alloca double, align 8, !llfi_index !518
  store double %rad, double* %1, align 8, !llfi_index !519
  %2 = load double* %1, align 8, !llfi_index !520
  %fi = call double @injectFault1(i64 519, double %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %3 = fmul double 1.800000e+02, %fi, !llfi_index !521
  %fi1 = call double @injectFault1(i64 520, double %3, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %4 = call double @atan(double 1.000000e+00) #4, !llfi_index !522
  %5 = fmul double 4.000000e+00, %4, !llfi_index !523
  %fi2 = call double @injectFault1(i64 522, double %5, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %6 = fdiv double %fi1, %fi2, !llfi_index !524
  %fi3 = call double @injectFault1(i64 523, double %6, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  ret double %fi3, !llfi_index !525
}

; Function Attrs: nounwind uwtable
define double @deg2rad(double %deg) #0 {
  %1 = alloca double, align 8, !llfi_index !526
  store double %deg, double* %1, align 8, !llfi_index !527
  %2 = call double @atan(double 1.000000e+00) #4, !llfi_index !528
  %3 = fmul double 4.000000e+00, %2, !llfi_index !529
  %fi = call double @injectFault1(i64 528, double %3, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %4 = load double* %1, align 8, !llfi_index !530
  %fi1 = call double @injectFault1(i64 529, double %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %5 = fmul double %fi, %fi1, !llfi_index !531
  %fi2 = call double @injectFault1(i64 530, double %5, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !46
  %6 = fdiv double %fi2, 1.800000e+02, !llfi_index !532
  %fi3 = call double @injectFault1(i64 531, double %6, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !46
  ret double %fi3, !llfi_index !533
}

define double* @injectFault0(i64, double*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double*
  store double* %1, double** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double** %tmploc
  ret double* %updateval
}

define double @injectFault1(i64, double, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double
  store double %1, double* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double* %tmploc
  ret double %updateval
}

define i32 @injectFault2(i64, i32, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32
  store i32 %1, i32* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32* %tmploc
  ret i32 %updateval
}

define i1 @injectFault3(i64, i1, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i1
  store i1 %1, i1* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i1* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 1, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i1* %tmploc
  ret i1 %updateval
}

define i64 @injectFault4(i64, i64, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64
  store i64 %1, i64* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64* %tmploc
  ret i64 %updateval
}

define i32* @injectFault5(i64, i32*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32*
  store i32* %1, i32** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32** %tmploc
  ret i32* %updateval
}

define x86_fp80 @injectFault6(i64, x86_fp80, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca x86_fp80
  store x86_fp80 %1, x86_fp80* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast x86_fp80* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 80, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load x86_fp80* %tmploc
  ret x86_fp80 %updateval
}

define %struct.int_sqrt* @injectFault7(i64, %struct.int_sqrt*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.int_sqrt*
  store %struct.int_sqrt* %1, %struct.int_sqrt** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.int_sqrt** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.int_sqrt** %tmploc
  ret %struct.int_sqrt* %updateval
}

define i8* @injectFault8(i64, i8*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8*
  store i8* %1, i8** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8** %tmploc
  ret i8* %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}

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
!46 = metadata !{metadata !"after"}
!47 = metadata !{i64 46}
!48 = metadata !{i64 47}
!49 = metadata !{i64 48}
!50 = metadata !{i64 49}
!51 = metadata !{i64 50}
!52 = metadata !{i64 51}
!53 = metadata !{i64 52}
!54 = metadata !{i64 53}
!55 = metadata !{i64 54}
!56 = metadata !{i64 55}
!57 = metadata !{i64 56}
!58 = metadata !{i64 57}
!59 = metadata !{i64 58}
!60 = metadata !{i64 59}
!61 = metadata !{i64 60}
!62 = metadata !{i64 61}
!63 = metadata !{i64 62}
!64 = metadata !{i64 63}
!65 = metadata !{i64 64}
!66 = metadata !{i64 65}
!67 = metadata !{i64 66}
!68 = metadata !{i64 67}
!69 = metadata !{i64 68}
!70 = metadata !{i64 69}
!71 = metadata !{i64 70}
!72 = metadata !{i64 71}
!73 = metadata !{i64 72}
!74 = metadata !{i64 73}
!75 = metadata !{i64 74}
!76 = metadata !{i64 75}
!77 = metadata !{i64 76}
!78 = metadata !{i64 77}
!79 = metadata !{i64 78}
!80 = metadata !{i64 79}
!81 = metadata !{i64 80}
!82 = metadata !{i64 81}
!83 = metadata !{i64 82}
!84 = metadata !{i64 83}
!85 = metadata !{i64 84}
!86 = metadata !{i64 85}
!87 = metadata !{i64 86}
!88 = metadata !{i64 87}
!89 = metadata !{i64 88}
!90 = metadata !{i64 89}
!91 = metadata !{i64 90}
!92 = metadata !{i64 91}
!93 = metadata !{i64 92}
!94 = metadata !{i64 93}
!95 = metadata !{i64 94}
!96 = metadata !{i64 95}
!97 = metadata !{i64 96}
!98 = metadata !{i64 97}
!99 = metadata !{i64 98}
!100 = metadata !{i64 99}
!101 = metadata !{i64 100}
!102 = metadata !{i64 101}
!103 = metadata !{i64 102}
!104 = metadata !{i64 103}
!105 = metadata !{i64 104}
!106 = metadata !{i64 105}
!107 = metadata !{i64 106}
!108 = metadata !{i64 107}
!109 = metadata !{i64 108}
!110 = metadata !{i64 109}
!111 = metadata !{i64 110}
!112 = metadata !{i64 111}
!113 = metadata !{i64 112}
!114 = metadata !{i64 113}
!115 = metadata !{i64 114}
!116 = metadata !{i64 115}
!117 = metadata !{i64 116}
!118 = metadata !{i64 117}
!119 = metadata !{i64 118}
!120 = metadata !{i64 119}
!121 = metadata !{i64 120}
!122 = metadata !{i64 121}
!123 = metadata !{i64 122}
!124 = metadata !{i64 123}
!125 = metadata !{i64 124}
!126 = metadata !{i64 125}
!127 = metadata !{i64 126}
!128 = metadata !{i64 127}
!129 = metadata !{i64 128}
!130 = metadata !{i64 129}
!131 = metadata !{i64 130}
!132 = metadata !{i64 131}
!133 = metadata !{i64 132}
!134 = metadata !{i64 133}
!135 = metadata !{i64 134}
!136 = metadata !{i64 135}
!137 = metadata !{i64 136}
!138 = metadata !{i64 137}
!139 = metadata !{i64 138}
!140 = metadata !{i64 139}
!141 = metadata !{i64 140}
!142 = metadata !{i64 141}
!143 = metadata !{i64 142}
!144 = metadata !{i64 143}
!145 = metadata !{i64 144}
!146 = metadata !{i64 145}
!147 = metadata !{i64 146}
!148 = metadata !{i64 147}
!149 = metadata !{i64 148}
!150 = metadata !{i64 149}
!151 = metadata !{i64 150}
!152 = metadata !{i64 151}
!153 = metadata !{i64 152}
!154 = metadata !{i64 153}
!155 = metadata !{i64 154}
!156 = metadata !{i64 155}
!157 = metadata !{i64 156}
!158 = metadata !{i64 157}
!159 = metadata !{i64 158}
!160 = metadata !{i64 159}
!161 = metadata !{i64 160}
!162 = metadata !{i64 161}
!163 = metadata !{i64 162}
!164 = metadata !{i64 163}
!165 = metadata !{i64 164}
!166 = metadata !{i64 165}
!167 = metadata !{i64 166}
!168 = metadata !{i64 167}
!169 = metadata !{i64 168}
!170 = metadata !{i64 169}
!171 = metadata !{i64 170}
!172 = metadata !{i64 171}
!173 = metadata !{i64 172}
!174 = metadata !{i64 173}
!175 = metadata !{i64 174}
!176 = metadata !{i64 175}
!177 = metadata !{i64 176}
!178 = metadata !{i64 177}
!179 = metadata !{i64 178}
!180 = metadata !{i64 179}
!181 = metadata !{i64 180}
!182 = metadata !{i64 181}
!183 = metadata !{i64 182}
!184 = metadata !{i64 183}
!185 = metadata !{i64 184}
!186 = metadata !{i64 185}
!187 = metadata !{i64 186}
!188 = metadata !{i64 187}
!189 = metadata !{i64 188}
!190 = metadata !{i64 189}
!191 = metadata !{i64 190}
!192 = metadata !{i64 191}
!193 = metadata !{i64 192}
!194 = metadata !{i64 193}
!195 = metadata !{i64 194}
!196 = metadata !{i64 195}
!197 = metadata !{i64 196}
!198 = metadata !{i64 197}
!199 = metadata !{i64 198}
!200 = metadata !{i64 199}
!201 = metadata !{i64 200}
!202 = metadata !{i64 201}
!203 = metadata !{i64 202}
!204 = metadata !{i64 203}
!205 = metadata !{i64 204}
!206 = metadata !{i64 205}
!207 = metadata !{i64 206}
!208 = metadata !{i64 207}
!209 = metadata !{i64 208}
!210 = metadata !{i64 209}
!211 = metadata !{i64 210}
!212 = metadata !{i64 211}
!213 = metadata !{i64 212}
!214 = metadata !{i64 213}
!215 = metadata !{i64 214}
!216 = metadata !{i64 215}
!217 = metadata !{i64 216}
!218 = metadata !{i64 217}
!219 = metadata !{i64 218}
!220 = metadata !{i64 219}
!221 = metadata !{i64 220}
!222 = metadata !{i64 221}
!223 = metadata !{i64 222}
!224 = metadata !{i64 223}
!225 = metadata !{i64 224}
!226 = metadata !{i64 225}
!227 = metadata !{i64 226}
!228 = metadata !{i64 227}
!229 = metadata !{i64 228}
!230 = metadata !{i64 229}
!231 = metadata !{i64 230}
!232 = metadata !{i64 231}
!233 = metadata !{i64 232}
!234 = metadata !{i64 233}
!235 = metadata !{i64 234}
!236 = metadata !{i64 235}
!237 = metadata !{i64 236}
!238 = metadata !{i64 237}
!239 = metadata !{i64 238}
!240 = metadata !{i64 239}
!241 = metadata !{i64 240}
!242 = metadata !{i64 241}
!243 = metadata !{i64 242}
!244 = metadata !{i64 243}
!245 = metadata !{i64 244}
!246 = metadata !{i64 245}
!247 = metadata !{i64 246}
!248 = metadata !{i64 247}
!249 = metadata !{i64 248}
!250 = metadata !{i64 249}
!251 = metadata !{i64 250}
!252 = metadata !{i64 251}
!253 = metadata !{i64 252}
!254 = metadata !{i64 253}
!255 = metadata !{i64 254}
!256 = metadata !{i64 255}
!257 = metadata !{i64 256}
!258 = metadata !{i64 257}
!259 = metadata !{i64 258}
!260 = metadata !{i64 259}
!261 = metadata !{i64 260}
!262 = metadata !{i64 261}
!263 = metadata !{i64 262}
!264 = metadata !{i64 263}
!265 = metadata !{i64 264}
!266 = metadata !{i64 265}
!267 = metadata !{i64 266}
!268 = metadata !{i64 267}
!269 = metadata !{i64 268}
!270 = metadata !{i64 269}
!271 = metadata !{i64 270}
!272 = metadata !{i64 271}
!273 = metadata !{i64 272}
!274 = metadata !{i64 273}
!275 = metadata !{i64 274}
!276 = metadata !{i64 275}
!277 = metadata !{i64 276}
!278 = metadata !{i64 277}
!279 = metadata !{i64 278}
!280 = metadata !{i64 279}
!281 = metadata !{i64 280}
!282 = metadata !{i64 281}
!283 = metadata !{i64 282}
!284 = metadata !{i64 283}
!285 = metadata !{i64 284}
!286 = metadata !{i64 285}
!287 = metadata !{i64 286}
!288 = metadata !{i64 287}
!289 = metadata !{i64 288}
!290 = metadata !{i64 289}
!291 = metadata !{i64 290}
!292 = metadata !{i64 291}
!293 = metadata !{i64 292}
!294 = metadata !{i64 293}
!295 = metadata !{i64 294}
!296 = metadata !{i64 295}
!297 = metadata !{i64 296}
!298 = metadata !{i64 297}
!299 = metadata !{i64 298}
!300 = metadata !{i64 299}
!301 = metadata !{i64 300}
!302 = metadata !{i64 301}
!303 = metadata !{i64 302}
!304 = metadata !{i64 303}
!305 = metadata !{i64 304}
!306 = metadata !{i64 305}
!307 = metadata !{i64 306}
!308 = metadata !{i64 307}
!309 = metadata !{i64 308}
!310 = metadata !{i64 309}
!311 = metadata !{i64 310}
!312 = metadata !{i64 311}
!313 = metadata !{i64 312}
!314 = metadata !{i64 313}
!315 = metadata !{i64 314}
!316 = metadata !{i64 315}
!317 = metadata !{i64 316}
!318 = metadata !{i64 317}
!319 = metadata !{i64 318}
!320 = metadata !{i64 319}
!321 = metadata !{i64 320}
!322 = metadata !{i64 321}
!323 = metadata !{i64 322}
!324 = metadata !{i64 323}
!325 = metadata !{i64 324}
!326 = metadata !{i64 325}
!327 = metadata !{i64 326}
!328 = metadata !{i64 327}
!329 = metadata !{i64 328}
!330 = metadata !{i64 329}
!331 = metadata !{i64 330}
!332 = metadata !{i64 331}
!333 = metadata !{i64 332}
!334 = metadata !{i64 333}
!335 = metadata !{i64 334}
!336 = metadata !{i64 335}
!337 = metadata !{i64 336}
!338 = metadata !{i64 337}
!339 = metadata !{i64 338}
!340 = metadata !{i64 339}
!341 = metadata !{i64 340}
!342 = metadata !{i64 341}
!343 = metadata !{i64 342}
!344 = metadata !{i64 343}
!345 = metadata !{i64 344}
!346 = metadata !{i64 345}
!347 = metadata !{i64 346}
!348 = metadata !{i64 347}
!349 = metadata !{i64 348}
!350 = metadata !{i64 349}
!351 = metadata !{i64 350}
!352 = metadata !{i64 351}
!353 = metadata !{i64 352}
!354 = metadata !{i64 353}
!355 = metadata !{i64 354}
!356 = metadata !{i64 355}
!357 = metadata !{i64 356}
!358 = metadata !{i64 357}
!359 = metadata !{i64 358}
!360 = metadata !{i64 359}
!361 = metadata !{i64 360}
!362 = metadata !{i64 361}
!363 = metadata !{i64 362}
!364 = metadata !{i64 363}
!365 = metadata !{i64 364}
!366 = metadata !{i64 365}
!367 = metadata !{i64 366}
!368 = metadata !{i64 367}
!369 = metadata !{i64 368}
!370 = metadata !{i64 369}
!371 = metadata !{i64 370}
!372 = metadata !{i64 371}
!373 = metadata !{i64 372}
!374 = metadata !{i64 373}
!375 = metadata !{i64 374}
!376 = metadata !{i64 375}
!377 = metadata !{i64 376}
!378 = metadata !{i64 377}
!379 = metadata !{i64 378}
!380 = metadata !{i64 379}
!381 = metadata !{i64 380}
!382 = metadata !{i64 381}
!383 = metadata !{i64 382}
!384 = metadata !{i64 383}
!385 = metadata !{i64 384}
!386 = metadata !{i64 385}
!387 = metadata !{i64 386}
!388 = metadata !{i64 387}
!389 = metadata !{i64 388}
!390 = metadata !{i64 389}
!391 = metadata !{i64 390}
!392 = metadata !{i64 391}
!393 = metadata !{i64 392}
!394 = metadata !{i64 393}
!395 = metadata !{i64 394}
!396 = metadata !{i64 395}
!397 = metadata !{i64 396}
!398 = metadata !{i64 397}
!399 = metadata !{i64 398}
!400 = metadata !{i64 399}
!401 = metadata !{i64 400}
!402 = metadata !{i64 401}
!403 = metadata !{i64 402}
!404 = metadata !{i64 403}
!405 = metadata !{i64 404}
!406 = metadata !{i64 405}
!407 = metadata !{i64 406}
!408 = metadata !{i64 407}
!409 = metadata !{i64 408}
!410 = metadata !{i64 409}
!411 = metadata !{i64 410}
!412 = metadata !{i64 411}
!413 = metadata !{i64 412}
!414 = metadata !{i64 413}
!415 = metadata !{i64 414}
!416 = metadata !{i64 415}
!417 = metadata !{i64 416}
!418 = metadata !{i64 417}
!419 = metadata !{i64 418}
!420 = metadata !{i64 419}
!421 = metadata !{i64 420}
!422 = metadata !{i64 421}
!423 = metadata !{i64 422}
!424 = metadata !{i64 423}
!425 = metadata !{i64 424}
!426 = metadata !{i64 425}
!427 = metadata !{i64 426}
!428 = metadata !{i64 427}
!429 = metadata !{i64 428}
!430 = metadata !{i64 429}
!431 = metadata !{i64 430}
!432 = metadata !{i64 431}
!433 = metadata !{i64 432}
!434 = metadata !{i64 433}
!435 = metadata !{i64 434}
!436 = metadata !{i64 435}
!437 = metadata !{i64 436}
!438 = metadata !{i64 437}
!439 = metadata !{i64 438}
!440 = metadata !{i64 439}
!441 = metadata !{i64 440}
!442 = metadata !{i64 441}
!443 = metadata !{i64 442}
!444 = metadata !{i64 443}
!445 = metadata !{i64 444}
!446 = metadata !{i64 445}
!447 = metadata !{i64 446}
!448 = metadata !{i64 447}
!449 = metadata !{i64 448}
!450 = metadata !{i64 449}
!451 = metadata !{i64 450}
!452 = metadata !{i64 451}
!453 = metadata !{i64 452}
!454 = metadata !{i64 453}
!455 = metadata !{i64 454}
!456 = metadata !{i64 455}
!457 = metadata !{i64 456}
!458 = metadata !{i64 457}
!459 = metadata !{i64 458}
!460 = metadata !{i64 459}
!461 = metadata !{i64 460}
!462 = metadata !{i64 461}
!463 = metadata !{i64 462}
!464 = metadata !{i64 463}
!465 = metadata !{i64 464}
!466 = metadata !{i64 465}
!467 = metadata !{i64 466}
!468 = metadata !{i64 467}
!469 = metadata !{i64 468}
!470 = metadata !{i64 469}
!471 = metadata !{i64 470}
!472 = metadata !{i64 471}
!473 = metadata !{i64 472}
!474 = metadata !{i64 473}
!475 = metadata !{i64 474}
!476 = metadata !{i64 475}
!477 = metadata !{i64 476}
!478 = metadata !{i64 477}
!479 = metadata !{i64 478}
!480 = metadata !{i64 479}
!481 = metadata !{i64 480}
!482 = metadata !{i64 481}
!483 = metadata !{i64 482}
!484 = metadata !{i64 483}
!485 = metadata !{i64 484}
!486 = metadata !{i64 485}
!487 = metadata !{i64 486}
!488 = metadata !{i64 487}
!489 = metadata !{i64 488}
!490 = metadata !{i64 489}
!491 = metadata !{i64 490}
!492 = metadata !{i64 491}
!493 = metadata !{i64 492}
!494 = metadata !{i64 493}
!495 = metadata !{i64 494}
!496 = metadata !{i64 495}
!497 = metadata !{i64 496}
!498 = metadata !{i64 497}
!499 = metadata !{i64 498}
!500 = metadata !{i64 499}
!501 = metadata !{i64 500}
!502 = metadata !{i64 501}
!503 = metadata !{i64 502}
!504 = metadata !{i64 503}
!505 = metadata !{i64 504}
!506 = metadata !{i64 505}
!507 = metadata !{i64 506}
!508 = metadata !{i64 507}
!509 = metadata !{i64 508}
!510 = metadata !{i64 509}
!511 = metadata !{i64 510}
!512 = metadata !{i64 511}
!513 = metadata !{i64 512}
!514 = metadata !{i64 513}
!515 = metadata !{i64 514}
!516 = metadata !{i64 515}
!517 = metadata !{i64 516}
!518 = metadata !{i64 517}
!519 = metadata !{i64 518}
!520 = metadata !{i64 519}
!521 = metadata !{i64 520}
!522 = metadata !{i64 521}
!523 = metadata !{i64 522}
!524 = metadata !{i64 523}
!525 = metadata !{i64 524}
!526 = metadata !{i64 525}
!527 = metadata !{i64 526}
!528 = metadata !{i64 527}
!529 = metadata !{i64 528}
!530 = metadata !{i64 529}
!531 = metadata !{i64 530}
!532 = metadata !{i64 531}
!533 = metadata !{i64 532}
