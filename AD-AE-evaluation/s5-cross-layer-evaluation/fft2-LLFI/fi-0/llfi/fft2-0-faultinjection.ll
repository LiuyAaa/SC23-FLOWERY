; ModuleID = '/home/foo/cross-layer-sid/FI-base/LLFI-base-Origin/fft2/fi-0/llfi/fft2-0-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str111 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str212 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str313 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str414 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@xor_namestr = internal constant [4 x i8] c"xor\00"
@srem_namestr = internal constant [5 x i8] c"srem\00"
@sitofp_namestr = internal constant [7 x i8] c"sitofp\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@uitofp_namestr = internal constant [7 x i8] c"uitofp\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@and_namestr = internal constant [4 x i8] c"and\00"
@shl_namestr = internal constant [4 x i8] c"shl\00"
@or_namestr = internal constant [3 x i8] c"or\00"
@lshr_namestr = internal constant [5 x i8] c"lshr\00"
@udiv_namestr = internal constant [5 x i8] c"udiv\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %3 = alloca i8**, align 8, !llfi_index !3
  %MAXSIZE = alloca i32, align 4, !llfi_index !4
  %MAXWAVES = alloca i32, align 4, !llfi_index !5
  %i = alloca i32, align 4, !llfi_index !6
  %j = alloca i32, align 4, !llfi_index !7
  %RealIn = alloca float*, align 8, !llfi_index !8
  %ImagIn = alloca float*, align 8, !llfi_index !9
  %RealOut = alloca float*, align 8, !llfi_index !10
  %ImagOut = alloca float*, align 8, !llfi_index !11
  %coeff = alloca float*, align 8, !llfi_index !12
  %amp = alloca float*, align 8, !llfi_index !13
  %invfft = alloca i32, align 4, !llfi_index !14
  store i32 0, i32* %1, !llfi_index !15
  store i32 %argc, i32* %2, align 4, !llfi_index !16
  store i8** %argv, i8*** %3, align 8, !llfi_index !17
  store i32 0, i32* %invfft, align 4, !llfi_index !18
  %4 = load i32* %2, align 4, !llfi_index !19
  %fi3 = call i32 @injectFault0(i64 19, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %5 = icmp slt i32 %fi3, 3, !llfi_index !21
  %fi4 = call i1 @injectFault1(i64 20, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi4, label %6, label %11, !llfi_index !22

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0)), !llfi_index !23
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0)), !llfi_index !24
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str2, i32 0, i32 0)), !llfi_index !25
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0)), !llfi_index !26
  call void @postInjections()
  call void @exit(i32 -1) #5, !llfi_index !27
  unreachable, !llfi_index !28

