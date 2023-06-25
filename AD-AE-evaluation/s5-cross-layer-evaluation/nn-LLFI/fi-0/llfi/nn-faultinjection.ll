; ModuleID = '/home/foo/SC23/AD-AE-evaluation/s5-cross-layer-evaluation/nn-LLFI/fi-0/llfi/nn-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.neighbor = type { [49 x i8], double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [26 x i8] c"Invalid set of arguments\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"error opening flist\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"no room for neighbors\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str5 = private unnamed_addr constant [24 x i8] c"error reading filelist\0A\00", align 1
@.str6 = private unnamed_addr constant [20 x i8] c"error opening a db\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"The %d nearest neighbors are:\0A\00", align 1
@.str12 = private unnamed_addr constant [11 x i8] c"%s --> %f\0A\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@xor_namestr = internal constant [4 x i8] c"xor\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %3 = alloca i8**, align 8, !llfi_index !3
  %flist = alloca %struct._IO_FILE*, align 8, !llfi_index !4
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !5
  %i = alloca i32, align 4, !llfi_index !6
  %j = alloca i32, align 4, !llfi_index !7
  %k = alloca i32, align 4, !llfi_index !8
  %rec_count = alloca i32, align 4, !llfi_index !9
  %done = alloca i32, align 4, !llfi_index !10
  %sandbox = alloca [490 x i8], align 16, !llfi_index !11
  %rec_iter = alloca i8*, align 8, !llfi_index !12
  %dbname = alloca [64 x i8], align 16, !llfi_index !13
  %neighbors = alloca %struct.neighbor*, align 8, !llfi_index !14
  %target_lat = alloca float, align 4, !llfi_index !15
  %target_long = alloca float, align 4, !llfi_index !16
  %tmp_lat = alloca float, align 4, !llfi_index !17
  %tmp_long = alloca float, align 4, !llfi_index !18
  %z = alloca float*, align 8, !llfi_index !19
  %max_dist = alloca float, align 4, !llfi_index !20
  %max_idx = alloca i32, align 4, !llfi_index !21
  %out = alloca %struct._IO_FILE*, align 8, !llfi_index !22
  store i32 0, i32* %1, !llfi_index !23
  store i32 %argc, i32* %2, align 4, !llfi_index !24
  store i8** %argv, i8*** %3, align 8, !llfi_index !25
  store i32 0, i32* %i, align 4, !llfi_index !26
  store i32 0, i32* %j, align 4, !llfi_index !27
  store i32 0, i32* %k, align 4, !llfi_index !28
  store i32 0, i32* %rec_count, align 4, !llfi_index !29
  store i32 0, i32* %done, align 4, !llfi_index !30
  store %struct.neighbor* null, %struct.neighbor** %neighbors, align 8, !llfi_index !31
  store float 0.000000e+00, float* %tmp_lat, align 4, !llfi_index !32
  store float 0.000000e+00, float* %tmp_long, align 4, !llfi_index !33
  %4 = load i32* %2, align 4, !llfi_index !34
  %fi4 = call i32 @injectFault0(i64 34, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %5 = icmp slt i32 %fi4, 5, !llfi_index !36
  %fi5 = call i1 @injectFault3(i64 35, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi5, label %6, label %9, !llfi_index !37

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !38
  %fi6 = call %struct._IO_FILE* @injectFault4(i64 37, %struct._IO_FILE* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi6, i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0)), !llfi_index !39
  call void @postInjections()
  call void @exit(i32 -1) #5, !llfi_index !40
  unreachable, !llfi_index !41

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8, !llfi_index !42
  %fi7 = call i8** @injectFault1(i64 41, i8** %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %11 = getelementptr i8** %fi7, i64 1, !llfi_index !43
  %fi8 = call i8** @injectFault1(i64 42, i8** %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %12 = load i8** %fi8, align 8, !llfi_index !44
  %fi9 = call i8* @injectFault2(i64 43, i8* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %13 = call %struct._IO_FILE* @fopen(i8* %fi9, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !45
  store %struct._IO_FILE* %13, %struct._IO_FILE** %flist, align 8, !llfi_index !46
  %14 = load %struct._IO_FILE** %flist, align 8, !llfi_index !47
  %fi10 = call %struct._IO_FILE* @injectFault4(i64 46, %struct._IO_FILE* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %15 = icmp ne %struct._IO_FILE* %fi10, null, !llfi_index !48
  %fi11 = call i1 @injectFault3(i64 47, i1 %15, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi11, label %18, label %16, !llfi_index !49

; <label>:16                                      ; preds = %9
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)), !llfi_index !50
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !51
  unreachable, !llfi_index !52

; <label>:18                                      ; preds = %9
  %19 = load i8*** %3, align 8, !llfi_index !53
  %fi1 = call i8** @injectFault1(i64 52, i8** %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %20 = getelementptr i8** %fi1, i64 2, !llfi_index !54
  %fi2 = call i8** @injectFault1(i64 53, i8** %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %21 = load i8** %fi2, align 8, !llfi_index !55
  %fi3 = call i8* @injectFault2(i64 54, i8* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %22 = call i32 @atoi(i8* %fi3) #6, !llfi_index !56
  store i32 %22, i32* %k, align 4, !llfi_index !57
  %23 = load i8*** %3, align 8, !llfi_index !58
  %fi18 = call i8** @injectFault1(i64 57, i8** %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %24 = getelementptr i8** %fi18, i64 3, !llfi_index !59
  %fi19 = call i8** @injectFault1(i64 58, i8** %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %25 = load i8** %fi19, align 8, !llfi_index !60
  %fi20 = call i8* @injectFault2(i64 59, i8* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %26 = call double @atof(i8* %fi20) #6, !llfi_index !61
  %27 = fptrunc double %26 to float, !llfi_index !62
  %fi21 = call float @injectFault5(i64 61, float %27, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store float %fi21, float* %target_lat, align 4, !llfi_index !63
  %28 = load i8*** %3, align 8, !llfi_index !64
  %fi22 = call i8** @injectFault1(i64 63, i8** %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %29 = getelementptr i8** %fi22, i64 4, !llfi_index !65
  %fi23 = call i8** @injectFault1(i64 64, i8** %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %30 = load i8** %fi23, align 8, !llfi_index !66
  %fi24 = call i8* @injectFault2(i64 65, i8* %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %31 = call double @atof(i8* %fi24) #6, !llfi_index !67
  %32 = fptrunc double %31 to float, !llfi_index !68
  %fi25 = call float @injectFault5(i64 67, float %32, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store float %fi25, float* %target_long, align 4, !llfi_index !69
  %33 = load i32* %k, align 4, !llfi_index !70
  %fi = call i32 @injectFault0(i64 69, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %34 = sext i32 %fi to i64, !llfi_index !71
  %fi27 = call i64 @injectFault6(i64 70, i64 %34, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %35 = mul i64 %fi27, 64, !llfi_index !72
  %fi28 = call i64 @injectFault6(i64 71, i64 %35, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %36 = call noalias i8* @malloc(i64 %fi28) #7, !llfi_index !73
  %37 = bitcast i8* %36 to %struct.neighbor*, !llfi_index !74
  %fi29 = call %struct.neighbor* @injectFault7(i64 73, %struct.neighbor* %37, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store %struct.neighbor* %fi29, %struct.neighbor** %neighbors, align 8, !llfi_index !75
  %38 = load %struct.neighbor** %neighbors, align 8, !llfi_index !76
  %fi30 = call %struct.neighbor* @injectFault7(i64 75, %struct.neighbor* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %39 = icmp eq %struct.neighbor* %fi30, null, !llfi_index !77
  %fi31 = call i1 @injectFault3(i64 76, i1 %39, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi31, label %40, label %43, !llfi_index !78

; <label>:40                                      ; preds = %18
  %41 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !79
  %fi32 = call %struct._IO_FILE* @injectFault4(i64 78, %struct._IO_FILE* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi32, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0)), !llfi_index !80
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !81
  unreachable, !llfi_index !82

; <label>:43                                      ; preds = %18
  store i32 0, i32* %j, align 4, !llfi_index !83
  br label %44, !llfi_index !84

; <label>:44                                      ; preds = %54, %43
  %45 = load i32* %j, align 4, !llfi_index !85
  %fi33 = call i32 @injectFault0(i64 84, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %46 = load i32* %k, align 4, !llfi_index !86
  %fi34 = call i32 @injectFault0(i64 85, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %47 = icmp slt i32 %fi33, %fi34, !llfi_index !87
  %fi35 = call i1 @injectFault3(i64 86, i1 %47, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi35, label %48, label %57, !llfi_index !88

; <label>:48                                      ; preds = %44
  %49 = load i32* %j, align 4, !llfi_index !89
  %fi36 = call i32 @injectFault0(i64 88, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %50 = sext i32 %fi36 to i64, !llfi_index !90
  %fi37 = call i64 @injectFault6(i64 89, i64 %50, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %51 = load %struct.neighbor** %neighbors, align 8, !llfi_index !91
  %fi38 = call %struct.neighbor* @injectFault7(i64 90, %struct.neighbor* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %52 = getelementptr %struct.neighbor* %fi38, i64 %fi37, !llfi_index !92
  %fi39 = call %struct.neighbor* @injectFault7(i64 91, %struct.neighbor* %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %53 = getelementptr %struct.neighbor* %fi39, i32 0, i32 1, !llfi_index !93
  %fi40 = call double* @injectFault8(i64 92, double* %53, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store double 1.000000e+04, double* %fi40, align 8, !llfi_index !94
  br label %54, !llfi_index !95

; <label>:54                                      ; preds = %48
  %55 = load i32* %j, align 4, !llfi_index !96
  %fi41 = call i32 @injectFault0(i64 95, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %56 = add nsw i32 %fi41, 1, !llfi_index !97
  %fi42 = call i32 @injectFault0(i64 96, i32 %56, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi42, i32* %j, align 4, !llfi_index !98
  br label %44, !llfi_index !99

; <label>:57                                      ; preds = %44
  %58 = load %struct._IO_FILE** %flist, align 8, !llfi_index !100
  %fi12 = call %struct._IO_FILE* @injectFault4(i64 99, %struct._IO_FILE* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %59 = getelementptr [64 x i8]* %dbname, i32 0, i32 0, !llfi_index !101
  %fi13 = call i8* @injectFault2(i64 100, i8* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %60 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fi12, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %fi13), !llfi_index !102
  %61 = icmp ne i32 %60, 1, !llfi_index !103
  %fi14 = call i1 @injectFault3(i64 102, i1 %61, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi14, label %62, label %65, !llfi_index !104

; <label>:62                                      ; preds = %57
  %63 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !105
  %fi15 = call %struct._IO_FILE* @injectFault4(i64 104, %struct._IO_FILE* %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi15, i8* getelementptr inbounds ([24 x i8]* @.str5, i32 0, i32 0)), !llfi_index !106
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !107
  unreachable, !llfi_index !108

; <label>:65                                      ; preds = %57
  %66 = getelementptr [64 x i8]* %dbname, i32 0, i32 0, !llfi_index !109
  %fi26 = call i8* @injectFault2(i64 108, i8* %66, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %67 = call %struct._IO_FILE* @fopen(i8* %fi26, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !110
  store %struct._IO_FILE* %67, %struct._IO_FILE** %fp, align 8, !llfi_index !111
  %68 = load %struct._IO_FILE** %fp, align 8, !llfi_index !112
  %fi16 = call %struct._IO_FILE* @injectFault4(i64 111, %struct._IO_FILE* %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %69 = icmp ne %struct._IO_FILE* %fi16, null, !llfi_index !113
  %fi17 = call i1 @injectFault3(i64 112, i1 %69, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi17, label %72, label %70, !llfi_index !114

; <label>:70                                      ; preds = %65
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)), !llfi_index !115
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !116
  unreachable, !llfi_index !117

; <label>:72                                      ; preds = %65
  %73 = call noalias i8* @malloc(i64 40) #7, !llfi_index !118
  %74 = bitcast i8* %73 to float*, !llfi_index !119
  %fi71 = call float* @injectFault10(i64 118, float* %74, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store float* %fi71, float** %z, align 8, !llfi_index !120
  br label %75, !llfi_index !121

; <label>:75                                      ; preds = %237, %72
  %76 = load i32* %done, align 4, !llfi_index !122
  %fi72 = call i32 @injectFault0(i64 121, i32 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %77 = icmp ne i32 %fi72, 0, !llfi_index !123
  %fi73 = call i1 @injectFault3(i64 122, i1 %77, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %78 = xor i1 %fi73, true, !llfi_index !124
  %fi74 = call i1 @injectFault3(i64 123, i1 %78, i32 25, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @xor_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi74, label %79, label %238, !llfi_index !125

; <label>:79                                      ; preds = %75
  %80 = getelementptr [490 x i8]* %sandbox, i32 0, i32 0, !llfi_index !126
  %fi75 = call i8* @injectFault2(i64 125, i8* %80, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %81 = load %struct._IO_FILE** %fp, align 8, !llfi_index !127
  %fi76 = call %struct._IO_FILE* @injectFault4(i64 126, %struct._IO_FILE* %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %82 = call i64 @fread(i8* %fi75, i64 49, i64 10, %struct._IO_FILE* %fi76), !llfi_index !128
  %83 = trunc i64 %82 to i32, !llfi_index !129
  %fi77 = call i32 @injectFault0(i64 128, i32 %83, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi77, i32* %rec_count, align 4, !llfi_index !130
  %84 = load i32* %rec_count, align 4, !llfi_index !131
  %fi78 = call i32 @injectFault0(i64 130, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %85 = icmp ne i32 %fi78, 10, !llfi_index !132
  %fi79 = call i1 @injectFault3(i64 131, i1 %85, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi79, label %86, label %116, !llfi_index !133

; <label>:86                                      ; preds = %79
  %87 = load %struct._IO_FILE** %flist, align 8, !llfi_index !134
  %fi80 = call %struct._IO_FILE* @injectFault4(i64 133, %struct._IO_FILE* %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %88 = call i32 @ferror(%struct._IO_FILE* %fi80) #7, !llfi_index !135
  %89 = icmp ne i32 %88, 0, !llfi_index !136
  %fi81 = call i1 @injectFault3(i64 135, i1 %89, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi81, label %114, label %90, !llfi_index !137

; <label>:90                                      ; preds = %86
  %91 = load %struct._IO_FILE** %fp, align 8, !llfi_index !138
  %fi82 = call %struct._IO_FILE* @injectFault4(i64 137, %struct._IO_FILE* %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %92 = call i32 @fclose(%struct._IO_FILE* %fi82), !llfi_index !139
  %93 = load %struct._IO_FILE** %flist, align 8, !llfi_index !140
  %fi83 = call %struct._IO_FILE* @injectFault4(i64 139, %struct._IO_FILE* %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %94 = call i32 @feof(%struct._IO_FILE* %fi83) #7, !llfi_index !141
  %95 = icmp ne i32 %94, 0, !llfi_index !142
  %fi84 = call i1 @injectFault3(i64 141, i1 %95, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi84, label %96, label %97, !llfi_index !143

; <label>:96                                      ; preds = %90
  store i32 1, i32* %done, align 4, !llfi_index !144
  br label %113, !llfi_index !145

; <label>:97                                      ; preds = %90
  %98 = load %struct._IO_FILE** %flist, align 8, !llfi_index !146
  %fi85 = call %struct._IO_FILE* @injectFault4(i64 145, %struct._IO_FILE* %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %99 = getelementptr [64 x i8]* %dbname, i32 0, i32 0, !llfi_index !147
  %fi86 = call i8* @injectFault2(i64 146, i8* %99, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %100 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fi85, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %fi86), !llfi_index !148
  %101 = icmp ne i32 %100, 1, !llfi_index !149
  %fi87 = call i1 @injectFault3(i64 148, i1 %101, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi87, label %102, label %105, !llfi_index !150

; <label>:102                                     ; preds = %97
  %103 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !151
  %fi88 = call %struct._IO_FILE* @injectFault4(i64 150, %struct._IO_FILE* %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi88, i8* getelementptr inbounds ([24 x i8]* @.str5, i32 0, i32 0)), !llfi_index !152
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !153
  unreachable, !llfi_index !154

; <label>:105                                     ; preds = %97
  %106 = getelementptr [64 x i8]* %dbname, i32 0, i32 0, !llfi_index !155
  %fi89 = call i8* @injectFault2(i64 154, i8* %106, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %107 = call %struct._IO_FILE* @fopen(i8* %fi89, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !156
  store %struct._IO_FILE* %107, %struct._IO_FILE** %fp, align 8, !llfi_index !157
  %108 = load %struct._IO_FILE** %fp, align 8, !llfi_index !158
  %fi90 = call %struct._IO_FILE* @injectFault4(i64 157, %struct._IO_FILE* %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %109 = icmp ne %struct._IO_FILE* %fi90, null, !llfi_index !159
  %fi91 = call i1 @injectFault3(i64 158, i1 %109, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi91, label %112, label %110, !llfi_index !160

; <label>:110                                     ; preds = %105
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str6, i32 0, i32 0)), !llfi_index !161
  call void @postInjections()
  call void @exit(i32 1) #5, !llfi_index !162
  unreachable, !llfi_index !163

; <label>:112                                     ; preds = %105
  br label %113, !llfi_index !164

; <label>:113                                     ; preds = %112, %96
  br label %115, !llfi_index !165

; <label>:114                                     ; preds = %86
  call void @perror(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0)), !llfi_index !166
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !167
  unreachable, !llfi_index !168

; <label>:115                                     ; preds = %113
  br label %116, !llfi_index !169

; <label>:116                                     ; preds = %115, %79
  store i32 0, i32* %i, align 4, !llfi_index !170
  br label %117, !llfi_index !171

; <label>:117                                     ; preds = %153, %116
  %118 = load i32* %i, align 4, !llfi_index !172
  %fi92 = call i32 @injectFault0(i64 171, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %119 = load i32* %rec_count, align 4, !llfi_index !173
  %fi93 = call i32 @injectFault0(i64 172, i32 %119, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %120 = icmp slt i32 %fi92, %fi93, !llfi_index !174
  %fi94 = call i1 @injectFault3(i64 173, i1 %120, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi94, label %121, label %156, !llfi_index !175

; <label>:121                                     ; preds = %117
  %122 = getelementptr [490 x i8]* %sandbox, i32 0, i32 0, !llfi_index !176
  %fi95 = call i8* @injectFault2(i64 175, i8* %122, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %123 = load i32* %i, align 4, !llfi_index !177
  %fi96 = call i32 @injectFault0(i64 176, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %124 = mul nsw i32 %fi96, 49, !llfi_index !178
  %fi97 = call i32 @injectFault0(i64 177, i32 %124, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %125 = add nsw i32 %fi97, 28, !llfi_index !179
  %fi98 = call i32 @injectFault0(i64 178, i32 %125, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %126 = sub nsw i32 %fi98, 1, !llfi_index !180
  %fi99 = call i32 @injectFault0(i64 179, i32 %126, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %127 = sext i32 %fi99 to i64, !llfi_index !181
  %fi100 = call i64 @injectFault6(i64 180, i64 %127, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %128 = getelementptr i8* %fi95, i64 %fi100, !llfi_index !182
  %fi101 = call i8* @injectFault2(i64 181, i8* %128, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i8* %fi101, i8** %rec_iter, align 8, !llfi_index !183
  %129 = load i8** %rec_iter, align 8, !llfi_index !184
  %fi70 = call i8* @injectFault2(i64 183, i8* %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %130 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi70, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), float* %tmp_lat, float* %tmp_long) #7, !llfi_index !185
  %131 = load float* %tmp_lat, align 4, !llfi_index !186
  %fi114 = call float @injectFault5(i64 185, float %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %132 = load float* %target_lat, align 4, !llfi_index !187
  %fi115 = call float @injectFault5(i64 186, float %132, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %133 = fsub float %fi114, %fi115, !llfi_index !188
  %fi116 = call float @injectFault5(i64 187, float %133, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %134 = load float* %tmp_lat, align 4, !llfi_index !189
  %fi117 = call float @injectFault5(i64 188, float %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %135 = load float* %target_lat, align 4, !llfi_index !190
  %fi118 = call float @injectFault5(i64 189, float %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %136 = fsub float %fi117, %fi118, !llfi_index !191
  %fi119 = call float @injectFault5(i64 190, float %136, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %137 = fmul float %fi116, %fi119, !llfi_index !192
  %fi120 = call float @injectFault5(i64 191, float %137, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %138 = load float* %tmp_long, align 4, !llfi_index !193
  %fi121 = call float @injectFault5(i64 192, float %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %139 = load float* %target_long, align 4, !llfi_index !194
  %fi43 = call float @injectFault5(i64 193, float %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %140 = fsub float %fi121, %fi43, !llfi_index !195
  %fi44 = call float @injectFault5(i64 194, float %140, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %141 = load float* %tmp_long, align 4, !llfi_index !196
  %fi45 = call float @injectFault5(i64 195, float %141, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %142 = load float* %target_long, align 4, !llfi_index !197
  %fi46 = call float @injectFault5(i64 196, float %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %143 = fsub float %fi45, %fi46, !llfi_index !198
  %fi47 = call float @injectFault5(i64 197, float %143, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %144 = fmul float %fi44, %fi47, !llfi_index !199
  %fi48 = call float @injectFault5(i64 198, float %144, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %145 = fadd float %fi120, %fi48, !llfi_index !200
  %fi49 = call float @injectFault5(i64 199, float %145, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %146 = fpext float %fi49 to double, !llfi_index !201
  %fi50 = call double @injectFault9(i64 200, double %146, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %147 = call double @sqrt(double %fi50) #7, !llfi_index !202
  %148 = fptrunc double %147 to float, !llfi_index !203
  %fi51 = call float @injectFault5(i64 202, float %148, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %149 = load i32* %i, align 4, !llfi_index !204
  %fi52 = call i32 @injectFault0(i64 203, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %150 = sext i32 %fi52 to i64, !llfi_index !205
  %fi53 = call i64 @injectFault6(i64 204, i64 %150, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %151 = load float** %z, align 8, !llfi_index !206
  %fi54 = call float* @injectFault10(i64 205, float* %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %152 = getelementptr float* %fi54, i64 %fi53, !llfi_index !207
  %fi55 = call float* @injectFault10(i64 206, float* %152, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store float %fi51, float* %fi55, align 4, !llfi_index !208
  br label %153, !llfi_index !209

; <label>:153                                     ; preds = %121
  %154 = load i32* %i, align 4, !llfi_index !210
  %fi56 = call i32 @injectFault0(i64 209, i32 %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %155 = add nsw i32 %fi56, 1, !llfi_index !211
  %fi57 = call i32 @injectFault0(i64 210, i32 %155, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi57, i32* %i, align 4, !llfi_index !212
  br label %117, !llfi_index !213

; <label>:156                                     ; preds = %117
  store i32 0, i32* %i, align 4, !llfi_index !214
  br label %157, !llfi_index !215

; <label>:157                                     ; preds = %234, %156
  %158 = load i32* %i, align 4, !llfi_index !216
  %fi58 = call i32 @injectFault0(i64 215, i32 %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %159 = load i32* %rec_count, align 4, !llfi_index !217
  %fi59 = call i32 @injectFault0(i64 216, i32 %159, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %160 = icmp slt i32 %fi58, %fi59, !llfi_index !218
  %fi60 = call i1 @injectFault3(i64 217, i1 %160, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi60, label %161, label %237, !llfi_index !219

; <label>:161                                     ; preds = %157
  store float -1.000000e+00, float* %max_dist, align 4, !llfi_index !220
  store i32 0, i32* %max_idx, align 4, !llfi_index !221
  store i32 0, i32* %j, align 4, !llfi_index !222
  br label %162, !llfi_index !223

; <label>:162                                     ; preds = %186, %161
  %163 = load i32* %j, align 4, !llfi_index !224
  %fi61 = call i32 @injectFault0(i64 223, i32 %163, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %164 = load i32* %k, align 4, !llfi_index !225
  %fi62 = call i32 @injectFault0(i64 224, i32 %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %165 = icmp slt i32 %fi61, %fi62, !llfi_index !226
  %fi63 = call i1 @injectFault3(i64 225, i1 %165, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi63, label %166, label %189, !llfi_index !227

; <label>:166                                     ; preds = %162
  %167 = load i32* %j, align 4, !llfi_index !228
  %fi64 = call i32 @injectFault0(i64 227, i32 %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %168 = sext i32 %fi64 to i64, !llfi_index !229
  %fi65 = call i64 @injectFault6(i64 228, i64 %168, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %169 = load %struct.neighbor** %neighbors, align 8, !llfi_index !230
  %fi66 = call %struct.neighbor* @injectFault7(i64 229, %struct.neighbor* %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %170 = getelementptr %struct.neighbor* %fi66, i64 %fi65, !llfi_index !231
  %fi67 = call %struct.neighbor* @injectFault7(i64 230, %struct.neighbor* %170, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %171 = getelementptr %struct.neighbor* %fi67, i32 0, i32 1, !llfi_index !232
  %fi68 = call double* @injectFault8(i64 231, double* %171, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %172 = load double* %fi68, align 8, !llfi_index !233
  %fi69 = call double @injectFault9(i64 232, double %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %173 = load float* %max_dist, align 4, !llfi_index !234
  %fi122 = call float @injectFault5(i64 233, float %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %174 = fpext float %fi122 to double, !llfi_index !235
  %fi123 = call double @injectFault9(i64 234, double %174, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %175 = fcmp ogt double %fi69, %fi123, !llfi_index !236
  %fi124 = call i1 @injectFault3(i64 235, i1 %175, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi124, label %176, label %185, !llfi_index !237

; <label>:176                                     ; preds = %166
  %177 = load i32* %j, align 4, !llfi_index !238
  %fi125 = call i32 @injectFault0(i64 237, i32 %177, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %178 = sext i32 %fi125 to i64, !llfi_index !239
  %fi126 = call i64 @injectFault6(i64 238, i64 %178, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %179 = load %struct.neighbor** %neighbors, align 8, !llfi_index !240
  %fi127 = call %struct.neighbor* @injectFault7(i64 239, %struct.neighbor* %179, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %180 = getelementptr %struct.neighbor* %fi127, i64 %fi126, !llfi_index !241
  %fi128 = call %struct.neighbor* @injectFault7(i64 240, %struct.neighbor* %180, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %181 = getelementptr %struct.neighbor* %fi128, i32 0, i32 1, !llfi_index !242
  %fi129 = call double* @injectFault8(i64 241, double* %181, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %182 = load double* %fi129, align 8, !llfi_index !243
  %fi130 = call double @injectFault9(i64 242, double %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %183 = fptrunc double %fi130 to float, !llfi_index !244
  %fi131 = call float @injectFault5(i64 243, float %183, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store float %fi131, float* %max_dist, align 4, !llfi_index !245
  %184 = load i32* %j, align 4, !llfi_index !246
  %fi132 = call i32 @injectFault0(i64 245, i32 %184, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi132, i32* %max_idx, align 4, !llfi_index !247
  br label %185, !llfi_index !248

; <label>:185                                     ; preds = %176, %166
  br label %186, !llfi_index !249

; <label>:186                                     ; preds = %185
  %187 = load i32* %j, align 4, !llfi_index !250
  %fi133 = call i32 @injectFault0(i64 249, i32 %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %188 = add nsw i32 %fi133, 1, !llfi_index !251
  %fi134 = call i32 @injectFault0(i64 250, i32 %188, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi134, i32* %j, align 4, !llfi_index !252
  br label %162, !llfi_index !253

; <label>:189                                     ; preds = %162
  %190 = load i32* %i, align 4, !llfi_index !254
  %fi135 = call i32 @injectFault0(i64 253, i32 %190, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %191 = sext i32 %fi135 to i64, !llfi_index !255
  %fi136 = call i64 @injectFault6(i64 254, i64 %191, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %192 = load float** %z, align 8, !llfi_index !256
  %fi137 = call float* @injectFault10(i64 255, float* %192, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %193 = getelementptr float* %fi137, i64 %fi136, !llfi_index !257
  %fi138 = call float* @injectFault10(i64 256, float* %193, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %194 = load float* %fi138, align 4, !llfi_index !258
  %fi139 = call float @injectFault5(i64 257, float %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %195 = fpext float %fi139 to double, !llfi_index !259
  %fi140 = call double @injectFault9(i64 258, double %195, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %196 = load i32* %max_idx, align 4, !llfi_index !260
  %fi141 = call i32 @injectFault0(i64 259, i32 %196, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %197 = sext i32 %fi141 to i64, !llfi_index !261
  %fi142 = call i64 @injectFault6(i64 260, i64 %197, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %198 = load %struct.neighbor** %neighbors, align 8, !llfi_index !262
  %fi143 = call %struct.neighbor* @injectFault7(i64 261, %struct.neighbor* %198, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %199 = getelementptr %struct.neighbor* %fi143, i64 %fi142, !llfi_index !263
  %fi144 = call %struct.neighbor* @injectFault7(i64 262, %struct.neighbor* %199, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %200 = getelementptr %struct.neighbor* %fi144, i32 0, i32 1, !llfi_index !264
  %fi145 = call double* @injectFault8(i64 263, double* %200, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %201 = load double* %fi145, align 8, !llfi_index !265
  %fi146 = call double @injectFault9(i64 264, double %201, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %202 = fcmp olt double %fi140, %fi146, !llfi_index !266
  %fi147 = call i1 @injectFault3(i64 265, i1 %202, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi147, label %203, label %233, !llfi_index !267

; <label>:203                                     ; preds = %189
  %204 = load i32* %i, align 4, !llfi_index !268
  %fi148 = call i32 @injectFault0(i64 267, i32 %204, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %205 = add nsw i32 %fi148, 1, !llfi_index !269
  %fi149 = call i32 @injectFault0(i64 268, i32 %205, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %206 = mul nsw i32 %fi149, 49, !llfi_index !270
  %fi150 = call i32 @injectFault0(i64 269, i32 %206, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %207 = sub nsw i32 %fi150, 1, !llfi_index !271
  %fi151 = call i32 @injectFault0(i64 270, i32 %207, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %208 = sext i32 %fi151 to i64, !llfi_index !272
  %fi152 = call i64 @injectFault6(i64 271, i64 %208, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %209 = getelementptr [490 x i8]* %sandbox, i32 0, i64 %fi152, !llfi_index !273
  %fi153 = call i8* @injectFault2(i64 272, i8* %209, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i8 0, i8* %fi153, align 1, !llfi_index !274
  %210 = load i32* %max_idx, align 4, !llfi_index !275
  %fi154 = call i32 @injectFault0(i64 274, i32 %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %211 = sext i32 %fi154 to i64, !llfi_index !276
  %fi155 = call i64 @injectFault6(i64 275, i64 %211, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %212 = load %struct.neighbor** %neighbors, align 8, !llfi_index !277
  %fi156 = call %struct.neighbor* @injectFault7(i64 276, %struct.neighbor* %212, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %213 = getelementptr %struct.neighbor* %fi156, i64 %fi155, !llfi_index !278
  %fi157 = call %struct.neighbor* @injectFault7(i64 277, %struct.neighbor* %213, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %214 = getelementptr %struct.neighbor* %fi157, i32 0, i32 0, !llfi_index !279
  %fi158 = call [49 x i8]* @injectFault11(i64 278, [49 x i8]* %214, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %215 = getelementptr [49 x i8]* %fi158, i32 0, i32 0, !llfi_index !280
  %fi159 = call i8* @injectFault2(i64 279, i8* %215, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %216 = getelementptr [490 x i8]* %sandbox, i32 0, i32 0, !llfi_index !281
  %fi160 = call i8* @injectFault2(i64 280, i8* %216, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %217 = load i32* %i, align 4, !llfi_index !282
  %fi161 = call i32 @injectFault0(i64 281, i32 %217, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %218 = mul nsw i32 %fi161, 49, !llfi_index !283
  %fi162 = call i32 @injectFault0(i64 282, i32 %218, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %219 = sext i32 %fi162 to i64, !llfi_index !284
  %fi163 = call i64 @injectFault6(i64 283, i64 %219, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %220 = getelementptr i8* %fi160, i64 %fi163, !llfi_index !285
  %fi164 = call i8* @injectFault2(i64 284, i8* %220, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %221 = call i8* @strcpy(i8* %fi159, i8* %fi164) #7, !llfi_index !286
  %222 = load i32* %i, align 4, !llfi_index !287
  %fi165 = call i32 @injectFault0(i64 286, i32 %222, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %223 = sext i32 %fi165 to i64, !llfi_index !288
  %fi166 = call i64 @injectFault6(i64 287, i64 %223, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %224 = load float** %z, align 8, !llfi_index !289
  %fi167 = call float* @injectFault10(i64 288, float* %224, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %225 = getelementptr float* %fi167, i64 %fi166, !llfi_index !290
  %fi168 = call float* @injectFault10(i64 289, float* %225, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %226 = load float* %fi168, align 4, !llfi_index !291
  %fi169 = call float @injectFault5(i64 290, float %226, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %227 = fpext float %fi169 to double, !llfi_index !292
  %fi170 = call double @injectFault9(i64 291, double %227, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %228 = load i32* %max_idx, align 4, !llfi_index !293
  %fi171 = call i32 @injectFault0(i64 292, i32 %228, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %229 = sext i32 %fi171 to i64, !llfi_index !294
  %fi172 = call i64 @injectFault6(i64 293, i64 %229, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %230 = load %struct.neighbor** %neighbors, align 8, !llfi_index !295
  %fi173 = call %struct.neighbor* @injectFault7(i64 294, %struct.neighbor* %230, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %231 = getelementptr %struct.neighbor* %fi173, i64 %fi172, !llfi_index !296
  %fi174 = call %struct.neighbor* @injectFault7(i64 295, %struct.neighbor* %231, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %232 = getelementptr %struct.neighbor* %fi174, i32 0, i32 1, !llfi_index !297
  %fi175 = call double* @injectFault8(i64 296, double* %232, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store double %fi170, double* %fi175, align 8, !llfi_index !298
  br label %233, !llfi_index !299

; <label>:233                                     ; preds = %203, %189
  br label %234, !llfi_index !300

; <label>:234                                     ; preds = %233
  %235 = load i32* %i, align 4, !llfi_index !301
  %fi176 = call i32 @injectFault0(i64 300, i32 %235, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %236 = add nsw i32 %fi176, 1, !llfi_index !302
  %fi177 = call i32 @injectFault0(i64 301, i32 %236, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi177, i32* %i, align 4, !llfi_index !303
  br label %157, !llfi_index !304

; <label>:237                                     ; preds = %157
  br label %75, !llfi_index !305

; <label>:238                                     ; preds = %75
  %239 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0)), !llfi_index !306
  store %struct._IO_FILE* %239, %struct._IO_FILE** %out, align 8, !llfi_index !307
  %240 = load %struct._IO_FILE** %out, align 8, !llfi_index !308
  %fi178 = call %struct._IO_FILE* @injectFault4(i64 307, %struct._IO_FILE* %240, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %241 = load i32* %k, align 4, !llfi_index !309
  %fi179 = call i32 @injectFault0(i64 308, i32 %241, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi178, i8* getelementptr inbounds ([31 x i8]* @.str11, i32 0, i32 0), i32 %fi179), !llfi_index !310
  %243 = load i32* %k, align 4, !llfi_index !311
  %fi180 = call i32 @injectFault0(i64 310, i32 %243, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %244 = sub nsw i32 %fi180, 1, !llfi_index !312
  %fi181 = call i32 @injectFault0(i64 311, i32 %244, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi181, i32* %j, align 4, !llfi_index !313
  br label %245, !llfi_index !314

; <label>:245                                     ; preds = %272, %238
  %246 = load i32* %j, align 4, !llfi_index !315
  %fi182 = call i32 @injectFault0(i64 314, i32 %246, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %247 = icmp sge i32 %fi182, 0, !llfi_index !316
  %fi183 = call i1 @injectFault3(i64 315, i1 %247, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi183, label %248, label %275, !llfi_index !317

; <label>:248                                     ; preds = %245
  %249 = load i32* %j, align 4, !llfi_index !318
  %fi184 = call i32 @injectFault0(i64 317, i32 %249, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %250 = sext i32 %fi184 to i64, !llfi_index !319
  %fi185 = call i64 @injectFault6(i64 318, i64 %250, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %251 = load %struct.neighbor** %neighbors, align 8, !llfi_index !320
  %fi186 = call %struct.neighbor* @injectFault7(i64 319, %struct.neighbor* %251, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %252 = getelementptr %struct.neighbor* %fi186, i64 %fi185, !llfi_index !321
  %fi187 = call %struct.neighbor* @injectFault7(i64 320, %struct.neighbor* %252, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %253 = getelementptr %struct.neighbor* %fi187, i32 0, i32 1, !llfi_index !322
  %fi188 = call double* @injectFault8(i64 321, double* %253, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %254 = load double* %fi188, align 8, !llfi_index !323
  %fi189 = call double @injectFault9(i64 322, double %254, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %255 = fcmp oeq double %fi189, 1.000000e+04, !llfi_index !324
  %fi190 = call i1 @injectFault3(i64 323, i1 %255, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !35
  br i1 %fi190, label %271, label %256, !llfi_index !325

; <label>:256                                     ; preds = %248
  %257 = load %struct._IO_FILE** %out, align 8, !llfi_index !326
  %fi102 = call %struct._IO_FILE* @injectFault4(i64 325, %struct._IO_FILE* %257, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %258 = load i32* %j, align 4, !llfi_index !327
  %fi103 = call i32 @injectFault0(i64 326, i32 %258, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %259 = sext i32 %fi103 to i64, !llfi_index !328
  %fi104 = call i64 @injectFault6(i64 327, i64 %259, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %260 = load %struct.neighbor** %neighbors, align 8, !llfi_index !329
  %fi105 = call %struct.neighbor* @injectFault7(i64 328, %struct.neighbor* %260, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %261 = getelementptr %struct.neighbor* %fi105, i64 %fi104, !llfi_index !330
  %fi106 = call %struct.neighbor* @injectFault7(i64 329, %struct.neighbor* %261, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %262 = getelementptr %struct.neighbor* %fi106, i32 0, i32 0, !llfi_index !331
  %fi107 = call [49 x i8]* @injectFault11(i64 330, [49 x i8]* %262, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %263 = getelementptr [49 x i8]* %fi107, i32 0, i32 0, !llfi_index !332
  %fi108 = call i8* @injectFault2(i64 331, i8* %263, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %264 = load i32* %j, align 4, !llfi_index !333
  %fi109 = call i32 @injectFault0(i64 332, i32 %264, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %265 = sext i32 %fi109 to i64, !llfi_index !334
  %fi110 = call i64 @injectFault6(i64 333, i64 %265, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %266 = load %struct.neighbor** %neighbors, align 8, !llfi_index !335
  %fi111 = call %struct.neighbor* @injectFault7(i64 334, %struct.neighbor* %266, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %267 = getelementptr %struct.neighbor* %fi111, i64 %fi110, !llfi_index !336
  %fi112 = call %struct.neighbor* @injectFault7(i64 335, %struct.neighbor* %267, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %268 = getelementptr %struct.neighbor* %fi112, i32 0, i32 1, !llfi_index !337
  %fi113 = call double* @injectFault8(i64 336, double* %268, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %269 = load double* %fi113, align 8, !llfi_index !338
  %fi191 = call double @injectFault9(i64 337, double %269, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %270 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi102, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* %fi108, double %fi191), !llfi_index !339
  br label %271, !llfi_index !340

; <label>:271                                     ; preds = %256, %248
  br label %272, !llfi_index !341

; <label>:272                                     ; preds = %271
  %273 = load i32* %j, align 4, !llfi_index !342
  %fi192 = call i32 @injectFault0(i64 341, i32 %273, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %274 = add nsw i32 %fi192, -1, !llfi_index !343
  %fi193 = call i32 @injectFault0(i64 342, i32 %274, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !35
  store i32 %fi193, i32* %j, align 4, !llfi_index !344
  br label %245, !llfi_index !345

; <label>:275                                     ; preds = %245
  %276 = load %struct._IO_FILE** %out, align 8, !llfi_index !346
  %fi194 = call %struct._IO_FILE* @injectFault4(i64 345, %struct._IO_FILE* %276, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %277 = call i32 @fclose(%struct._IO_FILE* %fi194), !llfi_index !347
  %278 = load %struct._IO_FILE** %flist, align 8, !llfi_index !348
  %fi195 = call %struct._IO_FILE* @injectFault4(i64 347, %struct._IO_FILE* %278, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !35
  %279 = call i32 @fclose(%struct._IO_FILE* %fi195), !llfi_index !349
  call void @postInjections()
  ret i32 0, !llfi_index !350
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare void @perror(i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

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

define i8** @injectFault1(i64, i8**, i32, i32, i32, i32, i8*) {
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

define i8* @injectFault2(i64, i8*, i32, i32, i32, i32, i8*) {
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

define %struct._IO_FILE* @injectFault4(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
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

define float @injectFault5(i64, float, i32, i32, i32, i32, i8*) {
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

define i64 @injectFault6(i64, i64, i32, i32, i32, i32, i8*) {
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

define %struct.neighbor* @injectFault7(i64, %struct.neighbor*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.neighbor*
  store %struct.neighbor* %1, %struct.neighbor** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.neighbor** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.neighbor** %tmploc
  ret %struct.neighbor* %updateval
}

define double* @injectFault8(i64, double*, i32, i32, i32, i32, i8*) {
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

define double @injectFault9(i64, double, i32, i32, i32, i32, i8*) {
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

define float* @injectFault10(i64, float*, i32, i32, i32, i32, i8*) {
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

define [49 x i8]* @injectFault11(i64, [49 x i8]*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca [49 x i8]*
  store [49 x i8]* %1, [49 x i8]** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast [49 x i8]** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load [49 x i8]** %tmploc
  ret [49 x i8]* %updateval
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

!llvm.ident = !{!0}

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
!35 = metadata !{metadata !"after"}
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
