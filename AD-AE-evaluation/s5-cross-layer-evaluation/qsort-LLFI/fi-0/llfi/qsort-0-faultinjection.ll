; ModuleID = '/home/foo/cross-layer-sid/FI-base/LLFI-base-Origin/qsort/fi-0/llfi/qsort-0-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.myStringStruct = type { [128 x i8] }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@select_namestr = internal constant [7 x i8] c"select\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@add_namestr = internal constant [4 x i8] c"add\00"

; Function Attrs: nounwind uwtable
define i32 @compare(i8* %elem1, i8* %elem2) #0 {
  %1 = alloca i8*, align 8, !llfi_index !1
  %2 = alloca i8*, align 8, !llfi_index !2
  %result = alloca i32, align 4, !llfi_index !3
  store i8* %elem1, i8** %1, align 8, !llfi_index !4
  store i8* %elem2, i8** %2, align 8, !llfi_index !5
  %3 = load i8** %1, align 8, !llfi_index !6
  %fi = call i8* @injectFault4(i64 6, i8* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %4 = bitcast i8* %fi to %struct.myStringStruct*, !llfi_index !8
  %fi1 = call %struct.myStringStruct* @injectFault2(i64 7, %struct.myStringStruct* %4, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %5 = getelementptr %struct.myStringStruct* %fi1, i32 0, i32 0, !llfi_index !9
  %fi2 = call [128 x i8]* @injectFault3(i64 8, [128 x i8]* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %6 = getelementptr [128 x i8]* %fi2, i32 0, i32 0, !llfi_index !10
  %fi3 = call i8* @injectFault4(i64 9, i8* %6, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %7 = load i8** %2, align 8, !llfi_index !11
  %fi4 = call i8* @injectFault4(i64 10, i8* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %8 = bitcast i8* %fi4 to %struct.myStringStruct*, !llfi_index !12
  %fi5 = call %struct.myStringStruct* @injectFault2(i64 11, %struct.myStringStruct* %8, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %9 = getelementptr %struct.myStringStruct* %fi5, i32 0, i32 0, !llfi_index !13
  %fi7 = call [128 x i8]* @injectFault3(i64 12, [128 x i8]* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %10 = getelementptr [128 x i8]* %fi7, i32 0, i32 0, !llfi_index !14
  %fi8 = call i8* @injectFault4(i64 13, i8* %10, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %11 = call i32 @strcmp(i8* %fi3, i8* %fi8) #4, !llfi_index !15
  store i32 %11, i32* %result, align 4, !llfi_index !16
  %12 = load i32* %result, align 4, !llfi_index !17
  %fi9 = call i32 @injectFault1(i64 16, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %13 = icmp slt i32 %fi9, 0, !llfi_index !18
  %fi10 = call i1 @injectFault5(i64 17, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br i1 %fi10, label %14, label %15, !llfi_index !19

; <label>:14                                      ; preds = %0
  br label %19, !llfi_index !20

; <label>:15                                      ; preds = %0
  %16 = load i32* %result, align 4, !llfi_index !21
  %fi11 = call i32 @injectFault1(i64 20, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %17 = icmp eq i32 %fi11, 0, !llfi_index !22
  %fi6 = call i1 @injectFault5(i64 21, i1 %17, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %18 = select i1 %fi6, i32 0, i32 -1, !llfi_index !23
  %fi12 = call i32 @injectFault1(i64 22, i32 %18, i32 50, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @select_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br label %19, !llfi_index !24

; <label>:19                                      ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ %fi12, %15 ], !llfi_index !25
  ret i32 %20, !llfi_index !26
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !27
  %2 = alloca i32, align 4, !llfi_index !28
  %3 = alloca i8**, align 8, !llfi_index !29
  %array = alloca [60000 x %struct.myStringStruct], align 16, !llfi_index !30
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !31
  %i = alloca i32, align 4, !llfi_index !32
  %count = alloca i32, align 4, !llfi_index !33
  store i32 0, i32* %1, !llfi_index !34
  store i32 %argc, i32* %2, align 4, !llfi_index !35
  store i8** %argv, i8*** %3, align 8, !llfi_index !36
  store i32 0, i32* %count, align 4, !llfi_index !37
  %4 = load i32* %2, align 4, !llfi_index !38
  %fi4 = call i32 @injectFault1(i64 37, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %5 = icmp slt i32 %fi4, 2, !llfi_index !39
  %fi5 = call i1 @injectFault5(i64 38, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br i1 %fi5, label %6, label %9, !llfi_index !40

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !41
  %fi6 = call %struct._IO_FILE* @injectFault0(i64 40, %struct._IO_FILE* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi6, i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0)), !llfi_index !42
  call void @postInjections()
  call void @exit(i32 -1) #5, !llfi_index !43
  unreachable, !llfi_index !44

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8, !llfi_index !45
  %fi8 = call i8** @injectFault7(i64 44, i8** %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %11 = getelementptr i8** %fi8, i64 1, !llfi_index !46
  %fi9 = call i8** @injectFault7(i64 45, i8** %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %12 = load i8** %fi9, align 8, !llfi_index !47
  %fi10 = call i8* @injectFault4(i64 46, i8* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %13 = call %struct._IO_FILE* @fopen(i8* %fi10, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !48
  store %struct._IO_FILE* %13, %struct._IO_FILE** %fp, align 8, !llfi_index !49
  br label %14, !llfi_index !50

; <label>:14                                      ; preds = %27, %9
  %15 = load %struct._IO_FILE** %fp, align 8, !llfi_index !51
  %fi = call %struct._IO_FILE* @injectFault0(i64 50, %struct._IO_FILE* %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %16 = load i32* %count, align 4, !llfi_index !52
  %fi1 = call i32 @injectFault1(i64 51, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %17 = sext i32 %fi1 to i64, !llfi_index !53
  %fi7 = call i64 @injectFault6(i64 52, i64 %17, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %18 = getelementptr [60000 x %struct.myStringStruct]* %array, i32 0, i64 %fi7, !llfi_index !54
  %fi2 = call %struct.myStringStruct* @injectFault2(i64 53, %struct.myStringStruct* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %19 = getelementptr %struct.myStringStruct* %fi2, i32 0, i32 0, !llfi_index !55
  %fi3 = call [128 x i8]* @injectFault3(i64 54, [128 x i8]* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fi, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %fi3), !llfi_index !56
  %21 = icmp eq i32 %20, 1, !llfi_index !57
  %fi11 = call i1 @injectFault5(i64 56, i1 %21, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br i1 %fi11, label %22, label %25, !llfi_index !58

; <label>:22                                      ; preds = %14
  %23 = load i32* %count, align 4, !llfi_index !59
  %fi12 = call i32 @injectFault1(i64 58, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %24 = icmp slt i32 %fi12, 60000, !llfi_index !60
  %fi13 = call i1 @injectFault5(i64 59, i1 %24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br label %25, !llfi_index !61

; <label>:25                                      ; preds = %22, %14
  %26 = phi i1 [ false, %14 ], [ %fi13, %22 ], !llfi_index !62
  br i1 %26, label %27, label %30, !llfi_index !63

; <label>:27                                      ; preds = %25
  %28 = load i32* %count, align 4, !llfi_index !64
  %fi14 = call i32 @injectFault1(i64 63, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %29 = add nsw i32 %fi14, 1, !llfi_index !65
  %fi15 = call i32 @injectFault1(i64 64, i32 %29, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !7
  store i32 %fi15, i32* %count, align 4, !llfi_index !66
  br label %14, !llfi_index !67

; <label>:30                                      ; preds = %25
  br label %31, !llfi_index !68

; <label>:31                                      ; preds = %30
  %32 = load i32* %count, align 4, !llfi_index !69
  %fi16 = call i32 @injectFault1(i64 68, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i32 %fi16), !llfi_index !70
  %34 = getelementptr [60000 x %struct.myStringStruct]* %array, i32 0, i32 0, !llfi_index !71
  %fi17 = call %struct.myStringStruct* @injectFault2(i64 70, %struct.myStringStruct* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %35 = bitcast %struct.myStringStruct* %fi17 to i8*, !llfi_index !72
  %fi18 = call i8* @injectFault4(i64 71, i8* %35, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %36 = load i32* %count, align 4, !llfi_index !73
  %fi19 = call i32 @injectFault1(i64 72, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %37 = sext i32 %fi19 to i64, !llfi_index !74
  %fi20 = call i64 @injectFault6(i64 73, i64 %37, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !7
  call void @qsort(i8* %fi18, i64 %fi20, i64 128, i32 (i8*, i8*)* @compare), !llfi_index !75
  store i32 0, i32* %i, align 4, !llfi_index !76
  br label %38, !llfi_index !77

; <label>:38                                      ; preds = %49, %31
  %39 = load i32* %i, align 4, !llfi_index !78
  %fi21 = call i32 @injectFault1(i64 77, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %40 = load i32* %count, align 4, !llfi_index !79
  %fi22 = call i32 @injectFault1(i64 78, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %41 = icmp slt i32 %fi21, %fi22, !llfi_index !80
  %fi23 = call i1 @injectFault5(i64 79, i1 %41, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !7
  br i1 %fi23, label %42, label %52, !llfi_index !81

; <label>:42                                      ; preds = %38
  %43 = load i32* %i, align 4, !llfi_index !82
  %fi24 = call i32 @injectFault1(i64 81, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %44 = sext i32 %fi24 to i64, !llfi_index !83
  %fi25 = call i64 @injectFault6(i64 82, i64 %44, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %45 = getelementptr [60000 x %struct.myStringStruct]* %array, i32 0, i64 %fi25, !llfi_index !84
  %fi26 = call %struct.myStringStruct* @injectFault2(i64 83, %struct.myStringStruct* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %46 = getelementptr %struct.myStringStruct* %fi26, i32 0, i32 0, !llfi_index !85
  %fi27 = call [128 x i8]* @injectFault3(i64 84, [128 x i8]* %46, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %47 = getelementptr [128 x i8]* %fi27, i32 0, i32 0, !llfi_index !86
  %fi28 = call i8* @injectFault4(i64 85, i8* %47, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %fi28), !llfi_index !87
  br label %49, !llfi_index !88

; <label>:49                                      ; preds = %42
  %50 = load i32* %i, align 4, !llfi_index !89
  %fi29 = call i32 @injectFault1(i64 88, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !7
  %51 = add nsw i32 %fi29, 1, !llfi_index !90
  %fi30 = call i32 @injectFault1(i64 89, i32 %51, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !7
  store i32 %fi30, i32* %i, align 4, !llfi_index !91
  br label %38, !llfi_index !92

; <label>:52                                      ; preds = %38
  call void @postInjections()
  ret i32 0, !llfi_index !93
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

define %struct._IO_FILE* @injectFault0(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
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

define i32 @injectFault1(i64, i32, i32, i32, i32, i32, i8*) {
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

define %struct.myStringStruct* @injectFault2(i64, %struct.myStringStruct*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.myStringStruct*
  store %struct.myStringStruct* %1, %struct.myStringStruct** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.myStringStruct** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.myStringStruct** %tmploc
  ret %struct.myStringStruct* %updateval
}

define [128 x i8]* @injectFault3(i64, [128 x i8]*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca [128 x i8]*
  store [128 x i8]* %1, [128 x i8]** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast [128 x i8]** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load [128 x i8]** %tmploc
  ret [128 x i8]* %updateval
}

define i8* @injectFault4(i64, i8*, i32, i32, i32, i32, i8*) {
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

define i1 @injectFault5(i64, i1, i32, i32, i32, i32, i8*) {
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

define i8** @injectFault7(i64, i8**, i32, i32, i32, i32, i8*) {
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

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{metadata !"after"}
!8 = metadata !{i64 7}
!9 = metadata !{i64 8}
!10 = metadata !{i64 9}
!11 = metadata !{i64 10}
!12 = metadata !{i64 11}
!13 = metadata !{i64 12}
!14 = metadata !{i64 13}
!15 = metadata !{i64 14}
!16 = metadata !{i64 15}
!17 = metadata !{i64 16}
!18 = metadata !{i64 17}
!19 = metadata !{i64 18}
!20 = metadata !{i64 19}
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
