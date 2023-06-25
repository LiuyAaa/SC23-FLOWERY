; ModuleID = '/home/foo/cross-layer-sid/FI-base/LLFI-base-Origin/patricia/fi-0/llfi/patricia-0-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }
%struct.in_addr = type { i32 }
%struct.MyNode = type { i32, double }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@and_namestr = internal constant [4 x i8] c"and\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@shl_namestr = internal constant [4 x i8] c"shl\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %3 = alloca i8**, align 8, !llfi_index !3
  %phead = alloca %struct.ptree*, align 8, !llfi_index !4
  %p = alloca %struct.ptree*, align 8, !llfi_index !5
  %pfind = alloca %struct.ptree*, align 8, !llfi_index !6
  %pm = alloca %struct.ptree_mask*, align 8, !llfi_index !7
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !8
  %line = alloca [128 x i8], align 16, !llfi_index !9
  %addr_str = alloca [16 x i8], align 16, !llfi_index !10
  %addr = alloca %struct.in_addr, align 4, !llfi_index !11
  %mask = alloca i64, align 8, !llfi_index !12
  %time = alloca float, align 4, !llfi_index !13
  store i32 0, i32* %1, !llfi_index !14
  store i32 %argc, i32* %2, align 4, !llfi_index !15
  store i8** %argv, i8*** %3, align 8, !llfi_index !16
  store i64 4294967295, i64* %mask, align 8, !llfi_index !17
  %4 = load i32* %2, align 4, !llfi_index !18
  %fi2 = call i32 @injectFault2(i64 18, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %5 = icmp slt i32 %fi2, 2, !llfi_index !20
  %fi3 = call i1 @injectFault3(i64 19, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi3, label %6, label %11, !llfi_index !21

; <label>:6                                       ; preds = %0
  %7 = load i8*** %3, align 8, !llfi_index !22
  %fi4 = call i8** @injectFault4(i64 21, i8** %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %8 = getelementptr i8** %fi4, i64 0, !llfi_index !23
  %fi5 = call i8** @injectFault4(i64 22, i8** %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %9 = load i8** %fi5, align 8, !llfi_index !24
  %fi6 = call i8* @injectFault1(i64 23, i8* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %fi6), !llfi_index !25
  call void @postInjections()
  call void @exit(i32 -1) #7, !llfi_index !26
  unreachable, !llfi_index !27

; <label>:11                                      ; preds = %0
  %12 = load i8*** %3, align 8, !llfi_index !28
  %fi7 = call i8** @injectFault4(i64 27, i8** %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %13 = getelementptr i8** %fi7, i64 1, !llfi_index !29
  %fi8 = call i8** @injectFault4(i64 28, i8** %13, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %14 = load i8** %fi8, align 8, !llfi_index !30
  %fi9 = call i8* @injectFault1(i64 29, i8* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %15 = call %struct._IO_FILE* @fopen(i8* %fi9, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !31
  store %struct._IO_FILE* %15, %struct._IO_FILE** %fp, align 8, !llfi_index !32
  %16 = icmp eq %struct._IO_FILE* %15, null, !llfi_index !33
  %fi10 = call i1 @injectFault3(i64 32, i1 %16, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi10, label %17, label %22, !llfi_index !34

; <label>:17                                      ; preds = %11
  %18 = load i8*** %3, align 8, !llfi_index !35
  %fi12 = call i8** @injectFault4(i64 34, i8** %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %19 = getelementptr i8** %fi12, i64 1, !llfi_index !36
  %fi13 = call i8** @injectFault4(i64 35, i8** %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %20 = load i8** %fi13, align 8, !llfi_index !37
  %fi14 = call i8* @injectFault1(i64 36, i8* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0), i8* %fi14), !llfi_index !38
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !39
  unreachable, !llfi_index !40

; <label>:22                                      ; preds = %11
  %23 = call noalias i8* @malloc(i64 40) #4, !llfi_index !41
  %24 = bitcast i8* %23 to %struct.ptree*, !llfi_index !42
  %fi15 = call %struct.ptree* @injectFault0(i64 41, %struct.ptree* %24, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi15, %struct.ptree** %phead, align 8, !llfi_index !43
  %25 = load %struct.ptree** %phead, align 8, !llfi_index !44
  %fi16 = call %struct.ptree* @injectFault0(i64 43, %struct.ptree* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %26 = icmp ne %struct.ptree* %fi16, null, !llfi_index !45
  %fi17 = call i1 @injectFault3(i64 44, i1 %26, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi17, label %28, label %27, !llfi_index !46

; <label>:27                                      ; preds = %22
  call void @perror(i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0)), !llfi_index !47
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !48
  unreachable, !llfi_index !49

; <label>:28                                      ; preds = %22
  %29 = load %struct.ptree** %phead, align 8, !llfi_index !50
  %fi = call %struct.ptree* @injectFault0(i64 49, %struct.ptree* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %30 = bitcast %struct.ptree* %fi to i8*, !llfi_index !51
  %fi1 = call i8* @injectFault1(i64 50, i8* %30, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi1, i8 0, i64 40, i32 8, i1 false), !llfi_index !52
  %31 = call noalias i8* @malloc(i64 16) #4, !llfi_index !53
  %32 = bitcast i8* %31 to %struct.ptree_mask*, !llfi_index !54
  %fi25 = call %struct.ptree_mask* @injectFault8(i64 53, %struct.ptree_mask* %32, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %33 = load %struct.ptree** %phead, align 8, !llfi_index !55
  %fi11 = call %struct.ptree* @injectFault0(i64 54, %struct.ptree* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %34 = getelementptr %struct.ptree* %fi11, i32 0, i32 1, !llfi_index !56
  %fi28 = call %struct.ptree_mask** @injectFault9(i64 55, %struct.ptree_mask** %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi25, %struct.ptree_mask** %fi28, align 8, !llfi_index !57
  %35 = load %struct.ptree** %phead, align 8, !llfi_index !58
  %fi29 = call %struct.ptree* @injectFault0(i64 57, %struct.ptree* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %36 = getelementptr %struct.ptree* %fi29, i32 0, i32 1, !llfi_index !59
  %fi30 = call %struct.ptree_mask** @injectFault9(i64 58, %struct.ptree_mask** %36, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %37 = load %struct.ptree_mask** %fi30, align 8, !llfi_index !60
  %fi31 = call %struct.ptree_mask* @injectFault8(i64 59, %struct.ptree_mask* %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %38 = icmp ne %struct.ptree_mask* %fi31, null, !llfi_index !61
  %fi32 = call i1 @injectFault3(i64 60, i1 %38, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi32, label %40, label %39, !llfi_index !62

; <label>:39                                      ; preds = %28
  call void @perror(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0)), !llfi_index !63
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !64
  unreachable, !llfi_index !65

; <label>:40                                      ; preds = %28
  %41 = load %struct.ptree** %phead, align 8, !llfi_index !66
  %fi33 = call %struct.ptree* @injectFault0(i64 65, %struct.ptree* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %42 = getelementptr %struct.ptree* %fi33, i32 0, i32 1, !llfi_index !67
  %fi34 = call %struct.ptree_mask** @injectFault9(i64 66, %struct.ptree_mask** %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %43 = load %struct.ptree_mask** %fi34, align 8, !llfi_index !68
  %fi35 = call %struct.ptree_mask* @injectFault8(i64 67, %struct.ptree_mask* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %44 = bitcast %struct.ptree_mask* %fi35 to i8*, !llfi_index !69
  %fi36 = call i8* @injectFault1(i64 68, i8* %44, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi36, i8 0, i64 16, i32 8, i1 false), !llfi_index !70
  %45 = load %struct.ptree** %phead, align 8, !llfi_index !71
  %fi37 = call %struct.ptree* @injectFault0(i64 70, %struct.ptree* %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %46 = getelementptr %struct.ptree* %fi37, i32 0, i32 1, !llfi_index !72
  %fi38 = call %struct.ptree_mask** @injectFault9(i64 71, %struct.ptree_mask** %46, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %47 = load %struct.ptree_mask** %fi38, align 8, !llfi_index !73
  %fi39 = call %struct.ptree_mask* @injectFault8(i64 72, %struct.ptree_mask* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi39, %struct.ptree_mask** %pm, align 8, !llfi_index !74
  %48 = call noalias i8* @malloc(i64 16) #4, !llfi_index !75
  %49 = bitcast i8* %48 to %struct.MyNode*, !llfi_index !76
  %fi40 = call %struct.MyNode* @injectFault10(i64 75, %struct.MyNode* %49, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %50 = bitcast %struct.MyNode* %fi40 to i8*, !llfi_index !77
  %fi41 = call i8* @injectFault1(i64 76, i8* %50, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %51 = load %struct.ptree_mask** %pm, align 8, !llfi_index !78
  %fi42 = call %struct.ptree_mask* @injectFault8(i64 77, %struct.ptree_mask* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %52 = getelementptr %struct.ptree_mask* %fi42, i32 0, i32 1, !llfi_index !79
  %fi43 = call i8** @injectFault4(i64 78, i8** %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8* %fi41, i8** %fi43, align 8, !llfi_index !80
  %53 = load %struct.ptree_mask** %pm, align 8, !llfi_index !81
  %fi44 = call %struct.ptree_mask* @injectFault8(i64 80, %struct.ptree_mask* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %54 = getelementptr %struct.ptree_mask* %fi44, i32 0, i32 1, !llfi_index !82
  %fi45 = call i8** @injectFault4(i64 81, i8** %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %55 = load i8** %fi45, align 8, !llfi_index !83
  %fi46 = call i8* @injectFault1(i64 82, i8* %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %56 = icmp ne i8* %fi46, null, !llfi_index !84
  %fi47 = call i1 @injectFault3(i64 83, i1 %56, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi47, label %58, label %57, !llfi_index !85

; <label>:57                                      ; preds = %40
  call void @perror(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0)), !llfi_index !86
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !87
  unreachable, !llfi_index !88

; <label>:58                                      ; preds = %40
  %59 = load %struct.ptree_mask** %pm, align 8, !llfi_index !89
  %fi48 = call %struct.ptree_mask* @injectFault8(i64 88, %struct.ptree_mask* %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %60 = getelementptr %struct.ptree_mask* %fi48, i32 0, i32 1, !llfi_index !90
  %fi49 = call i8** @injectFault4(i64 89, i8** %60, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %61 = load i8** %fi49, align 8, !llfi_index !91
  %fi50 = call i8* @injectFault1(i64 90, i8* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi50, i8 0, i64 1, i32 1, i1 false), !llfi_index !92
  %62 = load %struct.ptree** %phead, align 8, !llfi_index !93
  %fi51 = call %struct.ptree* @injectFault0(i64 92, %struct.ptree* %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %63 = getelementptr %struct.ptree* %fi51, i32 0, i32 2, !llfi_index !94
  %fi52 = call i8* @injectFault1(i64 93, i8* %63, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8 1, i8* %fi52, align 1, !llfi_index !95
  %64 = load %struct.ptree** %phead, align 8, !llfi_index !96
  %fi53 = call %struct.ptree* @injectFault0(i64 95, %struct.ptree* %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %65 = load %struct.ptree** %phead, align 8, !llfi_index !97
  %fi26 = call %struct.ptree* @injectFault0(i64 96, %struct.ptree* %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %66 = getelementptr %struct.ptree* %fi26, i32 0, i32 5, !llfi_index !98
  %fi27 = call %struct.ptree** @injectFault5(i64 97, %struct.ptree** %66, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi53, %struct.ptree** %fi27, align 8, !llfi_index !99
  %67 = load %struct.ptree** %phead, align 8, !llfi_index !100
  %fi18 = call %struct.ptree* @injectFault0(i64 99, %struct.ptree* %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %68 = getelementptr %struct.ptree* %fi18, i32 0, i32 4, !llfi_index !101
  %fi19 = call %struct.ptree** @injectFault5(i64 100, %struct.ptree** %68, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi53, %struct.ptree** %fi19, align 8, !llfi_index !102
  br label %69, !llfi_index !103

; <label>:69                                      ; preds = %159, %58
  %70 = getelementptr [128 x i8]* %line, i32 0, i32 0, !llfi_index !104
  %fi20 = call i8* @injectFault1(i64 103, i8* %70, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %71 = load %struct._IO_FILE** %fp, align 8, !llfi_index !105
  %fi21 = call %struct._IO_FILE* @injectFault6(i64 104, %struct._IO_FILE* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %72 = call i8* @fgets(i8* %fi20, i32 128, %struct._IO_FILE* %fi21), !llfi_index !106
  %73 = icmp ne i8* %72, null, !llfi_index !107
  %fi22 = call i1 @injectFault3(i64 106, i1 %73, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi22, label %74, label %160, !llfi_index !108

; <label>:74                                      ; preds = %69
  %75 = getelementptr [128 x i8]* %line, i32 0, i32 0, !llfi_index !109
  %fi23 = call i8* @injectFault1(i64 108, i8* %75, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %76 = bitcast %struct.in_addr* %addr to i32*, !llfi_index !110
  %fi24 = call i32* @injectFault7(i64 109, i32* %76, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %77 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi23, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), float* %time, i32* %fi24) #4, !llfi_index !111
  %78 = call noalias i8* @malloc(i64 40) #4, !llfi_index !112
  %79 = bitcast i8* %78 to %struct.ptree*, !llfi_index !113
  %fi68 = call %struct.ptree* @injectFault0(i64 112, %struct.ptree* %79, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi68, %struct.ptree** %p, align 8, !llfi_index !114
  %80 = load %struct.ptree** %p, align 8, !llfi_index !115
  %fi69 = call %struct.ptree* @injectFault0(i64 114, %struct.ptree* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %81 = icmp ne %struct.ptree* %fi69, null, !llfi_index !116
  %fi70 = call i1 @injectFault3(i64 115, i1 %81, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi70, label %83, label %82, !llfi_index !117

; <label>:82                                      ; preds = %74
  call void @perror(i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0)), !llfi_index !118
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !119
  unreachable, !llfi_index !120

; <label>:83                                      ; preds = %74
  %84 = load %struct.ptree** %p, align 8, !llfi_index !121
  %fi71 = call %struct.ptree* @injectFault0(i64 120, %struct.ptree* %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %85 = bitcast %struct.ptree* %fi71 to i8*, !llfi_index !122
  %fi72 = call i8* @injectFault1(i64 121, i8* %85, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi72, i8 0, i64 40, i32 8, i1 false), !llfi_index !123
  %86 = call noalias i8* @malloc(i64 16) #4, !llfi_index !124
  %87 = bitcast i8* %86 to %struct.ptree_mask*, !llfi_index !125
  %fi73 = call %struct.ptree_mask* @injectFault8(i64 124, %struct.ptree_mask* %87, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %88 = load %struct.ptree** %p, align 8, !llfi_index !126
  %fi74 = call %struct.ptree* @injectFault0(i64 125, %struct.ptree* %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %89 = getelementptr %struct.ptree* %fi74, i32 0, i32 1, !llfi_index !127
  %fi75 = call %struct.ptree_mask** @injectFault9(i64 126, %struct.ptree_mask** %89, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi73, %struct.ptree_mask** %fi75, align 8, !llfi_index !128
  %90 = load %struct.ptree** %p, align 8, !llfi_index !129
  %fi76 = call %struct.ptree* @injectFault0(i64 128, %struct.ptree* %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %91 = getelementptr %struct.ptree* %fi76, i32 0, i32 1, !llfi_index !130
  %fi77 = call %struct.ptree_mask** @injectFault9(i64 129, %struct.ptree_mask** %91, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %92 = load %struct.ptree_mask** %fi77, align 8, !llfi_index !131
  %fi78 = call %struct.ptree_mask* @injectFault8(i64 130, %struct.ptree_mask* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %93 = icmp ne %struct.ptree_mask* %fi78, null, !llfi_index !132
  %fi79 = call i1 @injectFault3(i64 131, i1 %93, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi79, label %95, label %94, !llfi_index !133

; <label>:94                                      ; preds = %83
  call void @perror(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0)), !llfi_index !134
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !135
  unreachable, !llfi_index !136

; <label>:95                                      ; preds = %83
  %96 = load %struct.ptree** %p, align 8, !llfi_index !137
  %fi80 = call %struct.ptree* @injectFault0(i64 136, %struct.ptree* %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %97 = getelementptr %struct.ptree* %fi80, i32 0, i32 1, !llfi_index !138
  %fi81 = call %struct.ptree_mask** @injectFault9(i64 137, %struct.ptree_mask** %97, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %98 = load %struct.ptree_mask** %fi81, align 8, !llfi_index !139
  %fi82 = call %struct.ptree_mask* @injectFault8(i64 138, %struct.ptree_mask* %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %99 = bitcast %struct.ptree_mask* %fi82 to i8*, !llfi_index !140
  %fi83 = call i8* @injectFault1(i64 139, i8* %99, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi83, i8 0, i64 16, i32 8, i1 false), !llfi_index !141
  %100 = load %struct.ptree** %p, align 8, !llfi_index !142
  %fi84 = call %struct.ptree* @injectFault0(i64 141, %struct.ptree* %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %101 = getelementptr %struct.ptree* %fi84, i32 0, i32 1, !llfi_index !143
  %fi85 = call %struct.ptree_mask** @injectFault9(i64 142, %struct.ptree_mask** %101, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %102 = load %struct.ptree_mask** %fi85, align 8, !llfi_index !144
  %fi86 = call %struct.ptree_mask* @injectFault8(i64 143, %struct.ptree_mask* %102, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi86, %struct.ptree_mask** %pm, align 8, !llfi_index !145
  %103 = call noalias i8* @malloc(i64 16) #4, !llfi_index !146
  %104 = bitcast i8* %103 to %struct.MyNode*, !llfi_index !147
  %fi87 = call %struct.MyNode* @injectFault10(i64 146, %struct.MyNode* %104, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %105 = bitcast %struct.MyNode* %fi87 to i8*, !llfi_index !148
  %fi88 = call i8* @injectFault1(i64 147, i8* %105, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %106 = load %struct.ptree_mask** %pm, align 8, !llfi_index !149
  %fi89 = call %struct.ptree_mask* @injectFault8(i64 148, %struct.ptree_mask* %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %107 = getelementptr %struct.ptree_mask* %fi89, i32 0, i32 1, !llfi_index !150
  %fi90 = call i8** @injectFault4(i64 149, i8** %107, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8* %fi88, i8** %fi90, align 8, !llfi_index !151
  %108 = load %struct.ptree_mask** %pm, align 8, !llfi_index !152
  %fi91 = call %struct.ptree_mask* @injectFault8(i64 151, %struct.ptree_mask* %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %109 = getelementptr %struct.ptree_mask* %fi91, i32 0, i32 1, !llfi_index !153
  %fi92 = call i8** @injectFault4(i64 152, i8** %109, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %110 = load i8** %fi92, align 8, !llfi_index !154
  %fi93 = call i8* @injectFault1(i64 153, i8* %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %111 = icmp ne i8* %fi93, null, !llfi_index !155
  %fi94 = call i1 @injectFault3(i64 154, i1 %111, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi94, label %113, label %112, !llfi_index !156

; <label>:112                                     ; preds = %95
  call void @perror(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0)), !llfi_index !157
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !158
  unreachable, !llfi_index !159

; <label>:113                                     ; preds = %95
  %114 = load %struct.ptree_mask** %pm, align 8, !llfi_index !160
  %fi95 = call %struct.ptree_mask* @injectFault8(i64 159, %struct.ptree_mask* %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %115 = getelementptr %struct.ptree_mask* %fi95, i32 0, i32 1, !llfi_index !161
  %fi96 = call i8** @injectFault4(i64 160, i8** %115, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %116 = load i8** %fi96, align 8, !llfi_index !162
  %fi97 = call i8* @injectFault1(i64 161, i8* %116, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @llvm.memset.p0i8.i64(i8* %fi97, i8 0, i64 1, i32 1, i1 false), !llfi_index !163
  %117 = getelementptr %struct.in_addr* %addr, i32 0, i32 0, !llfi_index !164
  %fi98 = call i32* @injectFault7(i64 163, i32* %117, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %118 = load i32* %fi98, align 4, !llfi_index !165
  %fi99 = call i32 @injectFault2(i64 164, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %119 = zext i32 %fi99 to i64, !llfi_index !166
  %fi100 = call i64 @injectFault12(i64 165, i64 %119, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %120 = load %struct.ptree** %p, align 8, !llfi_index !167
  %fi101 = call %struct.ptree* @injectFault0(i64 166, %struct.ptree* %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %121 = getelementptr %struct.ptree* %fi101, i32 0, i32 0, !llfi_index !168
  %fi102 = call i64* @injectFault11(i64 167, i64* %121, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i64 %fi100, i64* %fi102, align 8, !llfi_index !169
  %122 = load i64* %mask, align 8, !llfi_index !170
  %fi103 = call i64 @injectFault12(i64 169, i64 %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %123 = trunc i64 %fi103 to i32, !llfi_index !171
  %fi104 = call i32 @injectFault2(i64 170, i32 %123, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %124 = call i32 @htonl(i32 %fi104) #8, !llfi_index !172
  %125 = zext i32 %124 to i64, !llfi_index !173
  %fi105 = call i64 @injectFault12(i64 172, i64 %125, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %126 = load %struct.ptree** %p, align 8, !llfi_index !174
  %fi106 = call %struct.ptree* @injectFault0(i64 173, %struct.ptree* %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %127 = getelementptr %struct.ptree* %fi106, i32 0, i32 1, !llfi_index !175
  %fi107 = call %struct.ptree_mask** @injectFault9(i64 174, %struct.ptree_mask** %127, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %128 = load %struct.ptree_mask** %fi107, align 8, !llfi_index !176
  %fi108 = call %struct.ptree_mask* @injectFault8(i64 175, %struct.ptree_mask* %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %129 = getelementptr %struct.ptree_mask* %fi108, i32 0, i32 0, !llfi_index !177
  %fi54 = call i64* @injectFault11(i64 176, i64* %129, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i64 %fi105, i64* %fi54, align 8, !llfi_index !178
  %130 = getelementptr %struct.in_addr* %addr, i32 0, i32 0, !llfi_index !179
  %fi55 = call i32* @injectFault7(i64 178, i32* %130, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %131 = load i32* %fi55, align 4, !llfi_index !180
  %fi56 = call i32 @injectFault2(i64 179, i32 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %132 = zext i32 %fi56 to i64, !llfi_index !181
  %fi57 = call i64 @injectFault12(i64 180, i64 %132, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %133 = load %struct.ptree** %phead, align 8, !llfi_index !182
  %fi58 = call %struct.ptree* @injectFault0(i64 181, %struct.ptree* %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %134 = call %struct.ptree* @pat_search(i64 %fi57, %struct.ptree* %fi58), !llfi_index !183
  store %struct.ptree* %134, %struct.ptree** %pfind, align 8, !llfi_index !184
  %135 = load %struct.ptree** %pfind, align 8, !llfi_index !185
  %fi109 = call %struct.ptree* @injectFault0(i64 184, %struct.ptree* %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %136 = getelementptr %struct.ptree* %fi109, i32 0, i32 0, !llfi_index !186
  %fi110 = call i64* @injectFault11(i64 185, i64* %136, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %137 = load i64* %fi110, align 8, !llfi_index !187
  %fi111 = call i64 @injectFault12(i64 186, i64 %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %138 = getelementptr %struct.in_addr* %addr, i32 0, i32 0, !llfi_index !188
  %fi112 = call i32* @injectFault7(i64 187, i32* %138, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %139 = load i32* %fi112, align 4, !llfi_index !189
  %fi113 = call i32 @injectFault2(i64 188, i32 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %140 = zext i32 %fi113 to i64, !llfi_index !190
  %fi114 = call i64 @injectFault12(i64 189, i64 %140, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %141 = icmp eq i64 %fi111, %fi114, !llfi_index !191
  %fi115 = call i1 @injectFault3(i64 190, i1 %141, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi115, label %142, label %149, !llfi_index !192

; <label>:142                                     ; preds = %113
  %143 = load float* %time, align 4, !llfi_index !193
  %fi116 = call float @injectFault14(i64 192, float %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %144 = fpext float %fi116 to double, !llfi_index !194
  %fi59 = call double @injectFault13(i64 193, double %144, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %145 = getelementptr %struct.in_addr* %addr, i32 0, i32 0, !llfi_index !195
  %fi60 = call i32* @injectFault7(i64 194, i32* %145, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %146 = load i32* %fi60, align 4, !llfi_index !196
  %fi61 = call i32 @injectFault2(i64 195, i32 %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0), double %fi59, i32 %fi61), !llfi_index !197
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0)), !llfi_index !198
  br label %153, !llfi_index !199

; <label>:149                                     ; preds = %113
  %150 = load %struct.ptree** %p, align 8, !llfi_index !200
  %fi62 = call %struct.ptree* @injectFault0(i64 199, %struct.ptree* %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %151 = load %struct.ptree** %phead, align 8, !llfi_index !201
  %fi63 = call %struct.ptree* @injectFault0(i64 200, %struct.ptree* %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %152 = call %struct.ptree* @pat_insert(%struct.ptree* %fi62, %struct.ptree* %fi63), !llfi_index !202
  store %struct.ptree* %152, %struct.ptree** %p, align 8, !llfi_index !203
  br label %153, !llfi_index !204

; <label>:153                                     ; preds = %149, %142
  %154 = load %struct.ptree** %p, align 8, !llfi_index !205
  %fi64 = call %struct.ptree* @injectFault0(i64 204, %struct.ptree* %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %155 = icmp ne %struct.ptree* %fi64, null, !llfi_index !206
  %fi65 = call i1 @injectFault3(i64 205, i1 %155, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi65, label %159, label %156, !llfi_index !207

; <label>:156                                     ; preds = %153
  %157 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !208
  %fi66 = call %struct._IO_FILE* @injectFault6(i64 207, %struct._IO_FILE* %157, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi66, i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0)), !llfi_index !209
  call void @postInjections()
  call void @exit(i32 0) #7, !llfi_index !210
  unreachable, !llfi_index !211

; <label>:159                                     ; preds = %153
  br label %69, !llfi_index !212

; <label>:160                                     ; preds = %69
  call void @postInjections()
  call void @exit(i32 1) #7, !llfi_index !213
  unreachable, !llfi_index !214
                                                  ; No predecessors!
  %162 = load i32* %1, !llfi_index !215
  %fi67 = call i32 @injectFault2(i64 214, i32 %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @postInjections()
  ret i32 %fi67, !llfi_index !216
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @perror(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_insert(%struct.ptree* %n, %struct.ptree* %head) #0 {
  %1 = alloca %struct.ptree*, align 8, !llfi_index !217
  %2 = alloca %struct.ptree*, align 8, !llfi_index !218
  %3 = alloca %struct.ptree*, align 8, !llfi_index !219
  %t = alloca %struct.ptree*, align 8, !llfi_index !220
  %buf = alloca %struct.ptree_mask*, align 8, !llfi_index !221
  %pm = alloca %struct.ptree_mask*, align 8, !llfi_index !222
  %i = alloca i32, align 4, !llfi_index !223
  %copied = alloca i32, align 4, !llfi_index !224
  store %struct.ptree* %n, %struct.ptree** %2, align 8, !llfi_index !225
  store %struct.ptree* %head, %struct.ptree** %3, align 8, !llfi_index !226
  %4 = load %struct.ptree** %3, align 8, !llfi_index !227
  %fi59 = call %struct.ptree* @injectFault0(i64 226, %struct.ptree* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %5 = icmp ne %struct.ptree* %fi59, null, !llfi_index !228
  %fi60 = call i1 @injectFault3(i64 227, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi60, label %6, label %14, !llfi_index !229

; <label>:6                                       ; preds = %0
  %7 = load %struct.ptree** %2, align 8, !llfi_index !230
  %fi61 = call %struct.ptree* @injectFault0(i64 229, %struct.ptree* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %8 = icmp ne %struct.ptree* %fi61, null, !llfi_index !231
  %fi62 = call i1 @injectFault3(i64 230, i1 %8, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi62, label %9, label %14, !llfi_index !232

; <label>:9                                       ; preds = %6
  %10 = load %struct.ptree** %2, align 8, !llfi_index !233
  %fi63 = call %struct.ptree* @injectFault0(i64 232, %struct.ptree* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %11 = getelementptr %struct.ptree* %fi63, i32 0, i32 1, !llfi_index !234
  %fi64 = call %struct.ptree_mask** @injectFault9(i64 233, %struct.ptree_mask** %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %12 = load %struct.ptree_mask** %fi64, align 8, !llfi_index !235
  %fi65 = call %struct.ptree_mask* @injectFault8(i64 234, %struct.ptree_mask* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %13 = icmp ne %struct.ptree_mask* %fi65, null, !llfi_index !236
  %fi66 = call i1 @injectFault3(i64 235, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi66, label %15, label %14, !llfi_index !237

; <label>:14                                      ; preds = %9, %6, %0
  store %struct.ptree* null, %struct.ptree** %1, !llfi_index !238
  br label %253, !llfi_index !239

; <label>:15                                      ; preds = %9
  %16 = load %struct.ptree** %2, align 8, !llfi_index !240
  %fi67 = call %struct.ptree* @injectFault0(i64 239, %struct.ptree* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %17 = getelementptr %struct.ptree* %fi67, i32 0, i32 1, !llfi_index !241
  %fi69 = call %struct.ptree_mask** @injectFault9(i64 240, %struct.ptree_mask** %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %18 = load %struct.ptree_mask** %fi69, align 8, !llfi_index !242
  %fi70 = call %struct.ptree_mask* @injectFault8(i64 241, %struct.ptree_mask* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %19 = getelementptr %struct.ptree_mask* %fi70, i32 0, i32 0, !llfi_index !243
  %fi71 = call i64* @injectFault11(i64 242, i64* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %20 = load i64* %fi71, align 8, !llfi_index !244
  %fi72 = call i64 @injectFault12(i64 243, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %21 = load %struct.ptree** %2, align 8, !llfi_index !245
  %fi73 = call %struct.ptree* @injectFault0(i64 244, %struct.ptree* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %22 = getelementptr %struct.ptree* %fi73, i32 0, i32 0, !llfi_index !246
  %fi74 = call i64* @injectFault11(i64 245, i64* %22, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %23 = load i64* %fi74, align 8, !llfi_index !247
  %fi75 = call i64 @injectFault12(i64 246, i64 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %24 = and i64 %fi75, %fi72, !llfi_index !248
  %fi76 = call i64 @injectFault12(i64 247, i64 %24, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i64 %fi76, i64* %fi74, align 8, !llfi_index !249
  %25 = load %struct.ptree** %3, align 8, !llfi_index !250
  %fi77 = call %struct.ptree* @injectFault0(i64 249, %struct.ptree* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi77, %struct.ptree** %t, align 8, !llfi_index !251
  br label %26, !llfi_index !252

; <label>:26                                      ; preds = %50, %15
  %27 = load %struct.ptree** %t, align 8, !llfi_index !253
  %fi78 = call %struct.ptree* @injectFault0(i64 252, %struct.ptree* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %28 = getelementptr %struct.ptree* %fi78, i32 0, i32 3, !llfi_index !254
  %fi79 = call i8* @injectFault1(i64 253, i8* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %29 = load i8* %fi79, align 1, !llfi_index !255
  %fi80 = call i8 @injectFault15(i64 254, i8 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %30 = sext i8 %fi80 to i32, !llfi_index !256
  %fi81 = call i32 @injectFault2(i64 255, i32 %30, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi81, i32* %i, align 4, !llfi_index !257
  %31 = load %struct.ptree** %t, align 8, !llfi_index !258
  %fi82 = call %struct.ptree* @injectFault0(i64 257, %struct.ptree* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %32 = getelementptr %struct.ptree* %fi82, i32 0, i32 3, !llfi_index !259
  %fi83 = call i8* @injectFault1(i64 258, i8* %32, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %33 = load i8* %fi83, align 1, !llfi_index !260
  %fi68 = call i8 @injectFault15(i64 259, i8 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %34 = sext i8 %fi68 to i32, !llfi_index !261
  %fi84 = call i32 @injectFault2(i64 260, i32 %34, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %35 = load %struct.ptree** %2, align 8, !llfi_index !262
  %fi85 = call %struct.ptree* @injectFault0(i64 261, %struct.ptree* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %36 = getelementptr %struct.ptree* %fi85, i32 0, i32 0, !llfi_index !263
  %fi86 = call i64* @injectFault11(i64 262, i64* %36, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %37 = load i64* %fi86, align 8, !llfi_index !264
  %fi87 = call i64 @injectFault12(i64 263, i64 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %38 = call i64 @bit(i32 %fi84, i64 %fi87), !llfi_index !265
  %39 = icmp ne i64 %38, 0, !llfi_index !266
  %fi = call i1 @injectFault3(i64 265, i1 %39, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi, label %40, label %44, !llfi_index !267

; <label>:40                                      ; preds = %26
  %41 = load %struct.ptree** %t, align 8, !llfi_index !268
  %fi88 = call %struct.ptree* @injectFault0(i64 267, %struct.ptree* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %42 = getelementptr %struct.ptree* %fi88, i32 0, i32 5, !llfi_index !269
  %fi89 = call %struct.ptree** @injectFault5(i64 268, %struct.ptree** %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %43 = load %struct.ptree** %fi89, align 8, !llfi_index !270
  %fi90 = call %struct.ptree* @injectFault0(i64 269, %struct.ptree* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %48, !llfi_index !271

; <label>:44                                      ; preds = %26
  %45 = load %struct.ptree** %t, align 8, !llfi_index !272
  %fi91 = call %struct.ptree* @injectFault0(i64 271, %struct.ptree* %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %46 = getelementptr %struct.ptree* %fi91, i32 0, i32 4, !llfi_index !273
  %fi92 = call %struct.ptree** @injectFault5(i64 272, %struct.ptree** %46, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %47 = load %struct.ptree** %fi92, align 8, !llfi_index !274
  %fi93 = call %struct.ptree* @injectFault0(i64 273, %struct.ptree* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %48, !llfi_index !275

; <label>:48                                      ; preds = %44, %40
  %49 = phi %struct.ptree* [ %fi90, %40 ], [ %fi93, %44 ], !llfi_index !276
  store %struct.ptree* %49, %struct.ptree** %t, align 8, !llfi_index !277
  br label %50, !llfi_index !278

; <label>:50                                      ; preds = %48
  %51 = load i32* %i, align 4, !llfi_index !279
  %fi94 = call i32 @injectFault2(i64 278, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %52 = load %struct.ptree** %t, align 8, !llfi_index !280
  %fi95 = call %struct.ptree* @injectFault0(i64 279, %struct.ptree* %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %53 = getelementptr %struct.ptree* %fi95, i32 0, i32 3, !llfi_index !281
  %fi96 = call i8* @injectFault1(i64 280, i8* %53, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %54 = load i8* %fi96, align 1, !llfi_index !282
  %fi97 = call i8 @injectFault15(i64 281, i8 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %55 = sext i8 %fi97 to i32, !llfi_index !283
  %fi98 = call i32 @injectFault2(i64 282, i32 %55, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %56 = icmp slt i32 %fi94, %fi98, !llfi_index !284
  %fi99 = call i1 @injectFault3(i64 283, i1 %56, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi99, label %26, label %57, !llfi_index !285

; <label>:57                                      ; preds = %50
  %58 = load %struct.ptree** %2, align 8, !llfi_index !286
  %fi100 = call %struct.ptree* @injectFault0(i64 285, %struct.ptree* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %59 = getelementptr %struct.ptree* %fi100, i32 0, i32 0, !llfi_index !287
  %fi101 = call i64* @injectFault11(i64 286, i64* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %60 = load i64* %fi101, align 8, !llfi_index !288
  %fi102 = call i64 @injectFault12(i64 287, i64 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %61 = load %struct.ptree** %t, align 8, !llfi_index !289
  %fi103 = call %struct.ptree* @injectFault0(i64 288, %struct.ptree* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %62 = getelementptr %struct.ptree* %fi103, i32 0, i32 0, !llfi_index !290
  %fi104 = call i64* @injectFault11(i64 289, i64* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %63 = load i64* %fi104, align 8, !llfi_index !291
  %fi105 = call i64 @injectFault12(i64 290, i64 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %64 = icmp eq i64 %fi102, %fi105, !llfi_index !292
  %fi106 = call i1 @injectFault3(i64 291, i1 %64, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi106, label %65, label %201, !llfi_index !293

; <label>:65                                      ; preds = %57
  store i32 0, i32* %i, align 4, !llfi_index !294
  br label %66, !llfi_index !295

; <label>:66                                      ; preds = %109, %65
  %67 = load i32* %i, align 4, !llfi_index !296
  %fi110 = call i32 @injectFault2(i64 295, i32 %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %68 = load %struct.ptree** %t, align 8, !llfi_index !297
  %fi111 = call %struct.ptree* @injectFault0(i64 296, %struct.ptree* %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %69 = getelementptr %struct.ptree* %fi111, i32 0, i32 2, !llfi_index !298
  %fi112 = call i8* @injectFault1(i64 297, i8* %69, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %70 = load i8* %fi112, align 1, !llfi_index !299
  %fi113 = call i8 @injectFault15(i64 298, i8 %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %71 = zext i8 %fi113 to i32, !llfi_index !300
  %fi114 = call i32 @injectFault2(i64 299, i32 %71, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %72 = icmp slt i32 %fi110, %fi114, !llfi_index !301
  %fi115 = call i1 @injectFault3(i64 300, i1 %72, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi115, label %73, label %112, !llfi_index !302

; <label>:73                                      ; preds = %66
  %74 = load %struct.ptree** %2, align 8, !llfi_index !303
  %fi116 = call %struct.ptree* @injectFault0(i64 302, %struct.ptree* %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %75 = getelementptr %struct.ptree* %fi116, i32 0, i32 1, !llfi_index !304
  %fi117 = call %struct.ptree_mask** @injectFault9(i64 303, %struct.ptree_mask** %75, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %76 = load %struct.ptree_mask** %fi117, align 8, !llfi_index !305
  %fi118 = call %struct.ptree_mask* @injectFault8(i64 304, %struct.ptree_mask* %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %77 = getelementptr %struct.ptree_mask* %fi118, i32 0, i32 0, !llfi_index !306
  %fi119 = call i64* @injectFault11(i64 305, i64* %77, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %78 = load i64* %fi119, align 8, !llfi_index !307
  %fi120 = call i64 @injectFault12(i64 306, i64 %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %79 = load i32* %i, align 4, !llfi_index !308
  %fi121 = call i32 @injectFault2(i64 307, i32 %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %80 = sext i32 %fi121 to i64, !llfi_index !309
  %fi122 = call i64 @injectFault12(i64 308, i64 %80, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %81 = load %struct.ptree** %t, align 8, !llfi_index !310
  %fi123 = call %struct.ptree* @injectFault0(i64 309, %struct.ptree* %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %82 = getelementptr %struct.ptree* %fi123, i32 0, i32 1, !llfi_index !311
  %fi124 = call %struct.ptree_mask** @injectFault9(i64 310, %struct.ptree_mask** %82, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %83 = load %struct.ptree_mask** %fi124, align 8, !llfi_index !312
  %fi125 = call %struct.ptree_mask* @injectFault8(i64 311, %struct.ptree_mask* %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %84 = getelementptr %struct.ptree_mask* %fi125, i64 %fi122, !llfi_index !313
  %fi126 = call %struct.ptree_mask* @injectFault8(i64 312, %struct.ptree_mask* %84, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %85 = getelementptr %struct.ptree_mask* %fi126, i32 0, i32 0, !llfi_index !314
  %fi127 = call i64* @injectFault11(i64 313, i64* %85, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %86 = load i64* %fi127, align 8, !llfi_index !315
  %fi128 = call i64 @injectFault12(i64 314, i64 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %87 = icmp eq i64 %fi120, %fi128, !llfi_index !316
  %fi129 = call i1 @injectFault3(i64 315, i1 %87, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi129, label %88, label %108, !llfi_index !317

; <label>:88                                      ; preds = %73
  %89 = load %struct.ptree** %2, align 8, !llfi_index !318
  %fi130 = call %struct.ptree* @injectFault0(i64 317, %struct.ptree* %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %90 = getelementptr %struct.ptree* %fi130, i32 0, i32 1, !llfi_index !319
  %fi131 = call %struct.ptree_mask** @injectFault9(i64 318, %struct.ptree_mask** %90, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %91 = load %struct.ptree_mask** %fi131, align 8, !llfi_index !320
  %fi132 = call %struct.ptree_mask* @injectFault8(i64 319, %struct.ptree_mask* %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %92 = getelementptr %struct.ptree_mask* %fi132, i32 0, i32 1, !llfi_index !321
  %fi133 = call i8** @injectFault4(i64 320, i8** %92, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %93 = load i8** %fi133, align 8, !llfi_index !322
  %fi134 = call i8* @injectFault1(i64 321, i8* %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %94 = load i32* %i, align 4, !llfi_index !323
  %fi135 = call i32 @injectFault2(i64 322, i32 %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %95 = sext i32 %fi135 to i64, !llfi_index !324
  %fi136 = call i64 @injectFault12(i64 323, i64 %95, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %96 = load %struct.ptree** %t, align 8, !llfi_index !325
  %fi137 = call %struct.ptree* @injectFault0(i64 324, %struct.ptree* %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %97 = getelementptr %struct.ptree* %fi137, i32 0, i32 1, !llfi_index !326
  %fi138 = call %struct.ptree_mask** @injectFault9(i64 325, %struct.ptree_mask** %97, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %98 = load %struct.ptree_mask** %fi138, align 8, !llfi_index !327
  %fi139 = call %struct.ptree_mask* @injectFault8(i64 326, %struct.ptree_mask* %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %99 = getelementptr %struct.ptree_mask* %fi139, i64 %fi136, !llfi_index !328
  %fi140 = call %struct.ptree_mask* @injectFault8(i64 327, %struct.ptree_mask* %99, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %100 = getelementptr %struct.ptree_mask* %fi140, i32 0, i32 1, !llfi_index !329
  %fi141 = call i8** @injectFault4(i64 328, i8** %100, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8* %fi134, i8** %fi141, align 8, !llfi_index !330
  %101 = load %struct.ptree** %2, align 8, !llfi_index !331
  %fi142 = call %struct.ptree* @injectFault0(i64 330, %struct.ptree* %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %102 = getelementptr %struct.ptree* %fi142, i32 0, i32 1, !llfi_index !332
  %fi143 = call %struct.ptree_mask** @injectFault9(i64 331, %struct.ptree_mask** %102, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %103 = load %struct.ptree_mask** %fi143, align 8, !llfi_index !333
  %fi144 = call %struct.ptree_mask* @injectFault8(i64 332, %struct.ptree_mask* %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %104 = bitcast %struct.ptree_mask* %fi144 to i8*, !llfi_index !334
  %fi145 = call i8* @injectFault1(i64 333, i8* %104, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi145) #4, !llfi_index !335
  %105 = load %struct.ptree** %2, align 8, !llfi_index !336
  %fi146 = call %struct.ptree* @injectFault0(i64 335, %struct.ptree* %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %106 = bitcast %struct.ptree* %fi146 to i8*, !llfi_index !337
  %fi147 = call i8* @injectFault1(i64 336, i8* %106, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi147) #4, !llfi_index !338
  store %struct.ptree* null, %struct.ptree** %2, align 8, !llfi_index !339
  %107 = load %struct.ptree** %t, align 8, !llfi_index !340
  %fi148 = call %struct.ptree* @injectFault0(i64 339, %struct.ptree* %107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi148, %struct.ptree** %1, !llfi_index !341
  br label %253, !llfi_index !342

; <label>:108                                     ; preds = %73
  br label %109, !llfi_index !343

; <label>:109                                     ; preds = %108
  %110 = load i32* %i, align 4, !llfi_index !344
  %fi149 = call i32 @injectFault2(i64 343, i32 %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %111 = add nsw i32 %fi149, 1, !llfi_index !345
  %fi150 = call i32 @injectFault2(i64 344, i32 %111, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi150, i32* %i, align 4, !llfi_index !346
  br label %66, !llfi_index !347

; <label>:112                                     ; preds = %66
  %113 = load %struct.ptree** %t, align 8, !llfi_index !348
  %fi151 = call %struct.ptree* @injectFault0(i64 347, %struct.ptree* %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %114 = getelementptr %struct.ptree* %fi151, i32 0, i32 2, !llfi_index !349
  %fi152 = call i8* @injectFault1(i64 348, i8* %114, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %115 = load i8* %fi152, align 1, !llfi_index !350
  %fi153 = call i8 @injectFault15(i64 349, i8 %115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %116 = zext i8 %fi153 to i32, !llfi_index !351
  %fi154 = call i32 @injectFault2(i64 350, i32 %116, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %117 = add nsw i32 %fi154, 1, !llfi_index !352
  %fi155 = call i32 @injectFault2(i64 351, i32 %117, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %118 = sext i32 %fi155 to i64, !llfi_index !353
  %fi156 = call i64 @injectFault12(i64 352, i64 %118, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %119 = mul i64 16, %fi156, !llfi_index !354
  %fi157 = call i64 @injectFault12(i64 353, i64 %119, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %120 = call noalias i8* @malloc(i64 %fi157) #4, !llfi_index !355
  %121 = bitcast i8* %120 to %struct.ptree_mask*, !llfi_index !356
  %fi158 = call %struct.ptree_mask* @injectFault8(i64 355, %struct.ptree_mask* %121, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi158, %struct.ptree_mask** %buf, align 8, !llfi_index !357
  store i32 0, i32* %copied, align 4, !llfi_index !358
  store i32 0, i32* %i, align 4, !llfi_index !359
  %122 = load %struct.ptree_mask** %buf, align 8, !llfi_index !360
  %fi159 = call %struct.ptree_mask* @injectFault8(i64 359, %struct.ptree_mask* %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi159, %struct.ptree_mask** %pm, align 8, !llfi_index !361
  br label %123, !llfi_index !362

; <label>:123                                     ; preds = %169, %112
  %124 = load i32* %i, align 4, !llfi_index !363
  %fi160 = call i32 @injectFault2(i64 362, i32 %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %125 = load %struct.ptree** %t, align 8, !llfi_index !364
  %fi161 = call %struct.ptree* @injectFault0(i64 363, %struct.ptree* %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %126 = getelementptr %struct.ptree* %fi161, i32 0, i32 2, !llfi_index !365
  %fi162 = call i8* @injectFault1(i64 364, i8* %126, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %127 = load i8* %fi162, align 1, !llfi_index !366
  %fi163 = call i8 @injectFault15(i64 365, i8 %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %128 = zext i8 %fi163 to i32, !llfi_index !367
  %fi164 = call i32 @injectFault2(i64 366, i32 %128, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %129 = icmp slt i32 %fi160, %fi164, !llfi_index !368
  %fi107 = call i1 @injectFault3(i64 367, i1 %129, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi107, label %130, label %172, !llfi_index !369

; <label>:130                                     ; preds = %123
  %131 = load %struct.ptree** %2, align 8, !llfi_index !370
  %fi108 = call %struct.ptree* @injectFault0(i64 369, %struct.ptree* %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %132 = getelementptr %struct.ptree* %fi108, i32 0, i32 1, !llfi_index !371
  %fi109 = call %struct.ptree_mask** @injectFault9(i64 370, %struct.ptree_mask** %132, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %133 = load %struct.ptree_mask** %fi109, align 8, !llfi_index !372
  %fi165 = call %struct.ptree_mask* @injectFault8(i64 371, %struct.ptree_mask* %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %134 = getelementptr %struct.ptree_mask* %fi165, i32 0, i32 0, !llfi_index !373
  %fi166 = call i64* @injectFault11(i64 372, i64* %134, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %135 = load i64* %fi166, align 8, !llfi_index !374
  %fi167 = call i64 @injectFault12(i64 373, i64 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %136 = load i32* %i, align 4, !llfi_index !375
  %fi168 = call i32 @injectFault2(i64 374, i32 %136, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %137 = sext i32 %fi168 to i64, !llfi_index !376
  %fi169 = call i64 @injectFault12(i64 375, i64 %137, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %138 = load %struct.ptree** %t, align 8, !llfi_index !377
  %fi170 = call %struct.ptree* @injectFault0(i64 376, %struct.ptree* %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %139 = getelementptr %struct.ptree* %fi170, i32 0, i32 1, !llfi_index !378
  %fi171 = call %struct.ptree_mask** @injectFault9(i64 377, %struct.ptree_mask** %139, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %140 = load %struct.ptree_mask** %fi171, align 8, !llfi_index !379
  %fi172 = call %struct.ptree_mask* @injectFault8(i64 378, %struct.ptree_mask* %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %141 = getelementptr %struct.ptree_mask* %fi172, i64 %fi169, !llfi_index !380
  %fi173 = call %struct.ptree_mask* @injectFault8(i64 379, %struct.ptree_mask* %141, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %142 = getelementptr %struct.ptree_mask* %fi173, i32 0, i32 0, !llfi_index !381
  %fi174 = call i64* @injectFault11(i64 380, i64* %142, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %143 = load i64* %fi174, align 8, !llfi_index !382
  %fi175 = call i64 @injectFault12(i64 381, i64 %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %144 = icmp ugt i64 %fi167, %fi175, !llfi_index !383
  %fi176 = call i1 @injectFault3(i64 382, i1 %144, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi176, label %145, label %157, !llfi_index !384

; <label>:145                                     ; preds = %130
  %146 = load %struct.ptree** %t, align 8, !llfi_index !385
  %fi177 = call %struct.ptree* @injectFault0(i64 384, %struct.ptree* %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %147 = getelementptr %struct.ptree* %fi177, i32 0, i32 1, !llfi_index !386
  %fi1 = call %struct.ptree_mask** @injectFault9(i64 385, %struct.ptree_mask** %147, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %148 = load %struct.ptree_mask** %fi1, align 8, !llfi_index !387
  %fi2 = call %struct.ptree_mask* @injectFault8(i64 386, %struct.ptree_mask* %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %149 = load i32* %i, align 4, !llfi_index !388
  %fi3 = call i32 @injectFault2(i64 387, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %150 = sext i32 %fi3 to i64, !llfi_index !389
  %fi4 = call i64 @injectFault12(i64 388, i64 %150, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %151 = getelementptr %struct.ptree_mask* %fi2, i64 %fi4, !llfi_index !390
  %fi5 = call %struct.ptree_mask* @injectFault8(i64 389, %struct.ptree_mask* %151, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %152 = bitcast %struct.ptree_mask* %fi5 to i8*, !llfi_index !391
  %fi6 = call i8* @injectFault1(i64 390, i8* %152, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %153 = load %struct.ptree_mask** %pm, align 8, !llfi_index !392
  %fi7 = call %struct.ptree_mask* @injectFault8(i64 391, %struct.ptree_mask* %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %154 = bitcast %struct.ptree_mask* %fi7 to i8*, !llfi_index !393
  %fi8 = call i8* @injectFault1(i64 392, i8* %154, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @bcopy(i8* %fi6, i8* %fi8, i64 16) #4, !llfi_index !394
  %155 = load i32* %i, align 4, !llfi_index !395
  %fi9 = call i32 @injectFault2(i64 394, i32 %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %156 = add nsw i32 %fi9, 1, !llfi_index !396
  %fi10 = call i32 @injectFault2(i64 395, i32 %156, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi10, i32* %i, align 4, !llfi_index !397
  br label %168, !llfi_index !398

; <label>:157                                     ; preds = %130
  %158 = load %struct.ptree** %2, align 8, !llfi_index !399
  %fi11 = call %struct.ptree* @injectFault0(i64 398, %struct.ptree* %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %159 = getelementptr %struct.ptree* %fi11, i32 0, i32 1, !llfi_index !400
  %fi12 = call %struct.ptree_mask** @injectFault9(i64 399, %struct.ptree_mask** %159, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %160 = load %struct.ptree_mask** %fi12, align 8, !llfi_index !401
  %fi13 = call %struct.ptree_mask* @injectFault8(i64 400, %struct.ptree_mask* %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %161 = bitcast %struct.ptree_mask* %fi13 to i8*, !llfi_index !402
  %fi14 = call i8* @injectFault1(i64 401, i8* %161, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %162 = load %struct.ptree_mask** %pm, align 8, !llfi_index !403
  %fi15 = call %struct.ptree_mask* @injectFault8(i64 402, %struct.ptree_mask* %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %163 = bitcast %struct.ptree_mask* %fi15 to i8*, !llfi_index !404
  %fi16 = call i8* @injectFault1(i64 403, i8* %163, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @bcopy(i8* %fi14, i8* %fi16, i64 16) #4, !llfi_index !405
  %164 = load %struct.ptree** %2, align 8, !llfi_index !406
  %fi17 = call %struct.ptree* @injectFault0(i64 405, %struct.ptree* %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %165 = getelementptr %struct.ptree* %fi17, i32 0, i32 1, !llfi_index !407
  %fi18 = call %struct.ptree_mask** @injectFault9(i64 406, %struct.ptree_mask** %165, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %166 = load %struct.ptree_mask** %fi18, align 8, !llfi_index !408
  %fi19 = call %struct.ptree_mask* @injectFault8(i64 407, %struct.ptree_mask* %166, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %167 = getelementptr %struct.ptree_mask* %fi19, i32 0, i32 0, !llfi_index !409
  %fi20 = call i64* @injectFault11(i64 408, i64* %167, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i64 4294967295, i64* %fi20, align 8, !llfi_index !410
  store i32 1, i32* %copied, align 4, !llfi_index !411
  br label %168, !llfi_index !412

; <label>:168                                     ; preds = %157, %145
  br label %169, !llfi_index !413

; <label>:169                                     ; preds = %168
  %170 = load %struct.ptree_mask** %pm, align 8, !llfi_index !414
  %fi21 = call %struct.ptree_mask* @injectFault8(i64 413, %struct.ptree_mask* %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %171 = getelementptr %struct.ptree_mask* %fi21, i32 1, !llfi_index !415
  %fi22 = call %struct.ptree_mask* @injectFault8(i64 414, %struct.ptree_mask* %171, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi22, %struct.ptree_mask** %pm, align 8, !llfi_index !416
  br label %123, !llfi_index !417

; <label>:172                                     ; preds = %123
  %173 = load i32* %copied, align 4, !llfi_index !418
  %fi23 = call i32 @injectFault2(i64 417, i32 %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %174 = icmp ne i32 %fi23, 0, !llfi_index !419
  %fi24 = call i1 @injectFault3(i64 418, i1 %174, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi24, label %182, label %175, !llfi_index !420

; <label>:175                                     ; preds = %172
  %176 = load %struct.ptree** %2, align 8, !llfi_index !421
  %fi25 = call %struct.ptree* @injectFault0(i64 420, %struct.ptree* %176, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %177 = getelementptr %struct.ptree* %fi25, i32 0, i32 1, !llfi_index !422
  %fi26 = call %struct.ptree_mask** @injectFault9(i64 421, %struct.ptree_mask** %177, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %178 = load %struct.ptree_mask** %fi26, align 8, !llfi_index !423
  %fi27 = call %struct.ptree_mask* @injectFault8(i64 422, %struct.ptree_mask* %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %179 = bitcast %struct.ptree_mask* %fi27 to i8*, !llfi_index !424
  %fi28 = call i8* @injectFault1(i64 423, i8* %179, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %180 = load %struct.ptree_mask** %pm, align 8, !llfi_index !425
  %fi29 = call %struct.ptree_mask* @injectFault8(i64 424, %struct.ptree_mask* %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %181 = bitcast %struct.ptree_mask* %fi29 to i8*, !llfi_index !426
  %fi30 = call i8* @injectFault1(i64 425, i8* %181, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @bcopy(i8* %fi28, i8* %fi30, i64 16) #4, !llfi_index !427
  br label %182, !llfi_index !428

; <label>:182                                     ; preds = %175, %172
  %183 = load %struct.ptree** %2, align 8, !llfi_index !429
  %fi31 = call %struct.ptree* @injectFault0(i64 428, %struct.ptree* %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %184 = getelementptr %struct.ptree* %fi31, i32 0, i32 1, !llfi_index !430
  %fi32 = call %struct.ptree_mask** @injectFault9(i64 429, %struct.ptree_mask** %184, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %185 = load %struct.ptree_mask** %fi32, align 8, !llfi_index !431
  %fi33 = call %struct.ptree_mask* @injectFault8(i64 430, %struct.ptree_mask* %185, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %186 = bitcast %struct.ptree_mask* %fi33 to i8*, !llfi_index !432
  %fi34 = call i8* @injectFault1(i64 431, i8* %186, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi34) #4, !llfi_index !433
  %187 = load %struct.ptree** %2, align 8, !llfi_index !434
  %fi35 = call %struct.ptree* @injectFault0(i64 433, %struct.ptree* %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %188 = bitcast %struct.ptree* %fi35 to i8*, !llfi_index !435
  %fi36 = call i8* @injectFault1(i64 434, i8* %188, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi36) #4, !llfi_index !436
  store %struct.ptree* null, %struct.ptree** %2, align 8, !llfi_index !437
  %189 = load %struct.ptree** %t, align 8, !llfi_index !438
  %fi37 = call %struct.ptree* @injectFault0(i64 437, %struct.ptree* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %190 = getelementptr %struct.ptree* %fi37, i32 0, i32 2, !llfi_index !439
  %fi38 = call i8* @injectFault1(i64 438, i8* %190, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %191 = load i8* %fi38, align 1, !llfi_index !440
  %fi39 = call i8 @injectFault15(i64 439, i8 %191, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %192 = add i8 %fi39, 1, !llfi_index !441
  %fi40 = call i8 @injectFault15(i64 440, i8 %192, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8 %fi40, i8* %fi38, align 1, !llfi_index !442
  %193 = load %struct.ptree** %t, align 8, !llfi_index !443
  %fi41 = call %struct.ptree* @injectFault0(i64 442, %struct.ptree* %193, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %194 = getelementptr %struct.ptree* %fi41, i32 0, i32 1, !llfi_index !444
  %fi42 = call %struct.ptree_mask** @injectFault9(i64 443, %struct.ptree_mask** %194, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %195 = load %struct.ptree_mask** %fi42, align 8, !llfi_index !445
  %fi43 = call %struct.ptree_mask* @injectFault8(i64 444, %struct.ptree_mask* %195, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %196 = bitcast %struct.ptree_mask* %fi43 to i8*, !llfi_index !446
  %fi44 = call i8* @injectFault1(i64 445, i8* %196, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi44) #4, !llfi_index !447
  %197 = load %struct.ptree_mask** %buf, align 8, !llfi_index !448
  %fi45 = call %struct.ptree_mask* @injectFault8(i64 447, %struct.ptree_mask* %197, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %198 = load %struct.ptree** %t, align 8, !llfi_index !449
  %fi46 = call %struct.ptree* @injectFault0(i64 448, %struct.ptree* %198, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %199 = getelementptr %struct.ptree* %fi46, i32 0, i32 1, !llfi_index !450
  %fi47 = call %struct.ptree_mask** @injectFault9(i64 449, %struct.ptree_mask** %199, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi45, %struct.ptree_mask** %fi47, align 8, !llfi_index !451
  %200 = load %struct.ptree** %t, align 8, !llfi_index !452
  %fi48 = call %struct.ptree* @injectFault0(i64 451, %struct.ptree* %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi48, %struct.ptree** %1, !llfi_index !453
  br label %253, !llfi_index !454

; <label>:201                                     ; preds = %57
  store i32 1, i32* %i, align 4, !llfi_index !455
  br label %202, !llfi_index !456

; <label>:202                                     ; preds = %218, %201
  %203 = load i32* %i, align 4, !llfi_index !457
  %fi49 = call i32 @injectFault2(i64 456, i32 %203, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %204 = icmp slt i32 %fi49, 32, !llfi_index !458
  %fi50 = call i1 @injectFault3(i64 457, i1 %204, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi50, label %205, label %221, !llfi_index !459

; <label>:205                                     ; preds = %202
  %206 = load i32* %i, align 4, !llfi_index !460
  %fi51 = call i32 @injectFault2(i64 459, i32 %206, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %207 = load %struct.ptree** %2, align 8, !llfi_index !461
  %fi52 = call %struct.ptree* @injectFault0(i64 460, %struct.ptree* %207, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %208 = getelementptr %struct.ptree* %fi52, i32 0, i32 0, !llfi_index !462
  %fi53 = call i64* @injectFault11(i64 461, i64* %208, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %209 = load i64* %fi53, align 8, !llfi_index !463
  %fi54 = call i64 @injectFault12(i64 462, i64 %209, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %210 = call i64 @bit(i32 %fi51, i64 %fi54), !llfi_index !464
  %211 = load i32* %i, align 4, !llfi_index !465
  %fi55 = call i32 @injectFault2(i64 464, i32 %211, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %212 = load %struct.ptree** %t, align 8, !llfi_index !466
  %fi56 = call %struct.ptree* @injectFault0(i64 465, %struct.ptree* %212, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %213 = getelementptr %struct.ptree* %fi56, i32 0, i32 0, !llfi_index !467
  %fi57 = call i64* @injectFault11(i64 466, i64* %213, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %214 = load i64* %fi57, align 8, !llfi_index !468
  %fi58 = call i64 @injectFault12(i64 467, i64 %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %215 = call i64 @bit(i32 %fi55, i64 %fi58), !llfi_index !469
  %216 = icmp eq i64 %210, %215, !llfi_index !470
  %fi178 = call i1 @injectFault3(i64 469, i1 %216, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi178, label %217, label %221, !llfi_index !471

; <label>:217                                     ; preds = %205
  br label %218, !llfi_index !472

; <label>:218                                     ; preds = %217
  %219 = load i32* %i, align 4, !llfi_index !473
  %fi179 = call i32 @injectFault2(i64 472, i32 %219, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %220 = add nsw i32 %fi179, 1, !llfi_index !474
  %fi180 = call i32 @injectFault2(i64 473, i32 %220, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi180, i32* %i, align 4, !llfi_index !475
  br label %202, !llfi_index !476

; <label>:221                                     ; preds = %205, %202
  %222 = load %struct.ptree** %3, align 8, !llfi_index !477
  %fi181 = call %struct.ptree* @injectFault0(i64 476, %struct.ptree* %222, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %223 = getelementptr %struct.ptree* %fi181, i32 0, i32 3, !llfi_index !478
  %fi182 = call i8* @injectFault1(i64 477, i8* %223, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %224 = load i8* %fi182, align 1, !llfi_index !479
  %fi183 = call i8 @injectFault15(i64 478, i8 %224, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %225 = sext i8 %fi183 to i32, !llfi_index !480
  %fi184 = call i32 @injectFault2(i64 479, i32 %225, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %226 = load %struct.ptree** %2, align 8, !llfi_index !481
  %fi185 = call %struct.ptree* @injectFault0(i64 480, %struct.ptree* %226, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %227 = getelementptr %struct.ptree* %fi185, i32 0, i32 0, !llfi_index !482
  %fi186 = call i64* @injectFault11(i64 481, i64* %227, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %228 = load i64* %fi186, align 8, !llfi_index !483
  %fi187 = call i64 @injectFault12(i64 482, i64 %228, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %229 = call i64 @bit(i32 %fi184, i64 %fi187), !llfi_index !484
  %230 = icmp ne i64 %229, 0, !llfi_index !485
  %fi188 = call i1 @injectFault3(i64 484, i1 %230, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi188, label %231, label %241, !llfi_index !486

; <label>:231                                     ; preds = %221
  %232 = load %struct.ptree** %3, align 8, !llfi_index !487
  %fi189 = call %struct.ptree* @injectFault0(i64 486, %struct.ptree* %232, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %233 = getelementptr %struct.ptree* %fi189, i32 0, i32 5, !llfi_index !488
  %fi190 = call %struct.ptree** @injectFault5(i64 487, %struct.ptree** %233, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %234 = load %struct.ptree** %fi190, align 8, !llfi_index !489
  %fi191 = call %struct.ptree* @injectFault0(i64 488, %struct.ptree* %234, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %235 = load %struct.ptree** %2, align 8, !llfi_index !490
  %fi192 = call %struct.ptree* @injectFault0(i64 489, %struct.ptree* %235, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %236 = load i32* %i, align 4, !llfi_index !491
  %fi193 = call i32 @injectFault2(i64 490, i32 %236, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %237 = load %struct.ptree** %3, align 8, !llfi_index !492
  %fi194 = call %struct.ptree* @injectFault0(i64 491, %struct.ptree* %237, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %238 = call %struct.ptree* @insertR(%struct.ptree* %fi191, %struct.ptree* %fi192, i32 %fi193, %struct.ptree* %fi194), !llfi_index !493
  %239 = load %struct.ptree** %3, align 8, !llfi_index !494
  %fi195 = call %struct.ptree* @injectFault0(i64 493, %struct.ptree* %239, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %240 = getelementptr %struct.ptree* %fi195, i32 0, i32 5, !llfi_index !495
  %fi196 = call %struct.ptree** @injectFault5(i64 494, %struct.ptree** %240, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %238, %struct.ptree** %fi196, align 8, !llfi_index !496
  br label %251, !llfi_index !497

; <label>:241                                     ; preds = %221
  %242 = load %struct.ptree** %3, align 8, !llfi_index !498
  %fi197 = call %struct.ptree* @injectFault0(i64 497, %struct.ptree* %242, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %243 = getelementptr %struct.ptree* %fi197, i32 0, i32 4, !llfi_index !499
  %fi198 = call %struct.ptree** @injectFault5(i64 498, %struct.ptree** %243, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %244 = load %struct.ptree** %fi198, align 8, !llfi_index !500
  %fi199 = call %struct.ptree* @injectFault0(i64 499, %struct.ptree* %244, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %245 = load %struct.ptree** %2, align 8, !llfi_index !501
  %fi200 = call %struct.ptree* @injectFault0(i64 500, %struct.ptree* %245, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %246 = load i32* %i, align 4, !llfi_index !502
  %fi201 = call i32 @injectFault2(i64 501, i32 %246, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %247 = load %struct.ptree** %3, align 8, !llfi_index !503
  %fi202 = call %struct.ptree* @injectFault0(i64 502, %struct.ptree* %247, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %248 = call %struct.ptree* @insertR(%struct.ptree* %fi199, %struct.ptree* %fi200, i32 %fi201, %struct.ptree* %fi202), !llfi_index !504
  %249 = load %struct.ptree** %3, align 8, !llfi_index !505
  %fi203 = call %struct.ptree* @injectFault0(i64 504, %struct.ptree* %249, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %250 = getelementptr %struct.ptree* %fi203, i32 0, i32 4, !llfi_index !506
  %fi204 = call %struct.ptree** @injectFault5(i64 505, %struct.ptree** %250, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %248, %struct.ptree** %fi204, align 8, !llfi_index !507
  br label %251, !llfi_index !508

; <label>:251                                     ; preds = %241, %231
  %252 = load %struct.ptree** %2, align 8, !llfi_index !509
  %fi205 = call %struct.ptree* @injectFault0(i64 508, %struct.ptree* %252, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi205, %struct.ptree** %1, !llfi_index !510
  br label %253, !llfi_index !511

; <label>:253                                     ; preds = %251, %182, %88, %14
  %254 = load %struct.ptree** %1, !llfi_index !512
  %fi206 = call %struct.ptree* @injectFault0(i64 511, %struct.ptree* %254, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  ret %struct.ptree* %fi206, !llfi_index !513
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @pat_remove(%struct.ptree* %n, %struct.ptree* %head) #0 {
  %1 = alloca i32, align 4, !llfi_index !514
  %2 = alloca %struct.ptree*, align 8, !llfi_index !515
  %3 = alloca %struct.ptree*, align 8, !llfi_index !516
  %p = alloca %struct.ptree*, align 8, !llfi_index !517
  %g = alloca %struct.ptree*, align 8, !llfi_index !518
  %pt = alloca %struct.ptree*, align 8, !llfi_index !519
  %pp = alloca %struct.ptree*, align 8, !llfi_index !520
  %t = alloca %struct.ptree*, align 8, !llfi_index !521
  %buf = alloca %struct.ptree_mask*, align 8, !llfi_index !522
  %pm = alloca %struct.ptree_mask*, align 8, !llfi_index !523
  %i = alloca i32, align 4, !llfi_index !524
  store %struct.ptree* %n, %struct.ptree** %2, align 8, !llfi_index !525
  store %struct.ptree* %head, %struct.ptree** %3, align 8, !llfi_index !526
  %4 = load %struct.ptree** %2, align 8, !llfi_index !527
  %fi80 = call %struct.ptree* @injectFault0(i64 526, %struct.ptree* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %5 = icmp ne %struct.ptree* %fi80, null, !llfi_index !528
  %fi81 = call i1 @injectFault3(i64 527, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi81, label %6, label %14, !llfi_index !529

; <label>:6                                       ; preds = %0
  %7 = load %struct.ptree** %2, align 8, !llfi_index !530
  %fi82 = call %struct.ptree* @injectFault0(i64 529, %struct.ptree* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %8 = getelementptr %struct.ptree* %fi82, i32 0, i32 1, !llfi_index !531
  %fi83 = call %struct.ptree_mask** @injectFault9(i64 530, %struct.ptree_mask** %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %9 = load %struct.ptree_mask** %fi83, align 8, !llfi_index !532
  %fi84 = call %struct.ptree_mask* @injectFault8(i64 531, %struct.ptree_mask* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %10 = icmp ne %struct.ptree_mask* %fi84, null, !llfi_index !533
  %fi85 = call i1 @injectFault3(i64 532, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi85, label %11, label %14, !llfi_index !534

; <label>:11                                      ; preds = %6
  %12 = load %struct.ptree** %t, align 8, !llfi_index !535
  %fi86 = call %struct.ptree* @injectFault0(i64 534, %struct.ptree* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %13 = icmp ne %struct.ptree* %fi86, null, !llfi_index !536
  %fi87 = call i1 @injectFault3(i64 535, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi87, label %15, label %14, !llfi_index !537

; <label>:14                                      ; preds = %11, %6, %0
  store i32 0, i32* %1, !llfi_index !538
  br label %327, !llfi_index !539

; <label>:15                                      ; preds = %11
  %16 = load %struct.ptree** %3, align 8, !llfi_index !540
  %fi88 = call %struct.ptree* @injectFault0(i64 539, %struct.ptree* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi88, %struct.ptree** %t, align 8, !llfi_index !541
  store %struct.ptree* %fi88, %struct.ptree** %p, align 8, !llfi_index !542
  store %struct.ptree* %fi88, %struct.ptree** %g, align 8, !llfi_index !543
  br label %17, !llfi_index !544

; <label>:17                                      ; preds = %43, %15
  %18 = load %struct.ptree** %t, align 8, !llfi_index !545
  %fi89 = call %struct.ptree* @injectFault0(i64 544, %struct.ptree* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %19 = getelementptr %struct.ptree* %fi89, i32 0, i32 3, !llfi_index !546
  %fi90 = call i8* @injectFault1(i64 545, i8* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %20 = load i8* %fi90, align 1, !llfi_index !547
  %fi91 = call i8 @injectFault15(i64 546, i8 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %21 = sext i8 %fi91 to i32, !llfi_index !548
  %fi92 = call i32 @injectFault2(i64 547, i32 %21, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi92, i32* %i, align 4, !llfi_index !549
  %22 = load %struct.ptree** %p, align 8, !llfi_index !550
  %fi93 = call %struct.ptree* @injectFault0(i64 549, %struct.ptree* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi93, %struct.ptree** %g, align 8, !llfi_index !551
  %23 = load %struct.ptree** %t, align 8, !llfi_index !552
  %fi94 = call %struct.ptree* @injectFault0(i64 551, %struct.ptree* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi94, %struct.ptree** %p, align 8, !llfi_index !553
  %24 = load %struct.ptree** %t, align 8, !llfi_index !554
  %fi95 = call %struct.ptree* @injectFault0(i64 553, %struct.ptree* %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %25 = getelementptr %struct.ptree* %fi95, i32 0, i32 3, !llfi_index !555
  %fi96 = call i8* @injectFault1(i64 554, i8* %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %26 = load i8* %fi96, align 1, !llfi_index !556
  %fi97 = call i8 @injectFault15(i64 555, i8 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %27 = sext i8 %fi97 to i32, !llfi_index !557
  %fi98 = call i32 @injectFault2(i64 556, i32 %27, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %28 = load %struct.ptree** %2, align 8, !llfi_index !558
  %fi99 = call %struct.ptree* @injectFault0(i64 557, %struct.ptree* %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %29 = getelementptr %struct.ptree* %fi99, i32 0, i32 0, !llfi_index !559
  %fi100 = call i64* @injectFault11(i64 558, i64* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %30 = load i64* %fi100, align 8, !llfi_index !560
  %fi101 = call i64 @injectFault12(i64 559, i64 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %31 = call i64 @bit(i32 %fi98, i64 %fi101), !llfi_index !561
  %32 = icmp ne i64 %31, 0, !llfi_index !562
  %fi102 = call i1 @injectFault3(i64 561, i1 %32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi102, label %33, label %37, !llfi_index !563

; <label>:33                                      ; preds = %17
  %34 = load %struct.ptree** %t, align 8, !llfi_index !564
  %fi104 = call %struct.ptree* @injectFault0(i64 563, %struct.ptree* %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %35 = getelementptr %struct.ptree* %fi104, i32 0, i32 5, !llfi_index !565
  %fi105 = call %struct.ptree** @injectFault5(i64 564, %struct.ptree** %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %36 = load %struct.ptree** %fi105, align 8, !llfi_index !566
  %fi106 = call %struct.ptree* @injectFault0(i64 565, %struct.ptree* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %41, !llfi_index !567

; <label>:37                                      ; preds = %17
  %38 = load %struct.ptree** %t, align 8, !llfi_index !568
  %fi107 = call %struct.ptree* @injectFault0(i64 567, %struct.ptree* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %39 = getelementptr %struct.ptree* %fi107, i32 0, i32 4, !llfi_index !569
  %fi108 = call %struct.ptree** @injectFault5(i64 568, %struct.ptree** %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %40 = load %struct.ptree** %fi108, align 8, !llfi_index !570
  %fi109 = call %struct.ptree* @injectFault0(i64 569, %struct.ptree* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %41, !llfi_index !571

; <label>:41                                      ; preds = %37, %33
  %42 = phi %struct.ptree* [ %fi106, %33 ], [ %fi109, %37 ], !llfi_index !572
  store %struct.ptree* %42, %struct.ptree** %t, align 8, !llfi_index !573
  br label %43, !llfi_index !574

; <label>:43                                      ; preds = %41
  %44 = load i32* %i, align 4, !llfi_index !575
  %fi110 = call i32 @injectFault2(i64 574, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %45 = load %struct.ptree** %t, align 8, !llfi_index !576
  %fi111 = call %struct.ptree* @injectFault0(i64 575, %struct.ptree* %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %46 = getelementptr %struct.ptree* %fi111, i32 0, i32 3, !llfi_index !577
  %fi112 = call i8* @injectFault1(i64 576, i8* %46, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %47 = load i8* %fi112, align 1, !llfi_index !578
  %fi113 = call i8 @injectFault15(i64 577, i8 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %48 = sext i8 %fi113 to i32, !llfi_index !579
  %fi114 = call i32 @injectFault2(i64 578, i32 %48, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %49 = icmp slt i32 %fi110, %fi114, !llfi_index !580
  %fi115 = call i1 @injectFault3(i64 579, i1 %49, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi115, label %17, label %50, !llfi_index !581

; <label>:50                                      ; preds = %43
  %51 = load %struct.ptree** %t, align 8, !llfi_index !582
  %fi116 = call %struct.ptree* @injectFault0(i64 581, %struct.ptree* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %52 = getelementptr %struct.ptree* %fi116, i32 0, i32 0, !llfi_index !583
  %fi117 = call i64* @injectFault11(i64 582, i64* %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %53 = load i64* %fi117, align 8, !llfi_index !584
  %fi118 = call i64 @injectFault12(i64 583, i64 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %54 = load %struct.ptree** %2, align 8, !llfi_index !585
  %fi119 = call %struct.ptree* @injectFault0(i64 584, %struct.ptree* %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %55 = getelementptr %struct.ptree* %fi119, i32 0, i32 0, !llfi_index !586
  %fi120 = call i64* @injectFault11(i64 585, i64* %55, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %56 = load i64* %fi120, align 8, !llfi_index !587
  %fi121 = call i64 @injectFault12(i64 586, i64 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %57 = icmp ne i64 %fi118, %fi121, !llfi_index !588
  %fi122 = call i1 @injectFault3(i64 587, i1 %57, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi122, label %58, label %59, !llfi_index !589

; <label>:58                                      ; preds = %50
  store i32 0, i32* %1, !llfi_index !590
  br label %327, !llfi_index !591

; <label>:59                                      ; preds = %50
  %60 = load %struct.ptree** %t, align 8, !llfi_index !592
  %fi123 = call %struct.ptree* @injectFault0(i64 591, %struct.ptree* %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %61 = getelementptr %struct.ptree* %fi123, i32 0, i32 2, !llfi_index !593
  %fi124 = call i8* @injectFault1(i64 592, i8* %61, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %62 = load i8* %fi124, align 1, !llfi_index !594
  %fi125 = call i8 @injectFault15(i64 593, i8 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %63 = zext i8 %fi125 to i32, !llfi_index !595
  %fi126 = call i32 @injectFault2(i64 594, i32 %63, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %64 = icmp eq i32 %fi126, 1, !llfi_index !596
  %fi127 = call i1 @injectFault3(i64 595, i1 %64, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi127, label %65, label %231, !llfi_index !597

; <label>:65                                      ; preds = %59
  %66 = load %struct.ptree** %t, align 8, !llfi_index !598
  %fi103 = call %struct.ptree* @injectFault0(i64 597, %struct.ptree* %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %67 = getelementptr %struct.ptree* %fi103, i32 0, i32 3, !llfi_index !599
  %fi131 = call i8* @injectFault1(i64 598, i8* %67, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %68 = load i8* %fi131, align 1, !llfi_index !600
  %fi132 = call i8 @injectFault15(i64 599, i8 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %69 = sext i8 %fi132 to i32, !llfi_index !601
  %fi133 = call i32 @injectFault2(i64 600, i32 %69, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %70 = icmp eq i32 %fi133, 0, !llfi_index !602
  %fi134 = call i1 @injectFault3(i64 601, i1 %70, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi134, label %71, label %72, !llfi_index !603

; <label>:71                                      ; preds = %65
  store i32 0, i32* %1, !llfi_index !604
  br label %327, !llfi_index !605

; <label>:72                                      ; preds = %65
  %73 = load %struct.ptree** %t, align 8, !llfi_index !606
  %fi135 = call %struct.ptree* @injectFault0(i64 605, %struct.ptree* %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %74 = getelementptr %struct.ptree* %fi135, i32 0, i32 1, !llfi_index !607
  %fi136 = call %struct.ptree_mask** @injectFault9(i64 606, %struct.ptree_mask** %74, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %75 = load %struct.ptree_mask** %fi136, align 8, !llfi_index !608
  %fi137 = call %struct.ptree_mask* @injectFault8(i64 607, %struct.ptree_mask* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %76 = getelementptr %struct.ptree_mask* %fi137, i32 0, i32 0, !llfi_index !609
  %fi138 = call i64* @injectFault11(i64 608, i64* %76, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %77 = load i64* %fi138, align 8, !llfi_index !610
  %fi139 = call i64 @injectFault12(i64 609, i64 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %78 = load %struct.ptree** %2, align 8, !llfi_index !611
  %fi140 = call %struct.ptree* @injectFault0(i64 610, %struct.ptree* %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %79 = getelementptr %struct.ptree* %fi140, i32 0, i32 1, !llfi_index !612
  %fi141 = call %struct.ptree_mask** @injectFault9(i64 611, %struct.ptree_mask** %79, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %80 = load %struct.ptree_mask** %fi141, align 8, !llfi_index !613
  %fi142 = call %struct.ptree_mask* @injectFault8(i64 612, %struct.ptree_mask* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %81 = getelementptr %struct.ptree_mask* %fi142, i32 0, i32 0, !llfi_index !614
  %fi143 = call i64* @injectFault11(i64 613, i64* %81, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %82 = load i64* %fi143, align 8, !llfi_index !615
  %fi144 = call i64 @injectFault12(i64 614, i64 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %83 = icmp ne i64 %fi139, %fi144, !llfi_index !616
  %fi145 = call i1 @injectFault3(i64 615, i1 %83, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi145, label %84, label %85, !llfi_index !617

; <label>:84                                      ; preds = %72
  store i32 0, i32* %1, !llfi_index !618
  br label %327, !llfi_index !619

; <label>:85                                      ; preds = %72
  %86 = load %struct.ptree** %p, align 8, !llfi_index !620
  %fi146 = call %struct.ptree* @injectFault0(i64 619, %struct.ptree* %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi146, %struct.ptree** %pt, align 8, !llfi_index !621
  store %struct.ptree* %fi146, %struct.ptree** %pp, align 8, !llfi_index !622
  br label %87, !llfi_index !623

; <label>:87                                      ; preds = %112, %85
  %88 = load %struct.ptree** %pt, align 8, !llfi_index !624
  %fi147 = call %struct.ptree* @injectFault0(i64 623, %struct.ptree* %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %89 = getelementptr %struct.ptree* %fi147, i32 0, i32 3, !llfi_index !625
  %fi148 = call i8* @injectFault1(i64 624, i8* %89, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %90 = load i8* %fi148, align 1, !llfi_index !626
  %fi149 = call i8 @injectFault15(i64 625, i8 %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %91 = sext i8 %fi149 to i32, !llfi_index !627
  %fi150 = call i32 @injectFault2(i64 626, i32 %91, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi150, i32* %i, align 4, !llfi_index !628
  %92 = load %struct.ptree** %pt, align 8, !llfi_index !629
  %fi151 = call %struct.ptree* @injectFault0(i64 628, %struct.ptree* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi151, %struct.ptree** %pp, align 8, !llfi_index !630
  %93 = load %struct.ptree** %pt, align 8, !llfi_index !631
  %fi152 = call %struct.ptree* @injectFault0(i64 630, %struct.ptree* %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %94 = getelementptr %struct.ptree* %fi152, i32 0, i32 3, !llfi_index !632
  %fi153 = call i8* @injectFault1(i64 631, i8* %94, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %95 = load i8* %fi153, align 1, !llfi_index !633
  %fi154 = call i8 @injectFault15(i64 632, i8 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %96 = sext i8 %fi154 to i32, !llfi_index !634
  %fi155 = call i32 @injectFault2(i64 633, i32 %96, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %97 = load %struct.ptree** %p, align 8, !llfi_index !635
  %fi156 = call %struct.ptree* @injectFault0(i64 634, %struct.ptree* %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %98 = getelementptr %struct.ptree* %fi156, i32 0, i32 0, !llfi_index !636
  %fi157 = call i64* @injectFault11(i64 635, i64* %98, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %99 = load i64* %fi157, align 8, !llfi_index !637
  %fi158 = call i64 @injectFault12(i64 636, i64 %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %100 = call i64 @bit(i32 %fi155, i64 %fi158), !llfi_index !638
  %101 = icmp ne i64 %100, 0, !llfi_index !639
  %fi159 = call i1 @injectFault3(i64 638, i1 %101, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi159, label %102, label %106, !llfi_index !640

; <label>:102                                     ; preds = %87
  %103 = load %struct.ptree** %pt, align 8, !llfi_index !641
  %fi160 = call %struct.ptree* @injectFault0(i64 640, %struct.ptree* %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %104 = getelementptr %struct.ptree* %fi160, i32 0, i32 5, !llfi_index !642
  %fi161 = call %struct.ptree** @injectFault5(i64 641, %struct.ptree** %104, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %105 = load %struct.ptree** %fi161, align 8, !llfi_index !643
  %fi162 = call %struct.ptree* @injectFault0(i64 642, %struct.ptree* %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %110, !llfi_index !644

; <label>:106                                     ; preds = %87
  %107 = load %struct.ptree** %pt, align 8, !llfi_index !645
  %fi163 = call %struct.ptree* @injectFault0(i64 644, %struct.ptree* %107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %108 = getelementptr %struct.ptree* %fi163, i32 0, i32 4, !llfi_index !646
  %fi164 = call %struct.ptree** @injectFault5(i64 645, %struct.ptree** %108, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %109 = load %struct.ptree** %fi164, align 8, !llfi_index !647
  %fi165 = call %struct.ptree* @injectFault0(i64 646, %struct.ptree* %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %110, !llfi_index !648

; <label>:110                                     ; preds = %106, %102
  %111 = phi %struct.ptree* [ %fi162, %102 ], [ %fi165, %106 ], !llfi_index !649
  store %struct.ptree* %111, %struct.ptree** %pt, align 8, !llfi_index !650
  br label %112, !llfi_index !651

; <label>:112                                     ; preds = %110
  %113 = load i32* %i, align 4, !llfi_index !652
  %fi166 = call i32 @injectFault2(i64 651, i32 %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %114 = load %struct.ptree** %pt, align 8, !llfi_index !653
  %fi167 = call %struct.ptree* @injectFault0(i64 652, %struct.ptree* %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %115 = getelementptr %struct.ptree* %fi167, i32 0, i32 3, !llfi_index !654
  %fi168 = call i8* @injectFault1(i64 653, i8* %115, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %116 = load i8* %fi168, align 1, !llfi_index !655
  %fi169 = call i8 @injectFault15(i64 654, i8 %116, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %117 = sext i8 %fi169 to i32, !llfi_index !656
  %fi170 = call i32 @injectFault2(i64 655, i32 %117, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %118 = icmp slt i32 %fi166, %fi170, !llfi_index !657
  %fi171 = call i1 @injectFault3(i64 656, i1 %118, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi171, label %87, label %119, !llfi_index !658

; <label>:119                                     ; preds = %112
  %120 = load %struct.ptree** %pp, align 8, !llfi_index !659
  %fi172 = call %struct.ptree* @injectFault0(i64 658, %struct.ptree* %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %121 = getelementptr %struct.ptree* %fi172, i32 0, i32 3, !llfi_index !660
  %fi173 = call i8* @injectFault1(i64 659, i8* %121, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %122 = load i8* %fi173, align 1, !llfi_index !661
  %fi174 = call i8 @injectFault15(i64 660, i8 %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %123 = sext i8 %fi174 to i32, !llfi_index !662
  %fi175 = call i32 @injectFault2(i64 661, i32 %123, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %124 = load %struct.ptree** %p, align 8, !llfi_index !663
  %fi176 = call %struct.ptree* @injectFault0(i64 662, %struct.ptree* %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %125 = getelementptr %struct.ptree* %fi176, i32 0, i32 0, !llfi_index !664
  %fi177 = call i64* @injectFault11(i64 663, i64* %125, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %126 = load i64* %fi177, align 8, !llfi_index !665
  %fi178 = call i64 @injectFault12(i64 664, i64 %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %127 = call i64 @bit(i32 %fi175, i64 %fi178), !llfi_index !666
  %128 = icmp ne i64 %127, 0, !llfi_index !667
  %fi179 = call i1 @injectFault3(i64 666, i1 %128, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi179, label %129, label %133, !llfi_index !668

; <label>:129                                     ; preds = %119
  %130 = load %struct.ptree** %t, align 8, !llfi_index !669
  %fi128 = call %struct.ptree* @injectFault0(i64 668, %struct.ptree* %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %131 = load %struct.ptree** %pp, align 8, !llfi_index !670
  %fi129 = call %struct.ptree* @injectFault0(i64 669, %struct.ptree* %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %132 = getelementptr %struct.ptree* %fi129, i32 0, i32 5, !llfi_index !671
  %fi130 = call %struct.ptree** @injectFault5(i64 670, %struct.ptree** %132, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi128, %struct.ptree** %fi130, align 8, !llfi_index !672
  br label %137, !llfi_index !673

; <label>:133                                     ; preds = %119
  %134 = load %struct.ptree** %t, align 8, !llfi_index !674
  %fi188 = call %struct.ptree* @injectFault0(i64 673, %struct.ptree* %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %135 = load %struct.ptree** %pp, align 8, !llfi_index !675
  %fi189 = call %struct.ptree* @injectFault0(i64 674, %struct.ptree* %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %136 = getelementptr %struct.ptree* %fi189, i32 0, i32 4, !llfi_index !676
  %fi190 = call %struct.ptree** @injectFault5(i64 675, %struct.ptree** %136, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi188, %struct.ptree** %fi190, align 8, !llfi_index !677
  br label %137, !llfi_index !678

; <label>:137                                     ; preds = %133, %129
  %138 = load %struct.ptree** %g, align 8, !llfi_index !679
  %fi191 = call %struct.ptree* @injectFault0(i64 678, %struct.ptree* %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %139 = getelementptr %struct.ptree* %fi191, i32 0, i32 3, !llfi_index !680
  %fi192 = call i8* @injectFault1(i64 679, i8* %139, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %140 = load i8* %fi192, align 1, !llfi_index !681
  %fi193 = call i8 @injectFault15(i64 680, i8 %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %141 = sext i8 %fi193 to i32, !llfi_index !682
  %fi194 = call i32 @injectFault2(i64 681, i32 %141, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %142 = load %struct.ptree** %2, align 8, !llfi_index !683
  %fi195 = call %struct.ptree* @injectFault0(i64 682, %struct.ptree* %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %143 = getelementptr %struct.ptree* %fi195, i32 0, i32 0, !llfi_index !684
  %fi196 = call i64* @injectFault11(i64 683, i64* %143, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %144 = load i64* %fi196, align 8, !llfi_index !685
  %fi197 = call i64 @injectFault12(i64 684, i64 %144, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %145 = call i64 @bit(i32 %fi194, i64 %fi197), !llfi_index !686
  %146 = icmp ne i64 %145, 0, !llfi_index !687
  %fi198 = call i1 @injectFault3(i64 686, i1 %146, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi198, label %147, label %169, !llfi_index !688

; <label>:147                                     ; preds = %137
  %148 = load %struct.ptree** %p, align 8, !llfi_index !689
  %fi199 = call %struct.ptree* @injectFault0(i64 688, %struct.ptree* %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %149 = getelementptr %struct.ptree* %fi199, i32 0, i32 3, !llfi_index !690
  %fi200 = call i8* @injectFault1(i64 689, i8* %149, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %150 = load i8* %fi200, align 1, !llfi_index !691
  %fi201 = call i8 @injectFault15(i64 690, i8 %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %151 = sext i8 %fi201 to i32, !llfi_index !692
  %fi202 = call i32 @injectFault2(i64 691, i32 %151, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %152 = load %struct.ptree** %2, align 8, !llfi_index !693
  %fi203 = call %struct.ptree* @injectFault0(i64 692, %struct.ptree* %152, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %153 = getelementptr %struct.ptree* %fi203, i32 0, i32 0, !llfi_index !694
  %fi204 = call i64* @injectFault11(i64 693, i64* %153, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %154 = load i64* %fi204, align 8, !llfi_index !695
  %fi205 = call i64 @injectFault12(i64 694, i64 %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %155 = call i64 @bit(i32 %fi202, i64 %fi205), !llfi_index !696
  %156 = icmp ne i64 %155, 0, !llfi_index !697
  %fi206 = call i1 @injectFault3(i64 696, i1 %156, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi206, label %157, label %161, !llfi_index !698

; <label>:157                                     ; preds = %147
  %158 = load %struct.ptree** %p, align 8, !llfi_index !699
  %fi207 = call %struct.ptree* @injectFault0(i64 698, %struct.ptree* %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %159 = getelementptr %struct.ptree* %fi207, i32 0, i32 4, !llfi_index !700
  %fi208 = call %struct.ptree** @injectFault5(i64 699, %struct.ptree** %159, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %160 = load %struct.ptree** %fi208, align 8, !llfi_index !701
  %fi209 = call %struct.ptree* @injectFault0(i64 700, %struct.ptree* %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %165, !llfi_index !702

; <label>:161                                     ; preds = %147
  %162 = load %struct.ptree** %p, align 8, !llfi_index !703
  %fi210 = call %struct.ptree* @injectFault0(i64 702, %struct.ptree* %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %163 = getelementptr %struct.ptree* %fi210, i32 0, i32 5, !llfi_index !704
  %fi211 = call %struct.ptree** @injectFault5(i64 703, %struct.ptree** %163, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %164 = load %struct.ptree** %fi211, align 8, !llfi_index !705
  %fi212 = call %struct.ptree* @injectFault0(i64 704, %struct.ptree* %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %165, !llfi_index !706

; <label>:165                                     ; preds = %161, %157
  %166 = phi %struct.ptree* [ %fi209, %157 ], [ %fi212, %161 ], !llfi_index !707
  %167 = load %struct.ptree** %g, align 8, !llfi_index !708
  %fi213 = call %struct.ptree* @injectFault0(i64 707, %struct.ptree* %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %168 = getelementptr %struct.ptree* %fi213, i32 0, i32 5, !llfi_index !709
  %fi214 = call %struct.ptree** @injectFault5(i64 708, %struct.ptree** %168, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %166, %struct.ptree** %fi214, align 8, !llfi_index !710
  br label %191, !llfi_index !711

; <label>:169                                     ; preds = %137
  %170 = load %struct.ptree** %p, align 8, !llfi_index !712
  %fi215 = call %struct.ptree* @injectFault0(i64 711, %struct.ptree* %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %171 = getelementptr %struct.ptree* %fi215, i32 0, i32 3, !llfi_index !713
  %fi216 = call i8* @injectFault1(i64 712, i8* %171, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %172 = load i8* %fi216, align 1, !llfi_index !714
  %fi217 = call i8 @injectFault15(i64 713, i8 %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %173 = sext i8 %fi217 to i32, !llfi_index !715
  %fi218 = call i32 @injectFault2(i64 714, i32 %173, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %174 = load %struct.ptree** %2, align 8, !llfi_index !716
  %fi219 = call %struct.ptree* @injectFault0(i64 715, %struct.ptree* %174, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %175 = getelementptr %struct.ptree* %fi219, i32 0, i32 0, !llfi_index !717
  %fi220 = call i64* @injectFault11(i64 716, i64* %175, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %176 = load i64* %fi220, align 8, !llfi_index !718
  %fi221 = call i64 @injectFault12(i64 717, i64 %176, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %177 = call i64 @bit(i32 %fi218, i64 %fi221), !llfi_index !719
  %178 = icmp ne i64 %177, 0, !llfi_index !720
  %fi222 = call i1 @injectFault3(i64 719, i1 %178, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi222, label %179, label %183, !llfi_index !721

; <label>:179                                     ; preds = %169
  %180 = load %struct.ptree** %p, align 8, !llfi_index !722
  %fi223 = call %struct.ptree* @injectFault0(i64 721, %struct.ptree* %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %181 = getelementptr %struct.ptree* %fi223, i32 0, i32 4, !llfi_index !723
  %fi224 = call %struct.ptree** @injectFault5(i64 722, %struct.ptree** %181, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %182 = load %struct.ptree** %fi224, align 8, !llfi_index !724
  %fi225 = call %struct.ptree* @injectFault0(i64 723, %struct.ptree* %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %187, !llfi_index !725

; <label>:183                                     ; preds = %169
  %184 = load %struct.ptree** %p, align 8, !llfi_index !726
  %fi226 = call %struct.ptree* @injectFault0(i64 725, %struct.ptree* %184, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %185 = getelementptr %struct.ptree* %fi226, i32 0, i32 5, !llfi_index !727
  %fi227 = call %struct.ptree** @injectFault5(i64 726, %struct.ptree** %185, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %186 = load %struct.ptree** %fi227, align 8, !llfi_index !728
  %fi228 = call %struct.ptree* @injectFault0(i64 727, %struct.ptree* %186, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %187, !llfi_index !729

; <label>:187                                     ; preds = %183, %179
  %188 = phi %struct.ptree* [ %fi225, %179 ], [ %fi228, %183 ], !llfi_index !730
  %189 = load %struct.ptree** %g, align 8, !llfi_index !731
  %fi229 = call %struct.ptree* @injectFault0(i64 730, %struct.ptree* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %190 = getelementptr %struct.ptree* %fi229, i32 0, i32 4, !llfi_index !732
  %fi230 = call %struct.ptree** @injectFault5(i64 731, %struct.ptree** %190, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %188, %struct.ptree** %fi230, align 8, !llfi_index !733
  br label %191, !llfi_index !734

; <label>:191                                     ; preds = %187, %165
  %192 = load %struct.ptree** %t, align 8, !llfi_index !735
  %fi231 = call %struct.ptree* @injectFault0(i64 734, %struct.ptree* %192, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %193 = getelementptr %struct.ptree* %fi231, i32 0, i32 1, !llfi_index !736
  %fi232 = call %struct.ptree_mask** @injectFault9(i64 735, %struct.ptree_mask** %193, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %194 = load %struct.ptree_mask** %fi232, align 8, !llfi_index !737
  %fi233 = call %struct.ptree_mask* @injectFault8(i64 736, %struct.ptree_mask* %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %195 = getelementptr %struct.ptree_mask* %fi233, i32 0, i32 1, !llfi_index !738
  %fi234 = call i8** @injectFault4(i64 737, i8** %195, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %196 = load i8** %fi234, align 8, !llfi_index !739
  %fi235 = call i8* @injectFault1(i64 738, i8* %196, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %197 = icmp ne i8* %fi235, null, !llfi_index !740
  %fi236 = call i1 @injectFault3(i64 739, i1 %197, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi236, label %198, label %204, !llfi_index !741

; <label>:198                                     ; preds = %191
  %199 = load %struct.ptree** %t, align 8, !llfi_index !742
  %fi237 = call %struct.ptree* @injectFault0(i64 741, %struct.ptree* %199, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %200 = getelementptr %struct.ptree* %fi237, i32 0, i32 1, !llfi_index !743
  %fi238 = call %struct.ptree_mask** @injectFault9(i64 742, %struct.ptree_mask** %200, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %201 = load %struct.ptree_mask** %fi238, align 8, !llfi_index !744
  %fi239 = call %struct.ptree_mask* @injectFault8(i64 743, %struct.ptree_mask* %201, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %202 = getelementptr %struct.ptree_mask* %fi239, i32 0, i32 1, !llfi_index !745
  %fi240 = call i8** @injectFault4(i64 744, i8** %202, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %203 = load i8** %fi240, align 8, !llfi_index !746
  %fi241 = call i8* @injectFault1(i64 745, i8* %203, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi241) #4, !llfi_index !747
  br label %204, !llfi_index !748

; <label>:204                                     ; preds = %198, %191
  %205 = load %struct.ptree** %t, align 8, !llfi_index !749
  %fi242 = call %struct.ptree* @injectFault0(i64 748, %struct.ptree* %205, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %206 = getelementptr %struct.ptree* %fi242, i32 0, i32 1, !llfi_index !750
  %fi243 = call %struct.ptree_mask** @injectFault9(i64 749, %struct.ptree_mask** %206, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %207 = load %struct.ptree_mask** %fi243, align 8, !llfi_index !751
  %fi244 = call %struct.ptree_mask* @injectFault8(i64 750, %struct.ptree_mask* %207, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %208 = bitcast %struct.ptree_mask* %fi244 to i8*, !llfi_index !752
  %fi245 = call i8* @injectFault1(i64 751, i8* %208, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi245) #4, !llfi_index !753
  %209 = load %struct.ptree** %t, align 8, !llfi_index !754
  %fi246 = call %struct.ptree* @injectFault0(i64 753, %struct.ptree* %209, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %210 = load %struct.ptree** %p, align 8, !llfi_index !755
  %fi247 = call %struct.ptree* @injectFault0(i64 754, %struct.ptree* %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %211 = icmp ne %struct.ptree* %fi246, %fi247, !llfi_index !756
  %fi248 = call i1 @injectFault3(i64 755, i1 %211, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi248, label %212, label %228, !llfi_index !757

; <label>:212                                     ; preds = %204
  %213 = load %struct.ptree** %p, align 8, !llfi_index !758
  %fi249 = call %struct.ptree* @injectFault0(i64 757, %struct.ptree* %213, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %214 = getelementptr %struct.ptree* %fi249, i32 0, i32 0, !llfi_index !759
  %fi250 = call i64* @injectFault11(i64 758, i64* %214, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %215 = load i64* %fi250, align 8, !llfi_index !760
  %fi251 = call i64 @injectFault12(i64 759, i64 %215, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %216 = load %struct.ptree** %t, align 8, !llfi_index !761
  %fi252 = call %struct.ptree* @injectFault0(i64 760, %struct.ptree* %216, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %217 = getelementptr %struct.ptree* %fi252, i32 0, i32 0, !llfi_index !762
  %fi253 = call i64* @injectFault11(i64 761, i64* %217, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i64 %fi251, i64* %fi253, align 8, !llfi_index !763
  %218 = load %struct.ptree** %p, align 8, !llfi_index !764
  %fi254 = call %struct.ptree* @injectFault0(i64 763, %struct.ptree* %218, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %219 = getelementptr %struct.ptree* %fi254, i32 0, i32 1, !llfi_index !765
  %fi255 = call %struct.ptree_mask** @injectFault9(i64 764, %struct.ptree_mask** %219, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %220 = load %struct.ptree_mask** %fi255, align 8, !llfi_index !766
  %fi256 = call %struct.ptree_mask* @injectFault8(i64 765, %struct.ptree_mask* %220, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %221 = load %struct.ptree** %t, align 8, !llfi_index !767
  %fi257 = call %struct.ptree* @injectFault0(i64 766, %struct.ptree* %221, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %222 = getelementptr %struct.ptree* %fi257, i32 0, i32 1, !llfi_index !768
  %fi258 = call %struct.ptree_mask** @injectFault9(i64 767, %struct.ptree_mask** %222, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi256, %struct.ptree_mask** %fi258, align 8, !llfi_index !769
  %223 = load %struct.ptree** %p, align 8, !llfi_index !770
  %fi = call %struct.ptree* @injectFault0(i64 769, %struct.ptree* %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %224 = getelementptr %struct.ptree* %fi, i32 0, i32 2, !llfi_index !771
  %fi1 = call i8* @injectFault1(i64 770, i8* %224, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %225 = load i8* %fi1, align 1, !llfi_index !772
  %fi2 = call i8 @injectFault15(i64 771, i8 %225, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %226 = load %struct.ptree** %t, align 8, !llfi_index !773
  %fi3 = call %struct.ptree* @injectFault0(i64 772, %struct.ptree* %226, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %227 = getelementptr %struct.ptree* %fi3, i32 0, i32 2, !llfi_index !774
  %fi4 = call i8* @injectFault1(i64 773, i8* %227, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8 %fi2, i8* %fi4, align 1, !llfi_index !775
  br label %228, !llfi_index !776

; <label>:228                                     ; preds = %212, %204
  %229 = load %struct.ptree** %p, align 8, !llfi_index !777
  %fi5 = call %struct.ptree* @injectFault0(i64 776, %struct.ptree* %229, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %230 = bitcast %struct.ptree* %fi5 to i8*, !llfi_index !778
  %fi6 = call i8* @injectFault1(i64 777, i8* %230, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi6) #4, !llfi_index !779
  store i32 1, i32* %1, !llfi_index !780
  br label %327, !llfi_index !781

; <label>:231                                     ; preds = %59
  store i32 0, i32* %i, align 4, !llfi_index !782
  br label %232, !llfi_index !783

; <label>:232                                     ; preds = %256, %231
  %233 = load i32* %i, align 4, !llfi_index !784
  %fi7 = call i32 @injectFault2(i64 783, i32 %233, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %234 = load %struct.ptree** %t, align 8, !llfi_index !785
  %fi8 = call %struct.ptree* @injectFault0(i64 784, %struct.ptree* %234, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %235 = getelementptr %struct.ptree* %fi8, i32 0, i32 2, !llfi_index !786
  %fi9 = call i8* @injectFault1(i64 785, i8* %235, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %236 = load i8* %fi9, align 1, !llfi_index !787
  %fi10 = call i8 @injectFault15(i64 786, i8 %236, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %237 = zext i8 %fi10 to i32, !llfi_index !788
  %fi11 = call i32 @injectFault2(i64 787, i32 %237, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %238 = icmp slt i32 %fi7, %fi11, !llfi_index !789
  %fi12 = call i1 @injectFault3(i64 788, i1 %238, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi12, label %239, label %259, !llfi_index !790

; <label>:239                                     ; preds = %232
  %240 = load %struct.ptree** %2, align 8, !llfi_index !791
  %fi13 = call %struct.ptree* @injectFault0(i64 790, %struct.ptree* %240, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %241 = getelementptr %struct.ptree* %fi13, i32 0, i32 1, !llfi_index !792
  %fi14 = call %struct.ptree_mask** @injectFault9(i64 791, %struct.ptree_mask** %241, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %242 = load %struct.ptree_mask** %fi14, align 8, !llfi_index !793
  %fi15 = call %struct.ptree_mask* @injectFault8(i64 792, %struct.ptree_mask* %242, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %243 = getelementptr %struct.ptree_mask* %fi15, i32 0, i32 0, !llfi_index !794
  %fi16 = call i64* @injectFault11(i64 793, i64* %243, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %244 = load i64* %fi16, align 8, !llfi_index !795
  %fi17 = call i64 @injectFault12(i64 794, i64 %244, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %245 = load i32* %i, align 4, !llfi_index !796
  %fi18 = call i32 @injectFault2(i64 795, i32 %245, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %246 = sext i32 %fi18 to i64, !llfi_index !797
  %fi19 = call i64 @injectFault12(i64 796, i64 %246, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %247 = load %struct.ptree** %t, align 8, !llfi_index !798
  %fi20 = call %struct.ptree* @injectFault0(i64 797, %struct.ptree* %247, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %248 = getelementptr %struct.ptree* %fi20, i32 0, i32 1, !llfi_index !799
  %fi21 = call %struct.ptree_mask** @injectFault9(i64 798, %struct.ptree_mask** %248, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %249 = load %struct.ptree_mask** %fi21, align 8, !llfi_index !800
  %fi22 = call %struct.ptree_mask* @injectFault8(i64 799, %struct.ptree_mask* %249, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %250 = getelementptr %struct.ptree_mask* %fi22, i64 %fi19, !llfi_index !801
  %fi23 = call %struct.ptree_mask* @injectFault8(i64 800, %struct.ptree_mask* %250, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %251 = getelementptr %struct.ptree_mask* %fi23, i32 0, i32 0, !llfi_index !802
  %fi24 = call i64* @injectFault11(i64 801, i64* %251, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %252 = load i64* %fi24, align 8, !llfi_index !803
  %fi25 = call i64 @injectFault12(i64 802, i64 %252, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %253 = icmp eq i64 %fi17, %fi25, !llfi_index !804
  %fi26 = call i1 @injectFault3(i64 803, i1 %253, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi26, label %254, label %255, !llfi_index !805

; <label>:254                                     ; preds = %239
  br label %259, !llfi_index !806

; <label>:255                                     ; preds = %239
  br label %256, !llfi_index !807

; <label>:256                                     ; preds = %255
  %257 = load i32* %i, align 4, !llfi_index !808
  %fi180 = call i32 @injectFault2(i64 807, i32 %257, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %258 = add nsw i32 %fi180, 1, !llfi_index !809
  %fi181 = call i32 @injectFault2(i64 808, i32 %258, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi181, i32* %i, align 4, !llfi_index !810
  br label %232, !llfi_index !811

; <label>:259                                     ; preds = %254, %232
  %260 = load i32* %i, align 4, !llfi_index !812
  %fi182 = call i32 @injectFault2(i64 811, i32 %260, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %261 = load %struct.ptree** %t, align 8, !llfi_index !813
  %fi183 = call %struct.ptree* @injectFault0(i64 812, %struct.ptree* %261, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %262 = getelementptr %struct.ptree* %fi183, i32 0, i32 2, !llfi_index !814
  %fi184 = call i8* @injectFault1(i64 813, i8* %262, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %263 = load i8* %fi184, align 1, !llfi_index !815
  %fi185 = call i8 @injectFault15(i64 814, i8 %263, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %264 = zext i8 %fi185 to i32, !llfi_index !816
  %fi186 = call i32 @injectFault2(i64 815, i32 %264, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %265 = icmp sge i32 %fi182, %fi186, !llfi_index !817
  %fi187 = call i1 @injectFault3(i64 816, i1 %265, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi187, label %266, label %267, !llfi_index !818

; <label>:266                                     ; preds = %259
  store i32 0, i32* %1, !llfi_index !819
  br label %327, !llfi_index !820

; <label>:267                                     ; preds = %259
  %268 = load %struct.ptree** %t, align 8, !llfi_index !821
  %fi27 = call %struct.ptree* @injectFault0(i64 820, %struct.ptree* %268, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %269 = getelementptr %struct.ptree* %fi27, i32 0, i32 2, !llfi_index !822
  %fi28 = call i8* @injectFault1(i64 821, i8* %269, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %270 = load i8* %fi28, align 1, !llfi_index !823
  %fi29 = call i8 @injectFault15(i64 822, i8 %270, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %271 = zext i8 %fi29 to i32, !llfi_index !824
  %fi30 = call i32 @injectFault2(i64 823, i32 %271, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %272 = sub nsw i32 %fi30, 1, !llfi_index !825
  %fi31 = call i32 @injectFault2(i64 824, i32 %272, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %273 = sext i32 %fi31 to i64, !llfi_index !826
  %fi32 = call i64 @injectFault12(i64 825, i64 %273, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %274 = mul i64 16, %fi32, !llfi_index !827
  %fi33 = call i64 @injectFault12(i64 826, i64 %274, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %275 = call noalias i8* @malloc(i64 %fi33) #4, !llfi_index !828
  %276 = bitcast i8* %275 to %struct.ptree_mask*, !llfi_index !829
  %fi34 = call %struct.ptree_mask* @injectFault8(i64 828, %struct.ptree_mask* %276, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi34, %struct.ptree_mask** %buf, align 8, !llfi_index !830
  store i32 0, i32* %i, align 4, !llfi_index !831
  %277 = load %struct.ptree_mask** %buf, align 8, !llfi_index !832
  %fi35 = call %struct.ptree_mask* @injectFault8(i64 831, %struct.ptree_mask* %277, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi35, %struct.ptree_mask** %pm, align 8, !llfi_index !833
  br label %278, !llfi_index !834

; <label>:278                                     ; preds = %312, %267
  %279 = load i32* %i, align 4, !llfi_index !835
  %fi36 = call i32 @injectFault2(i64 834, i32 %279, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %280 = load %struct.ptree** %t, align 8, !llfi_index !836
  %fi37 = call %struct.ptree* @injectFault0(i64 835, %struct.ptree* %280, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %281 = getelementptr %struct.ptree* %fi37, i32 0, i32 2, !llfi_index !837
  %fi38 = call i8* @injectFault1(i64 836, i8* %281, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %282 = load i8* %fi38, align 1, !llfi_index !838
  %fi39 = call i8 @injectFault15(i64 837, i8 %282, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %283 = zext i8 %fi39 to i32, !llfi_index !839
  %fi40 = call i32 @injectFault2(i64 838, i32 %283, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %284 = icmp slt i32 %fi36, %fi40, !llfi_index !840
  %fi41 = call i1 @injectFault3(i64 839, i1 %284, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi41, label %285, label %315, !llfi_index !841

; <label>:285                                     ; preds = %278
  %286 = load %struct.ptree** %2, align 8, !llfi_index !842
  %fi42 = call %struct.ptree* @injectFault0(i64 841, %struct.ptree* %286, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %287 = getelementptr %struct.ptree* %fi42, i32 0, i32 1, !llfi_index !843
  %fi43 = call %struct.ptree_mask** @injectFault9(i64 842, %struct.ptree_mask** %287, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %288 = load %struct.ptree_mask** %fi43, align 8, !llfi_index !844
  %fi44 = call %struct.ptree_mask* @injectFault8(i64 843, %struct.ptree_mask* %288, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %289 = getelementptr %struct.ptree_mask* %fi44, i32 0, i32 0, !llfi_index !845
  %fi45 = call i64* @injectFault11(i64 844, i64* %289, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %290 = load i64* %fi45, align 8, !llfi_index !846
  %fi46 = call i64 @injectFault12(i64 845, i64 %290, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %291 = load i32* %i, align 4, !llfi_index !847
  %fi47 = call i32 @injectFault2(i64 846, i32 %291, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %292 = sext i32 %fi47 to i64, !llfi_index !848
  %fi48 = call i64 @injectFault12(i64 847, i64 %292, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %293 = load %struct.ptree** %t, align 8, !llfi_index !849
  %fi49 = call %struct.ptree* @injectFault0(i64 848, %struct.ptree* %293, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %294 = getelementptr %struct.ptree* %fi49, i32 0, i32 1, !llfi_index !850
  %fi50 = call %struct.ptree_mask** @injectFault9(i64 849, %struct.ptree_mask** %294, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %295 = load %struct.ptree_mask** %fi50, align 8, !llfi_index !851
  %fi51 = call %struct.ptree_mask* @injectFault8(i64 850, %struct.ptree_mask* %295, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %296 = getelementptr %struct.ptree_mask* %fi51, i64 %fi48, !llfi_index !852
  %fi52 = call %struct.ptree_mask* @injectFault8(i64 851, %struct.ptree_mask* %296, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %297 = getelementptr %struct.ptree_mask* %fi52, i32 0, i32 0, !llfi_index !853
  %fi53 = call i64* @injectFault11(i64 852, i64* %297, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %298 = load i64* %fi53, align 8, !llfi_index !854
  %fi54 = call i64 @injectFault12(i64 853, i64 %298, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %299 = icmp ne i64 %fi46, %fi54, !llfi_index !855
  %fi55 = call i1 @injectFault3(i64 854, i1 %299, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi55, label %300, label %311, !llfi_index !856

; <label>:300                                     ; preds = %285
  %301 = load %struct.ptree** %t, align 8, !llfi_index !857
  %fi56 = call %struct.ptree* @injectFault0(i64 856, %struct.ptree* %301, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %302 = getelementptr %struct.ptree* %fi56, i32 0, i32 1, !llfi_index !858
  %fi57 = call %struct.ptree_mask** @injectFault9(i64 857, %struct.ptree_mask** %302, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %303 = load %struct.ptree_mask** %fi57, align 8, !llfi_index !859
  %fi58 = call %struct.ptree_mask* @injectFault8(i64 858, %struct.ptree_mask* %303, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %304 = load i32* %i, align 4, !llfi_index !860
  %fi59 = call i32 @injectFault2(i64 859, i32 %304, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %305 = sext i32 %fi59 to i64, !llfi_index !861
  %fi60 = call i64 @injectFault12(i64 860, i64 %305, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %306 = getelementptr %struct.ptree_mask* %fi58, i64 %fi60, !llfi_index !862
  %fi61 = call %struct.ptree_mask* @injectFault8(i64 861, %struct.ptree_mask* %306, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %307 = bitcast %struct.ptree_mask* %fi61 to i8*, !llfi_index !863
  %fi62 = call i8* @injectFault1(i64 862, i8* %307, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %308 = load %struct.ptree_mask** %pm, align 8, !llfi_index !864
  %fi63 = call %struct.ptree_mask* @injectFault8(i64 863, %struct.ptree_mask* %308, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %309 = getelementptr %struct.ptree_mask* %fi63, i32 1, !llfi_index !865
  %fi64 = call %struct.ptree_mask* @injectFault8(i64 864, %struct.ptree_mask* %309, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi64, %struct.ptree_mask** %pm, align 8, !llfi_index !866
  %310 = bitcast %struct.ptree_mask* %fi63 to i8*, !llfi_index !867
  %fi65 = call i8* @injectFault1(i64 866, i8* %310, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @bcopy(i8* %fi62, i8* %fi65, i64 16) #4, !llfi_index !868
  br label %311, !llfi_index !869

; <label>:311                                     ; preds = %300, %285
  br label %312, !llfi_index !870

; <label>:312                                     ; preds = %311
  %313 = load i32* %i, align 4, !llfi_index !871
  %fi66 = call i32 @injectFault2(i64 870, i32 %313, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %314 = add nsw i32 %fi66, 1, !llfi_index !872
  %fi67 = call i32 @injectFault2(i64 871, i32 %314, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi67, i32* %i, align 4, !llfi_index !873
  br label %278, !llfi_index !874

; <label>:315                                     ; preds = %278
  %316 = load %struct.ptree** %t, align 8, !llfi_index !875
  %fi68 = call %struct.ptree* @injectFault0(i64 874, %struct.ptree* %316, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %317 = getelementptr %struct.ptree* %fi68, i32 0, i32 2, !llfi_index !876
  %fi69 = call i8* @injectFault1(i64 875, i8* %317, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %318 = load i8* %fi69, align 1, !llfi_index !877
  %fi70 = call i8 @injectFault15(i64 876, i8 %318, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %319 = add i8 %fi70, -1, !llfi_index !878
  %fi71 = call i8 @injectFault15(i64 877, i8 %319, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8 %fi71, i8* %fi69, align 1, !llfi_index !879
  %320 = load %struct.ptree** %t, align 8, !llfi_index !880
  %fi72 = call %struct.ptree* @injectFault0(i64 879, %struct.ptree* %320, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %321 = getelementptr %struct.ptree* %fi72, i32 0, i32 1, !llfi_index !881
  %fi73 = call %struct.ptree_mask** @injectFault9(i64 880, %struct.ptree_mask** %321, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %322 = load %struct.ptree_mask** %fi73, align 8, !llfi_index !882
  %fi74 = call %struct.ptree_mask* @injectFault8(i64 881, %struct.ptree_mask* %322, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %323 = bitcast %struct.ptree_mask* %fi74 to i8*, !llfi_index !883
  %fi75 = call i8* @injectFault1(i64 882, i8* %323, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !19
  call void @free(i8* %fi75) #4, !llfi_index !884
  %324 = load %struct.ptree_mask** %buf, align 8, !llfi_index !885
  %fi76 = call %struct.ptree_mask* @injectFault8(i64 884, %struct.ptree_mask* %324, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %325 = load %struct.ptree** %t, align 8, !llfi_index !886
  %fi77 = call %struct.ptree* @injectFault0(i64 885, %struct.ptree* %325, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %326 = getelementptr %struct.ptree* %fi77, i32 0, i32 1, !llfi_index !887
  %fi78 = call %struct.ptree_mask** @injectFault9(i64 886, %struct.ptree_mask** %326, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree_mask* %fi76, %struct.ptree_mask** %fi78, align 8, !llfi_index !888
  store i32 1, i32* %1, !llfi_index !889
  br label %327, !llfi_index !890

; <label>:327                                     ; preds = %315, %266, %228, %84, %71, %58, %14
  %328 = load i32* %1, !llfi_index !891
  %fi79 = call i32 @injectFault2(i64 890, i32 %328, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  ret i32 %fi79, !llfi_index !892
}

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_search(i64 %key, %struct.ptree* %head) #0 {
  %1 = alloca %struct.ptree*, align 8, !llfi_index !893
  %2 = alloca i64, align 8, !llfi_index !894
  %3 = alloca %struct.ptree*, align 8, !llfi_index !895
  %p = alloca %struct.ptree*, align 8, !llfi_index !896
  %t = alloca %struct.ptree*, align 8, !llfi_index !897
  %i = alloca i32, align 4, !llfi_index !898
  store i64 %key, i64* %2, align 8, !llfi_index !899
  store %struct.ptree* %head, %struct.ptree** %3, align 8, !llfi_index !900
  store %struct.ptree* null, %struct.ptree** %p, align 8, !llfi_index !901
  %4 = load %struct.ptree** %3, align 8, !llfi_index !902
  %fi = call %struct.ptree* @injectFault0(i64 901, %struct.ptree* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi, %struct.ptree** %t, align 8, !llfi_index !903
  %5 = load %struct.ptree** %t, align 8, !llfi_index !904
  %fi1 = call %struct.ptree* @injectFault0(i64 903, %struct.ptree* %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %6 = icmp ne %struct.ptree* %fi1, null, !llfi_index !905
  %fi2 = call i1 @injectFault3(i64 904, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi2, label %8, label %7, !llfi_index !906

; <label>:7                                       ; preds = %0
  store %struct.ptree* null, %struct.ptree** %1, !llfi_index !907
  br label %70, !llfi_index !908

; <label>:8                                       ; preds = %0
  br label %9, !llfi_index !909

; <label>:9                                       ; preds = %45, %8
  %10 = load %struct.ptree** %t, align 8, !llfi_index !910
  %fi4 = call %struct.ptree* @injectFault0(i64 909, %struct.ptree* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %11 = getelementptr %struct.ptree* %fi4, i32 0, i32 0, !llfi_index !911
  %fi5 = call i64* @injectFault11(i64 910, i64* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %12 = load i64* %fi5, align 8, !llfi_index !912
  %fi6 = call i64 @injectFault12(i64 911, i64 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %13 = load i64* %2, align 8, !llfi_index !913
  %fi7 = call i64 @injectFault12(i64 912, i64 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %14 = load %struct.ptree** %t, align 8, !llfi_index !914
  %fi8 = call %struct.ptree* @injectFault0(i64 913, %struct.ptree* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %15 = getelementptr %struct.ptree* %fi8, i32 0, i32 1, !llfi_index !915
  %fi9 = call %struct.ptree_mask** @injectFault9(i64 914, %struct.ptree_mask** %15, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %16 = load %struct.ptree_mask** %fi9, align 8, !llfi_index !916
  %fi10 = call %struct.ptree_mask* @injectFault8(i64 915, %struct.ptree_mask* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %17 = getelementptr %struct.ptree_mask* %fi10, i32 0, i32 0, !llfi_index !917
  %fi11 = call i64* @injectFault11(i64 916, i64* %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %18 = load i64* %fi11, align 8, !llfi_index !918
  %fi12 = call i64 @injectFault12(i64 917, i64 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %19 = and i64 %fi7, %fi12, !llfi_index !919
  %fi3 = call i64 @injectFault12(i64 918, i64 %19, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %20 = icmp eq i64 %fi6, %fi3, !llfi_index !920
  %fi13 = call i1 @injectFault3(i64 919, i1 %20, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi13, label %21, label %23, !llfi_index !921

; <label>:21                                      ; preds = %9
  %22 = load %struct.ptree** %t, align 8, !llfi_index !922
  %fi14 = call %struct.ptree* @injectFault0(i64 921, %struct.ptree* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi14, %struct.ptree** %p, align 8, !llfi_index !923
  br label %23, !llfi_index !924

; <label>:23                                      ; preds = %21, %9
  %24 = load %struct.ptree** %t, align 8, !llfi_index !925
  %fi15 = call %struct.ptree* @injectFault0(i64 924, %struct.ptree* %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %25 = getelementptr %struct.ptree* %fi15, i32 0, i32 3, !llfi_index !926
  %fi16 = call i8* @injectFault1(i64 925, i8* %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %26 = load i8* %fi16, align 1, !llfi_index !927
  %fi17 = call i8 @injectFault15(i64 926, i8 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %27 = sext i8 %fi17 to i32, !llfi_index !928
  %fi18 = call i32 @injectFault2(i64 927, i32 %27, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i32 %fi18, i32* %i, align 4, !llfi_index !929
  %28 = load %struct.ptree** %t, align 8, !llfi_index !930
  %fi19 = call %struct.ptree* @injectFault0(i64 929, %struct.ptree* %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %29 = getelementptr %struct.ptree* %fi19, i32 0, i32 3, !llfi_index !931
  %fi20 = call i8* @injectFault1(i64 930, i8* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %30 = load i8* %fi20, align 1, !llfi_index !932
  %fi21 = call i8 @injectFault15(i64 931, i8 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %31 = sext i8 %fi21 to i32, !llfi_index !933
  %fi22 = call i32 @injectFault2(i64 932, i32 %31, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %32 = load i64* %2, align 8, !llfi_index !934
  %fi23 = call i64 @injectFault12(i64 933, i64 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %33 = call i64 @bit(i32 %fi22, i64 %fi23), !llfi_index !935
  %34 = icmp ne i64 %33, 0, !llfi_index !936
  %fi25 = call i1 @injectFault3(i64 935, i1 %34, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi25, label %35, label %39, !llfi_index !937

; <label>:35                                      ; preds = %23
  %36 = load %struct.ptree** %t, align 8, !llfi_index !938
  %fi26 = call %struct.ptree* @injectFault0(i64 937, %struct.ptree* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %37 = getelementptr %struct.ptree* %fi26, i32 0, i32 5, !llfi_index !939
  %fi27 = call %struct.ptree** @injectFault5(i64 938, %struct.ptree** %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %38 = load %struct.ptree** %fi27, align 8, !llfi_index !940
  %fi28 = call %struct.ptree* @injectFault0(i64 939, %struct.ptree* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %43, !llfi_index !941

; <label>:39                                      ; preds = %23
  %40 = load %struct.ptree** %t, align 8, !llfi_index !942
  %fi29 = call %struct.ptree* @injectFault0(i64 941, %struct.ptree* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %41 = getelementptr %struct.ptree* %fi29, i32 0, i32 4, !llfi_index !943
  %fi30 = call %struct.ptree** @injectFault5(i64 942, %struct.ptree** %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %42 = load %struct.ptree** %fi30, align 8, !llfi_index !944
  %fi31 = call %struct.ptree* @injectFault0(i64 943, %struct.ptree* %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %43, !llfi_index !945

; <label>:43                                      ; preds = %39, %35
  %44 = phi %struct.ptree* [ %fi28, %35 ], [ %fi31, %39 ], !llfi_index !946
  store %struct.ptree* %44, %struct.ptree** %t, align 8, !llfi_index !947
  br label %45, !llfi_index !948

; <label>:45                                      ; preds = %43
  %46 = load i32* %i, align 4, !llfi_index !949
  %fi32 = call i32 @injectFault2(i64 948, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %47 = load %struct.ptree** %t, align 8, !llfi_index !950
  %fi33 = call %struct.ptree* @injectFault0(i64 949, %struct.ptree* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %48 = getelementptr %struct.ptree* %fi33, i32 0, i32 3, !llfi_index !951
  %fi34 = call i8* @injectFault1(i64 950, i8* %48, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %49 = load i8* %fi34, align 1, !llfi_index !952
  %fi35 = call i8 @injectFault15(i64 951, i8 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %50 = sext i8 %fi35 to i32, !llfi_index !953
  %fi36 = call i32 @injectFault2(i64 952, i32 %50, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %51 = icmp slt i32 %fi32, %fi36, !llfi_index !954
  %fi37 = call i1 @injectFault3(i64 953, i1 %51, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi37, label %9, label %52, !llfi_index !955

; <label>:52                                      ; preds = %45
  %53 = load %struct.ptree** %t, align 8, !llfi_index !956
  %fi38 = call %struct.ptree* @injectFault0(i64 955, %struct.ptree* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %54 = getelementptr %struct.ptree* %fi38, i32 0, i32 0, !llfi_index !957
  %fi39 = call i64* @injectFault11(i64 956, i64* %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %55 = load i64* %fi39, align 8, !llfi_index !958
  %fi40 = call i64 @injectFault12(i64 957, i64 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %56 = load i64* %2, align 8, !llfi_index !959
  %fi41 = call i64 @injectFault12(i64 958, i64 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %57 = load %struct.ptree** %t, align 8, !llfi_index !960
  %fi42 = call %struct.ptree* @injectFault0(i64 959, %struct.ptree* %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %58 = getelementptr %struct.ptree* %fi42, i32 0, i32 1, !llfi_index !961
  %fi43 = call %struct.ptree_mask** @injectFault9(i64 960, %struct.ptree_mask** %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %59 = load %struct.ptree_mask** %fi43, align 8, !llfi_index !962
  %fi44 = call %struct.ptree_mask* @injectFault8(i64 961, %struct.ptree_mask* %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %60 = getelementptr %struct.ptree_mask* %fi44, i32 0, i32 0, !llfi_index !963
  %fi45 = call i64* @injectFault11(i64 962, i64* %60, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %61 = load i64* %fi45, align 8, !llfi_index !964
  %fi46 = call i64 @injectFault12(i64 963, i64 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %62 = and i64 %fi41, %fi46, !llfi_index !965
  %fi47 = call i64 @injectFault12(i64 964, i64 %62, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %63 = icmp eq i64 %fi40, %fi47, !llfi_index !966
  %fi48 = call i1 @injectFault3(i64 965, i1 %63, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi48, label %64, label %66, !llfi_index !967

; <label>:64                                      ; preds = %52
  %65 = load %struct.ptree** %t, align 8, !llfi_index !968
  %fi24 = call %struct.ptree* @injectFault0(i64 967, %struct.ptree* %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %68, !llfi_index !969

; <label>:66                                      ; preds = %52
  %67 = load %struct.ptree** %p, align 8, !llfi_index !970
  %fi49 = call %struct.ptree* @injectFault0(i64 969, %struct.ptree* %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %68, !llfi_index !971

; <label>:68                                      ; preds = %66, %64
  %69 = phi %struct.ptree* [ %fi24, %64 ], [ %fi49, %66 ], !llfi_index !972
  store %struct.ptree* %69, %struct.ptree** %1, !llfi_index !973
  br label %70, !llfi_index !974

; <label>:70                                      ; preds = %68, %7
  %71 = load %struct.ptree** %1, !llfi_index !975
  %fi50 = call %struct.ptree* @injectFault0(i64 974, %struct.ptree* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  ret %struct.ptree* %fi50, !llfi_index !976
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bit(i32 %i, i64 %key) #6 {
  %1 = alloca i32, align 4, !llfi_index !977
  %2 = alloca i64, align 8, !llfi_index !978
  store i32 %i, i32* %1, align 4, !llfi_index !979
  store i64 %key, i64* %2, align 8, !llfi_index !980
  %3 = load i64* %2, align 8, !llfi_index !981
  %fi = call i64 @injectFault12(i64 980, i64 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %4 = load i32* %1, align 4, !llfi_index !982
  %fi1 = call i32 @injectFault2(i64 981, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %5 = sub nsw i32 31, %fi1, !llfi_index !983
  %fi2 = call i32 @injectFault2(i64 982, i32 %5, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %6 = shl i32 1, %fi2, !llfi_index !984
  %fi3 = call i32 @injectFault2(i64 983, i32 %6, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %7 = sext i32 %fi3 to i64, !llfi_index !985
  %fi4 = call i64 @injectFault12(i64 984, i64 %7, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %8 = and i64 %fi, %fi4, !llfi_index !986
  %fi5 = call i64 @injectFault12(i64 985, i64 %8, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !19
  ret i64 %fi5, !llfi_index !987
}

; Function Attrs: nounwind uwtable
define internal %struct.ptree* @insertR(%struct.ptree* %h, %struct.ptree* %n, i32 %d, %struct.ptree* %p) #0 {
  %1 = alloca %struct.ptree*, align 8, !llfi_index !988
  %2 = alloca %struct.ptree*, align 8, !llfi_index !989
  %3 = alloca %struct.ptree*, align 8, !llfi_index !990
  %4 = alloca i32, align 4, !llfi_index !991
  %5 = alloca %struct.ptree*, align 8, !llfi_index !992
  store %struct.ptree* %h, %struct.ptree** %2, align 8, !llfi_index !993
  store %struct.ptree* %n, %struct.ptree** %3, align 8, !llfi_index !994
  store i32 %d, i32* %4, align 4, !llfi_index !995
  store %struct.ptree* %p, %struct.ptree** %5, align 8, !llfi_index !996
  %6 = load %struct.ptree** %2, align 8, !llfi_index !997
  %fi = call %struct.ptree* @injectFault0(i64 996, %struct.ptree* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %7 = getelementptr %struct.ptree* %fi, i32 0, i32 3, !llfi_index !998
  %fi1 = call i8* @injectFault1(i64 997, i8* %7, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %8 = load i8* %fi1, align 1, !llfi_index !999
  %fi2 = call i8 @injectFault15(i64 998, i8 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %9 = sext i8 %fi2 to i32, !llfi_index !1000
  %fi4 = call i32 @injectFault2(i64 999, i32 %9, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %10 = load i32* %4, align 4, !llfi_index !1001
  %fi5 = call i32 @injectFault2(i64 1000, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %11 = icmp sge i32 %fi4, %fi5, !llfi_index !1002
  %fi6 = call i1 @injectFault3(i64 1001, i1 %11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi6, label %22, label %12, !llfi_index !1003

; <label>:12                                      ; preds = %0
  %13 = load %struct.ptree** %2, align 8, !llfi_index !1004
  %fi7 = call %struct.ptree* @injectFault0(i64 1003, %struct.ptree* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %14 = getelementptr %struct.ptree* %fi7, i32 0, i32 3, !llfi_index !1005
  %fi8 = call i8* @injectFault1(i64 1004, i8* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %15 = load i8* %fi8, align 1, !llfi_index !1006
  %fi9 = call i8 @injectFault15(i64 1005, i8 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %16 = sext i8 %fi9 to i32, !llfi_index !1007
  %fi10 = call i32 @injectFault2(i64 1006, i32 %16, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %17 = load %struct.ptree** %5, align 8, !llfi_index !1008
  %fi3 = call %struct.ptree* @injectFault0(i64 1007, %struct.ptree* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %18 = getelementptr %struct.ptree* %fi3, i32 0, i32 3, !llfi_index !1009
  %fi11 = call i8* @injectFault1(i64 1008, i8* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %19 = load i8* %fi11, align 1, !llfi_index !1010
  %fi12 = call i8 @injectFault15(i64 1009, i8 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %20 = sext i8 %fi12 to i32, !llfi_index !1011
  %fi13 = call i32 @injectFault2(i64 1010, i32 %20, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %21 = icmp sle i32 %fi10, %fi13, !llfi_index !1012
  %fi14 = call i1 @injectFault3(i64 1011, i1 %21, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi14, label %22, label %56, !llfi_index !1013

; <label>:22                                      ; preds = %12, %0
  %23 = load i32* %4, align 4, !llfi_index !1014
  %fi15 = call i32 @injectFault2(i64 1013, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %24 = trunc i32 %fi15 to i8, !llfi_index !1015
  %fi16 = call i8 @injectFault15(i64 1014, i8 %24, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %25 = load %struct.ptree** %3, align 8, !llfi_index !1016
  %fi17 = call %struct.ptree* @injectFault0(i64 1015, %struct.ptree* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %26 = getelementptr %struct.ptree* %fi17, i32 0, i32 3, !llfi_index !1017
  %fi18 = call i8* @injectFault1(i64 1016, i8* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store i8 %fi16, i8* %fi18, align 1, !llfi_index !1018
  %27 = load i32* %4, align 4, !llfi_index !1019
  %fi19 = call i32 @injectFault2(i64 1018, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %28 = load %struct.ptree** %3, align 8, !llfi_index !1020
  %fi20 = call %struct.ptree* @injectFault0(i64 1019, %struct.ptree* %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %29 = getelementptr %struct.ptree* %fi20, i32 0, i32 0, !llfi_index !1021
  %fi21 = call i64* @injectFault11(i64 1020, i64* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %30 = load i64* %fi21, align 8, !llfi_index !1022
  %fi22 = call i64 @injectFault12(i64 1021, i64 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %31 = call i64 @bit(i32 %fi19, i64 %fi22), !llfi_index !1023
  %32 = icmp ne i64 %31, 0, !llfi_index !1024
  %fi23 = call i1 @injectFault3(i64 1023, i1 %32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi23, label %33, label %35, !llfi_index !1025

; <label>:33                                      ; preds = %22
  %34 = load %struct.ptree** %2, align 8, !llfi_index !1026
  %fi25 = call %struct.ptree* @injectFault0(i64 1025, %struct.ptree* %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %37, !llfi_index !1027

; <label>:35                                      ; preds = %22
  %36 = load %struct.ptree** %3, align 8, !llfi_index !1028
  %fi26 = call %struct.ptree* @injectFault0(i64 1027, %struct.ptree* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %37, !llfi_index !1029

; <label>:37                                      ; preds = %35, %33
  %38 = phi %struct.ptree* [ %fi25, %33 ], [ %fi26, %35 ], !llfi_index !1030
  %39 = load %struct.ptree** %3, align 8, !llfi_index !1031
  %fi27 = call %struct.ptree* @injectFault0(i64 1030, %struct.ptree* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %40 = getelementptr %struct.ptree* %fi27, i32 0, i32 4, !llfi_index !1032
  %fi28 = call %struct.ptree** @injectFault5(i64 1031, %struct.ptree** %40, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %38, %struct.ptree** %fi28, align 8, !llfi_index !1033
  %41 = load i32* %4, align 4, !llfi_index !1034
  %fi29 = call i32 @injectFault2(i64 1033, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %42 = load %struct.ptree** %3, align 8, !llfi_index !1035
  %fi30 = call %struct.ptree* @injectFault0(i64 1034, %struct.ptree* %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %43 = getelementptr %struct.ptree* %fi30, i32 0, i32 0, !llfi_index !1036
  %fi31 = call i64* @injectFault11(i64 1035, i64* %43, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %44 = load i64* %fi31, align 8, !llfi_index !1037
  %fi32 = call i64 @injectFault12(i64 1036, i64 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %45 = call i64 @bit(i32 %fi29, i64 %fi32), !llfi_index !1038
  %46 = icmp ne i64 %45, 0, !llfi_index !1039
  %fi33 = call i1 @injectFault3(i64 1038, i1 %46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi33, label %47, label %49, !llfi_index !1040

; <label>:47                                      ; preds = %37
  %48 = load %struct.ptree** %3, align 8, !llfi_index !1041
  %fi34 = call %struct.ptree* @injectFault0(i64 1040, %struct.ptree* %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %51, !llfi_index !1042

; <label>:49                                      ; preds = %37
  %50 = load %struct.ptree** %2, align 8, !llfi_index !1043
  %fi35 = call %struct.ptree* @injectFault0(i64 1042, %struct.ptree* %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br label %51, !llfi_index !1044

; <label>:51                                      ; preds = %49, %47
  %52 = phi %struct.ptree* [ %fi34, %47 ], [ %fi35, %49 ], !llfi_index !1045
  %53 = load %struct.ptree** %3, align 8, !llfi_index !1046
  %fi36 = call %struct.ptree* @injectFault0(i64 1045, %struct.ptree* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %54 = getelementptr %struct.ptree* %fi36, i32 0, i32 5, !llfi_index !1047
  %fi37 = call %struct.ptree** @injectFault5(i64 1046, %struct.ptree** %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %52, %struct.ptree** %fi37, align 8, !llfi_index !1048
  %55 = load %struct.ptree** %3, align 8, !llfi_index !1049
  %fi38 = call %struct.ptree* @injectFault0(i64 1048, %struct.ptree* %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi38, %struct.ptree** %1, !llfi_index !1050
  br label %88, !llfi_index !1051

; <label>:56                                      ; preds = %12
  %57 = load %struct.ptree** %2, align 8, !llfi_index !1052
  %fi39 = call %struct.ptree* @injectFault0(i64 1051, %struct.ptree* %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %58 = getelementptr %struct.ptree* %fi39, i32 0, i32 3, !llfi_index !1053
  %fi40 = call i8* @injectFault1(i64 1052, i8* %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %59 = load i8* %fi40, align 1, !llfi_index !1054
  %fi41 = call i8 @injectFault15(i64 1053, i8 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %60 = sext i8 %fi41 to i32, !llfi_index !1055
  %fi42 = call i32 @injectFault2(i64 1054, i32 %60, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %61 = load %struct.ptree** %3, align 8, !llfi_index !1056
  %fi43 = call %struct.ptree* @injectFault0(i64 1055, %struct.ptree* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %62 = getelementptr %struct.ptree* %fi43, i32 0, i32 0, !llfi_index !1057
  %fi44 = call i64* @injectFault11(i64 1056, i64* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %63 = load i64* %fi44, align 8, !llfi_index !1058
  %fi45 = call i64 @injectFault12(i64 1057, i64 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %64 = call i64 @bit(i32 %fi42, i64 %fi45), !llfi_index !1059
  %65 = icmp ne i64 %64, 0, !llfi_index !1060
  %fi24 = call i1 @injectFault3(i64 1059, i1 %65, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !19
  br i1 %fi24, label %66, label %76, !llfi_index !1061

; <label>:66                                      ; preds = %56
  %67 = load %struct.ptree** %2, align 8, !llfi_index !1062
  %fi46 = call %struct.ptree* @injectFault0(i64 1061, %struct.ptree* %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %68 = getelementptr %struct.ptree* %fi46, i32 0, i32 5, !llfi_index !1063
  %fi47 = call %struct.ptree** @injectFault5(i64 1062, %struct.ptree** %68, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %69 = load %struct.ptree** %fi47, align 8, !llfi_index !1064
  %fi48 = call %struct.ptree* @injectFault0(i64 1063, %struct.ptree* %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %70 = load %struct.ptree** %3, align 8, !llfi_index !1065
  %fi49 = call %struct.ptree* @injectFault0(i64 1064, %struct.ptree* %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %71 = load i32* %4, align 4, !llfi_index !1066
  %fi50 = call i32 @injectFault2(i64 1065, i32 %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %72 = load %struct.ptree** %2, align 8, !llfi_index !1067
  %fi51 = call %struct.ptree* @injectFault0(i64 1066, %struct.ptree* %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %73 = call %struct.ptree* @insertR(%struct.ptree* %fi48, %struct.ptree* %fi49, i32 %fi50, %struct.ptree* %fi51), !llfi_index !1068
  %74 = load %struct.ptree** %2, align 8, !llfi_index !1069
  %fi52 = call %struct.ptree* @injectFault0(i64 1068, %struct.ptree* %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %75 = getelementptr %struct.ptree* %fi52, i32 0, i32 5, !llfi_index !1070
  %fi53 = call %struct.ptree** @injectFault5(i64 1069, %struct.ptree** %75, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %73, %struct.ptree** %fi53, align 8, !llfi_index !1071
  br label %86, !llfi_index !1072

; <label>:76                                      ; preds = %56
  %77 = load %struct.ptree** %2, align 8, !llfi_index !1073
  %fi54 = call %struct.ptree* @injectFault0(i64 1072, %struct.ptree* %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %78 = getelementptr %struct.ptree* %fi54, i32 0, i32 4, !llfi_index !1074
  %fi55 = call %struct.ptree** @injectFault5(i64 1073, %struct.ptree** %78, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %79 = load %struct.ptree** %fi55, align 8, !llfi_index !1075
  %fi56 = call %struct.ptree* @injectFault0(i64 1074, %struct.ptree* %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %80 = load %struct.ptree** %3, align 8, !llfi_index !1076
  %fi57 = call %struct.ptree* @injectFault0(i64 1075, %struct.ptree* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %81 = load i32* %4, align 4, !llfi_index !1077
  %fi58 = call i32 @injectFault2(i64 1076, i32 %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %82 = load %struct.ptree** %2, align 8, !llfi_index !1078
  %fi59 = call %struct.ptree* @injectFault0(i64 1077, %struct.ptree* %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %83 = call %struct.ptree* @insertR(%struct.ptree* %fi56, %struct.ptree* %fi57, i32 %fi58, %struct.ptree* %fi59), !llfi_index !1079
  %84 = load %struct.ptree** %2, align 8, !llfi_index !1080
  %fi60 = call %struct.ptree* @injectFault0(i64 1079, %struct.ptree* %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  %85 = getelementptr %struct.ptree* %fi60, i32 0, i32 4, !llfi_index !1081
  %fi61 = call %struct.ptree** @injectFault5(i64 1080, %struct.ptree** %85, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %83, %struct.ptree** %fi61, align 8, !llfi_index !1082
  br label %86, !llfi_index !1083

; <label>:86                                      ; preds = %76, %66
  %87 = load %struct.ptree** %2, align 8, !llfi_index !1084
  %fi62 = call %struct.ptree* @injectFault0(i64 1083, %struct.ptree* %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  store %struct.ptree* %fi62, %struct.ptree** %1, !llfi_index !1085
  br label %88, !llfi_index !1086

; <label>:88                                      ; preds = %86, %51
  %89 = load %struct.ptree** %1, !llfi_index !1087
  %fi63 = call %struct.ptree* @injectFault0(i64 1086, %struct.ptree* %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !19
  ret %struct.ptree* %fi63, !llfi_index !1088
}

define %struct.ptree* @injectFault0(i64, %struct.ptree*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.ptree*
  store %struct.ptree* %1, %struct.ptree** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.ptree** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.ptree** %tmploc
  ret %struct.ptree* %updateval
}

define i8* @injectFault1(i64, i8*, i32, i32, i32, i32, i8*) {
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

define %struct.ptree** @injectFault5(i64, %struct.ptree**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.ptree**
  store %struct.ptree** %1, %struct.ptree*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.ptree*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.ptree*** %tmploc
  ret %struct.ptree** %updateval
}

define %struct._IO_FILE* @injectFault6(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
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

define i32* @injectFault7(i64, i32*, i32, i32, i32, i32, i8*) {
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

define %struct.ptree_mask* @injectFault8(i64, %struct.ptree_mask*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.ptree_mask*
  store %struct.ptree_mask* %1, %struct.ptree_mask** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.ptree_mask** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.ptree_mask** %tmploc
  ret %struct.ptree_mask* %updateval
}

define %struct.ptree_mask** @injectFault9(i64, %struct.ptree_mask**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.ptree_mask**
  store %struct.ptree_mask** %1, %struct.ptree_mask*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.ptree_mask*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.ptree_mask*** %tmploc
  ret %struct.ptree_mask** %updateval
}

define %struct.MyNode* @injectFault10(i64, %struct.MyNode*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.MyNode*
  store %struct.MyNode* %1, %struct.MyNode** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.MyNode** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.MyNode** %tmploc
  ret %struct.MyNode* %updateval
}

define i64* @injectFault11(i64, i64*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64*
  store i64* %1, i64** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64** %tmploc
  ret i64* %updateval
}

define i64 @injectFault12(i64, i64, i32, i32, i32, i32, i8*) {
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

define double @injectFault13(i64, double, i32, i32, i32, i32, i8*) {
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

define float @injectFault14(i64, float, i32, i32, i32, i32, i8*) {
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

define i8 @injectFault15(i64, i8, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8
  store i8 %1, i8* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 8, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8* %tmploc
  ret i8 %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0, !0}

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
!19 = metadata !{metadata !"after"}
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
!746 = metadata !{i64 745}
!747 = metadata !{i64 746}
!748 = metadata !{i64 747}
!749 = metadata !{i64 748}
!750 = metadata !{i64 749}
!751 = metadata !{i64 750}
!752 = metadata !{i64 751}
!753 = metadata !{i64 752}
!754 = metadata !{i64 753}
!755 = metadata !{i64 754}
!756 = metadata !{i64 755}
!757 = metadata !{i64 756}
!758 = metadata !{i64 757}
!759 = metadata !{i64 758}
!760 = metadata !{i64 759}
!761 = metadata !{i64 760}
!762 = metadata !{i64 761}
!763 = metadata !{i64 762}
!764 = metadata !{i64 763}
!765 = metadata !{i64 764}
!766 = metadata !{i64 765}
!767 = metadata !{i64 766}
!768 = metadata !{i64 767}
!769 = metadata !{i64 768}
!770 = metadata !{i64 769}
!771 = metadata !{i64 770}
!772 = metadata !{i64 771}
!773 = metadata !{i64 772}
!774 = metadata !{i64 773}
!775 = metadata !{i64 774}
!776 = metadata !{i64 775}
!777 = metadata !{i64 776}
!778 = metadata !{i64 777}
!779 = metadata !{i64 778}
!780 = metadata !{i64 779}
!781 = metadata !{i64 780}
!782 = metadata !{i64 781}
!783 = metadata !{i64 782}
!784 = metadata !{i64 783}
!785 = metadata !{i64 784}
!786 = metadata !{i64 785}
!787 = metadata !{i64 786}
!788 = metadata !{i64 787}
!789 = metadata !{i64 788}
!790 = metadata !{i64 789}
!791 = metadata !{i64 790}
!792 = metadata !{i64 791}
!793 = metadata !{i64 792}
!794 = metadata !{i64 793}
!795 = metadata !{i64 794}
!796 = metadata !{i64 795}
!797 = metadata !{i64 796}
!798 = metadata !{i64 797}
!799 = metadata !{i64 798}
!800 = metadata !{i64 799}
!801 = metadata !{i64 800}
!802 = metadata !{i64 801}
!803 = metadata !{i64 802}
!804 = metadata !{i64 803}
!805 = metadata !{i64 804}
!806 = metadata !{i64 805}
!807 = metadata !{i64 806}
!808 = metadata !{i64 807}
!809 = metadata !{i64 808}
!810 = metadata !{i64 809}
!811 = metadata !{i64 810}
!812 = metadata !{i64 811}
!813 = metadata !{i64 812}
!814 = metadata !{i64 813}
!815 = metadata !{i64 814}
!816 = metadata !{i64 815}
!817 = metadata !{i64 816}
!818 = metadata !{i64 817}
!819 = metadata !{i64 818}
!820 = metadata !{i64 819}
!821 = metadata !{i64 820}
!822 = metadata !{i64 821}
!823 = metadata !{i64 822}
!824 = metadata !{i64 823}
!825 = metadata !{i64 824}
!826 = metadata !{i64 825}
!827 = metadata !{i64 826}
!828 = metadata !{i64 827}
!829 = metadata !{i64 828}
!830 = metadata !{i64 829}
!831 = metadata !{i64 830}
!832 = metadata !{i64 831}
!833 = metadata !{i64 832}
!834 = metadata !{i64 833}
!835 = metadata !{i64 834}
!836 = metadata !{i64 835}
!837 = metadata !{i64 836}
!838 = metadata !{i64 837}
!839 = metadata !{i64 838}
!840 = metadata !{i64 839}
!841 = metadata !{i64 840}
!842 = metadata !{i64 841}
!843 = metadata !{i64 842}
!844 = metadata !{i64 843}
!845 = metadata !{i64 844}
!846 = metadata !{i64 845}
!847 = metadata !{i64 846}
!848 = metadata !{i64 847}
!849 = metadata !{i64 848}
!850 = metadata !{i64 849}
!851 = metadata !{i64 850}
!852 = metadata !{i64 851}
!853 = metadata !{i64 852}
!854 = metadata !{i64 853}
!855 = metadata !{i64 854}
!856 = metadata !{i64 855}
!857 = metadata !{i64 856}
!858 = metadata !{i64 857}
!859 = metadata !{i64 858}
!860 = metadata !{i64 859}
!861 = metadata !{i64 860}
!862 = metadata !{i64 861}
!863 = metadata !{i64 862}
!864 = metadata !{i64 863}
!865 = metadata !{i64 864}
!866 = metadata !{i64 865}
!867 = metadata !{i64 866}
!868 = metadata !{i64 867}
!869 = metadata !{i64 868}
!870 = metadata !{i64 869}
!871 = metadata !{i64 870}
!872 = metadata !{i64 871}
!873 = metadata !{i64 872}
!874 = metadata !{i64 873}
!875 = metadata !{i64 874}
!876 = metadata !{i64 875}
!877 = metadata !{i64 876}
!878 = metadata !{i64 877}
!879 = metadata !{i64 878}
!880 = metadata !{i64 879}
!881 = metadata !{i64 880}
!882 = metadata !{i64 881}
!883 = metadata !{i64 882}
!884 = metadata !{i64 883}
!885 = metadata !{i64 884}
!886 = metadata !{i64 885}
!887 = metadata !{i64 886}
!888 = metadata !{i64 887}
!889 = metadata !{i64 888}
!890 = metadata !{i64 889}
!891 = metadata !{i64 890}
!892 = metadata !{i64 891}
!893 = metadata !{i64 892}
!894 = metadata !{i64 893}
!895 = metadata !{i64 894}
!896 = metadata !{i64 895}
!897 = metadata !{i64 896}
!898 = metadata !{i64 897}
!899 = metadata !{i64 898}
!900 = metadata !{i64 899}
!901 = metadata !{i64 900}
!902 = metadata !{i64 901}
!903 = metadata !{i64 902}
!904 = metadata !{i64 903}
!905 = metadata !{i64 904}
!906 = metadata !{i64 905}
!907 = metadata !{i64 906}
!908 = metadata !{i64 907}
!909 = metadata !{i64 908}
!910 = metadata !{i64 909}
!911 = metadata !{i64 910}
!912 = metadata !{i64 911}
!913 = metadata !{i64 912}
!914 = metadata !{i64 913}
!915 = metadata !{i64 914}
!916 = metadata !{i64 915}
!917 = metadata !{i64 916}
!918 = metadata !{i64 917}
!919 = metadata !{i64 918}
!920 = metadata !{i64 919}
!921 = metadata !{i64 920}
!922 = metadata !{i64 921}
!923 = metadata !{i64 922}
!924 = metadata !{i64 923}
!925 = metadata !{i64 924}
!926 = metadata !{i64 925}
!927 = metadata !{i64 926}
!928 = metadata !{i64 927}
!929 = metadata !{i64 928}
!930 = metadata !{i64 929}
!931 = metadata !{i64 930}
!932 = metadata !{i64 931}
!933 = metadata !{i64 932}
!934 = metadata !{i64 933}
!935 = metadata !{i64 934}
!936 = metadata !{i64 935}
!937 = metadata !{i64 936}
!938 = metadata !{i64 937}
!939 = metadata !{i64 938}
!940 = metadata !{i64 939}
!941 = metadata !{i64 940}
!942 = metadata !{i64 941}
!943 = metadata !{i64 942}
!944 = metadata !{i64 943}
!945 = metadata !{i64 944}
!946 = metadata !{i64 945}
!947 = metadata !{i64 946}
!948 = metadata !{i64 947}
!949 = metadata !{i64 948}
!950 = metadata !{i64 949}
!951 = metadata !{i64 950}
!952 = metadata !{i64 951}
!953 = metadata !{i64 952}
!954 = metadata !{i64 953}
!955 = metadata !{i64 954}
!956 = metadata !{i64 955}
!957 = metadata !{i64 956}
!958 = metadata !{i64 957}
!959 = metadata !{i64 958}
!960 = metadata !{i64 959}
!961 = metadata !{i64 960}
!962 = metadata !{i64 961}
!963 = metadata !{i64 962}
!964 = metadata !{i64 963}
!965 = metadata !{i64 964}
!966 = metadata !{i64 965}
!967 = metadata !{i64 966}
!968 = metadata !{i64 967}
!969 = metadata !{i64 968}
!970 = metadata !{i64 969}
!971 = metadata !{i64 970}
!972 = metadata !{i64 971}
!973 = metadata !{i64 972}
!974 = metadata !{i64 973}
!975 = metadata !{i64 974}
!976 = metadata !{i64 975}
!977 = metadata !{i64 976}
!978 = metadata !{i64 977}
!979 = metadata !{i64 978}
!980 = metadata !{i64 979}
!981 = metadata !{i64 980}
!982 = metadata !{i64 981}
!983 = metadata !{i64 982}
!984 = metadata !{i64 983}
!985 = metadata !{i64 984}
!986 = metadata !{i64 985}
!987 = metadata !{i64 986}
!988 = metadata !{i64 987}
!989 = metadata !{i64 988}
!990 = metadata !{i64 989}
!991 = metadata !{i64 990}
!992 = metadata !{i64 991}
!993 = metadata !{i64 992}
!994 = metadata !{i64 993}
!995 = metadata !{i64 994}
!996 = metadata !{i64 995}
!997 = metadata !{i64 996}
!998 = metadata !{i64 997}
!999 = metadata !{i64 998}
!1000 = metadata !{i64 999}
!1001 = metadata !{i64 1000}
!1002 = metadata !{i64 1001}
!1003 = metadata !{i64 1002}
!1004 = metadata !{i64 1003}
!1005 = metadata !{i64 1004}
!1006 = metadata !{i64 1005}
!1007 = metadata !{i64 1006}
!1008 = metadata !{i64 1007}
!1009 = metadata !{i64 1008}
!1010 = metadata !{i64 1009}
!1011 = metadata !{i64 1010}
!1012 = metadata !{i64 1011}
!1013 = metadata !{i64 1012}
!1014 = metadata !{i64 1013}
!1015 = metadata !{i64 1014}
!1016 = metadata !{i64 1015}
!1017 = metadata !{i64 1016}
!1018 = metadata !{i64 1017}
!1019 = metadata !{i64 1018}
!1020 = metadata !{i64 1019}
!1021 = metadata !{i64 1020}
!1022 = metadata !{i64 1021}
!1023 = metadata !{i64 1022}
!1024 = metadata !{i64 1023}
!1025 = metadata !{i64 1024}
!1026 = metadata !{i64 1025}
!1027 = metadata !{i64 1026}
!1028 = metadata !{i64 1027}
!1029 = metadata !{i64 1028}
!1030 = metadata !{i64 1029}
!1031 = metadata !{i64 1030}
!1032 = metadata !{i64 1031}
!1033 = metadata !{i64 1032}
!1034 = metadata !{i64 1033}
!1035 = metadata !{i64 1034}
!1036 = metadata !{i64 1035}
!1037 = metadata !{i64 1036}
!1038 = metadata !{i64 1037}
!1039 = metadata !{i64 1038}
!1040 = metadata !{i64 1039}
!1041 = metadata !{i64 1040}
!1042 = metadata !{i64 1041}
!1043 = metadata !{i64 1042}
!1044 = metadata !{i64 1043}
!1045 = metadata !{i64 1044}
!1046 = metadata !{i64 1045}
!1047 = metadata !{i64 1046}
!1048 = metadata !{i64 1047}
!1049 = metadata !{i64 1048}
!1050 = metadata !{i64 1049}
!1051 = metadata !{i64 1050}
!1052 = metadata !{i64 1051}
!1053 = metadata !{i64 1052}
!1054 = metadata !{i64 1053}
!1055 = metadata !{i64 1054}
!1056 = metadata !{i64 1055}
!1057 = metadata !{i64 1056}
!1058 = metadata !{i64 1057}
!1059 = metadata !{i64 1058}
!1060 = metadata !{i64 1059}
!1061 = metadata !{i64 1060}
!1062 = metadata !{i64 1061}
!1063 = metadata !{i64 1062}
!1064 = metadata !{i64 1063}
!1065 = metadata !{i64 1064}
!1066 = metadata !{i64 1065}
!1067 = metadata !{i64 1066}
!1068 = metadata !{i64 1067}
!1069 = metadata !{i64 1068}
!1070 = metadata !{i64 1069}
!1071 = metadata !{i64 1070}
!1072 = metadata !{i64 1071}
!1073 = metadata !{i64 1072}
!1074 = metadata !{i64 1073}
!1075 = metadata !{i64 1074}
!1076 = metadata !{i64 1075}
!1077 = metadata !{i64 1076}
!1078 = metadata !{i64 1077}
!1079 = metadata !{i64 1078}
!1080 = metadata !{i64 1079}
!1081 = metadata !{i64 1080}
!1082 = metadata !{i64 1081}
!1083 = metadata !{i64 1082}
!1084 = metadata !{i64 1083}
!1085 = metadata !{i64 1084}
!1086 = metadata !{i64 1085}
!1087 = metadata !{i64 1086}
!1088 = metadata !{i64 1087}
