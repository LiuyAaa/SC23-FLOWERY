; ModuleID = '/home/foo/cross-layer-sid/LLFI-base/bfs/fi-0/llfi/celer-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }

@fp = global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"**********************SDC DETECTED!**********************\0A\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@and_namestr = internal constant [4 x i8] c"and\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"

; Function Attrs: uwtable
define void @_Z5UsageiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i8**, align 8, !llfi_index !2
  store i32 %argc, i32* %1, align 4, !llfi_index !3
  store i8** %argv, i8*** %2, align 8, !llfi_index !4
  %AI = alloca i1, !llfi_index !5
  store i1 true, i1* %AI, !llfi_index !6
  %3 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !7
  %fi = call %struct._IO_FILE* @injectFault0(i64 7, %struct._IO_FILE* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %4 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !9
  %fi1 = call %struct._IO_FILE* @injectFault0(i64 8, %struct._IO_FILE* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp = icmp eq %struct._IO_FILE* %fi, %fi1, !llfi_index !10
  %fi2 = call i1 @injectFault1(i64 9, i1 %check_cmp, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone = load i1* %AI, !llfi_index !11
  %fi3 = call i1 @injectFault1(i64 10, i1 %loadone, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and = and i1 %fi2, %fi3, !llfi_index !12
  %fi4 = call i1 @injectFault1(i64 11, i1 %check_and, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %5 = load i8*** %2, align 8, !llfi_index !13
  %fi5 = call i8** @injectFault2(i64 12, i8** %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %6 = load i8*** %2, align 8, !llfi_index !14
  %fi6 = call i8** @injectFault2(i64 13, i8** %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %7 = getelementptr i8** %fi5, i64 0, !llfi_index !15
  %fi7 = call i8** @injectFault2(i64 14, i8** %7, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %8 = getelementptr i8** %fi6, i64 0, !llfi_index !16
  %fi8 = call i8** @injectFault2(i64 15, i8** %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %9 = load i8** %fi7, align 8, !llfi_index !17
  %fi9 = call i8* @injectFault3(i64 16, i8* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %10 = load i8** %fi8, align 8, !llfi_index !18
  %fi10 = call i8* @injectFault3(i64 17, i8* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp1 = icmp eq i8* %fi9, %fi10, !llfi_index !19
  %fi11 = call i1 @injectFault1(i64 18, i1 %check_cmp1, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and2 = and i1 %fi11, %fi4, !llfi_index !20
  %fi12 = call i1 @injectFault1(i64 19, i1 %check_and2, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi12, i1* %AI, !llfi_index !21
  br i1 %fi12, label %11, label %checkBb, !llfi_index !22

checkBb:                                          ; preds = %0
  call void @check_flag(), !llfi_index !23
  br label %11, !llfi_index !24

; <label>:11                                      ; preds = %checkBb, %0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %fi9), !llfi_index !25
  ret void, !llfi_index !26
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !27
  %2 = alloca i8**, align 8, !llfi_index !28
  store i32 %argc, i32* %1, align 4, !llfi_index !29
  store i8** %argv, i8*** %2, align 8, !llfi_index !30
  %AI = alloca i1, !llfi_index !31
  store i1 true, i1* %AI, !llfi_index !32
  %3 = load i32* %1, align 4, !llfi_index !33
  %fi = call i32 @injectFault4(i64 32, i32 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %4 = load i32* %1, align 4, !llfi_index !34
  %fi1 = call i32 @injectFault4(i64 33, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp = icmp eq i32 %fi, %fi1, !llfi_index !35
  %fi2 = call i1 @injectFault1(i64 34, i1 %check_cmp, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone = load i1* %AI, !llfi_index !36
  %fi3 = call i1 @injectFault1(i64 35, i1 %loadone, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and = and i1 %fi2, %fi3, !llfi_index !37
  %fi4 = call i1 @injectFault1(i64 36, i1 %check_and, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %5 = load i8*** %2, align 8, !llfi_index !38
  %fi5 = call i8** @injectFault2(i64 37, i8** %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %6 = load i8*** %2, align 8, !llfi_index !39
  %fi6 = call i8** @injectFault2(i64 38, i8** %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp1 = icmp eq i8** %fi5, %fi6, !llfi_index !40
  %fi7 = call i1 @injectFault1(i64 39, i1 %check_cmp1, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and2 = and i1 %fi7, %fi4, !llfi_index !41
  %fi8 = call i1 @injectFault1(i64 40, i1 %check_and2, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi8, i1* %AI, !llfi_index !42
  br i1 %fi8, label %7, label %checkBb, !llfi_index !43

checkBb:                                          ; preds = %0
  call void @check_flag(), !llfi_index !44
  br label %7, !llfi_index !45

; <label>:7                                       ; preds = %checkBb, %0
  call void @_Z8BFSGraphiPPc(i32 %fi, i8** %fi5), !llfi_index !46
  call void @postInjections()
  ret i32 0, !llfi_index !47
}

; Function Attrs: uwtable
define void @_Z8BFSGraphiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !48
  %2 = alloca i8**, align 8, !llfi_index !49
  %no_of_nodes = alloca i32, align 4, !llfi_index !50
  %edge_list_size = alloca i32, align 4, !llfi_index !51
  %input_f = alloca i8*, align 8, !llfi_index !52
  %source = alloca i32, align 4, !llfi_index !53
  %h_graph_nodes = alloca %struct.Node*, align 8, !llfi_index !54
  %h_graph_mask = alloca i8*, align 8, !llfi_index !55
  %h_updating_graph_mask = alloca i8*, align 8, !llfi_index !56
  %h_graph_visited = alloca i8*, align 8, !llfi_index !57
  %start = alloca i32, align 4, !llfi_index !58
  %edgeno = alloca i32, align 4, !llfi_index !59
  %i = alloca i32, align 4, !llfi_index !60
  %id = alloca i32, align 4, !llfi_index !61
  %cost = alloca i32, align 4, !llfi_index !62
  %h_graph_edges = alloca i32*, align 8, !llfi_index !63
  %i1 = alloca i32, align 4, !llfi_index !64
  %h_cost = alloca i32*, align 8, !llfi_index !65
  %i2 = alloca i32, align 4, !llfi_index !66
  %k = alloca i32, align 4, !llfi_index !67
  %stop = alloca i8, align 1, !llfi_index !68
  %tid = alloca i32, align 4, !llfi_index !69
  %i3 = alloca i32, align 4, !llfi_index !70
  %id4 = alloca i32, align 4, !llfi_index !71
  %tid5 = alloca i32, align 4, !llfi_index !72
  %fpo = alloca %struct._IO_FILE*, align 8, !llfi_index !73
  %i6 = alloca i32, align 4, !llfi_index !74
  store i32 %argc, i32* %1, align 4, !llfi_index !75
  store i8** %argv, i8*** %2, align 8, !llfi_index !76
  store i32 0, i32* %no_of_nodes, align 4, !llfi_index !77
  store i32 0, i32* %edge_list_size, align 4, !llfi_index !78
  %3 = load i32* %1, align 4, !llfi_index !79
  %fi17 = call i32 @injectFault4(i64 78, i32 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %4 = load i32* %1, align 4, !llfi_index !80
  %fi18 = call i32 @injectFault4(i64 79, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %AI = alloca i1, !llfi_index !81
  store i1 true, i1* %AI, !llfi_index !82
  %5 = icmp ne i32 %fi17, 2, !llfi_index !83
  %fi19 = call i1 @injectFault1(i64 82, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %6 = icmp ne i32 %fi18, 2, !llfi_index !84
  %fi20 = call i1 @injectFault1(i64 83, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp = icmp eq i1 %fi19, %fi20, !llfi_index !85
  %fi21 = call i1 @injectFault1(i64 84, i1 %check_cmp, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone = load i1* %AI, !llfi_index !86
  %fi22 = call i1 @injectFault1(i64 85, i1 %loadone, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and = and i1 %fi21, %fi22, !llfi_index !87
  %fi23 = call i1 @injectFault1(i64 86, i1 %check_and, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi23, i1* %AI, !llfi_index !88
  br i1 %fi19, label %7, label %12, !llfi_index !89

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4, !llfi_index !90
  %fi24 = call i32 @injectFault4(i64 89, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %9 = load i32* %1, align 4, !llfi_index !91
  %fi26 = call i32 @injectFault4(i64 90, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp1 = icmp eq i32 %fi24, %fi26, !llfi_index !92
  %fi27 = call i1 @injectFault1(i64 91, i1 %check_cmp1, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone2 = load i1* %AI, !llfi_index !93
  %fi28 = call i1 @injectFault1(i64 92, i1 %loadone2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and3 = and i1 %fi27, %fi28, !llfi_index !94
  %fi29 = call i1 @injectFault1(i64 93, i1 %check_and3, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %10 = load i8*** %2, align 8, !llfi_index !95
  %fi30 = call i8** @injectFault2(i64 94, i8** %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %11 = load i8*** %2, align 8, !llfi_index !96
  %fi31 = call i8** @injectFault2(i64 95, i8** %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp4 = icmp eq i8** %fi30, %fi31, !llfi_index !97
  %fi32 = call i1 @injectFault1(i64 96, i1 %check_cmp4, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and5 = and i1 %fi32, %fi29, !llfi_index !98
  %fi = call i1 @injectFault1(i64 97, i1 %check_and5, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi, i1* %AI, !llfi_index !99
  call void @_Z5UsageiPPc(i32 %fi24, i8** %fi30), !llfi_index !100
  call void @postInjections()
  call void @exit(i32 0) #5, !llfi_index !101
  unreachable, !llfi_index !102

; <label>:12                                      ; preds = %0
  %13 = load i8*** %2, align 8, !llfi_index !103
  %fi1 = call i8** @injectFault2(i64 102, i8** %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %14 = load i8*** %2, align 8, !llfi_index !104
  %fi2 = call i8** @injectFault2(i64 103, i8** %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %15 = getelementptr i8** %fi1, i64 1, !llfi_index !105
  %fi3 = call i8** @injectFault2(i64 104, i8** %15, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %16 = getelementptr i8** %fi2, i64 1, !llfi_index !106
  %fi4 = call i8** @injectFault2(i64 105, i8** %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %17 = load i8** %fi3, align 8, !llfi_index !107
  %fi25 = call i8* @injectFault3(i64 106, i8* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %18 = load i8** %fi4, align 8, !llfi_index !108
  %fi7 = call i8* @injectFault3(i64 107, i8* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp6 = icmp eq i8* %fi25, %fi7, !llfi_index !109
  %fi8 = call i1 @injectFault1(i64 108, i1 %check_cmp6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone7 = load i1* %AI, !llfi_index !110
  %fi9 = call i1 @injectFault1(i64 109, i1 %loadone7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and8 = and i1 %fi8, %fi9, !llfi_index !111
  %fi10 = call i1 @injectFault1(i64 110, i1 %check_and8, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8* %fi25, i8** %input_f, align 8, !llfi_index !112
  %19 = load i8** %input_f, align 8, !llfi_index !113
  %fi11 = call i8* @injectFault3(i64 112, i8* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %20 = load i8** %input_f, align 8, !llfi_index !114
  %fi12 = call i8* @injectFault3(i64 113, i8* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp9 = icmp eq i8* %fi11, %fi12, !llfi_index !115
  %fi13 = call i1 @injectFault1(i64 114, i1 %check_cmp9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and10 = and i1 %fi13, %fi10, !llfi_index !116
  %fi72 = call i1 @injectFault1(i64 115, i1 %check_and10, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %21 = call %struct._IO_FILE* @fopen(i8* %fi11, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !117
  store %struct._IO_FILE* %21, %struct._IO_FILE** @fp, align 8, !llfi_index !118
  %22 = load %struct._IO_FILE** @fp, align 8, !llfi_index !119
  %fi73 = call %struct._IO_FILE* @injectFault0(i64 118, %struct._IO_FILE* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %23 = load %struct._IO_FILE** @fp, align 8, !llfi_index !120
  %fi74 = call %struct._IO_FILE* @injectFault0(i64 119, %struct._IO_FILE* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %24 = icmp ne %struct._IO_FILE* %fi73, null, !llfi_index !121
  %fi75 = call i1 @injectFault1(i64 120, i1 %24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %25 = icmp ne %struct._IO_FILE* %fi74, null, !llfi_index !122
  %fi76 = call i1 @injectFault1(i64 121, i1 %25, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp11 = icmp eq i1 %fi75, %fi76, !llfi_index !123
  %fi77 = call i1 @injectFault1(i64 122, i1 %check_cmp11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and12 = and i1 %fi77, %fi72, !llfi_index !124
  %fi78 = call i1 @injectFault1(i64 123, i1 %check_and12, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi78, i1* %AI, !llfi_index !125
  br i1 %fi75, label %28, label %26, !llfi_index !126

; <label>:26                                      ; preds = %12
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !llfi_index !127
  br label %497, !llfi_index !128

; <label>:28                                      ; preds = %12
  store i32 0, i32* %source, align 4, !llfi_index !129
  %29 = load %struct._IO_FILE** @fp, align 8, !llfi_index !130
  %fi79 = call %struct._IO_FILE* @injectFault0(i64 129, %struct._IO_FILE* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %30 = load %struct._IO_FILE** @fp, align 8, !llfi_index !131
  %fi80 = call %struct._IO_FILE* @injectFault0(i64 130, %struct._IO_FILE* %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp13 = icmp eq %struct._IO_FILE* %fi79, %fi80, !llfi_index !132
  %fi81 = call i1 @injectFault1(i64 131, i1 %check_cmp13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone14 = load i1* %AI, !llfi_index !133
  %fi82 = call i1 @injectFault1(i64 132, i1 %loadone14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and15 = and i1 %fi81, %fi82, !llfi_index !134
  %fi83 = call i1 @injectFault1(i64 133, i1 %check_and15, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi79, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %no_of_nodes), !llfi_index !135
  %32 = load i32* %no_of_nodes, align 4, !llfi_index !136
  %fi84 = call i32 @injectFault4(i64 135, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %33 = load i32* %no_of_nodes, align 4, !llfi_index !137
  %fi5 = call i32 @injectFault4(i64 136, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %34 = sext i32 %fi84 to i64, !llfi_index !138
  %fi6 = call i64 @injectFault5(i64 137, i64 %34, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %35 = sext i32 %fi5 to i64, !llfi_index !139
  %fi88 = call i64 @injectFault5(i64 138, i64 %35, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %36 = mul i64 8, %fi6, !llfi_index !140
  %fi89 = call i64 @injectFault5(i64 139, i64 %36, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %37 = mul i64 8, %fi88, !llfi_index !141
  %fi90 = call i64 @injectFault5(i64 140, i64 %37, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp16 = icmp eq i64 %fi89, %fi90, !llfi_index !142
  %fi91 = call i1 @injectFault1(i64 141, i1 %check_cmp16, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and17 = and i1 %fi91, %fi83, !llfi_index !143
  %fi92 = call i1 @injectFault1(i64 142, i1 %check_and17, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %38 = call noalias i8* @malloc(i64 %fi89) #6, !llfi_index !144
  %39 = bitcast i8* %38 to %struct.Node*, !llfi_index !145
  %fi93 = call %struct.Node* @injectFault6(i64 144, %struct.Node* %39, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %40 = bitcast i8* %38 to %struct.Node*, !llfi_index !146
  %fi94 = call %struct.Node* @injectFault6(i64 145, %struct.Node* %40, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp18 = icmp eq %struct.Node* %fi93, %fi94, !llfi_index !147
  %fi95 = call i1 @injectFault1(i64 146, i1 %check_cmp18, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and19 = and i1 %fi95, %fi92, !llfi_index !148
  %fi14 = call i1 @injectFault1(i64 147, i1 %check_and19, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store %struct.Node* %fi93, %struct.Node** %h_graph_nodes, align 8, !llfi_index !149
  %41 = load i32* %no_of_nodes, align 4, !llfi_index !150
  %fi15 = call i32 @injectFault4(i64 149, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %42 = load i32* %no_of_nodes, align 4, !llfi_index !151
  %fi16 = call i32 @injectFault4(i64 150, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %43 = sext i32 %fi15 to i64, !llfi_index !152
  %fi101 = call i64 @injectFault5(i64 151, i64 %43, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %44 = sext i32 %fi16 to i64, !llfi_index !153
  %fi102 = call i64 @injectFault5(i64 152, i64 %44, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %45 = mul i64 1, %fi101, !llfi_index !154
  %fi103 = call i64 @injectFault5(i64 153, i64 %45, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %46 = mul i64 1, %fi102, !llfi_index !155
  %fi104 = call i64 @injectFault5(i64 154, i64 %46, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp20 = icmp eq i64 %fi103, %fi104, !llfi_index !156
  %fi105 = call i1 @injectFault1(i64 155, i1 %check_cmp20, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and21 = and i1 %fi105, %fi14, !llfi_index !157
  %fi106 = call i1 @injectFault1(i64 156, i1 %check_and21, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %47 = call noalias i8* @malloc(i64 %fi103) #6, !llfi_index !158
  store i8* %47, i8** %h_graph_mask, align 8, !llfi_index !159
  %48 = load i32* %no_of_nodes, align 4, !llfi_index !160
  %fi107 = call i32 @injectFault4(i64 159, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %49 = load i32* %no_of_nodes, align 4, !llfi_index !161
  %fi108 = call i32 @injectFault4(i64 160, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %50 = sext i32 %fi107 to i64, !llfi_index !162
  %fi109 = call i64 @injectFault5(i64 161, i64 %50, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %51 = sext i32 %fi108 to i64, !llfi_index !163
  %fi110 = call i64 @injectFault5(i64 162, i64 %51, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %52 = mul i64 1, %fi109, !llfi_index !164
  %fi111 = call i64 @injectFault5(i64 163, i64 %52, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %53 = mul i64 1, %fi110, !llfi_index !165
  %fi112 = call i64 @injectFault5(i64 164, i64 %53, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp22 = icmp eq i64 %fi111, %fi112, !llfi_index !166
  %fi113 = call i1 @injectFault1(i64 165, i1 %check_cmp22, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and23 = and i1 %fi113, %fi106, !llfi_index !167
  %fi114 = call i1 @injectFault1(i64 166, i1 %check_and23, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %54 = call noalias i8* @malloc(i64 %fi111) #6, !llfi_index !168
  store i8* %54, i8** %h_updating_graph_mask, align 8, !llfi_index !169
  %55 = load i32* %no_of_nodes, align 4, !llfi_index !170
  %fi115 = call i32 @injectFault4(i64 169, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %56 = load i32* %no_of_nodes, align 4, !llfi_index !171
  %fi116 = call i32 @injectFault4(i64 170, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %57 = sext i32 %fi115 to i64, !llfi_index !172
  %fi117 = call i64 @injectFault5(i64 171, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %58 = sext i32 %fi116 to i64, !llfi_index !173
  %fi118 = call i64 @injectFault5(i64 172, i64 %58, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %59 = mul i64 1, %fi117, !llfi_index !174
  %fi119 = call i64 @injectFault5(i64 173, i64 %59, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %60 = mul i64 1, %fi118, !llfi_index !175
  %fi120 = call i64 @injectFault5(i64 174, i64 %60, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp24 = icmp eq i64 %fi119, %fi120, !llfi_index !176
  %fi121 = call i1 @injectFault1(i64 175, i1 %check_cmp24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and25 = and i1 %fi121, %fi114, !llfi_index !177
  %fi122 = call i1 @injectFault1(i64 176, i1 %check_and25, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi122, i1* %AI, !llfi_index !178
  %61 = call noalias i8* @malloc(i64 %fi119) #6, !llfi_index !179
  store i8* %61, i8** %h_graph_visited, align 8, !llfi_index !180
  store i32 0, i32* %i, align 4, !llfi_index !181
  br label %62, !llfi_index !182

; <label>:62                                      ; preds = %121, %28
  %63 = load i32* %i, align 4, !llfi_index !183
  %fi123 = call i32 @injectFault4(i64 182, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %64 = load i32* %i, align 4, !llfi_index !184
  %fi124 = call i32 @injectFault4(i64 183, i32 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %65 = load i32* %no_of_nodes, align 4, !llfi_index !185
  %fi85 = call i32 @injectFault4(i64 184, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %66 = load i32* %no_of_nodes, align 4, !llfi_index !186
  %fi86 = call i32 @injectFault4(i64 185, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %67 = icmp ult i32 %fi123, %fi85, !llfi_index !187
  %fi87 = call i1 @injectFault1(i64 186, i1 %67, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %68 = icmp ult i32 %fi124, %fi86, !llfi_index !188
  %fi128 = call i1 @injectFault1(i64 187, i1 %68, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp26 = icmp eq i1 %fi87, %fi128, !llfi_index !189
  %fi129 = call i1 @injectFault1(i64 188, i1 %check_cmp26, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone27 = load i1* %AI, !llfi_index !190
  %fi130 = call i1 @injectFault1(i64 189, i1 %loadone27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and28 = and i1 %fi129, %fi130, !llfi_index !191
  %fi131 = call i1 @injectFault1(i64 190, i1 %check_and28, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi131, i1* %AI, !llfi_index !192
  br i1 %fi87, label %69, label %126, !llfi_index !193

; <label>:69                                      ; preds = %62
  %70 = load %struct._IO_FILE** @fp, align 8, !llfi_index !194
  %fi33 = call %struct._IO_FILE* @injectFault0(i64 193, %struct._IO_FILE* %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %71 = load %struct._IO_FILE** @fp, align 8, !llfi_index !195
  %fi34 = call %struct._IO_FILE* @injectFault0(i64 194, %struct._IO_FILE* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp29 = icmp eq %struct._IO_FILE* %fi33, %fi34, !llfi_index !196
  %fi35 = call i1 @injectFault1(i64 195, i1 %check_cmp29, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone30 = load i1* %AI, !llfi_index !197
  %fi36 = call i1 @injectFault1(i64 196, i1 %loadone30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and31 = and i1 %fi35, %fi36, !llfi_index !198
  %fi37 = call i1 @injectFault1(i64 197, i1 %check_and31, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi33, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32* %start, i32* %edgeno), !llfi_index !199
  %73 = load i32* %start, align 4, !llfi_index !200
  %fi38 = call i32 @injectFault4(i64 199, i32 %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %74 = load i32* %start, align 4, !llfi_index !201
  %fi39 = call i32 @injectFault4(i64 200, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp32 = icmp eq i32 %fi38, %fi39, !llfi_index !202
  %fi40 = call i1 @injectFault1(i64 201, i1 %check_cmp32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and33 = and i1 %fi40, %fi37, !llfi_index !203
  %fi41 = call i1 @injectFault1(i64 202, i1 %check_and33, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %75 = load i32* %i, align 4, !llfi_index !204
  %fi42 = call i32 @injectFault4(i64 203, i32 %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %76 = load i32* %i, align 4, !llfi_index !205
  %fi43 = call i32 @injectFault4(i64 204, i32 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %77 = zext i32 %fi42 to i64, !llfi_index !206
  %fi44 = call i64 @injectFault5(i64 205, i64 %77, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %78 = zext i32 %fi43 to i64, !llfi_index !207
  %fi45 = call i64 @injectFault5(i64 206, i64 %78, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %79 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !208
  %fi46 = call %struct.Node* @injectFault6(i64 207, %struct.Node* %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %80 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !209
  %fi47 = call %struct.Node* @injectFault6(i64 208, %struct.Node* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %81 = getelementptr %struct.Node* %fi46, i64 %fi44, !llfi_index !210
  %fi48 = call %struct.Node* @injectFault6(i64 209, %struct.Node* %81, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %82 = getelementptr %struct.Node* %fi47, i64 %fi45, !llfi_index !211
  %fi49 = call %struct.Node* @injectFault6(i64 210, %struct.Node* %82, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %83 = getelementptr %struct.Node* %fi48, i32 0, i32 0, !llfi_index !212
  %fi50 = call i32* @injectFault7(i64 211, i32* %83, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %84 = getelementptr %struct.Node* %fi49, i32 0, i32 0, !llfi_index !213
  %fi51 = call i32* @injectFault7(i64 212, i32* %84, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp34 = icmp eq i32* %fi50, %fi51, !llfi_index !214
  %fi52 = call i1 @injectFault1(i64 213, i1 %check_cmp34, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and35 = and i1 %fi52, %fi41, !llfi_index !215
  %fi53 = call i1 @injectFault1(i64 214, i1 %check_and35, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i32 %fi38, i32* %fi50, align 4, !llfi_index !216
  %85 = load i32* %edgeno, align 4, !llfi_index !217
  %fi54 = call i32 @injectFault4(i64 216, i32 %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %86 = load i32* %edgeno, align 4, !llfi_index !218
  %fi55 = call i32 @injectFault4(i64 217, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp36 = icmp eq i32 %fi54, %fi55, !llfi_index !219
  %fi56 = call i1 @injectFault1(i64 218, i1 %check_cmp36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and37 = and i1 %fi56, %fi53, !llfi_index !220
  %fi57 = call i1 @injectFault1(i64 219, i1 %check_and37, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %87 = load i32* %i, align 4, !llfi_index !221
  %fi58 = call i32 @injectFault4(i64 220, i32 %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %88 = load i32* %i, align 4, !llfi_index !222
  %fi59 = call i32 @injectFault4(i64 221, i32 %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %89 = zext i32 %fi58 to i64, !llfi_index !223
  %fi60 = call i64 @injectFault5(i64 222, i64 %89, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %90 = zext i32 %fi59 to i64, !llfi_index !224
  %fi61 = call i64 @injectFault5(i64 223, i64 %90, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %91 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !225
  %fi62 = call %struct.Node* @injectFault6(i64 224, %struct.Node* %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %92 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !226
  %fi63 = call %struct.Node* @injectFault6(i64 225, %struct.Node* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %93 = getelementptr %struct.Node* %fi62, i64 %fi60, !llfi_index !227
  %fi64 = call %struct.Node* @injectFault6(i64 226, %struct.Node* %93, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %94 = getelementptr %struct.Node* %fi63, i64 %fi61, !llfi_index !228
  %fi65 = call %struct.Node* @injectFault6(i64 227, %struct.Node* %94, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %95 = getelementptr %struct.Node* %fi64, i32 0, i32 1, !llfi_index !229
  %fi66 = call i32* @injectFault7(i64 228, i32* %95, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %96 = getelementptr %struct.Node* %fi65, i32 0, i32 1, !llfi_index !230
  %fi67 = call i32* @injectFault7(i64 229, i32* %96, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp38 = icmp eq i32* %fi66, %fi67, !llfi_index !231
  %fi68 = call i1 @injectFault1(i64 230, i1 %check_cmp38, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and39 = and i1 %fi68, %fi57, !llfi_index !232
  %fi69 = call i1 @injectFault1(i64 231, i1 %check_and39, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i32 %fi54, i32* %fi66, align 4, !llfi_index !233
  %97 = load i32* %i, align 4, !llfi_index !234
  %fi70 = call i32 @injectFault4(i64 233, i32 %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %98 = load i32* %i, align 4, !llfi_index !235
  %fi71 = call i32 @injectFault4(i64 234, i32 %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %99 = zext i32 %fi70 to i64, !llfi_index !236
  %fi191 = call i64 @injectFault5(i64 235, i64 %99, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %100 = zext i32 %fi71 to i64, !llfi_index !237
  %fi192 = call i64 @injectFault5(i64 236, i64 %100, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %101 = load i8** %h_graph_mask, align 8, !llfi_index !238
  %fi193 = call i8* @injectFault3(i64 237, i8* %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %102 = load i8** %h_graph_mask, align 8, !llfi_index !239
  %fi194 = call i8* @injectFault3(i64 238, i8* %102, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %103 = getelementptr i8* %fi193, i64 %fi191, !llfi_index !240
  %fi195 = call i8* @injectFault3(i64 239, i8* %103, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %104 = getelementptr i8* %fi194, i64 %fi192, !llfi_index !241
  %fi196 = call i8* @injectFault3(i64 240, i8* %104, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp40 = icmp eq i8* %fi195, %fi196, !llfi_index !242
  %fi197 = call i1 @injectFault1(i64 241, i1 %check_cmp40, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and41 = and i1 %fi197, %fi69, !llfi_index !243
  %fi198 = call i1 @injectFault1(i64 242, i1 %check_and41, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 0, i8* %fi195, align 1, !llfi_index !244
  %105 = load i32* %i, align 4, !llfi_index !245
  %fi199 = call i32 @injectFault4(i64 244, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %106 = load i32* %i, align 4, !llfi_index !246
  %fi200 = call i32 @injectFault4(i64 245, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %107 = zext i32 %fi199 to i64, !llfi_index !247
  %fi201 = call i64 @injectFault5(i64 246, i64 %107, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %108 = zext i32 %fi200 to i64, !llfi_index !248
  %fi202 = call i64 @injectFault5(i64 247, i64 %108, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %109 = load i8** %h_updating_graph_mask, align 8, !llfi_index !249
  %fi203 = call i8* @injectFault3(i64 248, i8* %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %110 = load i8** %h_updating_graph_mask, align 8, !llfi_index !250
  %fi204 = call i8* @injectFault3(i64 249, i8* %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %111 = getelementptr i8* %fi203, i64 %fi201, !llfi_index !251
  %fi205 = call i8* @injectFault3(i64 250, i8* %111, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %112 = getelementptr i8* %fi204, i64 %fi202, !llfi_index !252
  %fi206 = call i8* @injectFault3(i64 251, i8* %112, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp42 = icmp eq i8* %fi205, %fi206, !llfi_index !253
  %fi207 = call i1 @injectFault1(i64 252, i1 %check_cmp42, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and43 = and i1 %fi207, %fi198, !llfi_index !254
  %fi208 = call i1 @injectFault1(i64 253, i1 %check_and43, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 0, i8* %fi205, align 1, !llfi_index !255
  %113 = load i32* %i, align 4, !llfi_index !256
  %fi209 = call i32 @injectFault4(i64 255, i32 %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %114 = load i32* %i, align 4, !llfi_index !257
  %fi210 = call i32 @injectFault4(i64 256, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %115 = zext i32 %fi209 to i64, !llfi_index !258
  %fi211 = call i64 @injectFault5(i64 257, i64 %115, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %116 = zext i32 %fi210 to i64, !llfi_index !259
  %fi212 = call i64 @injectFault5(i64 258, i64 %116, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %117 = load i8** %h_graph_visited, align 8, !llfi_index !260
  %fi213 = call i8* @injectFault3(i64 259, i8* %117, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %118 = load i8** %h_graph_visited, align 8, !llfi_index !261
  %fi214 = call i8* @injectFault3(i64 260, i8* %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %119 = getelementptr i8* %fi213, i64 %fi211, !llfi_index !262
  %fi215 = call i8* @injectFault3(i64 261, i8* %119, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %120 = getelementptr i8* %fi214, i64 %fi212, !llfi_index !263
  %fi216 = call i8* @injectFault3(i64 262, i8* %120, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp44 = icmp eq i8* %fi215, %fi216, !llfi_index !264
  %fi217 = call i1 @injectFault1(i64 263, i1 %check_cmp44, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and45 = and i1 %fi217, %fi208, !llfi_index !265
  %fi218 = call i1 @injectFault1(i64 264, i1 %check_and45, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi218, i1* %AI, !llfi_index !266
  store i8 0, i8* %fi215, align 1, !llfi_index !267
  br label %121, !llfi_index !268

; <label>:121                                     ; preds = %69
  %122 = load i32* %i, align 4, !llfi_index !269
  %fi219 = call i32 @injectFault4(i64 268, i32 %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %123 = load i32* %i, align 4, !llfi_index !270
  %fi220 = call i32 @injectFault4(i64 269, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %124 = add i32 %fi219, 1, !llfi_index !271
  %fi221 = call i32 @injectFault4(i64 270, i32 %124, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %125 = add i32 %fi220, 1, !llfi_index !272
  %fi222 = call i32 @injectFault4(i64 271, i32 %125, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp46 = icmp eq i32 %fi221, %fi222, !llfi_index !273
  %fi223 = call i1 @injectFault1(i64 272, i1 %check_cmp46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone47 = load i1* %AI, !llfi_index !274
  %fi224 = call i1 @injectFault1(i64 273, i1 %loadone47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and48 = and i1 %fi223, %fi224, !llfi_index !275
  %fi225 = call i1 @injectFault1(i64 274, i1 %check_and48, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi225, i1* %AI, !llfi_index !276
  store i32 %fi221, i32* %i, align 4, !llfi_index !277
  br label %62, !llfi_index !278

; <label>:126                                     ; preds = %62
  %127 = load %struct._IO_FILE** @fp, align 8, !llfi_index !279
  %fi226 = call %struct._IO_FILE* @injectFault0(i64 278, %struct._IO_FILE* %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %128 = load %struct._IO_FILE** @fp, align 8, !llfi_index !280
  %fi227 = call %struct._IO_FILE* @injectFault0(i64 279, %struct._IO_FILE* %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp49 = icmp eq %struct._IO_FILE* %fi226, %fi227, !llfi_index !281
  %fi125 = call i1 @injectFault1(i64 280, i1 %check_cmp49, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone50 = load i1* %AI, !llfi_index !282
  %fi126 = call i1 @injectFault1(i64 281, i1 %loadone50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and51 = and i1 %fi125, %fi126, !llfi_index !283
  %fi127 = call i1 @injectFault1(i64 282, i1 %check_and51, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi226, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %source), !llfi_index !284
  %130 = load i32* %source, align 4, !llfi_index !285
  %fi235 = call i32 @injectFault4(i64 284, i32 %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %131 = load i32* %source, align 4, !llfi_index !286
  %fi236 = call i32 @injectFault4(i64 285, i32 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %132 = sext i32 %fi235 to i64, !llfi_index !287
  %fi237 = call i64 @injectFault5(i64 286, i64 %132, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %133 = sext i32 %fi236 to i64, !llfi_index !288
  %fi238 = call i64 @injectFault5(i64 287, i64 %133, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %134 = load i8** %h_graph_mask, align 8, !llfi_index !289
  %fi239 = call i8* @injectFault3(i64 288, i8* %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %135 = load i8** %h_graph_mask, align 8, !llfi_index !290
  %fi240 = call i8* @injectFault3(i64 289, i8* %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %136 = getelementptr i8* %fi239, i64 %fi237, !llfi_index !291
  %fi241 = call i8* @injectFault3(i64 290, i8* %136, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %137 = getelementptr i8* %fi240, i64 %fi238, !llfi_index !292
  %fi242 = call i8* @injectFault3(i64 291, i8* %137, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp52 = icmp eq i8* %fi241, %fi242, !llfi_index !293
  %fi243 = call i1 @injectFault1(i64 292, i1 %check_cmp52, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and53 = and i1 %fi243, %fi127, !llfi_index !294
  %fi244 = call i1 @injectFault1(i64 293, i1 %check_and53, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 1, i8* %fi241, align 1, !llfi_index !295
  %138 = load i32* %source, align 4, !llfi_index !296
  %fi245 = call i32 @injectFault4(i64 295, i32 %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %139 = load i32* %source, align 4, !llfi_index !297
  %fi246 = call i32 @injectFault4(i64 296, i32 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %140 = sext i32 %fi245 to i64, !llfi_index !298
  %fi247 = call i64 @injectFault5(i64 297, i64 %140, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %141 = sext i32 %fi246 to i64, !llfi_index !299
  %fi248 = call i64 @injectFault5(i64 298, i64 %141, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %142 = load i8** %h_graph_visited, align 8, !llfi_index !300
  %fi249 = call i8* @injectFault3(i64 299, i8* %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %143 = load i8** %h_graph_visited, align 8, !llfi_index !301
  %fi250 = call i8* @injectFault3(i64 300, i8* %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %144 = getelementptr i8* %fi249, i64 %fi247, !llfi_index !302
  %fi251 = call i8* @injectFault3(i64 301, i8* %144, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %145 = getelementptr i8* %fi250, i64 %fi248, !llfi_index !303
  %fi252 = call i8* @injectFault3(i64 302, i8* %145, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp54 = icmp eq i8* %fi251, %fi252, !llfi_index !304
  %fi253 = call i1 @injectFault1(i64 303, i1 %check_cmp54, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and55 = and i1 %fi253, %fi244, !llfi_index !305
  %fi254 = call i1 @injectFault1(i64 304, i1 %check_and55, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 1, i8* %fi251, align 1, !llfi_index !306
  %146 = load %struct._IO_FILE** @fp, align 8, !llfi_index !307
  %fi255 = call %struct._IO_FILE* @injectFault0(i64 306, %struct._IO_FILE* %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %147 = load %struct._IO_FILE** @fp, align 8, !llfi_index !308
  %fi256 = call %struct._IO_FILE* @injectFault0(i64 307, %struct._IO_FILE* %147, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp56 = icmp eq %struct._IO_FILE* %fi255, %fi256, !llfi_index !309
  %fi257 = call i1 @injectFault1(i64 308, i1 %check_cmp56, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and57 = and i1 %fi257, %fi254, !llfi_index !310
  %fi258 = call i1 @injectFault1(i64 309, i1 %check_and57, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi255, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %edge_list_size), !llfi_index !311
  %149 = load i32* %edge_list_size, align 4, !llfi_index !312
  %fi259 = call i32 @injectFault4(i64 311, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %150 = load i32* %edge_list_size, align 4, !llfi_index !313
  %fi260 = call i32 @injectFault4(i64 312, i32 %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %151 = sext i32 %fi259 to i64, !llfi_index !314
  %fi261 = call i64 @injectFault5(i64 313, i64 %151, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %152 = sext i32 %fi260 to i64, !llfi_index !315
  %fi262 = call i64 @injectFault5(i64 314, i64 %152, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %153 = mul i64 4, %fi261, !llfi_index !316
  %fi263 = call i64 @injectFault5(i64 315, i64 %153, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %154 = mul i64 4, %fi262, !llfi_index !317
  %fi264 = call i64 @injectFault5(i64 316, i64 %154, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp58 = icmp eq i64 %fi263, %fi264, !llfi_index !318
  %fi265 = call i1 @injectFault1(i64 317, i1 %check_cmp58, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and59 = and i1 %fi265, %fi258, !llfi_index !319
  %fi266 = call i1 @injectFault1(i64 318, i1 %check_and59, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %155 = call noalias i8* @malloc(i64 %fi263) #6, !llfi_index !320
  %156 = bitcast i8* %155 to i32*, !llfi_index !321
  %fi267 = call i32* @injectFault7(i64 320, i32* %156, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %157 = bitcast i8* %155 to i32*, !llfi_index !322
  %fi268 = call i32* @injectFault7(i64 321, i32* %157, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp60 = icmp eq i32* %fi267, %fi268, !llfi_index !323
  %fi269 = call i1 @injectFault1(i64 322, i1 %check_cmp60, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and61 = and i1 %fi269, %fi266, !llfi_index !324
  %fi270 = call i1 @injectFault1(i64 323, i1 %check_and61, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi270, i1* %AI, !llfi_index !325
  store i32* %fi267, i32** %h_graph_edges, align 8, !llfi_index !326
  store i32 0, i32* %i1, align 4, !llfi_index !327
  br label %158, !llfi_index !328

; <label>:158                                     ; preds = %182, %126
  %159 = load i32* %i1, align 4, !llfi_index !329
  %fi271 = call i32 @injectFault4(i64 328, i32 %159, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %160 = load i32* %i1, align 4, !llfi_index !330
  %fi272 = call i32 @injectFault4(i64 329, i32 %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %161 = load i32* %edge_list_size, align 4, !llfi_index !331
  %fi273 = call i32 @injectFault4(i64 330, i32 %161, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %162 = load i32* %edge_list_size, align 4, !llfi_index !332
  %fi274 = call i32 @injectFault4(i64 331, i32 %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %163 = icmp slt i32 %fi271, %fi273, !llfi_index !333
  %fi275 = call i1 @injectFault1(i64 332, i1 %163, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %164 = icmp slt i32 %fi272, %fi274, !llfi_index !334
  %fi276 = call i1 @injectFault1(i64 333, i1 %164, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp62 = icmp eq i1 %fi275, %fi276, !llfi_index !335
  %fi277 = call i1 @injectFault1(i64 334, i1 %check_cmp62, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone63 = load i1* %AI, !llfi_index !336
  %fi278 = call i1 @injectFault1(i64 335, i1 %loadone63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and64 = and i1 %fi277, %fi278, !llfi_index !337
  %fi279 = call i1 @injectFault1(i64 336, i1 %check_and64, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi279, i1* %AI, !llfi_index !338
  br i1 %fi275, label %165, label %187, !llfi_index !339

; <label>:165                                     ; preds = %158
  %166 = load %struct._IO_FILE** @fp, align 8, !llfi_index !340
  %fi280 = call %struct._IO_FILE* @injectFault0(i64 339, %struct._IO_FILE* %166, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %167 = load %struct._IO_FILE** @fp, align 8, !llfi_index !341
  %fi281 = call %struct._IO_FILE* @injectFault0(i64 340, %struct._IO_FILE* %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp65 = icmp eq %struct._IO_FILE* %fi280, %fi281, !llfi_index !342
  %fi282 = call i1 @injectFault1(i64 341, i1 %check_cmp65, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone66 = load i1* %AI, !llfi_index !343
  %fi283 = call i1 @injectFault1(i64 342, i1 %loadone66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and67 = and i1 %fi282, %fi283, !llfi_index !344
  %fi96 = call i1 @injectFault1(i64 343, i1 %check_and67, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi280, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %id), !llfi_index !345
  %169 = load %struct._IO_FILE** @fp, align 8, !llfi_index !346
  %fi97 = call %struct._IO_FILE* @injectFault0(i64 345, %struct._IO_FILE* %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %170 = load %struct._IO_FILE** @fp, align 8, !llfi_index !347
  %fi98 = call %struct._IO_FILE* @injectFault0(i64 346, %struct._IO_FILE* %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp68 = icmp eq %struct._IO_FILE* %fi97, %fi98, !llfi_index !348
  %fi99 = call i1 @injectFault1(i64 347, i1 %check_cmp68, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and69 = and i1 %fi99, %fi96, !llfi_index !349
  %fi100 = call i1 @injectFault1(i64 348, i1 %check_and69, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %fi97, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %cost), !llfi_index !350
  %172 = load i32* %id, align 4, !llfi_index !351
  %fi292 = call i32 @injectFault4(i64 350, i32 %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %173 = load i32* %id, align 4, !llfi_index !352
  %fi293 = call i32 @injectFault4(i64 351, i32 %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp70 = icmp eq i32 %fi292, %fi293, !llfi_index !353
  %fi294 = call i1 @injectFault1(i64 352, i1 %check_cmp70, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and71 = and i1 %fi294, %fi100, !llfi_index !354
  %fi295 = call i1 @injectFault1(i64 353, i1 %check_and71, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %174 = load i32* %i1, align 4, !llfi_index !355
  %fi296 = call i32 @injectFault4(i64 354, i32 %174, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %175 = load i32* %i1, align 4, !llfi_index !356
  %fi297 = call i32 @injectFault4(i64 355, i32 %175, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %176 = sext i32 %fi296 to i64, !llfi_index !357
  %fi298 = call i64 @injectFault5(i64 356, i64 %176, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %177 = sext i32 %fi297 to i64, !llfi_index !358
  %fi299 = call i64 @injectFault5(i64 357, i64 %177, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %178 = load i32** %h_graph_edges, align 8, !llfi_index !359
  %fi300 = call i32* @injectFault7(i64 358, i32* %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %179 = load i32** %h_graph_edges, align 8, !llfi_index !360
  %fi301 = call i32* @injectFault7(i64 359, i32* %179, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %180 = getelementptr i32* %fi300, i64 %fi298, !llfi_index !361
  %fi302 = call i32* @injectFault7(i64 360, i32* %180, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %181 = getelementptr i32* %fi301, i64 %fi299, !llfi_index !362
  %fi303 = call i32* @injectFault7(i64 361, i32* %181, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp72 = icmp eq i32* %fi302, %fi303, !llfi_index !363
  %fi304 = call i1 @injectFault1(i64 362, i1 %check_cmp72, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and73 = and i1 %fi304, %fi295, !llfi_index !364
  %fi305 = call i1 @injectFault1(i64 363, i1 %check_and73, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi305, i1* %AI, !llfi_index !365
  store i32 %fi292, i32* %fi302, align 4, !llfi_index !366
  br label %182, !llfi_index !367

; <label>:182                                     ; preds = %165
  %183 = load i32* %i1, align 4, !llfi_index !368
  %fi306 = call i32 @injectFault4(i64 367, i32 %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %184 = load i32* %i1, align 4, !llfi_index !369
  %fi307 = call i32 @injectFault4(i64 368, i32 %184, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %185 = add nsw i32 %fi306, 1, !llfi_index !370
  %fi308 = call i32 @injectFault4(i64 369, i32 %185, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %186 = add nsw i32 %fi307, 1, !llfi_index !371
  %fi309 = call i32 @injectFault4(i64 370, i32 %186, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp74 = icmp eq i32 %fi308, %fi309, !llfi_index !372
  %fi310 = call i1 @injectFault1(i64 371, i1 %check_cmp74, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone75 = load i1* %AI, !llfi_index !373
  %fi311 = call i1 @injectFault1(i64 372, i1 %loadone75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and76 = and i1 %fi310, %fi311, !llfi_index !374
  %fi312 = call i1 @injectFault1(i64 373, i1 %check_and76, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi312, i1* %AI, !llfi_index !375
  store i32 %fi308, i32* %i1, align 4, !llfi_index !376
  br label %158, !llfi_index !377

; <label>:187                                     ; preds = %158
  %188 = load %struct._IO_FILE** @fp, align 8, !llfi_index !378
  %fi313 = call %struct._IO_FILE* @injectFault0(i64 377, %struct._IO_FILE* %188, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %189 = load %struct._IO_FILE** @fp, align 8, !llfi_index !379
  %fi314 = call %struct._IO_FILE* @injectFault0(i64 378, %struct._IO_FILE* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %190 = icmp ne %struct._IO_FILE* %fi313, null, !llfi_index !380
  %fi315 = call i1 @injectFault1(i64 379, i1 %190, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %191 = icmp ne %struct._IO_FILE* %fi314, null, !llfi_index !381
  %fi316 = call i1 @injectFault1(i64 380, i1 %191, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp77 = icmp eq i1 %fi315, %fi316, !llfi_index !382
  %fi317 = call i1 @injectFault1(i64 381, i1 %check_cmp77, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone78 = load i1* %AI, !llfi_index !383
  %fi318 = call i1 @injectFault1(i64 382, i1 %loadone78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and79 = and i1 %fi317, %fi318, !llfi_index !384
  %fi319 = call i1 @injectFault1(i64 383, i1 %check_and79, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi319, i1* %AI, !llfi_index !385
  br i1 %fi315, label %192, label %196, !llfi_index !386

; <label>:192                                     ; preds = %187
  %193 = load %struct._IO_FILE** @fp, align 8, !llfi_index !387
  %fi132 = call %struct._IO_FILE* @injectFault0(i64 386, %struct._IO_FILE* %193, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %194 = load %struct._IO_FILE** @fp, align 8, !llfi_index !388
  %fi133 = call %struct._IO_FILE* @injectFault0(i64 387, %struct._IO_FILE* %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp80 = icmp eq %struct._IO_FILE* %fi132, %fi133, !llfi_index !389
  %fi134 = call i1 @injectFault1(i64 388, i1 %check_cmp80, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone81 = load i1* %AI, !llfi_index !390
  %fi135 = call i1 @injectFault1(i64 389, i1 %loadone81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and82 = and i1 %fi134, %fi135, !llfi_index !391
  %fi136 = call i1 @injectFault1(i64 390, i1 %check_and82, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi136, i1* %AI, !llfi_index !392
  %195 = call i32 @fclose(%struct._IO_FILE* %fi132), !llfi_index !393
  br label %196, !llfi_index !394

; <label>:196                                     ; preds = %192, %187
  %197 = load i32* %no_of_nodes, align 4, !llfi_index !395
  %fi137 = call i32 @injectFault4(i64 394, i32 %197, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %198 = load i32* %no_of_nodes, align 4, !llfi_index !396
  %fi138 = call i32 @injectFault4(i64 395, i32 %198, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %199 = sext i32 %fi137 to i64, !llfi_index !397
  %fi139 = call i64 @injectFault5(i64 396, i64 %199, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %200 = sext i32 %fi138 to i64, !llfi_index !398
  %fi140 = call i64 @injectFault5(i64 397, i64 %200, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %201 = mul i64 4, %fi139, !llfi_index !399
  %fi141 = call i64 @injectFault5(i64 398, i64 %201, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %202 = mul i64 4, %fi140, !llfi_index !400
  %fi142 = call i64 @injectFault5(i64 399, i64 %202, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp83 = icmp eq i64 %fi141, %fi142, !llfi_index !401
  %fi143 = call i1 @injectFault1(i64 400, i1 %check_cmp83, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone84 = load i1* %AI, !llfi_index !402
  %fi144 = call i1 @injectFault1(i64 401, i1 %loadone84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and85 = and i1 %fi143, %fi144, !llfi_index !403
  %fi145 = call i1 @injectFault1(i64 402, i1 %check_and85, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %203 = call noalias i8* @malloc(i64 %fi141) #6, !llfi_index !404
  %204 = bitcast i8* %203 to i32*, !llfi_index !405
  %fi146 = call i32* @injectFault7(i64 404, i32* %204, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %205 = bitcast i8* %203 to i32*, !llfi_index !406
  %fi147 = call i32* @injectFault7(i64 405, i32* %205, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp86 = icmp eq i32* %fi146, %fi147, !llfi_index !407
  %fi148 = call i1 @injectFault1(i64 406, i1 %check_cmp86, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and87 = and i1 %fi148, %fi145, !llfi_index !408
  %fi149 = call i1 @injectFault1(i64 407, i1 %check_and87, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi149, i1* %AI, !llfi_index !409
  store i32* %fi146, i32** %h_cost, align 8, !llfi_index !410
  store i32 0, i32* %i2, align 4, !llfi_index !411
  br label %206, !llfi_index !412

; <label>:206                                     ; preds = %222, %196
  %207 = load i32* %i2, align 4, !llfi_index !413
  %fi150 = call i32 @injectFault4(i64 412, i32 %207, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %208 = load i32* %i2, align 4, !llfi_index !414
  %fi151 = call i32 @injectFault4(i64 413, i32 %208, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %209 = load i32* %no_of_nodes, align 4, !llfi_index !415
  %fi152 = call i32 @injectFault4(i64 414, i32 %209, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %210 = load i32* %no_of_nodes, align 4, !llfi_index !416
  %fi153 = call i32 @injectFault4(i64 415, i32 %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %211 = icmp slt i32 %fi150, %fi152, !llfi_index !417
  %fi154 = call i1 @injectFault1(i64 416, i1 %211, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %212 = icmp slt i32 %fi151, %fi153, !llfi_index !418
  %fi155 = call i1 @injectFault1(i64 417, i1 %212, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp88 = icmp eq i1 %fi154, %fi155, !llfi_index !419
  %fi156 = call i1 @injectFault1(i64 418, i1 %check_cmp88, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone89 = load i1* %AI, !llfi_index !420
  %fi157 = call i1 @injectFault1(i64 419, i1 %loadone89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and90 = and i1 %fi156, %fi157, !llfi_index !421
  %fi158 = call i1 @injectFault1(i64 420, i1 %check_and90, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi158, i1* %AI, !llfi_index !422
  br i1 %fi154, label %213, label %227, !llfi_index !423

; <label>:213                                     ; preds = %206
  %214 = load i32* %i2, align 4, !llfi_index !424
  %fi159 = call i32 @injectFault4(i64 423, i32 %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %215 = load i32* %i2, align 4, !llfi_index !425
  %fi160 = call i32 @injectFault4(i64 424, i32 %215, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %216 = sext i32 %fi159 to i64, !llfi_index !426
  %fi161 = call i64 @injectFault5(i64 425, i64 %216, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %217 = sext i32 %fi160 to i64, !llfi_index !427
  %fi162 = call i64 @injectFault5(i64 426, i64 %217, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %218 = load i32** %h_cost, align 8, !llfi_index !428
  %fi163 = call i32* @injectFault7(i64 427, i32* %218, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %219 = load i32** %h_cost, align 8, !llfi_index !429
  %fi164 = call i32* @injectFault7(i64 428, i32* %219, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %220 = getelementptr i32* %fi163, i64 %fi161, !llfi_index !430
  %fi165 = call i32* @injectFault7(i64 429, i32* %220, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %221 = getelementptr i32* %fi164, i64 %fi162, !llfi_index !431
  %fi166 = call i32* @injectFault7(i64 430, i32* %221, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp91 = icmp eq i32* %fi165, %fi166, !llfi_index !432
  %fi167 = call i1 @injectFault1(i64 431, i1 %check_cmp91, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone92 = load i1* %AI, !llfi_index !433
  %fi168 = call i1 @injectFault1(i64 432, i1 %loadone92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and93 = and i1 %fi167, %fi168, !llfi_index !434
  %fi169 = call i1 @injectFault1(i64 433, i1 %check_and93, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi169, i1* %AI, !llfi_index !435
  store i32 -1, i32* %fi165, align 4, !llfi_index !436
  br label %222, !llfi_index !437

; <label>:222                                     ; preds = %213
  %223 = load i32* %i2, align 4, !llfi_index !438
  %fi170 = call i32 @injectFault4(i64 437, i32 %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %224 = load i32* %i2, align 4, !llfi_index !439
  %fi171 = call i32 @injectFault4(i64 438, i32 %224, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %225 = add nsw i32 %fi170, 1, !llfi_index !440
  %fi172 = call i32 @injectFault4(i64 439, i32 %225, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %226 = add nsw i32 %fi171, 1, !llfi_index !441
  %fi173 = call i32 @injectFault4(i64 440, i32 %226, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp94 = icmp eq i32 %fi172, %fi173, !llfi_index !442
  %fi174 = call i1 @injectFault1(i64 441, i1 %check_cmp94, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone95 = load i1* %AI, !llfi_index !443
  %fi175 = call i1 @injectFault1(i64 442, i1 %loadone95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and96 = and i1 %fi174, %fi175, !llfi_index !444
  %fi176 = call i1 @injectFault1(i64 443, i1 %check_and96, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi176, i1* %AI, !llfi_index !445
  store i32 %fi172, i32* %i2, align 4, !llfi_index !446
  br label %206, !llfi_index !447

; <label>:227                                     ; preds = %206
  %228 = load i32* %source, align 4, !llfi_index !448
  %fi177 = call i32 @injectFault4(i64 447, i32 %228, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %229 = load i32* %source, align 4, !llfi_index !449
  %fi178 = call i32 @injectFault4(i64 448, i32 %229, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %230 = sext i32 %fi177 to i64, !llfi_index !450
  %fi179 = call i64 @injectFault5(i64 449, i64 %230, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %231 = sext i32 %fi178 to i64, !llfi_index !451
  %fi180 = call i64 @injectFault5(i64 450, i64 %231, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %232 = load i32** %h_cost, align 8, !llfi_index !452
  %fi181 = call i32* @injectFault7(i64 451, i32* %232, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %233 = load i32** %h_cost, align 8, !llfi_index !453
  %fi182 = call i32* @injectFault7(i64 452, i32* %233, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %234 = getelementptr i32* %fi181, i64 %fi179, !llfi_index !454
  %fi183 = call i32* @injectFault7(i64 453, i32* %234, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %235 = getelementptr i32* %fi182, i64 %fi180, !llfi_index !455
  %fi184 = call i32* @injectFault7(i64 454, i32* %235, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp97 = icmp eq i32* %fi183, %fi184, !llfi_index !456
  %fi185 = call i1 @injectFault1(i64 455, i1 %check_cmp97, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone98 = load i1* %AI, !llfi_index !457
  %fi186 = call i1 @injectFault1(i64 456, i1 %loadone98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and99 = and i1 %fi185, %fi186, !llfi_index !458
  %fi187 = call i1 @injectFault1(i64 457, i1 %check_and99, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi187, i1* %AI, !llfi_index !459
  store i32 0, i32* %fi183, align 4, !llfi_index !460
  store i32 0, i32* %k, align 4, !llfi_index !461
  br label %236, !llfi_index !462

; <label>:236                                     ; preds = %439, %227
  store i8 0, i8* %stop, align 1, !llfi_index !463
  store i32 0, i32* %tid, align 4, !llfi_index !464
  br label %237, !llfi_index !465

; <label>:237                                     ; preds = %373, %236
  %238 = load i32* %tid, align 4, !llfi_index !466
  %fi188 = call i32 @injectFault4(i64 465, i32 %238, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %239 = load i32* %tid, align 4, !llfi_index !467
  %fi189 = call i32 @injectFault4(i64 466, i32 %239, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %240 = load i32* %no_of_nodes, align 4, !llfi_index !468
  %fi190 = call i32 @injectFault4(i64 467, i32 %240, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %241 = load i32* %no_of_nodes, align 4, !llfi_index !469
  %fi375 = call i32 @injectFault4(i64 468, i32 %241, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %242 = icmp slt i32 %fi188, %fi190, !llfi_index !470
  %fi376 = call i1 @injectFault1(i64 469, i1 %242, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %243 = icmp slt i32 %fi189, %fi375, !llfi_index !471
  %fi377 = call i1 @injectFault1(i64 470, i1 %243, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp100 = icmp eq i1 %fi376, %fi377, !llfi_index !472
  %fi378 = call i1 @injectFault1(i64 471, i1 %check_cmp100, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone101 = load i1* %AI, !llfi_index !473
  %fi379 = call i1 @injectFault1(i64 472, i1 %loadone101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and102 = and i1 %fi378, %fi379, !llfi_index !474
  %fi380 = call i1 @injectFault1(i64 473, i1 %check_and102, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi380, i1* %AI, !llfi_index !475
  br i1 %fi376, label %244, label %378, !llfi_index !476

; <label>:244                                     ; preds = %237
  %245 = load i32* %tid, align 4, !llfi_index !477
  %fi381 = call i32 @injectFault4(i64 476, i32 %245, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %246 = load i32* %tid, align 4, !llfi_index !478
  %fi382 = call i32 @injectFault4(i64 477, i32 %246, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %247 = sext i32 %fi381 to i64, !llfi_index !479
  %fi383 = call i64 @injectFault5(i64 478, i64 %247, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %248 = sext i32 %fi382 to i64, !llfi_index !480
  %fi384 = call i64 @injectFault5(i64 479, i64 %248, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %249 = load i8** %h_graph_mask, align 8, !llfi_index !481
  %fi385 = call i8* @injectFault3(i64 480, i8* %249, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %250 = load i8** %h_graph_mask, align 8, !llfi_index !482
  %fi386 = call i8* @injectFault3(i64 481, i8* %250, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %251 = getelementptr i8* %fi385, i64 %fi383, !llfi_index !483
  %fi387 = call i8* @injectFault3(i64 482, i8* %251, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %252 = getelementptr i8* %fi386, i64 %fi384, !llfi_index !484
  %fi388 = call i8* @injectFault3(i64 483, i8* %252, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %253 = load i8* %fi387, align 1, !llfi_index !485
  %fi389 = call i8 @injectFault8(i64 484, i8 %253, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %254 = load i8* %fi388, align 1, !llfi_index !486
  %fi390 = call i8 @injectFault8(i64 485, i8 %254, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %255 = trunc i8 %fi389 to i1, !llfi_index !487
  %fi391 = call i1 @injectFault1(i64 486, i1 %255, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %256 = trunc i8 %fi390 to i1, !llfi_index !488
  %fi392 = call i1 @injectFault1(i64 487, i1 %256, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %257 = zext i1 %fi391 to i32, !llfi_index !489
  %fi228 = call i32 @injectFault4(i64 488, i32 %257, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %258 = zext i1 %fi392 to i32, !llfi_index !490
  %fi229 = call i32 @injectFault4(i64 489, i32 %258, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %259 = icmp eq i32 %fi228, 1, !llfi_index !491
  %fi230 = call i1 @injectFault1(i64 490, i1 %259, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %260 = icmp eq i32 %fi229, 1, !llfi_index !492
  %fi231 = call i1 @injectFault1(i64 491, i1 %260, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp103 = icmp eq i1 %fi230, %fi231, !llfi_index !493
  %fi232 = call i1 @injectFault1(i64 492, i1 %check_cmp103, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone104 = load i1* %AI, !llfi_index !494
  %fi233 = call i1 @injectFault1(i64 493, i1 %loadone104, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and105 = and i1 %fi232, %fi233, !llfi_index !495
  %fi234 = call i1 @injectFault1(i64 494, i1 %check_and105, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi234, i1* %AI, !llfi_index !496
  br i1 %fi230, label %261, label %372, !llfi_index !497

; <label>:261                                     ; preds = %244
  %262 = load i32* %tid, align 4, !llfi_index !498
  %fi393 = call i32 @injectFault4(i64 497, i32 %262, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %263 = load i32* %tid, align 4, !llfi_index !499
  %fi394 = call i32 @injectFault4(i64 498, i32 %263, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %264 = sext i32 %fi393 to i64, !llfi_index !500
  %fi395 = call i64 @injectFault5(i64 499, i64 %264, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %265 = sext i32 %fi394 to i64, !llfi_index !501
  %fi396 = call i64 @injectFault5(i64 500, i64 %265, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %266 = load i8** %h_graph_mask, align 8, !llfi_index !502
  %fi397 = call i8* @injectFault3(i64 501, i8* %266, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %267 = load i8** %h_graph_mask, align 8, !llfi_index !503
  %fi398 = call i8* @injectFault3(i64 502, i8* %267, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %268 = getelementptr i8* %fi397, i64 %fi395, !llfi_index !504
  %fi399 = call i8* @injectFault3(i64 503, i8* %268, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %269 = getelementptr i8* %fi398, i64 %fi396, !llfi_index !505
  %fi400 = call i8* @injectFault3(i64 504, i8* %269, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp106 = icmp eq i8* %fi399, %fi400, !llfi_index !506
  %fi401 = call i1 @injectFault1(i64 505, i1 %check_cmp106, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone107 = load i1* %AI, !llfi_index !507
  %fi402 = call i1 @injectFault1(i64 506, i1 %loadone107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and108 = and i1 %fi401, %fi402, !llfi_index !508
  %fi403 = call i1 @injectFault1(i64 507, i1 %check_and108, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 0, i8* %fi399, align 1, !llfi_index !509
  %270 = load i32* %tid, align 4, !llfi_index !510
  %fi404 = call i32 @injectFault4(i64 509, i32 %270, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %271 = load i32* %tid, align 4, !llfi_index !511
  %fi405 = call i32 @injectFault4(i64 510, i32 %271, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %272 = sext i32 %fi404 to i64, !llfi_index !512
  %fi406 = call i64 @injectFault5(i64 511, i64 %272, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %273 = sext i32 %fi405 to i64, !llfi_index !513
  %fi407 = call i64 @injectFault5(i64 512, i64 %273, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %274 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !514
  %fi408 = call %struct.Node* @injectFault6(i64 513, %struct.Node* %274, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %275 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !515
  %fi409 = call %struct.Node* @injectFault6(i64 514, %struct.Node* %275, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %276 = getelementptr %struct.Node* %fi408, i64 %fi406, !llfi_index !516
  %fi410 = call %struct.Node* @injectFault6(i64 515, %struct.Node* %276, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %277 = getelementptr %struct.Node* %fi409, i64 %fi407, !llfi_index !517
  %fi411 = call %struct.Node* @injectFault6(i64 516, %struct.Node* %277, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %278 = getelementptr %struct.Node* %fi410, i32 0, i32 0, !llfi_index !518
  %fi412 = call i32* @injectFault7(i64 517, i32* %278, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %279 = getelementptr %struct.Node* %fi411, i32 0, i32 0, !llfi_index !519
  %fi413 = call i32* @injectFault7(i64 518, i32* %279, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %280 = load i32* %fi412, align 4, !llfi_index !520
  %fi414 = call i32 @injectFault4(i64 519, i32 %280, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %281 = load i32* %fi413, align 4, !llfi_index !521
  %fi415 = call i32 @injectFault4(i64 520, i32 %281, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp109 = icmp eq i32 %fi414, %fi415, !llfi_index !522
  %fi416 = call i1 @injectFault1(i64 521, i1 %check_cmp109, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and110 = and i1 %fi416, %fi403, !llfi_index !523
  %fi417 = call i1 @injectFault1(i64 522, i1 %check_and110, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi417, i1* %AI, !llfi_index !524
  store i32 %fi414, i32* %i3, align 4, !llfi_index !525
  br label %282, !llfi_index !526

; <label>:282                                     ; preds = %366, %261
  %283 = load i32* %i3, align 4, !llfi_index !527
  %fi418 = call i32 @injectFault4(i64 526, i32 %283, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %284 = load i32* %i3, align 4, !llfi_index !528
  %fi419 = call i32 @injectFault4(i64 527, i32 %284, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %285 = load i32* %tid, align 4, !llfi_index !529
  %fi420 = call i32 @injectFault4(i64 528, i32 %285, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %286 = load i32* %tid, align 4, !llfi_index !530
  %fi421 = call i32 @injectFault4(i64 529, i32 %286, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %287 = sext i32 %fi420 to i64, !llfi_index !531
  %fi422 = call i64 @injectFault5(i64 530, i64 %287, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %288 = sext i32 %fi421 to i64, !llfi_index !532
  %fi423 = call i64 @injectFault5(i64 531, i64 %288, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %289 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !533
  %fi424 = call %struct.Node* @injectFault6(i64 532, %struct.Node* %289, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %290 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !534
  %fi425 = call %struct.Node* @injectFault6(i64 533, %struct.Node* %290, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %291 = getelementptr %struct.Node* %fi424, i64 %fi422, !llfi_index !535
  %fi426 = call %struct.Node* @injectFault6(i64 534, %struct.Node* %291, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %292 = getelementptr %struct.Node* %fi425, i64 %fi423, !llfi_index !536
  %fi427 = call %struct.Node* @injectFault6(i64 535, %struct.Node* %292, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %293 = getelementptr %struct.Node* %fi426, i32 0, i32 1, !llfi_index !537
  %fi428 = call i32* @injectFault7(i64 536, i32* %293, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %294 = getelementptr %struct.Node* %fi427, i32 0, i32 1, !llfi_index !538
  %fi429 = call i32* @injectFault7(i64 537, i32* %294, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %295 = load i32* %fi428, align 4, !llfi_index !539
  %fi430 = call i32 @injectFault4(i64 538, i32 %295, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %296 = load i32* %fi429, align 4, !llfi_index !540
  %fi431 = call i32 @injectFault4(i64 539, i32 %296, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %297 = load i32* %tid, align 4, !llfi_index !541
  %fi432 = call i32 @injectFault4(i64 540, i32 %297, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %298 = load i32* %tid, align 4, !llfi_index !542
  %fi433 = call i32 @injectFault4(i64 541, i32 %298, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %299 = sext i32 %fi432 to i64, !llfi_index !543
  %fi434 = call i64 @injectFault5(i64 542, i64 %299, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %300 = sext i32 %fi433 to i64, !llfi_index !544
  %fi435 = call i64 @injectFault5(i64 543, i64 %300, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %301 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !545
  %fi436 = call %struct.Node* @injectFault6(i64 544, %struct.Node* %301, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %302 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !546
  %fi437 = call %struct.Node* @injectFault6(i64 545, %struct.Node* %302, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %303 = getelementptr %struct.Node* %fi436, i64 %fi434, !llfi_index !547
  %fi438 = call %struct.Node* @injectFault6(i64 546, %struct.Node* %303, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %304 = getelementptr %struct.Node* %fi437, i64 %fi435, !llfi_index !548
  %fi439 = call %struct.Node* @injectFault6(i64 547, %struct.Node* %304, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %305 = getelementptr %struct.Node* %fi438, i32 0, i32 0, !llfi_index !549
  %fi440 = call i32* @injectFault7(i64 548, i32* %305, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %306 = getelementptr %struct.Node* %fi439, i32 0, i32 0, !llfi_index !550
  %fi441 = call i32* @injectFault7(i64 549, i32* %306, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %307 = load i32* %fi440, align 4, !llfi_index !551
  %fi442 = call i32 @injectFault4(i64 550, i32 %307, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %308 = load i32* %fi441, align 4, !llfi_index !552
  %fi443 = call i32 @injectFault4(i64 551, i32 %308, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %309 = add nsw i32 %fi430, %fi442, !llfi_index !553
  %fi444 = call i32 @injectFault4(i64 552, i32 %309, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %310 = add nsw i32 %fi431, %fi443, !llfi_index !554
  %fi445 = call i32 @injectFault4(i64 553, i32 %310, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %311 = icmp slt i32 %fi418, %fi444, !llfi_index !555
  %fi446 = call i1 @injectFault1(i64 554, i1 %311, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %312 = icmp slt i32 %fi419, %fi445, !llfi_index !556
  %fi447 = call i1 @injectFault1(i64 555, i1 %312, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp111 = icmp eq i1 %fi446, %fi447, !llfi_index !557
  %fi448 = call i1 @injectFault1(i64 556, i1 %check_cmp111, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone112 = load i1* %AI, !llfi_index !558
  %fi449 = call i1 @injectFault1(i64 557, i1 %loadone112, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and113 = and i1 %fi448, %fi449, !llfi_index !559
  %fi450 = call i1 @injectFault1(i64 558, i1 %check_and113, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi450, i1* %AI, !llfi_index !560
  br i1 %fi446, label %313, label %371, !llfi_index !561

; <label>:313                                     ; preds = %282
  %314 = load i32* %i3, align 4, !llfi_index !562
  %fi451 = call i32 @injectFault4(i64 561, i32 %314, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %315 = load i32* %i3, align 4, !llfi_index !563
  %fi452 = call i32 @injectFault4(i64 562, i32 %315, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %316 = sext i32 %fi451 to i64, !llfi_index !564
  %fi453 = call i64 @injectFault5(i64 563, i64 %316, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %317 = sext i32 %fi452 to i64, !llfi_index !565
  %fi454 = call i64 @injectFault5(i64 564, i64 %317, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %318 = load i32** %h_graph_edges, align 8, !llfi_index !566
  %fi455 = call i32* @injectFault7(i64 565, i32* %318, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %319 = load i32** %h_graph_edges, align 8, !llfi_index !567
  %fi456 = call i32* @injectFault7(i64 566, i32* %319, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %320 = getelementptr i32* %fi455, i64 %fi453, !llfi_index !568
  %fi457 = call i32* @injectFault7(i64 567, i32* %320, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %321 = getelementptr i32* %fi456, i64 %fi454, !llfi_index !569
  %fi458 = call i32* @injectFault7(i64 568, i32* %321, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %322 = load i32* %fi457, align 4, !llfi_index !570
  %fi459 = call i32 @injectFault4(i64 569, i32 %322, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %323 = load i32* %fi458, align 4, !llfi_index !571
  %fi460 = call i32 @injectFault4(i64 570, i32 %323, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp114 = icmp eq i32 %fi459, %fi460, !llfi_index !572
  %fi461 = call i1 @injectFault1(i64 571, i1 %check_cmp114, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone115 = load i1* %AI, !llfi_index !573
  %fi462 = call i1 @injectFault1(i64 572, i1 %loadone115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and116 = and i1 %fi461, %fi462, !llfi_index !574
  %fi463 = call i1 @injectFault1(i64 573, i1 %check_and116, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i32 %fi459, i32* %id4, align 4, !llfi_index !575
  %324 = load i32* %id4, align 4, !llfi_index !576
  %fi464 = call i32 @injectFault4(i64 575, i32 %324, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %325 = load i32* %id4, align 4, !llfi_index !577
  %fi465 = call i32 @injectFault4(i64 576, i32 %325, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %326 = sext i32 %fi464 to i64, !llfi_index !578
  %fi466 = call i64 @injectFault5(i64 577, i64 %326, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %327 = sext i32 %fi465 to i64, !llfi_index !579
  %fi467 = call i64 @injectFault5(i64 578, i64 %327, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %328 = load i8** %h_graph_visited, align 8, !llfi_index !580
  %fi468 = call i8* @injectFault3(i64 579, i8* %328, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %329 = load i8** %h_graph_visited, align 8, !llfi_index !581
  %fi469 = call i8* @injectFault3(i64 580, i8* %329, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %330 = getelementptr i8* %fi468, i64 %fi466, !llfi_index !582
  %fi470 = call i8* @injectFault3(i64 581, i8* %330, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %331 = getelementptr i8* %fi469, i64 %fi467, !llfi_index !583
  %fi471 = call i8* @injectFault3(i64 582, i8* %331, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %332 = load i8* %fi470, align 1, !llfi_index !584
  %fi472 = call i8 @injectFault8(i64 583, i8 %332, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %333 = load i8* %fi471, align 1, !llfi_index !585
  %fi473 = call i8 @injectFault8(i64 584, i8 %333, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %334 = trunc i8 %fi472 to i1, !llfi_index !586
  %fi474 = call i1 @injectFault1(i64 585, i1 %334, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %335 = trunc i8 %fi473 to i1, !llfi_index !587
  %fi475 = call i1 @injectFault1(i64 586, i1 %335, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp117 = icmp eq i1 %fi474, %fi475, !llfi_index !588
  %fi476 = call i1 @injectFault1(i64 587, i1 %check_cmp117, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and118 = and i1 %fi476, %fi463, !llfi_index !589
  %fi477 = call i1 @injectFault1(i64 588, i1 %check_and118, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi477, i1* %AI, !llfi_index !590
  br i1 %fi474, label %365, label %336, !llfi_index !591

; <label>:336                                     ; preds = %313
  %337 = load i32* %tid, align 4, !llfi_index !592
  %fi478 = call i32 @injectFault4(i64 591, i32 %337, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %338 = load i32* %tid, align 4, !llfi_index !593
  %fi479 = call i32 @injectFault4(i64 592, i32 %338, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %339 = sext i32 %fi478 to i64, !llfi_index !594
  %fi480 = call i64 @injectFault5(i64 593, i64 %339, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %340 = sext i32 %fi479 to i64, !llfi_index !595
  %fi481 = call i64 @injectFault5(i64 594, i64 %340, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %341 = load i32** %h_cost, align 8, !llfi_index !596
  %fi482 = call i32* @injectFault7(i64 595, i32* %341, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %342 = load i32** %h_cost, align 8, !llfi_index !597
  %fi483 = call i32* @injectFault7(i64 596, i32* %342, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %343 = getelementptr i32* %fi482, i64 %fi480, !llfi_index !598
  %fi484 = call i32* @injectFault7(i64 597, i32* %343, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %344 = getelementptr i32* %fi483, i64 %fi481, !llfi_index !599
  %fi485 = call i32* @injectFault7(i64 598, i32* %344, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %345 = load i32* %fi484, align 4, !llfi_index !600
  %fi486 = call i32 @injectFault4(i64 599, i32 %345, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %346 = load i32* %fi485, align 4, !llfi_index !601
  %fi487 = call i32 @injectFault4(i64 600, i32 %346, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %347 = add nsw i32 %fi486, 1, !llfi_index !602
  %fi488 = call i32 @injectFault4(i64 601, i32 %347, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %348 = add nsw i32 %fi487, 1, !llfi_index !603
  %fi489 = call i32 @injectFault4(i64 602, i32 %348, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp119 = icmp eq i32 %fi488, %fi489, !llfi_index !604
  %fi490 = call i1 @injectFault1(i64 603, i1 %check_cmp119, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone120 = load i1* %AI, !llfi_index !605
  %fi491 = call i1 @injectFault1(i64 604, i1 %loadone120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and121 = and i1 %fi490, %fi491, !llfi_index !606
  %fi492 = call i1 @injectFault1(i64 605, i1 %check_and121, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %349 = load i32* %id4, align 4, !llfi_index !607
  %fi493 = call i32 @injectFault4(i64 606, i32 %349, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %350 = load i32* %id4, align 4, !llfi_index !608
  %fi494 = call i32 @injectFault4(i64 607, i32 %350, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %351 = sext i32 %fi493 to i64, !llfi_index !609
  %fi495 = call i64 @injectFault5(i64 608, i64 %351, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %352 = sext i32 %fi494 to i64, !llfi_index !610
  %fi496 = call i64 @injectFault5(i64 609, i64 %352, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %353 = load i32** %h_cost, align 8, !llfi_index !611
  %fi497 = call i32* @injectFault7(i64 610, i32* %353, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %354 = load i32** %h_cost, align 8, !llfi_index !612
  %fi498 = call i32* @injectFault7(i64 611, i32* %354, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %355 = getelementptr i32* %fi497, i64 %fi495, !llfi_index !613
  %fi499 = call i32* @injectFault7(i64 612, i32* %355, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %356 = getelementptr i32* %fi498, i64 %fi496, !llfi_index !614
  %fi500 = call i32* @injectFault7(i64 613, i32* %356, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp122 = icmp eq i32* %fi499, %fi500, !llfi_index !615
  %fi501 = call i1 @injectFault1(i64 614, i1 %check_cmp122, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and123 = and i1 %fi501, %fi492, !llfi_index !616
  %fi502 = call i1 @injectFault1(i64 615, i1 %check_and123, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i32 %fi488, i32* %fi499, align 4, !llfi_index !617
  %357 = load i32* %id4, align 4, !llfi_index !618
  %fi503 = call i32 @injectFault4(i64 617, i32 %357, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %358 = load i32* %id4, align 4, !llfi_index !619
  %fi504 = call i32 @injectFault4(i64 618, i32 %358, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %359 = sext i32 %fi503 to i64, !llfi_index !620
  %fi505 = call i64 @injectFault5(i64 619, i64 %359, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %360 = sext i32 %fi504 to i64, !llfi_index !621
  %fi506 = call i64 @injectFault5(i64 620, i64 %360, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %361 = load i8** %h_updating_graph_mask, align 8, !llfi_index !622
  %fi507 = call i8* @injectFault3(i64 621, i8* %361, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %362 = load i8** %h_updating_graph_mask, align 8, !llfi_index !623
  %fi508 = call i8* @injectFault3(i64 622, i8* %362, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %363 = getelementptr i8* %fi507, i64 %fi505, !llfi_index !624
  %fi509 = call i8* @injectFault3(i64 623, i8* %363, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %364 = getelementptr i8* %fi508, i64 %fi506, !llfi_index !625
  %fi510 = call i8* @injectFault3(i64 624, i8* %364, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp124 = icmp eq i8* %fi509, %fi510, !llfi_index !626
  %fi511 = call i1 @injectFault1(i64 625, i1 %check_cmp124, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and125 = and i1 %fi511, %fi502, !llfi_index !627
  %fi512 = call i1 @injectFault1(i64 626, i1 %check_and125, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi512, i1* %AI, !llfi_index !628
  store i8 1, i8* %fi509, align 1, !llfi_index !629
  br label %365, !llfi_index !630

; <label>:365                                     ; preds = %336, %313
  br label %366, !llfi_index !631

; <label>:366                                     ; preds = %365
  %367 = load i32* %i3, align 4, !llfi_index !632
  %fi513 = call i32 @injectFault4(i64 631, i32 %367, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %368 = load i32* %i3, align 4, !llfi_index !633
  %fi514 = call i32 @injectFault4(i64 632, i32 %368, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %369 = add nsw i32 %fi513, 1, !llfi_index !634
  %fi515 = call i32 @injectFault4(i64 633, i32 %369, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %370 = add nsw i32 %fi514, 1, !llfi_index !635
  %fi516 = call i32 @injectFault4(i64 634, i32 %370, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp126 = icmp eq i32 %fi515, %fi516, !llfi_index !636
  %fi517 = call i1 @injectFault1(i64 635, i1 %check_cmp126, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone127 = load i1* %AI, !llfi_index !637
  %fi518 = call i1 @injectFault1(i64 636, i1 %loadone127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and128 = and i1 %fi517, %fi518, !llfi_index !638
  %fi519 = call i1 @injectFault1(i64 637, i1 %check_and128, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi519, i1* %AI, !llfi_index !639
  store i32 %fi515, i32* %i3, align 4, !llfi_index !640
  br label %282, !llfi_index !641

; <label>:371                                     ; preds = %282
  br label %372, !llfi_index !642

; <label>:372                                     ; preds = %371, %244
  br label %373, !llfi_index !643

; <label>:373                                     ; preds = %372
  %374 = load i32* %tid, align 4, !llfi_index !644
  %fi520 = call i32 @injectFault4(i64 643, i32 %374, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %375 = load i32* %tid, align 4, !llfi_index !645
  %fi521 = call i32 @injectFault4(i64 644, i32 %375, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %376 = add nsw i32 %fi520, 1, !llfi_index !646
  %fi522 = call i32 @injectFault4(i64 645, i32 %376, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %377 = add nsw i32 %fi521, 1, !llfi_index !647
  %fi523 = call i32 @injectFault4(i64 646, i32 %377, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp129 = icmp eq i32 %fi522, %fi523, !llfi_index !648
  %fi524 = call i1 @injectFault1(i64 647, i1 %check_cmp129, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone130 = load i1* %AI, !llfi_index !649
  %fi525 = call i1 @injectFault1(i64 648, i1 %loadone130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and131 = and i1 %fi524, %fi525, !llfi_index !650
  %fi526 = call i1 @injectFault1(i64 649, i1 %check_and131, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi526, i1* %AI, !llfi_index !651
  store i32 %fi522, i32* %tid, align 4, !llfi_index !652
  br label %237, !llfi_index !653

; <label>:378                                     ; preds = %237
  store i32 0, i32* %tid5, align 4, !llfi_index !654
  br label %379, !llfi_index !655

; <label>:379                                     ; preds = %429, %378
  %380 = load i32* %tid5, align 4, !llfi_index !656
  %fi527 = call i32 @injectFault4(i64 655, i32 %380, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %381 = load i32* %tid5, align 4, !llfi_index !657
  %fi528 = call i32 @injectFault4(i64 656, i32 %381, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %382 = load i32* %no_of_nodes, align 4, !llfi_index !658
  %fi529 = call i32 @injectFault4(i64 657, i32 %382, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %383 = load i32* %no_of_nodes, align 4, !llfi_index !659
  %fi530 = call i32 @injectFault4(i64 658, i32 %383, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %384 = icmp slt i32 %fi527, %fi529, !llfi_index !660
  %fi531 = call i1 @injectFault1(i64 659, i1 %384, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %385 = icmp slt i32 %fi528, %fi530, !llfi_index !661
  %fi532 = call i1 @injectFault1(i64 660, i1 %385, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp132 = icmp eq i1 %fi531, %fi532, !llfi_index !662
  %fi533 = call i1 @injectFault1(i64 661, i1 %check_cmp132, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone133 = load i1* %AI, !llfi_index !663
  %fi534 = call i1 @injectFault1(i64 662, i1 %loadone133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and134 = and i1 %fi533, %fi534, !llfi_index !664
  %fi535 = call i1 @injectFault1(i64 663, i1 %check_and134, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi535, i1* %AI, !llfi_index !665
  br i1 %fi531, label %386, label %434, !llfi_index !666

; <label>:386                                     ; preds = %379
  %387 = load i32* %tid5, align 4, !llfi_index !667
  %fi536 = call i32 @injectFault4(i64 666, i32 %387, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %388 = load i32* %tid5, align 4, !llfi_index !668
  %fi537 = call i32 @injectFault4(i64 667, i32 %388, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %389 = sext i32 %fi536 to i64, !llfi_index !669
  %fi538 = call i64 @injectFault5(i64 668, i64 %389, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %390 = sext i32 %fi537 to i64, !llfi_index !670
  %fi539 = call i64 @injectFault5(i64 669, i64 %390, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %391 = load i8** %h_updating_graph_mask, align 8, !llfi_index !671
  %fi540 = call i8* @injectFault3(i64 670, i8* %391, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %392 = load i8** %h_updating_graph_mask, align 8, !llfi_index !672
  %fi541 = call i8* @injectFault3(i64 671, i8* %392, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %393 = getelementptr i8* %fi540, i64 %fi538, !llfi_index !673
  %fi542 = call i8* @injectFault3(i64 672, i8* %393, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %394 = getelementptr i8* %fi541, i64 %fi539, !llfi_index !674
  %fi543 = call i8* @injectFault3(i64 673, i8* %394, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %395 = load i8* %fi542, align 1, !llfi_index !675
  %fi544 = call i8 @injectFault8(i64 674, i8 %395, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %396 = load i8* %fi543, align 1, !llfi_index !676
  %fi545 = call i8 @injectFault8(i64 675, i8 %396, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %397 = trunc i8 %fi544 to i1, !llfi_index !677
  %fi546 = call i1 @injectFault1(i64 676, i1 %397, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %398 = trunc i8 %fi545 to i1, !llfi_index !678
  %fi547 = call i1 @injectFault1(i64 677, i1 %398, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %399 = zext i1 %fi546 to i32, !llfi_index !679
  %fi548 = call i32 @injectFault4(i64 678, i32 %399, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %400 = zext i1 %fi547 to i32, !llfi_index !680
  %fi549 = call i32 @injectFault4(i64 679, i32 %400, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %401 = icmp eq i32 %fi548, 1, !llfi_index !681
  %fi550 = call i1 @injectFault1(i64 680, i1 %401, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %402 = icmp eq i32 %fi549, 1, !llfi_index !682
  %fi551 = call i1 @injectFault1(i64 681, i1 %402, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp135 = icmp eq i1 %fi550, %fi551, !llfi_index !683
  %fi552 = call i1 @injectFault1(i64 682, i1 %check_cmp135, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone136 = load i1* %AI, !llfi_index !684
  %fi553 = call i1 @injectFault1(i64 683, i1 %loadone136, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and137 = and i1 %fi552, %fi553, !llfi_index !685
  %fi554 = call i1 @injectFault1(i64 684, i1 %check_and137, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi554, i1* %AI, !llfi_index !686
  br i1 %fi550, label %403, label %428, !llfi_index !687

; <label>:403                                     ; preds = %386
  %404 = load i32* %tid5, align 4, !llfi_index !688
  %fi555 = call i32 @injectFault4(i64 687, i32 %404, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %405 = load i32* %tid5, align 4, !llfi_index !689
  %fi556 = call i32 @injectFault4(i64 688, i32 %405, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %406 = sext i32 %fi555 to i64, !llfi_index !690
  %fi557 = call i64 @injectFault5(i64 689, i64 %406, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %407 = sext i32 %fi556 to i64, !llfi_index !691
  %fi558 = call i64 @injectFault5(i64 690, i64 %407, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %408 = load i8** %h_graph_mask, align 8, !llfi_index !692
  %fi559 = call i8* @injectFault3(i64 691, i8* %408, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %409 = load i8** %h_graph_mask, align 8, !llfi_index !693
  %fi560 = call i8* @injectFault3(i64 692, i8* %409, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %410 = getelementptr i8* %fi559, i64 %fi557, !llfi_index !694
  %fi561 = call i8* @injectFault3(i64 693, i8* %410, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %411 = getelementptr i8* %fi560, i64 %fi558, !llfi_index !695
  %fi562 = call i8* @injectFault3(i64 694, i8* %411, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp138 = icmp eq i8* %fi561, %fi562, !llfi_index !696
  %fi563 = call i1 @injectFault1(i64 695, i1 %check_cmp138, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone139 = load i1* %AI, !llfi_index !697
  %fi564 = call i1 @injectFault1(i64 696, i1 %loadone139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and140 = and i1 %fi563, %fi564, !llfi_index !698
  %fi565 = call i1 @injectFault1(i64 697, i1 %check_and140, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 1, i8* %fi561, align 1, !llfi_index !699
  %412 = load i32* %tid5, align 4, !llfi_index !700
  %fi566 = call i32 @injectFault4(i64 699, i32 %412, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %413 = load i32* %tid5, align 4, !llfi_index !701
  %fi567 = call i32 @injectFault4(i64 700, i32 %413, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %414 = sext i32 %fi566 to i64, !llfi_index !702
  %fi568 = call i64 @injectFault5(i64 701, i64 %414, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %415 = sext i32 %fi567 to i64, !llfi_index !703
  %fi569 = call i64 @injectFault5(i64 702, i64 %415, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %416 = load i8** %h_graph_visited, align 8, !llfi_index !704
  %fi570 = call i8* @injectFault3(i64 703, i8* %416, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %417 = load i8** %h_graph_visited, align 8, !llfi_index !705
  %fi571 = call i8* @injectFault3(i64 704, i8* %417, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %418 = getelementptr i8* %fi570, i64 %fi568, !llfi_index !706
  %fi572 = call i8* @injectFault3(i64 705, i8* %418, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %419 = getelementptr i8* %fi571, i64 %fi569, !llfi_index !707
  %fi573 = call i8* @injectFault3(i64 706, i8* %419, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp141 = icmp eq i8* %fi572, %fi573, !llfi_index !708
  %fi574 = call i1 @injectFault1(i64 707, i1 %check_cmp141, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and142 = and i1 %fi574, %fi565, !llfi_index !709
  %fi575 = call i1 @injectFault1(i64 708, i1 %check_and142, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i8 1, i8* %fi572, align 1, !llfi_index !710
  store i8 1, i8* %stop, align 1, !llfi_index !711
  %420 = load i32* %tid5, align 4, !llfi_index !712
  %fi576 = call i32 @injectFault4(i64 711, i32 %420, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %421 = load i32* %tid5, align 4, !llfi_index !713
  %fi577 = call i32 @injectFault4(i64 712, i32 %421, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %422 = sext i32 %fi576 to i64, !llfi_index !714
  %fi578 = call i64 @injectFault5(i64 713, i64 %422, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %423 = sext i32 %fi577 to i64, !llfi_index !715
  %fi579 = call i64 @injectFault5(i64 714, i64 %423, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %424 = load i8** %h_updating_graph_mask, align 8, !llfi_index !716
  %fi580 = call i8* @injectFault3(i64 715, i8* %424, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %425 = load i8** %h_updating_graph_mask, align 8, !llfi_index !717
  %fi581 = call i8* @injectFault3(i64 716, i8* %425, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %426 = getelementptr i8* %fi580, i64 %fi578, !llfi_index !718
  %fi582 = call i8* @injectFault3(i64 717, i8* %426, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %427 = getelementptr i8* %fi581, i64 %fi579, !llfi_index !719
  %fi583 = call i8* @injectFault3(i64 718, i8* %427, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp143 = icmp eq i8* %fi582, %fi583, !llfi_index !720
  %fi584 = call i1 @injectFault1(i64 719, i1 %check_cmp143, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and144 = and i1 %fi584, %fi575, !llfi_index !721
  %fi585 = call i1 @injectFault1(i64 720, i1 %check_and144, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi585, i1* %AI, !llfi_index !722
  store i8 0, i8* %fi582, align 1, !llfi_index !723
  br label %428, !llfi_index !724

; <label>:428                                     ; preds = %403, %386
  br label %429, !llfi_index !725

; <label>:429                                     ; preds = %428
  %430 = load i32* %tid5, align 4, !llfi_index !726
  %fi586 = call i32 @injectFault4(i64 725, i32 %430, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %431 = load i32* %tid5, align 4, !llfi_index !727
  %fi587 = call i32 @injectFault4(i64 726, i32 %431, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %432 = add nsw i32 %fi586, 1, !llfi_index !728
  %fi588 = call i32 @injectFault4(i64 727, i32 %432, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %433 = add nsw i32 %fi587, 1, !llfi_index !729
  %fi589 = call i32 @injectFault4(i64 728, i32 %433, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp145 = icmp eq i32 %fi588, %fi589, !llfi_index !730
  %fi590 = call i1 @injectFault1(i64 729, i1 %check_cmp145, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone146 = load i1* %AI, !llfi_index !731
  %fi591 = call i1 @injectFault1(i64 730, i1 %loadone146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and147 = and i1 %fi590, %fi591, !llfi_index !732
  %fi592 = call i1 @injectFault1(i64 731, i1 %check_and147, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi592, i1* %AI, !llfi_index !733
  store i32 %fi588, i32* %tid5, align 4, !llfi_index !734
  br label %379, !llfi_index !735

; <label>:434                                     ; preds = %379
  %435 = load i32* %k, align 4, !llfi_index !736
  %fi593 = call i32 @injectFault4(i64 735, i32 %435, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %436 = load i32* %k, align 4, !llfi_index !737
  %fi594 = call i32 @injectFault4(i64 736, i32 %436, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %437 = add nsw i32 %fi593, 1, !llfi_index !738
  %fi595 = call i32 @injectFault4(i64 737, i32 %437, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %438 = add nsw i32 %fi594, 1, !llfi_index !739
  %fi596 = call i32 @injectFault4(i64 738, i32 %438, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp148 = icmp eq i32 %fi595, %fi596, !llfi_index !740
  %fi597 = call i1 @injectFault1(i64 739, i1 %check_cmp148, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone149 = load i1* %AI, !llfi_index !741
  %fi598 = call i1 @injectFault1(i64 740, i1 %loadone149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and150 = and i1 %fi597, %fi598, !llfi_index !742
  %fi599 = call i1 @injectFault1(i64 741, i1 %check_and150, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi599, i1* %AI, !llfi_index !743
  store i32 %fi595, i32* %k, align 4, !llfi_index !744
  br label %439, !llfi_index !745

; <label>:439                                     ; preds = %434
  %440 = load i8* %stop, align 1, !llfi_index !746
  %fi600 = call i8 @injectFault8(i64 745, i8 %440, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %441 = load i8* %stop, align 1, !llfi_index !747
  %fi601 = call i8 @injectFault8(i64 746, i8 %441, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %442 = trunc i8 %fi600 to i1, !llfi_index !748
  %fi602 = call i1 @injectFault1(i64 747, i1 %442, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %443 = trunc i8 %fi601 to i1, !llfi_index !749
  %fi603 = call i1 @injectFault1(i64 748, i1 %443, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp151 = icmp eq i1 %fi602, %fi603, !llfi_index !750
  %fi604 = call i1 @injectFault1(i64 749, i1 %check_cmp151, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone152 = load i1* %AI, !llfi_index !751
  %fi605 = call i1 @injectFault1(i64 750, i1 %loadone152, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and153 = and i1 %fi604, %fi605, !llfi_index !752
  %fi606 = call i1 @injectFault1(i64 751, i1 %check_and153, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi606, i1* %AI, !llfi_index !753
  br i1 %fi602, label %236, label %444, !llfi_index !754

; <label>:444                                     ; preds = %439
  %445 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !llfi_index !755
  store %struct._IO_FILE* %445, %struct._IO_FILE** %fpo, align 8, !llfi_index !756
  store i32 0, i32* %i6, align 4, !llfi_index !757
  br label %446, !llfi_index !758

; <label>:446                                     ; preds = %469, %444
  %447 = load i32* %i6, align 4, !llfi_index !759
  %fi607 = call i32 @injectFault4(i64 758, i32 %447, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %448 = load i32* %i6, align 4, !llfi_index !760
  %fi608 = call i32 @injectFault4(i64 759, i32 %448, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %449 = load i32* %no_of_nodes, align 4, !llfi_index !761
  %fi609 = call i32 @injectFault4(i64 760, i32 %449, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %450 = load i32* %no_of_nodes, align 4, !llfi_index !762
  %fi610 = call i32 @injectFault4(i64 761, i32 %450, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %451 = icmp slt i32 %fi607, %fi609, !llfi_index !763
  %fi611 = call i1 @injectFault1(i64 762, i1 %451, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %452 = icmp slt i32 %fi608, %fi610, !llfi_index !764
  %fi612 = call i1 @injectFault1(i64 763, i1 %452, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp154 = icmp eq i1 %fi611, %fi612, !llfi_index !765
  %fi613 = call i1 @injectFault1(i64 764, i1 %check_cmp154, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone155 = load i1* %AI, !llfi_index !766
  %fi614 = call i1 @injectFault1(i64 765, i1 %loadone155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and156 = and i1 %fi613, %fi614, !llfi_index !767
  %fi615 = call i1 @injectFault1(i64 766, i1 %check_and156, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi615, i1* %AI, !llfi_index !768
  br i1 %fi611, label %453, label %474, !llfi_index !769

; <label>:453                                     ; preds = %446
  %454 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !770
  %fi320 = call %struct._IO_FILE* @injectFault0(i64 769, %struct._IO_FILE* %454, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %455 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !771
  %fi321 = call %struct._IO_FILE* @injectFault0(i64 770, %struct._IO_FILE* %455, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp157 = icmp eq %struct._IO_FILE* %fi320, %fi321, !llfi_index !772
  %fi322 = call i1 @injectFault1(i64 771, i1 %check_cmp157, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone158 = load i1* %AI, !llfi_index !773
  %fi323 = call i1 @injectFault1(i64 772, i1 %loadone158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and159 = and i1 %fi322, %fi323, !llfi_index !774
  %fi324 = call i1 @injectFault1(i64 773, i1 %check_and159, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %456 = load i32* %i6, align 4, !llfi_index !775
  %fi325 = call i32 @injectFault4(i64 774, i32 %456, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %457 = load i32* %i6, align 4, !llfi_index !776
  %fi326 = call i32 @injectFault4(i64 775, i32 %457, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp160 = icmp eq i32 %fi325, %fi326, !llfi_index !777
  %fi327 = call i1 @injectFault1(i64 776, i1 %check_cmp160, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and161 = and i1 %fi327, %fi324, !llfi_index !778
  %fi328 = call i1 @injectFault1(i64 777, i1 %check_and161, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %458 = load i32* %i6, align 4, !llfi_index !779
  %fi329 = call i32 @injectFault4(i64 778, i32 %458, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %459 = load i32* %i6, align 4, !llfi_index !780
  %fi330 = call i32 @injectFault4(i64 779, i32 %459, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %460 = sext i32 %fi329 to i64, !llfi_index !781
  %fi331 = call i64 @injectFault5(i64 780, i64 %460, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %461 = sext i32 %fi330 to i64, !llfi_index !782
  %fi332 = call i64 @injectFault5(i64 781, i64 %461, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %462 = load i32** %h_cost, align 8, !llfi_index !783
  %fi333 = call i32* @injectFault7(i64 782, i32* %462, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %463 = load i32** %h_cost, align 8, !llfi_index !784
  %fi334 = call i32* @injectFault7(i64 783, i32* %463, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %464 = getelementptr i32* %fi333, i64 %fi331, !llfi_index !785
  %fi335 = call i32* @injectFault7(i64 784, i32* %464, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %465 = getelementptr i32* %fi334, i64 %fi332, !llfi_index !786
  %fi336 = call i32* @injectFault7(i64 785, i32* %465, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %466 = load i32* %fi335, align 4, !llfi_index !787
  %fi337 = call i32 @injectFault4(i64 786, i32 %466, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %467 = load i32* %fi336, align 4, !llfi_index !788
  %fi338 = call i32 @injectFault4(i64 787, i32 %467, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp162 = icmp eq i32 %fi337, %fi338, !llfi_index !789
  %fi339 = call i1 @injectFault1(i64 788, i1 %check_cmp162, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and163 = and i1 %fi339, %fi328, !llfi_index !790
  %fi284 = call i1 @injectFault1(i64 789, i1 %check_and163, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi284, i1* %AI, !llfi_index !791
  %468 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi320, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %fi325, i32 %fi337), !llfi_index !792
  br label %469, !llfi_index !793

; <label>:469                                     ; preds = %453
  %470 = load i32* %i6, align 4, !llfi_index !794
  %fi285 = call i32 @injectFault4(i64 793, i32 %470, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %471 = load i32* %i6, align 4, !llfi_index !795
  %fi286 = call i32 @injectFault4(i64 794, i32 %471, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %472 = add nsw i32 %fi285, 1, !llfi_index !796
  %fi287 = call i32 @injectFault4(i64 795, i32 %472, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %473 = add nsw i32 %fi286, 1, !llfi_index !797
  %fi288 = call i32 @injectFault4(i64 796, i32 %473, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp164 = icmp eq i32 %fi287, %fi288, !llfi_index !798
  %fi289 = call i1 @injectFault1(i64 797, i1 %check_cmp164, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone165 = load i1* %AI, !llfi_index !799
  %fi290 = call i1 @injectFault1(i64 798, i1 %loadone165, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and166 = and i1 %fi289, %fi290, !llfi_index !800
  %fi291 = call i1 @injectFault1(i64 799, i1 %check_and166, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi291, i1* %AI, !llfi_index !801
  store i32 %fi287, i32* %i6, align 4, !llfi_index !802
  br label %446, !llfi_index !803

; <label>:474                                     ; preds = %446
  %475 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !804
  %fi340 = call %struct._IO_FILE* @injectFault0(i64 803, %struct._IO_FILE* %475, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %476 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !805
  %fi341 = call %struct._IO_FILE* @injectFault0(i64 804, %struct._IO_FILE* %476, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp167 = icmp eq %struct._IO_FILE* %fi340, %fi341, !llfi_index !806
  %fi342 = call i1 @injectFault1(i64 805, i1 %check_cmp167, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %loadone168 = load i1* %AI, !llfi_index !807
  %fi343 = call i1 @injectFault1(i64 806, i1 %loadone168, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and169 = and i1 %fi342, %fi343, !llfi_index !808
  %fi344 = call i1 @injectFault1(i64 807, i1 %check_and169, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %477 = call i32 @fclose(%struct._IO_FILE* %fi340), !llfi_index !809
  %478 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !810
  %fi345 = call %struct.Node* @injectFault6(i64 809, %struct.Node* %478, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %479 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !811
  %fi346 = call %struct.Node* @injectFault6(i64 810, %struct.Node* %479, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %480 = bitcast %struct.Node* %fi345 to i8*, !llfi_index !812
  %fi347 = call i8* @injectFault3(i64 811, i8* %480, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %481 = bitcast %struct.Node* %fi346 to i8*, !llfi_index !813
  %fi348 = call i8* @injectFault3(i64 812, i8* %481, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp170 = icmp eq i8* %fi347, %fi348, !llfi_index !814
  %fi349 = call i1 @injectFault1(i64 813, i1 %check_cmp170, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and171 = and i1 %fi349, %fi344, !llfi_index !815
  %fi350 = call i1 @injectFault1(i64 814, i1 %check_and171, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  call void @free(i8* %fi347) #6, !llfi_index !816
  %482 = load i32** %h_graph_edges, align 8, !llfi_index !817
  %fi351 = call i32* @injectFault7(i64 816, i32* %482, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %483 = load i32** %h_graph_edges, align 8, !llfi_index !818
  %fi352 = call i32* @injectFault7(i64 817, i32* %483, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %484 = bitcast i32* %fi351 to i8*, !llfi_index !819
  %fi353 = call i8* @injectFault3(i64 818, i8* %484, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %485 = bitcast i32* %fi352 to i8*, !llfi_index !820
  %fi354 = call i8* @injectFault3(i64 819, i8* %485, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp172 = icmp eq i8* %fi353, %fi354, !llfi_index !821
  %fi355 = call i1 @injectFault1(i64 820, i1 %check_cmp172, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and173 = and i1 %fi355, %fi350, !llfi_index !822
  %fi356 = call i1 @injectFault1(i64 821, i1 %check_and173, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  call void @free(i8* %fi353) #6, !llfi_index !823
  %486 = load i8** %h_graph_mask, align 8, !llfi_index !824
  %fi357 = call i8* @injectFault3(i64 823, i8* %486, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %487 = load i8** %h_graph_mask, align 8, !llfi_index !825
  %fi358 = call i8* @injectFault3(i64 824, i8* %487, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp174 = icmp eq i8* %fi357, %fi358, !llfi_index !826
  %fi359 = call i1 @injectFault1(i64 825, i1 %check_cmp174, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and175 = and i1 %fi359, %fi356, !llfi_index !827
  %fi360 = call i1 @injectFault1(i64 826, i1 %check_and175, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  call void @free(i8* %fi357) #6, !llfi_index !828
  %488 = load i8** %h_updating_graph_mask, align 8, !llfi_index !829
  %fi361 = call i8* @injectFault3(i64 828, i8* %488, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %489 = load i8** %h_updating_graph_mask, align 8, !llfi_index !830
  %fi362 = call i8* @injectFault3(i64 829, i8* %489, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp176 = icmp eq i8* %fi361, %fi362, !llfi_index !831
  %fi363 = call i1 @injectFault1(i64 830, i1 %check_cmp176, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and177 = and i1 %fi363, %fi360, !llfi_index !832
  %fi364 = call i1 @injectFault1(i64 831, i1 %check_and177, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  call void @free(i8* %fi361) #6, !llfi_index !833
  %490 = load i8** %h_graph_visited, align 8, !llfi_index !834
  %fi365 = call i8* @injectFault3(i64 833, i8* %490, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %491 = load i8** %h_graph_visited, align 8, !llfi_index !835
  %fi366 = call i8* @injectFault3(i64 834, i8* %491, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp178 = icmp eq i8* %fi365, %fi366, !llfi_index !836
  %fi367 = call i1 @injectFault1(i64 835, i1 %check_cmp178, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and179 = and i1 %fi367, %fi364, !llfi_index !837
  %fi368 = call i1 @injectFault1(i64 836, i1 %check_and179, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  call void @free(i8* %fi365) #6, !llfi_index !838
  %492 = load i32** %h_cost, align 8, !llfi_index !839
  %fi369 = call i32* @injectFault7(i64 838, i32* %492, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %493 = load i32** %h_cost, align 8, !llfi_index !840
  %fi370 = call i32* @injectFault7(i64 839, i32* %493, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %494 = bitcast i32* %fi369 to i8*, !llfi_index !841
  %fi371 = call i8* @injectFault3(i64 840, i8* %494, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %495 = bitcast i32* %fi370 to i8*, !llfi_index !842
  %fi372 = call i8* @injectFault3(i64 841, i8* %495, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_cmp180 = icmp eq i8* %fi371, %fi372, !llfi_index !843
  %fi373 = call i1 @injectFault1(i64 842, i1 %check_cmp180, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !8
  %check_and181 = and i1 %fi373, %fi368, !llfi_index !844
  %fi374 = call i1 @injectFault1(i64 843, i1 %check_and181, i32 23, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @and_namestr, i32 0, i32 0)), !llfi_injectfault !8
  store i1 %fi374, i1* %AI, !llfi_index !845
  br i1 %fi374, label %496, label %checkBb, !llfi_index !846

checkBb:                                          ; preds = %474
  call void @check_flag(), !llfi_index !847
  br label %496, !llfi_index !848

; <label>:496                                     ; preds = %checkBb, %474
  call void @free(i8* %fi371) #6, !llfi_index !849
  br label %497, !llfi_index !850

; <label>:497                                     ; preds = %496, %26
  ret void, !llfi_index !851
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #4 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str8, i32 0, i32 0)), !llfi_index !852
  call void @postInjections()
  call void @exit(i32 99) #5, !llfi_index !853
  unreachable, !llfi_index !854
                                                  ; No predecessors!
  ret void, !llfi_index !855
}

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

define i8** @injectFault2(i64, i8**, i32, i32, i32, i32, i8*) {
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

define i32 @injectFault4(i64, i32, i32, i32, i32, i32, i8*) {
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

define i64 @injectFault5(i64, i64, i32, i32, i32, i32, i8*) {
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

define %struct.Node* @injectFault6(i64, %struct.Node*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.Node*
  store %struct.Node* %1, %struct.Node** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.Node** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.Node** %tmploc
  ret %struct.Node* %updateval
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

define i8 @injectFault8(i64, i8, i32, i32, i32, i32, i8*) {
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

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{metadata !"after"}
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