; <label>:11                                      ; preds = %0
  %12 = load i32* %2, align 4, !llfi_index !29
  %fi6 = call i32 @injectFault0(i64 28, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %13 = icmp eq i32 %fi6, 4, !llfi_index !30
  %fi7 = call i1 @injectFault1(i64 29, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi7, label %14, label %22, !llfi_index !31

; <label>:14                                      ; preds = %11
  %15 = load i8*** %3, align 8, !llfi_index !32
  %fi8 = call i8** @injectFault4(i64 31, i8** %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %16 = getelementptr i8** %fi8, i64 3, !llfi_index !33
  %fi9 = call i8** @injectFault4(i64 32, i8** %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %17 = load i8** %fi9, align 8, !llfi_index !34
  %fi5 = call i8* @injectFault3(i64 33, i8* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %18 = call i32 @strncmp(i8* %fi5, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i64 2), !llfi_index !35
  %19 = icmp ne i32 %18, 0, !llfi_index !36
  %fi11 = call i1 @injectFault1(i64 35, i1 %19, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %20 = xor i1 %fi11, true, !llfi_index !37
  %fi12 = call i1 @injectFault1(i64 36, i1 %20, i32 25, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @xor_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %21 = zext i1 %fi12 to i32, !llfi_index !38
  %fi13 = call i32 @injectFault0(i64 37, i32 %21, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi13, i32* %invfft, align 4, !llfi_index !39
  br label %22, !llfi_index !40

; <label>:22                                      ; preds = %14, %11
  br label %23, !llfi_index !41

; <label>:23                                      ; preds = %22
  %24 = load i8*** %3, align 8, !llfi_index !42
  %fi14 = call i8** @injectFault4(i64 41, i8** %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %25 = getelementptr i8** %fi14, i64 2, !llfi_index !43
  %fi15 = call i8** @injectFault4(i64 42, i8** %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %26 = load i8** %fi15, align 8, !llfi_index !44
  %fi16 = call i8* @injectFault3(i64 43, i8* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %27 = call i32 @atoi(i8* %fi16) #6, !llfi_index !45
  store i32 %27, i32* %MAXSIZE, align 4, !llfi_index !46
  %28 = load i8*** %3, align 8, !llfi_index !47
  %fi17 = call i8** @injectFault4(i64 46, i8** %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %29 = getelementptr i8** %fi17, i64 1, !llfi_index !48
  %fi18 = call i8** @injectFault4(i64 47, i8** %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %30 = load i8** %fi18, align 8, !llfi_index !49
  %fi19 = call i8* @injectFault3(i64 48, i8* %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %31 = call i32 @atoi(i8* %fi19) #6, !llfi_index !50
  store i32 %31, i32* %MAXWAVES, align 4, !llfi_index !51
  call void @srand(i32 1) #7, !llfi_index !52
  %32 = load i32* %MAXSIZE, align 4, !llfi_index !53
  %fi = call i32 @injectFault0(i64 52, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %33 = zext i32 %fi to i64, !llfi_index !54
  %fi10 = call i64 @injectFault2(i64 53, i64 %33, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %34 = mul i64 4, %fi10, !llfi_index !55
  %fi2 = call i64 @injectFault2(i64 54, i64 %34, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %35 = call noalias i8* @malloc(i64 %fi2) #7, !llfi_index !56
  %36 = bitcast i8* %35 to float*, !llfi_index !57
  %fi34 = call float* @injectFault5(i64 56, float* %36, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi34, float** %RealIn, align 8, !llfi_index !58
  %37 = load i32* %MAXSIZE, align 4, !llfi_index !59
  %fi35 = call i32 @injectFault0(i64 58, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %38 = zext i32 %fi35 to i64, !llfi_index !60
  %fi36 = call i64 @injectFault2(i64 59, i64 %38, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %39 = mul i64 4, %fi36, !llfi_index !61
  %fi37 = call i64 @injectFault2(i64 60, i64 %39, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %40 = call noalias i8* @malloc(i64 %fi37) #7, !llfi_index !62
  %41 = bitcast i8* %40 to float*, !llfi_index !63
  %fi38 = call float* @injectFault5(i64 62, float* %41, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi38, float** %ImagIn, align 8, !llfi_index !64
  %42 = load i32* %MAXSIZE, align 4, !llfi_index !65
  %fi39 = call i32 @injectFault0(i64 64, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %43 = zext i32 %fi39 to i64, !llfi_index !66
  %fi40 = call i64 @injectFault2(i64 65, i64 %43, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %44 = mul i64 4, %fi40, !llfi_index !67
  %fi41 = call i64 @injectFault2(i64 66, i64 %44, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %45 = call noalias i8* @malloc(i64 %fi41) #7, !llfi_index !68
  %46 = bitcast i8* %45 to float*, !llfi_index !69
  %fi42 = call float* @injectFault5(i64 68, float* %46, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi42, float** %RealOut, align 8, !llfi_index !70
  %47 = load i32* %MAXSIZE, align 4, !llfi_index !71
  %fi43 = call i32 @injectFault0(i64 70, i32 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %48 = zext i32 %fi43 to i64, !llfi_index !72
  %fi44 = call i64 @injectFault2(i64 71, i64 %48, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %49 = mul i64 4, %fi44, !llfi_index !73
  %fi45 = call i64 @injectFault2(i64 72, i64 %49, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %50 = call noalias i8* @malloc(i64 %fi45) #7, !llfi_index !74
  %51 = bitcast i8* %50 to float*, !llfi_index !75
  %fi46 = call float* @injectFault5(i64 74, float* %51, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi46, float** %ImagOut, align 8, !llfi_index !76
  %52 = load i32* %MAXWAVES, align 4, !llfi_index !77
  %fi47 = call i32 @injectFault0(i64 76, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %53 = zext i32 %fi47 to i64, !llfi_index !78
  %fi48 = call i64 @injectFault2(i64 77, i64 %53, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %54 = mul i64 4, %fi48, !llfi_index !79
  %fi49 = call i64 @injectFault2(i64 78, i64 %54, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %55 = call noalias i8* @malloc(i64 %fi49) #7, !llfi_index !80
  %56 = bitcast i8* %55 to float*, !llfi_index !81
  %fi50 = call float* @injectFault5(i64 80, float* %56, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi50, float** %coeff, align 8, !llfi_index !82
  %57 = load i32* %MAXWAVES, align 4, !llfi_index !83
  %fi51 = call i32 @injectFault0(i64 82, i32 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %58 = zext i32 %fi51 to i64, !llfi_index !84
  %fi52 = call i64 @injectFault2(i64 83, i64 %58, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %59 = mul i64 4, %fi52, !llfi_index !85
  %fi53 = call i64 @injectFault2(i64 84, i64 %59, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %60 = call noalias i8* @malloc(i64 %fi53) #7, !llfi_index !86
  %61 = bitcast i8* %60 to float*, !llfi_index !87
  %fi54 = call float* @injectFault5(i64 86, float* %61, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float* %fi54, float** %amp, align 8, !llfi_index !88
  store i32 0, i32* %i, align 4, !llfi_index !89
  br label %62, !llfi_index !90

; <label>:62                                      ; preds = %81, %23
  %63 = load i32* %i, align 4, !llfi_index !91
  %fi55 = call i32 @injectFault0(i64 90, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %64 = load i32* %MAXWAVES, align 4, !llfi_index !92
  %fi56 = call i32 @injectFault0(i64 91, i32 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %65 = icmp ult i32 %fi55, %fi56, !llfi_index !93
  %fi1 = call i1 @injectFault1(i64 92, i1 %65, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi1, label %66, label %84, !llfi_index !94

; <label>:66                                      ; preds = %62
  %67 = call i32 @rand() #7, !llfi_index !95
  %68 = srem i32 %67, 1000, !llfi_index !96
  %fi63 = call i32 @injectFault0(i64 95, i32 %68, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %69 = sitofp i32 %fi63 to float, !llfi_index !97
  %fi64 = call float @injectFault6(i64 96, float %69, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %70 = load i32* %i, align 4, !llfi_index !98
  %fi20 = call i32 @injectFault0(i64 97, i32 %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %71 = zext i32 %fi20 to i64, !llfi_index !99
  %fi21 = call i64 @injectFault2(i64 98, i64 %71, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %72 = load float** %coeff, align 8, !llfi_index !100
  %fi22 = call float* @injectFault5(i64 99, float* %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %73 = getelementptr float* %fi22, i64 %fi21, !llfi_index !101
  %fi23 = call float* @injectFault5(i64 100, float* %73, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi64, float* %fi23, align 4, !llfi_index !102
  %74 = call i32 @rand() #7, !llfi_index !103
  %75 = srem i32 %74, 1000, !llfi_index !104
  %fi24 = call i32 @injectFault0(i64 103, i32 %75, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %76 = sitofp i32 %fi24 to float, !llfi_index !105
  %fi25 = call float @injectFault6(i64 104, float %76, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %77 = load i32* %i, align 4, !llfi_index !106
  %fi26 = call i32 @injectFault0(i64 105, i32 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %78 = zext i32 %fi26 to i64, !llfi_index !107
  %fi27 = call i64 @injectFault2(i64 106, i64 %78, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %79 = load float** %amp, align 8, !llfi_index !108
  %fi28 = call float* @injectFault5(i64 107, float* %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %80 = getelementptr float* %fi28, i64 %fi27, !llfi_index !109
  %fi29 = call float* @injectFault5(i64 108, float* %80, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi25, float* %fi29, align 4, !llfi_index !110
  br label %81, !llfi_index !111

; <label>:81                                      ; preds = %66
  %82 = load i32* %i, align 4, !llfi_index !112
  %fi30 = call i32 @injectFault0(i64 111, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %83 = add i32 %fi30, 1, !llfi_index !113
  %fi31 = call i32 @injectFault0(i64 112, i32 %83, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi31, i32* %i, align 4, !llfi_index !114
  br label %62, !llfi_index !115

; <label>:84                                      ; preds = %62
  store i32 0, i32* %i, align 4, !llfi_index !116
  br label %85, !llfi_index !117

; <label>:85                                      ; preds = %163, %84
  %86 = load i32* %i, align 4, !llfi_index !118
  %fi32 = call i32 @injectFault0(i64 117, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %87 = load i32* %MAXSIZE, align 4, !llfi_index !119
  %fi33 = call i32 @injectFault0(i64 118, i32 %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %88 = icmp ult i32 %fi32, %fi33, !llfi_index !120
  %fi86 = call i1 @injectFault1(i64 119, i1 %88, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi86, label %89, label %166, !llfi_index !121

; <label>:89                                      ; preds = %85
  %90 = load i32* %i, align 4, !llfi_index !122
  %fi87 = call i32 @injectFault0(i64 121, i32 %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %91 = zext i32 %fi87 to i64, !llfi_index !123
  %fi88 = call i64 @injectFault2(i64 122, i64 %91, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %92 = load float** %RealIn, align 8, !llfi_index !124
  %fi89 = call float* @injectFault5(i64 123, float* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %93 = getelementptr float* %fi89, i64 %fi88, !llfi_index !125
  %fi90 = call float* @injectFault5(i64 124, float* %93, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float 0.000000e+00, float* %fi90, align 4, !llfi_index !126
  store i32 0, i32* %j, align 4, !llfi_index !127
  br label %94, !llfi_index !128

; <label>:94                                      ; preds = %159, %89
  %95 = load i32* %j, align 4, !llfi_index !129
  %fi91 = call i32 @injectFault0(i64 128, i32 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %96 = load i32* %MAXWAVES, align 4, !llfi_index !130
  %fi92 = call i32 @injectFault0(i64 129, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %97 = icmp ult i32 %fi91, %fi92, !llfi_index !131
  %fi93 = call i1 @injectFault1(i64 130, i1 %97, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi93, label %98, label %162, !llfi_index !132

; <label>:98                                      ; preds = %94
  %99 = call i32 @rand() #7, !llfi_index !133
  %100 = srem i32 %99, 2, !llfi_index !134
  %fi94 = call i32 @injectFault0(i64 133, i32 %100, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %101 = icmp ne i32 %fi94, 0, !llfi_index !135
  %fi95 = call i1 @injectFault1(i64 134, i1 %101, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi95, label %102, label %128, !llfi_index !136

; <label>:102                                     ; preds = %98
  %103 = load i32* %j, align 4, !llfi_index !137
  %fi96 = call i32 @injectFault0(i64 136, i32 %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %104 = zext i32 %fi96 to i64, !llfi_index !138
  %fi97 = call i64 @injectFault2(i64 137, i64 %104, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %105 = load float** %coeff, align 8, !llfi_index !139
  %fi98 = call float* @injectFault5(i64 138, float* %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %106 = getelementptr float* %fi98, i64 %fi97, !llfi_index !140
  %fi99 = call float* @injectFault5(i64 139, float* %106, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %107 = load float* %fi99, align 4, !llfi_index !141
  %fi100 = call float @injectFault6(i64 140, float %107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %108 = fpext float %fi100 to double, !llfi_index !142
  %fi101 = call double @injectFault7(i64 141, double %108, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %109 = load i32* %j, align 4, !llfi_index !143
  %fi102 = call i32 @injectFault0(i64 142, i32 %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %110 = zext i32 %fi102 to i64, !llfi_index !144
  %fi103 = call i64 @injectFault2(i64 143, i64 %110, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %111 = load float** %amp, align 8, !llfi_index !145
  %fi104 = call float* @injectFault5(i64 144, float* %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %112 = getelementptr float* %fi104, i64 %fi103, !llfi_index !146
  %fi105 = call float* @injectFault5(i64 145, float* %112, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %113 = load float* %fi105, align 4, !llfi_index !147
  %fi106 = call float @injectFault6(i64 146, float %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %114 = load i32* %i, align 4, !llfi_index !148
  %fi107 = call i32 @injectFault0(i64 147, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %115 = uitofp i32 %fi107 to float, !llfi_index !149
  %fi108 = call float @injectFault6(i64 148, float %115, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %116 = fmul float %fi106, %fi108, !llfi_index !150
  %fi109 = call float @injectFault6(i64 149, float %116, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %117 = fpext float %fi109 to double, !llfi_index !151
  %fi110 = call double @injectFault7(i64 150, double %117, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %118 = call double @cos(double %fi110) #7, !llfi_index !152
  %119 = fmul double %fi101, %118, !llfi_index !153
  %fi111 = call double @injectFault7(i64 152, double %119, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %120 = load i32* %i, align 4, !llfi_index !154
  %fi112 = call i32 @injectFault0(i64 153, i32 %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %121 = zext i32 %fi112 to i64, !llfi_index !155
  %fi113 = call i64 @injectFault2(i64 154, i64 %121, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %122 = load float** %RealIn, align 8, !llfi_index !156
  %fi114 = call float* @injectFault5(i64 155, float* %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %123 = getelementptr float* %fi114, i64 %fi113, !llfi_index !157
  %fi115 = call float* @injectFault5(i64 156, float* %123, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %124 = load float* %fi115, align 4, !llfi_index !158
  %fi116 = call float @injectFault6(i64 157, float %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %125 = fpext float %fi116 to double, !llfi_index !159
  %fi117 = call double @injectFault7(i64 158, double %125, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %126 = fadd double %fi117, %fi111, !llfi_index !160
  %fi118 = call double @injectFault7(i64 159, double %126, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %127 = fptrunc double %fi118 to float, !llfi_index !161
  %fi119 = call float @injectFault6(i64 160, float %127, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi119, float* %fi115, align 4, !llfi_index !162
  br label %154, !llfi_index !163

; <label>:128                                     ; preds = %98
  %129 = load i32* %j, align 4, !llfi_index !164
  %fi57 = call i32 @injectFault0(i64 163, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %130 = zext i32 %fi57 to i64, !llfi_index !165
  %fi58 = call i64 @injectFault2(i64 164, i64 %130, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %131 = load float** %coeff, align 8, !llfi_index !166
  %fi59 = call float* @injectFault5(i64 165, float* %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %132 = getelementptr float* %fi59, i64 %fi58, !llfi_index !167
  %fi60 = call float* @injectFault5(i64 166, float* %132, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %133 = load float* %fi60, align 4, !llfi_index !168
  %fi61 = call float @injectFault6(i64 167, float %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %134 = fpext float %fi61 to double, !llfi_index !169
  %fi62 = call double @injectFault7(i64 168, double %134, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %135 = load i32* %j, align 4, !llfi_index !170
  %fi120 = call i32 @injectFault0(i64 169, i32 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %136 = zext i32 %fi120 to i64, !llfi_index !171
  %fi121 = call i64 @injectFault2(i64 170, i64 %136, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %137 = load float** %amp, align 8, !llfi_index !172
  %fi122 = call float* @injectFault5(i64 171, float* %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %138 = getelementptr float* %fi122, i64 %fi121, !llfi_index !173
  %fi123 = call float* @injectFault5(i64 172, float* %138, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %139 = load float* %fi123, align 4, !llfi_index !174
  %fi124 = call float @injectFault6(i64 173, float %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %140 = load i32* %i, align 4, !llfi_index !175
  %fi125 = call i32 @injectFault0(i64 174, i32 %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %141 = uitofp i32 %fi125 to float, !llfi_index !176
  %fi126 = call float @injectFault6(i64 175, float %141, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %142 = fmul float %fi124, %fi126, !llfi_index !177
  %fi127 = call float @injectFault6(i64 176, float %142, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %143 = fpext float %fi127 to double, !llfi_index !178
  %fi128 = call double @injectFault7(i64 177, double %143, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %144 = call double @sin(double %fi128) #7, !llfi_index !179
  %145 = fmul double %fi62, %144, !llfi_index !180
  %fi129 = call double @injectFault7(i64 179, double %145, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %146 = load i32* %i, align 4, !llfi_index !181
  %fi130 = call i32 @injectFault0(i64 180, i32 %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %147 = zext i32 %fi130 to i64, !llfi_index !182
  %fi131 = call i64 @injectFault2(i64 181, i64 %147, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %148 = load float** %RealIn, align 8, !llfi_index !183
  %fi132 = call float* @injectFault5(i64 182, float* %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %149 = getelementptr float* %fi132, i64 %fi131, !llfi_index !184
  %fi133 = call float* @injectFault5(i64 183, float* %149, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %150 = load float* %fi133, align 4, !llfi_index !185
  %fi134 = call float @injectFault6(i64 184, float %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %151 = fpext float %fi134 to double, !llfi_index !186
  %fi135 = call double @injectFault7(i64 185, double %151, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %152 = fadd double %fi135, %fi129, !llfi_index !187
  %fi136 = call double @injectFault7(i64 186, double %152, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %153 = fptrunc double %fi136 to float, !llfi_index !188
  %fi137 = call float @injectFault6(i64 187, float %153, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi137, float* %fi133, align 4, !llfi_index !189
  br label %154, !llfi_index !190

; <label>:154                                     ; preds = %128, %102
  %155 = load i32* %i, align 4, !llfi_index !191
  %fi138 = call i32 @injectFault0(i64 190, i32 %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %156 = zext i32 %fi138 to i64, !llfi_index !192
  %fi139 = call i64 @injectFault2(i64 191, i64 %156, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %157 = load float** %ImagIn, align 8, !llfi_index !193
  %fi140 = call float* @injectFault5(i64 192, float* %157, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %158 = getelementptr float* %fi140, i64 %fi139, !llfi_index !194
  %fi65 = call float* @injectFault5(i64 193, float* %158, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float 0.000000e+00, float* %fi65, align 4, !llfi_index !195
  br label %159, !llfi_index !196

; <label>:159                                     ; preds = %154
  %160 = load i32* %j, align 4, !llfi_index !197
  %fi66 = call i32 @injectFault0(i64 196, i32 %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %161 = add i32 %fi66, 1, !llfi_index !198
  %fi67 = call i32 @injectFault0(i64 197, i32 %161, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi67, i32* %j, align 4, !llfi_index !199
  br label %94, !llfi_index !200

; <label>:162                                     ; preds = %94
  br label %163, !llfi_index !201

; <label>:163                                     ; preds = %162
  %164 = load i32* %i, align 4, !llfi_index !202
  %fi68 = call i32 @injectFault0(i64 201, i32 %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %165 = add i32 %fi68, 1, !llfi_index !203
  %fi69 = call i32 @injectFault0(i64 202, i32 %165, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi69, i32* %i, align 4, !llfi_index !204
  br label %85, !llfi_index !205

; <label>:166                                     ; preds = %85
  %167 = load i32* %MAXSIZE, align 4, !llfi_index !206
  %fi70 = call i32 @injectFault0(i64 205, i32 %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %168 = load i32* %invfft, align 4, !llfi_index !207
  %fi71 = call i32 @injectFault0(i64 206, i32 %168, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %169 = load float** %RealIn, align 8, !llfi_index !208
  %fi72 = call float* @injectFault5(i64 207, float* %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %170 = load float** %ImagIn, align 8, !llfi_index !209
  %fi73 = call float* @injectFault5(i64 208, float* %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %171 = load float** %RealOut, align 8, !llfi_index !210
  %fi74 = call float* @injectFault5(i64 209, float* %171, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %172 = load float** %ImagOut, align 8, !llfi_index !211
  %fi75 = call float* @injectFault5(i64 210, float* %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %173 = call i32 (i32, i32, float*, float*, float*, float*, ...)* bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %fi70, i32 %fi71, float* %fi72, float* %fi73, float* %fi74, float* %fi75), !llfi_index !212
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0)), !llfi_index !213
  store i32 0, i32* %i, align 4, !llfi_index !214
  br label %175, !llfi_index !215

; <label>:175                                     ; preds = %187, %166
  %176 = load i32* %i, align 4, !llfi_index !216
  %fi76 = call i32 @injectFault0(i64 215, i32 %176, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %177 = load i32* %MAXSIZE, align 4, !llfi_index !217
  %fi77 = call i32 @injectFault0(i64 216, i32 %177, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %178 = icmp ult i32 %fi76, %fi77, !llfi_index !218
  %fi78 = call i1 @injectFault1(i64 217, i1 %178, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi78, label %179, label %190, !llfi_index !219

; <label>:179                                     ; preds = %175
  %180 = load i32* %i, align 4, !llfi_index !220
  %fi79 = call i32 @injectFault0(i64 219, i32 %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %181 = zext i32 %fi79 to i64, !llfi_index !221
  %fi80 = call i64 @injectFault2(i64 220, i64 %181, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %182 = load float** %RealOut, align 8, !llfi_index !222
  %fi81 = call float* @injectFault5(i64 221, float* %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %183 = getelementptr float* %fi81, i64 %fi80, !llfi_index !223
  %fi82 = call float* @injectFault5(i64 222, float* %183, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %184 = load float* %fi82, align 4, !llfi_index !224
  %fi83 = call float @injectFault6(i64 223, float %184, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %185 = fpext float %fi83 to double, !llfi_index !225
  %fi84 = call double @injectFault7(i64 224, double %185, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), double %fi84), !llfi_index !226
  br label %187, !llfi_index !227

; <label>:187                                     ; preds = %179
  %188 = load i32* %i, align 4, !llfi_index !228
  %fi85 = call i32 @injectFault0(i64 227, i32 %188, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %189 = add i32 %fi85, 1, !llfi_index !229
  %fi141 = call i32 @injectFault0(i64 228, i32 %189, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi141, i32* %i, align 4, !llfi_index !230
  br label %175, !llfi_index !231

; <label>:190                                     ; preds = %175
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)), !llfi_index !232
  %192 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0)), !llfi_index !233
  store i32 0, i32* %i, align 4, !llfi_index !234
  br label %193, !llfi_index !235

; <label>:193                                     ; preds = %205, %190
  %194 = load i32* %i, align 4, !llfi_index !236
  %fi142 = call i32 @injectFault0(i64 235, i32 %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %195 = load i32* %MAXSIZE, align 4, !llfi_index !237
  %fi143 = call i32 @injectFault0(i64 236, i32 %195, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %196 = icmp ult i32 %fi142, %fi143, !llfi_index !238
  %fi144 = call i1 @injectFault1(i64 237, i1 %196, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi144, label %197, label %208, !llfi_index !239

; <label>:197                                     ; preds = %193
  %198 = load i32* %i, align 4, !llfi_index !240
  %fi145 = call i32 @injectFault0(i64 239, i32 %198, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %199 = zext i32 %fi145 to i64, !llfi_index !241
  %fi146 = call i64 @injectFault2(i64 240, i64 %199, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %200 = load float** %ImagOut, align 8, !llfi_index !242
  %fi147 = call float* @injectFault5(i64 241, float* %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %201 = getelementptr float* %fi147, i64 %fi146, !llfi_index !243
  %fi148 = call float* @injectFault5(i64 242, float* %201, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %202 = load float* %fi148, align 4, !llfi_index !244
  %fi149 = call float @injectFault6(i64 243, float %202, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %203 = fpext float %fi149 to double, !llfi_index !245
  %fi150 = call double @injectFault7(i64 244, double %203, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %204 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), double %fi150), !llfi_index !246
  br label %205, !llfi_index !247

; <label>:205                                     ; preds = %197
  %206 = load i32* %i, align 4, !llfi_index !248
  %fi151 = call i32 @injectFault0(i64 247, i32 %206, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %207 = add i32 %fi151, 1, !llfi_index !249
  %fi152 = call i32 @injectFault0(i64 248, i32 %207, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi152, i32* %i, align 4, !llfi_index !250
  br label %193, !llfi_index !251

; <label>:208                                     ; preds = %193
  %209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)), !llfi_index !252
  %210 = load float** %RealIn, align 8, !llfi_index !253
  %fi153 = call float* @injectFault5(i64 252, float* %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %211 = bitcast float* %fi153 to i8*, !llfi_index !254
  %fi154 = call i8* @injectFault3(i64 253, i8* %211, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi154) #7, !llfi_index !255
  %212 = load float** %ImagIn, align 8, !llfi_index !256
  %fi155 = call float* @injectFault5(i64 255, float* %212, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %213 = bitcast float* %fi155 to i8*, !llfi_index !257
  %fi156 = call i8* @injectFault3(i64 256, i8* %213, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi156) #7, !llfi_index !258
  %214 = load float** %RealOut, align 8, !llfi_index !259
  %fi157 = call float* @injectFault5(i64 258, float* %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %215 = bitcast float* %fi157 to i8*, !llfi_index !260
  %fi158 = call i8* @injectFault3(i64 259, i8* %215, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi158) #7, !llfi_index !261
  %216 = load float** %ImagOut, align 8, !llfi_index !262
  %fi159 = call float* @injectFault5(i64 261, float* %216, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %217 = bitcast float* %fi159 to i8*, !llfi_index !263
  %fi160 = call i8* @injectFault3(i64 262, i8* %217, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi160) #7, !llfi_index !264
  %218 = load float** %coeff, align 8, !llfi_index !265
  %fi161 = call float* @injectFault5(i64 264, float* %218, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %219 = bitcast float* %fi161 to i8*, !llfi_index !266
  %fi162 = call i8* @injectFault3(i64 265, i8* %219, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi162) #7, !llfi_index !267
  %220 = load float** %amp, align 8, !llfi_index !268
  %fi163 = call float* @injectFault5(i64 267, float* %220, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %221 = bitcast float* %fi163 to i8*, !llfi_index !269
  %fi164 = call i8* @injectFault3(i64 268, i8* %221, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @free(i8* %fi164) #7, !llfi_index !270
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !271
  unreachable, !llfi_index !272
                                                  ; No predecessors!
  %223 = load i32* %1, !llfi_index !273
  %fi165 = call i32 @injectFault0(i64 272, i32 %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @postInjections()
  ret i32 %fi165, !llfi_index !274
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @IsPowerOfTwo(i32 %x) #0 {
  %1 = alloca i32, align 4, !llfi_index !275
  %2 = alloca i32, align 4, !llfi_index !276
  store i32 %x, i32* %2, align 4, !llfi_index !277
  %3 = load i32* %2, align 4, !llfi_index !278
  %fi = call i32 @injectFault0(i64 277, i32 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %4 = icmp ult i32 %fi, 2, !llfi_index !279
  %fi1 = call i1 @injectFault1(i64 278, i1 %4, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi1, label %5, label %6, !llfi_index !280

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1, !llfi_index !281
  br label %14, !llfi_index !282

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !llfi_index !283
  %fi2 = call i32 @injectFault0(i64 282, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %8 = load i32* %2, align 4, !llfi_index !284
  %fi3 = call i32 @injectFault0(i64 283, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %9 = sub i32 %fi3, 1, !llfi_index !285
  %fi4 = call i32 @injectFault0(i64 284, i32 %9, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %10 = and i32 %fi2, %fi4, !llfi_index !286
  %fi5 = call i32 @injectFault0(i64 285, i32 %10, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %11 = icmp ne i32 %fi5, 0, !llfi_index !287
  %fi6 = call i1 @injectFault1(i64 286, i1 %11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi6, label %12, label %13, !llfi_index !288

; <label>:12                                      ; preds = %6
  store i32 0, i32* %1, !llfi_index !289
  br label %14, !llfi_index !290

; <label>:13                                      ; preds = %6
  store i32 1, i32* %1, !llfi_index !291
  br label %14, !llfi_index !292

; <label>:14                                      ; preds = %13, %12, %5
  %15 = load i32* %1, !llfi_index !293
  %fi7 = call i32 @injectFault0(i64 292, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  ret i32 %fi7, !llfi_index !294
}

; Function Attrs: nounwind uwtable
define i32 @NumberOfBitsNeeded(i32 %PowerOfTwo) #0 {
  %1 = alloca i32, align 4, !llfi_index !295
  %i = alloca i32, align 4, !llfi_index !296
  store i32 %PowerOfTwo, i32* %1, align 4, !llfi_index !297
  %2 = load i32* %1, align 4, !llfi_index !298
  %fi = call i32 @injectFault0(i64 297, i32 %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %3 = icmp ult i32 %fi, 2, !llfi_index !299
  %fi1 = call i1 @injectFault1(i64 298, i1 %3, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi1, label %4, label %8, !llfi_index !300

; <label>:4                                       ; preds = %0
  %5 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !301
  %fi2 = call %struct._IO_FILE* @injectFault8(i64 300, %struct._IO_FILE* %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %6 = load i32* %1, align 4, !llfi_index !302
  %fi3 = call i32 @injectFault0(i64 301, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi2, i8* getelementptr inbounds ([73 x i8]* @.str9, i32 0, i32 0), i32 %fi3), !llfi_index !303
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !304
  unreachable, !llfi_index !305

; <label>:8                                       ; preds = %0
  store i32 0, i32* %i, align 4, !llfi_index !306
  br label %9, !llfi_index !307

; <label>:9                                       ; preds = %18, %8
  %10 = load i32* %1, align 4, !llfi_index !308
  %fi4 = call i32 @injectFault0(i64 307, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %11 = load i32* %i, align 4, !llfi_index !309
  %fi5 = call i32 @injectFault0(i64 308, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %12 = shl i32 1, %fi5, !llfi_index !310
  %fi6 = call i32 @injectFault0(i64 309, i32 %12, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %13 = and i32 %fi4, %fi6, !llfi_index !311
  %fi7 = call i32 @injectFault0(i64 310, i32 %13, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %14 = icmp ne i32 %fi7, 0, !llfi_index !312
  %fi8 = call i1 @injectFault1(i64 311, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi8, label %15, label %17, !llfi_index !313

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4, !llfi_index !314
  %fi9 = call i32 @injectFault0(i64 313, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  ret i32 %fi9, !llfi_index !315

; <label>:17                                      ; preds = %9
  br label %18, !llfi_index !316

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4, !llfi_index !317
  %fi10 = call i32 @injectFault0(i64 316, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %20 = add i32 %fi10, 1, !llfi_index !318
  %fi11 = call i32 @injectFault0(i64 317, i32 %20, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi11, i32* %i, align 4, !llfi_index !319
  br label %9, !llfi_index !320
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @ReverseBits(i32 %index, i32 %NumBits) #0 {
  %1 = alloca i32, align 4, !llfi_index !321
  %2 = alloca i32, align 4, !llfi_index !322
  %i = alloca i32, align 4, !llfi_index !323
  %rev = alloca i32, align 4, !llfi_index !324
  store i32 %index, i32* %1, align 4, !llfi_index !325
  store i32 %NumBits, i32* %2, align 4, !llfi_index !326
  store i32 0, i32* %rev, align 4, !llfi_index !327
  store i32 0, i32* %i, align 4, !llfi_index !328
  br label %3, !llfi_index !329

; <label>:3                                       ; preds = %15, %0
  %4 = load i32* %i, align 4, !llfi_index !330
  %fi = call i32 @injectFault0(i64 329, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %5 = load i32* %2, align 4, !llfi_index !331
  %fi1 = call i32 @injectFault0(i64 330, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %6 = icmp ult i32 %fi, %fi1, !llfi_index !332
  %fi2 = call i1 @injectFault1(i64 331, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi2, label %7, label %18, !llfi_index !333

; <label>:7                                       ; preds = %3
  %8 = load i32* %rev, align 4, !llfi_index !334
  %fi3 = call i32 @injectFault0(i64 333, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %9 = shl i32 %fi3, 1, !llfi_index !335
  %fi5 = call i32 @injectFault0(i64 334, i32 %9, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %10 = load i32* %1, align 4, !llfi_index !336
  %fi6 = call i32 @injectFault0(i64 335, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %11 = and i32 %fi6, 1, !llfi_index !337
  %fi7 = call i32 @injectFault0(i64 336, i32 %11, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %12 = or i32 %fi5, %fi7, !llfi_index !338
  %fi8 = call i32 @injectFault0(i64 337, i32 %12, i32 24, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8]* @or_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi8, i32* %rev, align 4, !llfi_index !339
  %13 = load i32* %1, align 4, !llfi_index !340
  %fi9 = call i32 @injectFault0(i64 339, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %14 = lshr i32 %fi9, 1, !llfi_index !341
  %fi10 = call i32 @injectFault0(i64 340, i32 %14, i32 21, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @lshr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi10, i32* %1, align 4, !llfi_index !342
  br label %15, !llfi_index !343

; <label>:15                                      ; preds = %7
  %16 = load i32* %i, align 4, !llfi_index !344
  %fi11 = call i32 @injectFault0(i64 343, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %17 = add i32 %fi11, 1, !llfi_index !345
  %fi4 = call i32 @injectFault0(i64 344, i32 %17, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi4, i32* %i, align 4, !llfi_index !346
  br label %3, !llfi_index !347

; <label>:18                                      ; preds = %3
  %19 = load i32* %rev, align 4, !llfi_index !348
  %fi12 = call i32 @injectFault0(i64 347, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  ret i32 %fi12, !llfi_index !349
}

; Function Attrs: nounwind uwtable
define double @Index_to_frequency(i32 %NumSamples, i32 %Index) #0 {
  %1 = alloca double, align 8, !llfi_index !350
  %2 = alloca i32, align 4, !llfi_index !351
  %3 = alloca i32, align 4, !llfi_index !352
  store i32 %NumSamples, i32* %2, align 4, !llfi_index !353
  store i32 %Index, i32* %3, align 4, !llfi_index !354
  %4 = load i32* %3, align 4, !llfi_index !355
  %fi = call i32 @injectFault0(i64 354, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %5 = load i32* %2, align 4, !llfi_index !356
  %fi1 = call i32 @injectFault0(i64 355, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %6 = icmp uge i32 %fi, %fi1, !llfi_index !357
  %fi2 = call i1 @injectFault1(i64 356, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi2, label %7, label %8, !llfi_index !358

; <label>:7                                       ; preds = %0
  store double 0.000000e+00, double* %1, !llfi_index !359
  br label %29, !llfi_index !360

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4, !llfi_index !361
  %fi4 = call i32 @injectFault0(i64 360, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %10 = load i32* %2, align 4, !llfi_index !362
  %fi5 = call i32 @injectFault0(i64 361, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %11 = udiv i32 %fi5, 2, !llfi_index !363
  %fi6 = call i32 @injectFault0(i64 362, i32 %11, i32 14, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @udiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %12 = icmp ule i32 %fi4, %fi6, !llfi_index !364
  %fi7 = call i1 @injectFault1(i64 363, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi7, label %13, label %19, !llfi_index !365

; <label>:13                                      ; preds = %8
  %14 = load i32* %3, align 4, !llfi_index !366
  %fi8 = call i32 @injectFault0(i64 365, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %15 = uitofp i32 %fi8 to double, !llfi_index !367
  %fi9 = call double @injectFault7(i64 366, double %15, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %16 = load i32* %2, align 4, !llfi_index !368
  %fi10 = call i32 @injectFault0(i64 367, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %17 = uitofp i32 %fi10 to double, !llfi_index !369
  %fi3 = call double @injectFault7(i64 368, double %17, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %18 = fdiv double %fi9, %fi3, !llfi_index !370
  %fi11 = call double @injectFault7(i64 369, double %18, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi11, double* %1, !llfi_index !371
  br label %29, !llfi_index !372

; <label>:19                                      ; preds = %8
  br label %20, !llfi_index !373

; <label>:20                                      ; preds = %19
  %21 = load i32* %2, align 4, !llfi_index !374
  %fi12 = call i32 @injectFault0(i64 373, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %22 = load i32* %3, align 4, !llfi_index !375
  %fi13 = call i32 @injectFault0(i64 374, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %23 = sub i32 %fi12, %fi13, !llfi_index !376
  %fi14 = call i32 @injectFault0(i64 375, i32 %23, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %24 = uitofp i32 %fi14 to double, !llfi_index !377
  %fi15 = call double @injectFault7(i64 376, double %24, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %25 = fsub double -0.000000e+00, %fi15, !llfi_index !378
  %fi16 = call double @injectFault7(i64 377, double %25, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %26 = load i32* %2, align 4, !llfi_index !379
  %fi17 = call i32 @injectFault0(i64 378, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %27 = uitofp i32 %fi17 to double, !llfi_index !380
  %fi18 = call double @injectFault7(i64 379, double %27, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %28 = fdiv double %fi16, %fi18, !llfi_index !381
  %fi19 = call double @injectFault7(i64 380, double %28, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi19, double* %1, !llfi_index !382
  br label %29, !llfi_index !383

; <label>:29                                      ; preds = %20, %13, %7
  %30 = load double* %1, !llfi_index !384
  %fi20 = call double @injectFault7(i64 383, double %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  ret double %fi20, !llfi_index !385
}

; Function Attrs: nounwind uwtable
define void @fft_float(i32 %NumSamples, i32 %InverseTransform, float* %RealIn, float* %ImagIn, float* %RealOut, float* %ImagOut) #0 {
  %1 = alloca i32, align 4, !llfi_index !386
  %2 = alloca i32, align 4, !llfi_index !387
  %3 = alloca float*, align 8, !llfi_index !388
  %4 = alloca float*, align 8, !llfi_index !389
  %5 = alloca float*, align 8, !llfi_index !390
  %6 = alloca float*, align 8, !llfi_index !391
  %NumBits = alloca i32, align 4, !llfi_index !392
  %i = alloca i32, align 4, !llfi_index !393
  %j = alloca i32, align 4, !llfi_index !394
  %k = alloca i32, align 4, !llfi_index !395
  %n = alloca i32, align 4, !llfi_index !396
  %BlockSize = alloca i32, align 4, !llfi_index !397
  %BlockEnd = alloca i32, align 4, !llfi_index !398
  %angle_numerator = alloca double, align 8, !llfi_index !399
  %tr = alloca double, align 8, !llfi_index !400
  %ti = alloca double, align 8, !llfi_index !401
  %delta_angle = alloca double, align 8, !llfi_index !402
  %sm2 = alloca double, align 8, !llfi_index !403
  %sm1 = alloca double, align 8, !llfi_index !404
  %cm2 = alloca double, align 8, !llfi_index !405
  %cm1 = alloca double, align 8, !llfi_index !406
  %w = alloca double, align 8, !llfi_index !407
  %ar = alloca [3 x double], align 16, !llfi_index !408
  %ai = alloca [3 x double], align 16, !llfi_index !409
  %temp = alloca double, align 8, !llfi_index !410
  %denom = alloca double, align 8, !llfi_index !411
  store i32 %NumSamples, i32* %1, align 4, !llfi_index !412
  store i32 %InverseTransform, i32* %2, align 4, !llfi_index !413
  store float* %RealIn, float** %3, align 8, !llfi_index !414
  store float* %ImagIn, float** %4, align 8, !llfi_index !415
  store float* %RealOut, float** %5, align 8, !llfi_index !416
  store float* %ImagOut, float** %6, align 8, !llfi_index !417
  store double 0x401921FB54442D18, double* %angle_numerator, align 8, !llfi_index !418
  %7 = load i32* %1, align 4, !llfi_index !419
  %fi = call i32 @injectFault0(i64 418, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %8 = call i32 @IsPowerOfTwo(i32 %fi), !llfi_index !420
  %9 = icmp ne i32 %8, 0, !llfi_index !421
  %fi1 = call i1 @injectFault1(i64 420, i1 %9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi1, label %14, label %10, !llfi_index !422

; <label>:10                                      ; preds = %0
  %11 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !423
  %fi2 = call %struct._IO_FILE* @injectFault8(i64 422, %struct._IO_FILE* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %12 = load i32* %1, align 4, !llfi_index !424
  %fi3 = call i32 @injectFault0(i64 423, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi2, i8* getelementptr inbounds ([52 x i8]* @.str10, i32 0, i32 0), i32 %fi3), !llfi_index !425
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !426
  unreachable, !llfi_index !427

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4, !llfi_index !428
  %fi4 = call i32 @injectFault0(i64 427, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %16 = icmp ne i32 %fi4, 0, !llfi_index !429
  %fi5 = call i1 @injectFault1(i64 428, i1 %16, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi5, label %17, label %20, !llfi_index !430

; <label>:17                                      ; preds = %14
  %18 = load double* %angle_numerator, align 8, !llfi_index !431
  %fi6 = call double @injectFault7(i64 430, double %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %19 = fsub double -0.000000e+00, %fi6, !llfi_index !432
  %fi7 = call double @injectFault7(i64 431, double %19, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi7, double* %angle_numerator, align 8, !llfi_index !433
  br label %20, !llfi_index !434

; <label>:20                                      ; preds = %17, %14
  %21 = load float** %3, align 8, !llfi_index !435
  %fi8 = call float* @injectFault5(i64 434, float* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %22 = bitcast float* %fi8 to i8*, !llfi_index !436
  %fi9 = call i8* @injectFault3(i64 435, i8* %22, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @CheckPointer(i8* %fi9, i8* getelementptr inbounds ([7 x i8]* @.str111, i32 0, i32 0)), !llfi_index !437
  %23 = load float** %5, align 8, !llfi_index !438
  %fi10 = call float* @injectFault5(i64 437, float* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %24 = bitcast float* %fi10 to i8*, !llfi_index !439
  %fi11 = call i8* @injectFault3(i64 438, i8* %24, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @CheckPointer(i8* %fi11, i8* getelementptr inbounds ([8 x i8]* @.str212, i32 0, i32 0)), !llfi_index !440
  %25 = load float** %6, align 8, !llfi_index !441
  %fi12 = call float* @injectFault5(i64 440, float* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %26 = bitcast float* %fi12 to i8*, !llfi_index !442
  %fi13 = call i8* @injectFault3(i64 441, i8* %26, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !20
  call void @CheckPointer(i8* %fi13, i8* getelementptr inbounds ([8 x i8]* @.str313, i32 0, i32 0)), !llfi_index !443
  %27 = load i32* %1, align 4, !llfi_index !444
  %fi14 = call i32 @injectFault0(i64 443, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %28 = call i32 @NumberOfBitsNeeded(i32 %fi14), !llfi_index !445
  store i32 %28, i32* %NumBits, align 4, !llfi_index !446
  store i32 0, i32* %i, align 4, !llfi_index !447
  br label %29, !llfi_index !448

; <label>:29                                      ; preds = %63, %20
  %30 = load i32* %i, align 4, !llfi_index !449
  %fi15 = call i32 @injectFault0(i64 448, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %31 = load i32* %1, align 4, !llfi_index !450
  %fi16 = call i32 @injectFault0(i64 449, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %32 = icmp ult i32 %fi15, %fi16, !llfi_index !451
  %fi17 = call i1 @injectFault1(i64 450, i1 %32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi17, label %33, label %66, !llfi_index !452

; <label>:33                                      ; preds = %29
  %34 = load i32* %i, align 4, !llfi_index !453
  %fi19 = call i32 @injectFault0(i64 452, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %35 = load i32* %NumBits, align 4, !llfi_index !454
  %fi20 = call i32 @injectFault0(i64 453, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %36 = call i32 @ReverseBits(i32 %fi19, i32 %fi20), !llfi_index !455
  store i32 %36, i32* %j, align 4, !llfi_index !456
  %37 = load i32* %i, align 4, !llfi_index !457
  %fi21 = call i32 @injectFault0(i64 456, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %38 = zext i32 %fi21 to i64, !llfi_index !458
  %fi22 = call i64 @injectFault2(i64 457, i64 %38, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %39 = load float** %3, align 8, !llfi_index !459
  %fi23 = call float* @injectFault5(i64 458, float* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %40 = getelementptr float* %fi23, i64 %fi22, !llfi_index !460
  %fi24 = call float* @injectFault5(i64 459, float* %40, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %41 = load float* %fi24, align 4, !llfi_index !461
  %fi25 = call float @injectFault6(i64 460, float %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %42 = load i32* %j, align 4, !llfi_index !462
  %fi26 = call i32 @injectFault0(i64 461, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %43 = zext i32 %fi26 to i64, !llfi_index !463
  %fi27 = call i64 @injectFault2(i64 462, i64 %43, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %44 = load float** %5, align 8, !llfi_index !464
  %fi28 = call float* @injectFault5(i64 463, float* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %45 = getelementptr float* %fi28, i64 %fi27, !llfi_index !465
  %fi29 = call float* @injectFault5(i64 464, float* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi25, float* %fi29, align 4, !llfi_index !466
  %46 = load float** %4, align 8, !llfi_index !467
  %fi30 = call float* @injectFault5(i64 466, float* %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %47 = icmp eq float* %fi30, null, !llfi_index !468
  %fi31 = call i1 @injectFault1(i64 467, i1 %47, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi31, label %48, label %49, !llfi_index !469

; <label>:48                                      ; preds = %33
  br label %56, !llfi_index !470

; <label>:49                                      ; preds = %33
  %50 = load i32* %i, align 4, !llfi_index !471
  %fi32 = call i32 @injectFault0(i64 470, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %51 = zext i32 %fi32 to i64, !llfi_index !472
  %fi33 = call i64 @injectFault2(i64 471, i64 %51, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %52 = load float** %4, align 8, !llfi_index !473
  %fi34 = call float* @injectFault5(i64 472, float* %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %53 = getelementptr float* %fi34, i64 %fi33, !llfi_index !474
  %fi35 = call float* @injectFault5(i64 473, float* %53, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %54 = load float* %fi35, align 4, !llfi_index !475
  %fi36 = call float @injectFault6(i64 474, float %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %55 = fpext float %fi36 to double, !llfi_index !476
  %fi37 = call double @injectFault7(i64 475, double %55, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br label %56, !llfi_index !477

; <label>:56                                      ; preds = %49, %48
  %57 = phi double [ 0.000000e+00, %48 ], [ %fi37, %49 ], !llfi_index !478
  %58 = fptrunc double %57 to float, !llfi_index !479
  %fi38 = call float @injectFault6(i64 478, float %58, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %59 = load i32* %j, align 4, !llfi_index !480
  %fi39 = call i32 @injectFault0(i64 479, i32 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %60 = zext i32 %fi39 to i64, !llfi_index !481
  %fi40 = call i64 @injectFault2(i64 480, i64 %60, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %61 = load float** %6, align 8, !llfi_index !482
  %fi41 = call float* @injectFault5(i64 481, float* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %62 = getelementptr float* %fi41, i64 %fi40, !llfi_index !483
  %fi42 = call float* @injectFault5(i64 482, float* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi38, float* %fi42, align 4, !llfi_index !484
  br label %63, !llfi_index !485

; <label>:63                                      ; preds = %56
  %64 = load i32* %i, align 4, !llfi_index !486
  %fi43 = call i32 @injectFault0(i64 485, i32 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %65 = add i32 %fi43, 1, !llfi_index !487
  %fi18 = call i32 @injectFault0(i64 486, i32 %65, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi18, i32* %i, align 4, !llfi_index !488
  br label %29, !llfi_index !489

; <label>:66                                      ; preds = %29
  store i32 1, i32* %BlockEnd, align 4, !llfi_index !490
  store i32 2, i32* %BlockSize, align 4, !llfi_index !491
  br label %67, !llfi_index !492

; <label>:67                                      ; preds = %234, %66
  %68 = load i32* %BlockSize, align 4, !llfi_index !493
  %fi48 = call i32 @injectFault0(i64 492, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %69 = load i32* %1, align 4, !llfi_index !494
  %fi49 = call i32 @injectFault0(i64 493, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %70 = icmp ule i32 %fi48, %fi49, !llfi_index !495
  %fi50 = call i1 @injectFault1(i64 494, i1 %70, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi50, label %71, label %237, !llfi_index !496

; <label>:71                                      ; preds = %67
  %72 = load double* %angle_numerator, align 8, !llfi_index !497
  %fi51 = call double @injectFault7(i64 496, double %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %73 = load i32* %BlockSize, align 4, !llfi_index !498
  %fi52 = call i32 @injectFault0(i64 497, i32 %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %74 = uitofp i32 %fi52 to double, !llfi_index !499
  %fi53 = call double @injectFault7(i64 498, double %74, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %75 = fdiv double %fi51, %fi53, !llfi_index !500
  %fi54 = call double @injectFault7(i64 499, double %75, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi54, double* %delta_angle, align 8, !llfi_index !501
  %76 = load double* %delta_angle, align 8, !llfi_index !502
  %fi55 = call double @injectFault7(i64 501, double %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %77 = fmul double -2.000000e+00, %fi55, !llfi_index !503
  %fi56 = call double @injectFault7(i64 502, double %77, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %78 = call double @sin(double %fi56) #7, !llfi_index !504
  store double %78, double* %sm2, align 8, !llfi_index !505
  %79 = load double* %delta_angle, align 8, !llfi_index !506
  %fi57 = call double @injectFault7(i64 505, double %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %80 = fsub double -0.000000e+00, %fi57, !llfi_index !507
  %fi58 = call double @injectFault7(i64 506, double %80, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %81 = call double @sin(double %fi58) #7, !llfi_index !508
  store double %81, double* %sm1, align 8, !llfi_index !509
  %82 = load double* %delta_angle, align 8, !llfi_index !510
  %fi59 = call double @injectFault7(i64 509, double %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %83 = fmul double -2.000000e+00, %fi59, !llfi_index !511
  %fi60 = call double @injectFault7(i64 510, double %83, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %84 = call double @cos(double %fi60) #7, !llfi_index !512
  store double %84, double* %cm2, align 8, !llfi_index !513
  %85 = load double* %delta_angle, align 8, !llfi_index !514
  %fi61 = call double @injectFault7(i64 513, double %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %86 = fsub double -0.000000e+00, %fi61, !llfi_index !515
  %fi62 = call double @injectFault7(i64 514, double %86, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %87 = call double @cos(double %fi62) #7, !llfi_index !516
  store double %87, double* %cm1, align 8, !llfi_index !517
  %88 = load double* %cm1, align 8, !llfi_index !518
  %fi63 = call double @injectFault7(i64 517, double %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %89 = fmul double 2.000000e+00, %fi63, !llfi_index !519
  %fi64 = call double @injectFault7(i64 518, double %89, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi64, double* %w, align 8, !llfi_index !520
  store i32 0, i32* %i, align 4, !llfi_index !521
  br label %90, !llfi_index !522

; <label>:90                                      ; preds = %228, %71
  %91 = load i32* %i, align 4, !llfi_index !523
  %fi65 = call i32 @injectFault0(i64 522, i32 %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %92 = load i32* %1, align 4, !llfi_index !524
  %fi66 = call i32 @injectFault0(i64 523, i32 %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %93 = icmp ult i32 %fi65, %fi66, !llfi_index !525
  %fi67 = call i1 @injectFault1(i64 524, i1 %93, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi67, label %94, label %232, !llfi_index !526

; <label>:94                                      ; preds = %90
  %95 = load double* %cm2, align 8, !llfi_index !527
  %fi68 = call double @injectFault7(i64 526, double %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %96 = getelementptr [3 x double]* %ar, i32 0, i64 2, !llfi_index !528
  %fi69 = call double* @injectFault9(i64 527, double* %96, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi68, double* %fi69, align 8, !llfi_index !529
  %97 = load double* %cm1, align 8, !llfi_index !530
  %fi70 = call double @injectFault7(i64 529, double %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %98 = getelementptr [3 x double]* %ar, i32 0, i64 1, !llfi_index !531
  %fi71 = call double* @injectFault9(i64 530, double* %98, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi70, double* %fi71, align 8, !llfi_index !532
  %99 = load double* %sm2, align 8, !llfi_index !533
  %fi72 = call double @injectFault7(i64 532, double %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %100 = getelementptr [3 x double]* %ai, i32 0, i64 2, !llfi_index !534
  %fi73 = call double* @injectFault9(i64 533, double* %100, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi72, double* %fi73, align 8, !llfi_index !535
  %101 = load double* %sm1, align 8, !llfi_index !536
  %fi74 = call double @injectFault7(i64 535, double %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %102 = getelementptr [3 x double]* %ai, i32 0, i64 1, !llfi_index !537
  %fi75 = call double* @injectFault9(i64 536, double* %102, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi74, double* %fi75, align 8, !llfi_index !538
  %103 = load i32* %i, align 4, !llfi_index !539
  %fi76 = call i32 @injectFault0(i64 538, i32 %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi76, i32* %j, align 4, !llfi_index !540
  store i32 0, i32* %n, align 4, !llfi_index !541
  br label %104, !llfi_index !542

; <label>:104                                     ; preds = %222, %94
  %105 = load i32* %n, align 4, !llfi_index !543
  %fi77 = call i32 @injectFault0(i64 542, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %106 = load i32* %BlockEnd, align 4, !llfi_index !544
  %fi78 = call i32 @injectFault0(i64 543, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %107 = icmp ult i32 %fi77, %fi78, !llfi_index !545
  %fi79 = call i1 @injectFault1(i64 544, i1 %107, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi79, label %108, label %227, !llfi_index !546

; <label>:108                                     ; preds = %104
  %109 = load double* %w, align 8, !llfi_index !547
  %fi80 = call double @injectFault7(i64 546, double %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %110 = getelementptr [3 x double]* %ar, i32 0, i64 1, !llfi_index !548
  %fi81 = call double* @injectFault9(i64 547, double* %110, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %111 = load double* %fi81, align 8, !llfi_index !549
  %fi82 = call double @injectFault7(i64 548, double %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %112 = fmul double %fi80, %fi82, !llfi_index !550
  %fi83 = call double @injectFault7(i64 549, double %112, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %113 = getelementptr [3 x double]* %ar, i32 0, i64 2, !llfi_index !551
  %fi84 = call double* @injectFault9(i64 550, double* %113, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %114 = load double* %fi84, align 8, !llfi_index !552
  %fi85 = call double @injectFault7(i64 551, double %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %115 = fsub double %fi83, %fi85, !llfi_index !553
  %fi86 = call double @injectFault7(i64 552, double %115, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %116 = getelementptr [3 x double]* %ar, i32 0, i64 0, !llfi_index !554
  %fi87 = call double* @injectFault9(i64 553, double* %116, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi86, double* %fi87, align 8, !llfi_index !555
  %117 = getelementptr [3 x double]* %ar, i32 0, i64 1, !llfi_index !556
  %fi88 = call double* @injectFault9(i64 555, double* %117, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %118 = load double* %fi88, align 8, !llfi_index !557
  %fi89 = call double @injectFault7(i64 556, double %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %119 = getelementptr [3 x double]* %ar, i32 0, i64 2, !llfi_index !558
  %fi90 = call double* @injectFault9(i64 557, double* %119, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi89, double* %fi90, align 8, !llfi_index !559
  %120 = getelementptr [3 x double]* %ar, i32 0, i64 0, !llfi_index !560
  %fi91 = call double* @injectFault9(i64 559, double* %120, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %121 = load double* %fi91, align 8, !llfi_index !561
  %fi92 = call double @injectFault7(i64 560, double %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %122 = getelementptr [3 x double]* %ar, i32 0, i64 1, !llfi_index !562
  %fi93 = call double* @injectFault9(i64 561, double* %122, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi92, double* %fi93, align 8, !llfi_index !563
  %123 = load double* %w, align 8, !llfi_index !564
  %fi94 = call double @injectFault7(i64 563, double %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %124 = getelementptr [3 x double]* %ai, i32 0, i64 1, !llfi_index !565
  %fi95 = call double* @injectFault9(i64 564, double* %124, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %125 = load double* %fi95, align 8, !llfi_index !566
  %fi96 = call double @injectFault7(i64 565, double %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %126 = fmul double %fi94, %fi96, !llfi_index !567
  %fi97 = call double @injectFault7(i64 566, double %126, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %127 = getelementptr [3 x double]* %ai, i32 0, i64 2, !llfi_index !568
  %fi98 = call double* @injectFault9(i64 567, double* %127, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %128 = load double* %fi98, align 8, !llfi_index !569
  %fi99 = call double @injectFault7(i64 568, double %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %129 = fsub double %fi97, %fi99, !llfi_index !570
  %fi44 = call double @injectFault7(i64 569, double %129, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %130 = getelementptr [3 x double]* %ai, i32 0, i64 0, !llfi_index !571
  %fi45 = call double* @injectFault9(i64 570, double* %130, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi44, double* %fi45, align 8, !llfi_index !572
  %131 = getelementptr [3 x double]* %ai, i32 0, i64 1, !llfi_index !573
  %fi46 = call double* @injectFault9(i64 572, double* %131, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %132 = load double* %fi46, align 8, !llfi_index !574
  %fi47 = call double @injectFault7(i64 573, double %132, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %133 = getelementptr [3 x double]* %ai, i32 0, i64 2, !llfi_index !575
  %fi109 = call double* @injectFault9(i64 574, double* %133, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi47, double* %fi109, align 8, !llfi_index !576
  %134 = getelementptr [3 x double]* %ai, i32 0, i64 0, !llfi_index !577
  %fi110 = call double* @injectFault9(i64 576, double* %134, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %135 = load double* %fi110, align 8, !llfi_index !578
  %fi111 = call double @injectFault7(i64 577, double %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %136 = getelementptr [3 x double]* %ai, i32 0, i64 1, !llfi_index !579
  %fi112 = call double* @injectFault9(i64 578, double* %136, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi111, double* %fi112, align 8, !llfi_index !580
  %137 = load i32* %j, align 4, !llfi_index !581
  %fi113 = call i32 @injectFault0(i64 580, i32 %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %138 = load i32* %BlockEnd, align 4, !llfi_index !582
  %fi114 = call i32 @injectFault0(i64 581, i32 %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %139 = add i32 %fi113, %fi114, !llfi_index !583
  %fi115 = call i32 @injectFault0(i64 582, i32 %139, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi115, i32* %k, align 4, !llfi_index !584
  %140 = getelementptr [3 x double]* %ar, i32 0, i64 0, !llfi_index !585
  %fi116 = call double* @injectFault9(i64 584, double* %140, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %141 = load double* %fi116, align 8, !llfi_index !586
  %fi117 = call double @injectFault7(i64 585, double %141, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %142 = load i32* %k, align 4, !llfi_index !587
  %fi118 = call i32 @injectFault0(i64 586, i32 %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %143 = zext i32 %fi118 to i64, !llfi_index !588
  %fi119 = call i64 @injectFault2(i64 587, i64 %143, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %144 = load float** %5, align 8, !llfi_index !589
  %fi120 = call float* @injectFault5(i64 588, float* %144, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %145 = getelementptr float* %fi120, i64 %fi119, !llfi_index !590
  %fi121 = call float* @injectFault5(i64 589, float* %145, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %146 = load float* %fi121, align 4, !llfi_index !591
  %fi122 = call float @injectFault6(i64 590, float %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %147 = fpext float %fi122 to double, !llfi_index !592
  %fi123 = call double @injectFault7(i64 591, double %147, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %148 = fmul double %fi117, %fi123, !llfi_index !593
  %fi124 = call double @injectFault7(i64 592, double %148, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %149 = getelementptr [3 x double]* %ai, i32 0, i64 0, !llfi_index !594
  %fi125 = call double* @injectFault9(i64 593, double* %149, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %150 = load double* %fi125, align 8, !llfi_index !595
  %fi126 = call double @injectFault7(i64 594, double %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %151 = load i32* %k, align 4, !llfi_index !596
  %fi127 = call i32 @injectFault0(i64 595, i32 %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %152 = zext i32 %fi127 to i64, !llfi_index !597
  %fi128 = call i64 @injectFault2(i64 596, i64 %152, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %153 = load float** %6, align 8, !llfi_index !598
  %fi129 = call float* @injectFault5(i64 597, float* %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %154 = getelementptr float* %fi129, i64 %fi128, !llfi_index !599
  %fi130 = call float* @injectFault5(i64 598, float* %154, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %155 = load float* %fi130, align 4, !llfi_index !600
  %fi131 = call float @injectFault6(i64 599, float %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %156 = fpext float %fi131 to double, !llfi_index !601
  %fi132 = call double @injectFault7(i64 600, double %156, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %157 = fmul double %fi126, %fi132, !llfi_index !602
  %fi133 = call double @injectFault7(i64 601, double %157, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %158 = fsub double %fi124, %fi133, !llfi_index !603
  %fi134 = call double @injectFault7(i64 602, double %158, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi134, double* %tr, align 8, !llfi_index !604
  %159 = getelementptr [3 x double]* %ar, i32 0, i64 0, !llfi_index !605
  %fi135 = call double* @injectFault9(i64 604, double* %159, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %160 = load double* %fi135, align 8, !llfi_index !606
  %fi136 = call double @injectFault7(i64 605, double %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %161 = load i32* %k, align 4, !llfi_index !607
  %fi137 = call i32 @injectFault0(i64 606, i32 %161, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %162 = zext i32 %fi137 to i64, !llfi_index !608
  %fi138 = call i64 @injectFault2(i64 607, i64 %162, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %163 = load float** %6, align 8, !llfi_index !609
  %fi139 = call float* @injectFault5(i64 608, float* %163, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %164 = getelementptr float* %fi139, i64 %fi138, !llfi_index !610
  %fi140 = call float* @injectFault5(i64 609, float* %164, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %165 = load float* %fi140, align 4, !llfi_index !611
  %fi141 = call float @injectFault6(i64 610, float %165, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %166 = fpext float %fi141 to double, !llfi_index !612
  %fi142 = call double @injectFault7(i64 611, double %166, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %167 = fmul double %fi136, %fi142, !llfi_index !613
  %fi143 = call double @injectFault7(i64 612, double %167, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %168 = getelementptr [3 x double]* %ai, i32 0, i64 0, !llfi_index !614
  %fi144 = call double* @injectFault9(i64 613, double* %168, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %169 = load double* %fi144, align 8, !llfi_index !615
  %fi145 = call double @injectFault7(i64 614, double %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %170 = load i32* %k, align 4, !llfi_index !616
  %fi146 = call i32 @injectFault0(i64 615, i32 %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %171 = zext i32 %fi146 to i64, !llfi_index !617
  %fi147 = call i64 @injectFault2(i64 616, i64 %171, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %172 = load float** %5, align 8, !llfi_index !618
  %fi148 = call float* @injectFault5(i64 617, float* %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %173 = getelementptr float* %fi148, i64 %fi147, !llfi_index !619
  %fi149 = call float* @injectFault5(i64 618, float* %173, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %174 = load float* %fi149, align 4, !llfi_index !620
  %fi150 = call float @injectFault6(i64 619, float %174, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %175 = fpext float %fi150 to double, !llfi_index !621
  %fi151 = call double @injectFault7(i64 620, double %175, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %176 = fmul double %fi145, %fi151, !llfi_index !622
  %fi152 = call double @injectFault7(i64 621, double %176, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %177 = fadd double %fi143, %fi152, !llfi_index !623
  %fi153 = call double @injectFault7(i64 622, double %177, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi153, double* %ti, align 8, !llfi_index !624
  %178 = load i32* %j, align 4, !llfi_index !625
  %fi154 = call i32 @injectFault0(i64 624, i32 %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %179 = zext i32 %fi154 to i64, !llfi_index !626
  %fi155 = call i64 @injectFault2(i64 625, i64 %179, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %180 = load float** %5, align 8, !llfi_index !627
  %fi156 = call float* @injectFault5(i64 626, float* %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %181 = getelementptr float* %fi156, i64 %fi155, !llfi_index !628
  %fi157 = call float* @injectFault5(i64 627, float* %181, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %182 = load float* %fi157, align 4, !llfi_index !629
  %fi158 = call float @injectFault6(i64 628, float %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %183 = fpext float %fi158 to double, !llfi_index !630
  %fi159 = call double @injectFault7(i64 629, double %183, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %184 = load double* %tr, align 8, !llfi_index !631
  %fi160 = call double @injectFault7(i64 630, double %184, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %185 = fsub double %fi159, %fi160, !llfi_index !632
  %fi161 = call double @injectFault7(i64 631, double %185, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %186 = fptrunc double %fi161 to float, !llfi_index !633
  %fi162 = call float @injectFault6(i64 632, float %186, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %187 = load i32* %k, align 4, !llfi_index !634
  %fi163 = call i32 @injectFault0(i64 633, i32 %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %188 = zext i32 %fi163 to i64, !llfi_index !635
  %fi164 = call i64 @injectFault2(i64 634, i64 %188, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %189 = load float** %5, align 8, !llfi_index !636
  %fi165 = call float* @injectFault5(i64 635, float* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %190 = getelementptr float* %fi165, i64 %fi164, !llfi_index !637
  %fi166 = call float* @injectFault5(i64 636, float* %190, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi162, float* %fi166, align 4, !llfi_index !638
  %191 = load i32* %j, align 4, !llfi_index !639
  %fi167 = call i32 @injectFault0(i64 638, i32 %191, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %192 = zext i32 %fi167 to i64, !llfi_index !640
  %fi168 = call i64 @injectFault2(i64 639, i64 %192, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %193 = load float** %6, align 8, !llfi_index !641
  %fi169 = call float* @injectFault5(i64 640, float* %193, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %194 = getelementptr float* %fi169, i64 %fi168, !llfi_index !642
  %fi170 = call float* @injectFault5(i64 641, float* %194, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %195 = load float* %fi170, align 4, !llfi_index !643
  %fi171 = call float @injectFault6(i64 642, float %195, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %196 = fpext float %fi171 to double, !llfi_index !644
  %fi172 = call double @injectFault7(i64 643, double %196, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %197 = load double* %ti, align 8, !llfi_index !645
  %fi173 = call double @injectFault7(i64 644, double %197, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %198 = fsub double %fi172, %fi173, !llfi_index !646
  %fi174 = call double @injectFault7(i64 645, double %198, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %199 = fptrunc double %fi174 to float, !llfi_index !647
  %fi175 = call float @injectFault6(i64 646, float %199, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %200 = load i32* %k, align 4, !llfi_index !648
  %fi176 = call i32 @injectFault0(i64 647, i32 %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %201 = zext i32 %fi176 to i64, !llfi_index !649
  %fi177 = call i64 @injectFault2(i64 648, i64 %201, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %202 = load float** %6, align 8, !llfi_index !650
  %fi178 = call float* @injectFault5(i64 649, float* %202, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %203 = getelementptr float* %fi178, i64 %fi177, !llfi_index !651
  %fi179 = call float* @injectFault5(i64 650, float* %203, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi175, float* %fi179, align 4, !llfi_index !652
  %204 = load double* %tr, align 8, !llfi_index !653
  %fi180 = call double @injectFault7(i64 652, double %204, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %205 = load i32* %j, align 4, !llfi_index !654
  %fi181 = call i32 @injectFault0(i64 653, i32 %205, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %206 = zext i32 %fi181 to i64, !llfi_index !655
  %fi182 = call i64 @injectFault2(i64 654, i64 %206, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %207 = load float** %5, align 8, !llfi_index !656
  %fi183 = call float* @injectFault5(i64 655, float* %207, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %208 = getelementptr float* %fi183, i64 %fi182, !llfi_index !657
  %fi184 = call float* @injectFault5(i64 656, float* %208, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %209 = load float* %fi184, align 4, !llfi_index !658
  %fi185 = call float @injectFault6(i64 657, float %209, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %210 = fpext float %fi185 to double, !llfi_index !659
  %fi186 = call double @injectFault7(i64 658, double %210, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %211 = fadd double %fi186, %fi180, !llfi_index !660
  %fi187 = call double @injectFault7(i64 659, double %211, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %212 = fptrunc double %fi187 to float, !llfi_index !661
  %fi188 = call float @injectFault6(i64 660, float %212, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi188, float* %fi184, align 4, !llfi_index !662
  %213 = load double* %ti, align 8, !llfi_index !663
  %fi189 = call double @injectFault7(i64 662, double %213, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %214 = load i32* %j, align 4, !llfi_index !664
  %fi190 = call i32 @injectFault0(i64 663, i32 %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %215 = zext i32 %fi190 to i64, !llfi_index !665
  %fi191 = call i64 @injectFault2(i64 664, i64 %215, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %216 = load float** %6, align 8, !llfi_index !666
  %fi192 = call float* @injectFault5(i64 665, float* %216, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %217 = getelementptr float* %fi192, i64 %fi191, !llfi_index !667
  %fi193 = call float* @injectFault5(i64 666, float* %217, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %218 = load float* %fi193, align 4, !llfi_index !668
  %fi194 = call float @injectFault6(i64 667, float %218, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %219 = fpext float %fi194 to double, !llfi_index !669
  %fi195 = call double @injectFault7(i64 668, double %219, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %220 = fadd double %fi195, %fi189, !llfi_index !670
  %fi196 = call double @injectFault7(i64 669, double %220, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %221 = fptrunc double %fi196 to float, !llfi_index !671
  %fi197 = call float @injectFault6(i64 670, float %221, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi197, float* %fi193, align 4, !llfi_index !672
  br label %222, !llfi_index !673

; <label>:222                                     ; preds = %108
  %223 = load i32* %j, align 4, !llfi_index !674
  %fi198 = call i32 @injectFault0(i64 673, i32 %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %224 = add i32 %fi198, 1, !llfi_index !675
  %fi199 = call i32 @injectFault0(i64 674, i32 %224, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi199, i32* %j, align 4, !llfi_index !676
  %225 = load i32* %n, align 4, !llfi_index !677
  %fi200 = call i32 @injectFault0(i64 676, i32 %225, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %226 = add i32 %fi200, 1, !llfi_index !678
  %fi201 = call i32 @injectFault0(i64 677, i32 %226, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi201, i32* %n, align 4, !llfi_index !679
  br label %104, !llfi_index !680

; <label>:227                                     ; preds = %104
  br label %228, !llfi_index !681

; <label>:228                                     ; preds = %227
  %229 = load i32* %BlockSize, align 4, !llfi_index !682
  %fi202 = call i32 @injectFault0(i64 681, i32 %229, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %230 = load i32* %i, align 4, !llfi_index !683
  %fi203 = call i32 @injectFault0(i64 682, i32 %230, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %231 = add i32 %fi203, %fi202, !llfi_index !684
  %fi204 = call i32 @injectFault0(i64 683, i32 %231, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi204, i32* %i, align 4, !llfi_index !685
  br label %90, !llfi_index !686

; <label>:232                                     ; preds = %90
  %233 = load i32* %BlockSize, align 4, !llfi_index !687
  %fi205 = call i32 @injectFault0(i64 686, i32 %233, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi205, i32* %BlockEnd, align 4, !llfi_index !688
  br label %234, !llfi_index !689

; <label>:234                                     ; preds = %232
  %235 = load i32* %BlockSize, align 4, !llfi_index !690
  %fi206 = call i32 @injectFault0(i64 689, i32 %235, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %236 = shl i32 %fi206, 1, !llfi_index !691
  %fi207 = call i32 @injectFault0(i64 690, i32 %236, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi207, i32* %BlockSize, align 4, !llfi_index !692
  br label %67, !llfi_index !693

; <label>:237                                     ; preds = %67
  %238 = load i32* %2, align 4, !llfi_index !694
  %fi208 = call i32 @injectFault0(i64 693, i32 %238, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %239 = icmp ne i32 %fi208, 0, !llfi_index !695
  %fi209 = call i1 @injectFault1(i64 694, i1 %239, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi209, label %240, label %270, !llfi_index !696

; <label>:240                                     ; preds = %237
  %241 = load i32* %1, align 4, !llfi_index !697
  %fi210 = call i32 @injectFault0(i64 696, i32 %241, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %242 = uitofp i32 %fi210 to double, !llfi_index !698
  %fi211 = call double @injectFault7(i64 697, double %242, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store double %fi211, double* %denom, align 8, !llfi_index !699
  store i32 0, i32* %i, align 4, !llfi_index !700
  br label %243, !llfi_index !701

; <label>:243                                     ; preds = %266, %240
  %244 = load i32* %i, align 4, !llfi_index !702
  %fi212 = call i32 @injectFault0(i64 701, i32 %244, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %245 = load i32* %1, align 4, !llfi_index !703
  %fi213 = call i32 @injectFault0(i64 702, i32 %245, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %246 = icmp ult i32 %fi212, %fi213, !llfi_index !704
  %fi214 = call i1 @injectFault1(i64 703, i1 %246, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi214, label %247, label %269, !llfi_index !705

; <label>:247                                     ; preds = %243
  %248 = load double* %denom, align 8, !llfi_index !706
  %fi215 = call double @injectFault7(i64 705, double %248, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %249 = load i32* %i, align 4, !llfi_index !707
  %fi216 = call i32 @injectFault0(i64 706, i32 %249, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %250 = zext i32 %fi216 to i64, !llfi_index !708
  %fi217 = call i64 @injectFault2(i64 707, i64 %250, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %251 = load float** %5, align 8, !llfi_index !709
  %fi218 = call float* @injectFault5(i64 708, float* %251, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %252 = getelementptr float* %fi218, i64 %fi217, !llfi_index !710
  %fi219 = call float* @injectFault5(i64 709, float* %252, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %253 = load float* %fi219, align 4, !llfi_index !711
  %fi220 = call float @injectFault6(i64 710, float %253, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %254 = fpext float %fi220 to double, !llfi_index !712
  %fi221 = call double @injectFault7(i64 711, double %254, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %255 = fdiv double %fi221, %fi215, !llfi_index !713
  %fi222 = call double @injectFault7(i64 712, double %255, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %256 = fptrunc double %fi222 to float, !llfi_index !714
  %fi223 = call float @injectFault6(i64 713, float %256, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi223, float* %fi219, align 4, !llfi_index !715
  %257 = load double* %denom, align 8, !llfi_index !716
  %fi100 = call double @injectFault7(i64 715, double %257, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %258 = load i32* %i, align 4, !llfi_index !717
  %fi101 = call i32 @injectFault0(i64 716, i32 %258, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %259 = zext i32 %fi101 to i64, !llfi_index !718
  %fi102 = call i64 @injectFault2(i64 717, i64 %259, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %260 = load float** %6, align 8, !llfi_index !719
  %fi103 = call float* @injectFault5(i64 718, float* %260, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %261 = getelementptr float* %fi103, i64 %fi102, !llfi_index !720
  %fi104 = call float* @injectFault5(i64 719, float* %261, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %262 = load float* %fi104, align 4, !llfi_index !721
  %fi105 = call float @injectFault6(i64 720, float %262, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %263 = fpext float %fi105 to double, !llfi_index !722
  %fi106 = call double @injectFault7(i64 721, double %263, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %264 = fdiv double %fi106, %fi100, !llfi_index !723
  %fi107 = call double @injectFault7(i64 722, double %264, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %265 = fptrunc double %fi107 to float, !llfi_index !724
  %fi108 = call float @injectFault6(i64 723, float %265, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store float %fi108, float* %fi104, align 4, !llfi_index !725
  br label %266, !llfi_index !726

; <label>:266                                     ; preds = %247
  %267 = load i32* %i, align 4, !llfi_index !727
  %fi224 = call i32 @injectFault0(i64 726, i32 %267, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %268 = add i32 %fi224, 1, !llfi_index !728
  %fi225 = call i32 @injectFault0(i64 727, i32 %268, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !20
  store i32 %fi225, i32* %i, align 4, !llfi_index !729
  br label %243, !llfi_index !730

; <label>:269                                     ; preds = %243
  br label %270, !llfi_index !731

; <label>:270                                     ; preds = %269, %237
  ret void, !llfi_index !732
}

; Function Attrs: nounwind uwtable
define internal void @CheckPointer(i8* %p, i8* %name) #0 {
  %1 = alloca i8*, align 8, !llfi_index !733
  %2 = alloca i8*, align 8, !llfi_index !734
  store i8* %p, i8** %1, align 8, !llfi_index !735
  store i8* %name, i8** %2, align 8, !llfi_index !736
  %3 = load i8** %1, align 8, !llfi_index !737
  %fi = call i8* @injectFault3(i64 736, i8* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %4 = icmp eq i8* %fi, null, !llfi_index !738
  %fi1 = call i1 @injectFault1(i64 737, i1 %4, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !20
  br i1 %fi1, label %5, label %9, !llfi_index !739

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !740
  %fi2 = call %struct._IO_FILE* @injectFault8(i64 739, %struct._IO_FILE* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %7 = load i8** %2, align 8, !llfi_index !741
  %fi3 = call i8* @injectFault3(i64 740, i8* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !20
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi2, i8* getelementptr inbounds ([35 x i8]* @.str414, i32 0, i32 0), i8* %fi3), !llfi_index !742
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !743
  unreachable, !llfi_index !744

; <label>:9                                       ; preds = %0
  ret void, !llfi_index !745
}

define i32 @injectFault0(i64, i32, i32, i32, i32, i32, i8*) {
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

define i1 @injectFault1(i64, i1, i32, i32, i32, i32, i8*) {
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

define i64 @injectFault2(i64, i64, i32, i32, i32, i32, i8*) {
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

define i8* @injectFault3(i64, i8*, i32, i32, i32, i32, i8*) {
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

define i8** @injectFault4(i64, i8**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8**
  store i8** %1, i8*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8*** %tmploc
  ret i8** %updateval
}

define float* @injectFault5(i64, float*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float*
  store float* %1, float** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float** %tmploc
  ret float* %updateval
}

define float @injectFault6(i64, float, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float
  store float %1, float* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float* %tmploc
  ret float %updateval
}

define double @injectFault7(i64, double, i32, i32, i32, i32, i8*) {
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

define %struct._IO_FILE* @injectFault8(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct._IO_FILE** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct._IO_FILE** %tmploc
  ret %struct._IO_FILE* %updateval
}

define double* @injectFault9(i64, double*, i32, i32, i32, i32, i8*) {
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

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0}

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
!20 = metadata !{metadata !"after"}
!21 = metadata !{i64 20}
!22 = metadata !{i64 21}
!23 = metadata !{i64 22}
!24 = metadata !{i64 23}
!25 = metadata !{i64 24}
!26 = metadata !{i64 25}
!27 = metadata !{i64 26}
!28 = metadata !{i64 27}
!29 = metadata !{i64 28}
!30 = metadata !{i64 29}
!31 = metadata !{i64 30}
!32 = metadata !{i64 31}
!33 = metadata !{i64 32}
!34 = metadata !{i64 33}
!35 = metadata !{i64 34}
!36 = metadata !{i64 35}
!37 = metadata !{i64 36}
!38 = metadata !{i64 37}
!39 = metadata !{i64 38}
!40 = metadata !{i64 39}
!41 = metadata !{i64 40}
!42 = metadata !{i64 41}
!43 = metadata !{i64 42}
!44 = metadata !{i64 43}
!45 = metadata !{i64 44}
!46 = metadata !{i64 45}
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
!534 = metadata !{i64 533}
!535 = metadata !{i64 534}
!536 = metadata !{i64 535}
!537 = metadata !{i64 536}
!538 = metadata !{i64 537}
!539 = metadata !{i64 538}
!540 = metadata !{i64 539}
!541 = metadata !{i64 540}
!542 = metadata !{i64 541}
!543 = metadata !{i64 542}
!544 = metadata !{i64 543}
!545 = metadata !{i64 544}
!546 = metadata !{i64 545}
!547 = metadata !{i64 546}
!548 = metadata !{i64 547}
!549 = metadata !{i64 548}
!550 = metadata !{i64 549}
!551 = metadata !{i64 550}
!552 = metadata !{i64 551}
!553 = metadata !{i64 552}
!554 = metadata !{i64 553}
!555 = metadata !{i64 554}
!556 = metadata !{i64 555}
!557 = metadata !{i64 556}
!558 = metadata !{i64 557}
!559 = metadata !{i64 558}
!560 = metadata !{i64 559}
!561 = metadata !{i64 560}
!562 = metadata !{i64 561}
!563 = metadata !{i64 562}
!564 = metadata !{i64 563}
!565 = metadata !{i64 564}
!566 = metadata !{i64 565}
!567 = metadata !{i64 566}
!568 = metadata !{i64 567}
!569 = metadata !{i64 568}
!570 = metadata !{i64 569}
!571 = metadata !{i64 570}
!572 = metadata !{i64 571}
!573 = metadata !{i64 572}
!574 = metadata !{i64 573}
!575 = metadata !{i64 574}
!576 = metadata !{i64 575}
!577 = metadata !{i64 576}
!578 = metadata !{i64 577}
!579 = metadata !{i64 578}
!580 = metadata !{i64 579}
!581 = metadata !{i64 580}
!582 = metadata !{i64 581}
!583 = metadata !{i64 582}
!584 = metadata !{i64 583}
!585 = metadata !{i64 584}
!586 = metadata !{i64 585}
!587 = metadata !{i64 586}
!588 = metadata !{i64 587}
!589 = metadata !{i64 588}
!590 = metadata !{i64 589}
!591 = metadata !{i64 590}
!592 = metadata !{i64 591}
!593 = metadata !{i64 592}
!594 = metadata !{i64 593}
!595 = metadata !{i64 594}
!596 = metadata !{i64 595}
!597 = metadata !{i64 596}
!598 = metadata !{i64 597}
!599 = metadata !{i64 598}
!600 = metadata !{i64 599}
!601 = metadata !{i64 600}
!602 = metadata !{i64 601}
!603 = metadata !{i64 602}
!604 = metadata !{i64 603}
!605 = metadata !{i64 604}
!606 = metadata !{i64 605}
!607 = metadata !{i64 606}
!608 = metadata !{i64 607}
!609 = metadata !{i64 608}
!610 = metadata !{i64 609}
!611 = metadata !{i64 610}
!612 = metadata !{i64 611}
!613 = metadata !{i64 612}
!614 = metadata !{i64 613}
!615 = metadata !{i64 614}
!616 = metadata !{i64 615}
!617 = metadata !{i64 616}
!618 = metadata !{i64 617}
!619 = metadata !{i64 618}
!620 = metadata !{i64 619}
!621 = metadata !{i64 620}
!622 = metadata !{i64 621}
!623 = metadata !{i64 622}
!624 = metadata !{i64 623}
!625 = metadata !{i64 624}
!626 = metadata !{i64 625}
!627 = metadata !{i64 626}
!628 = metadata !{i64 627}
!629 = metadata !{i64 628}
!630 = metadata !{i64 629}
!631 = metadata !{i64 630}
!632 = metadata !{i64 631}
!633 = metadata !{i64 632}
!634 = metadata !{i64 633}
!635 = metadata !{i64 634}
!636 = metadata !{i64 635}
!637 = metadata !{i64 636}
!638 = metadata !{i64 637}
!639 = metadata !{i64 638}
!640 = metadata !{i64 639}
!641 = metadata !{i64 640}
!642 = metadata !{i64 641}
!643 = metadata !{i64 642}
!644 = metadata !{i64 643}
!645 = metadata !{i64 644}
!646 = metadata !{i64 645}
!647 = metadata !{i64 646}
!648 = metadata !{i64 647}
!649 = metadata !{i64 648}
!650 = metadata !{i64 649}
!651 = metadata !{i64 650}
!652 = metadata !{i64 651}
!653 = metadata !{i64 652}
!654 = metadata !{i64 653}
!655 = metadata !{i64 654}
!656 = metadata !{i64 655}
!657 = metadata !{i64 656}
!658 = metadata !{i64 657}
!659 = metadata !{i64 658}
!660 = metadata !{i64 659}
!661 = metadata !{i64 660}
!662 = metadata !{i64 661}
!663 = metadata !{i64 662}
!664 = metadata !{i64 663}
!665 = metadata !{i64 664}
!666 = metadata !{i64 665}
!667 = metadata !{i64 666}
!668 = metadata !{i64 667}
!669 = metadata !{i64 668}
!670 = metadata !{i64 669}
!671 = metadata !{i64 670}
!672 = metadata !{i64 671}
!673 = metadata !{i64 672}
!674 = metadata !{i64 673}
!675 = metadata !{i64 674}
!676 = metadata !{i64 675}
!677 = metadata !{i64 676}
!678 = metadata !{i64 677}
!679 = metadata !{i64 678}
!680 = metadata !{i64 679}
!681 = metadata !{i64 680}
!682 = metadata !{i64 681}
!683 = metadata !{i64 682}
!684 = metadata !{i64 683}
!685 = metadata !{i64 684}
!686 = metadata !{i64 685}
!687 = metadata !{i64 686}
!688 = metadata !{i64 687}
!689 = metadata !{i64 688}
!690 = metadata !{i64 689}
!691 = metadata !{i64 690}
!692 = metadata !{i64 691}
!693 = metadata !{i64 692}
!694 = metadata !{i64 693}
!695 = metadata !{i64 694}
!696 = metadata !{i64 695}
!697 = metadata !{i64 696}
!698 = metadata !{i64 697}
!699 = metadata !{i64 698}
!700 = metadata !{i64 699}
!701 = metadata !{i64 700}
!702 = metadata !{i64 701}
!703 = metadata !{i64 702}
!704 = metadata !{i64 703}
!705 = metadata !{i64 704}
!706 = metadata !{i64 705}
!707 = metadata !{i64 706}
!708 = metadata !{i64 707}
!709 = metadata !{i64 708}
!710 = metadata !{i64 709}
!711 = metadata !{i64 710}
!712 = metadata !{i64 711}
!713 = metadata !{i64 712}
!714 = metadata !{i64 713}
!715 = metadata !{i64 714}
!716 = metadata !{i64 715}
!717 = metadata !{i64 716}
!718 = metadata !{i64 717}
!719 = metadata !{i64 718}
!720 = metadata !{i64 719}
!721 = metadata !{i64 720}
!722 = metadata !{i64 721}
!723 = metadata !{i64 722}
!724 = metadata !{i64 723}
!725 = metadata !{i64 724}
!726 = metadata !{i64 725}
!727 = metadata !{i64 726}
!728 = metadata !{i64 727}
!729 = metadata !{i64 728}
!730 = metadata !{i64 729}
!731 = metadata !{i64 730}
!732 = metadata !{i64 731}
!733 = metadata !{i64 732}
!734 = metadata !{i64 733}
!735 = metadata !{i64 734}
!736 = metadata !{i64 735}
!737 = metadata !{i64 736}
!738 = metadata !{i64 737}
!739 = metadata !{i64 738}
!740 = metadata !{i64 739}
!741 = metadata !{i64 740}
!742 = metadata !{i64 741}
!743 = metadata !{i64 742}
!744 = metadata !{i64 743}
!745 = metadata !{i64 744}
