; ModuleID = 'patricia_test.ll'
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

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %phead = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %pfind = alloca %struct.ptree*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca [128 x i8], align 16
  %addr_str = alloca [16 x i8], align 16
  %addr = alloca %struct.in_addr, align 4
  %mask = alloca i64, align 8
  %time = alloca float, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i64 4294967295, i64* %mask, align 8
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load i8*** %3, align 8
  %8 = getelementptr inbounds i8** %7, i64 0
  %9 = load i8** %8, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %9)
  call void @exit(i32 -1) #7
  unreachable

; <label>:11                                      ; preds = %0
  %12 = load i8*** %3, align 8
  %13 = getelementptr inbounds i8** %12, i64 1
  %14 = load i8** %13, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %fp, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %11
  %18 = load i8*** %3, align 8
  %19 = getelementptr inbounds i8** %18, i64 1
  %20 = load i8** %19, align 8
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0), i8* %20)
  call void @exit(i32 0) #7
  unreachable

; <label>:22                                      ; preds = %11
  %23 = call noalias i8* @malloc(i64 40) #4
  %24 = bitcast i8* %23 to %struct.ptree*
  store %struct.ptree* %24, %struct.ptree** %phead, align 8
  %25 = load %struct.ptree** %phead, align 8
  %26 = icmp ne %struct.ptree* %25, null
  br i1 %26, label %28, label %27

; <label>:27                                      ; preds = %22
  call void @perror(i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:28                                      ; preds = %22
  %29 = load %struct.ptree** %phead, align 8
  %30 = bitcast %struct.ptree* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 40, i32 8, i1 false)
  %31 = call noalias i8* @malloc(i64 16) #4
  %32 = bitcast i8* %31 to %struct.ptree_mask*
  %33 = load %struct.ptree** %phead, align 8
  %34 = getelementptr inbounds %struct.ptree* %33, i32 0, i32 1
  store %struct.ptree_mask* %32, %struct.ptree_mask** %34, align 8
  %35 = load %struct.ptree** %phead, align 8
  %36 = getelementptr inbounds %struct.ptree* %35, i32 0, i32 1
  %37 = load %struct.ptree_mask** %36, align 8
  %38 = icmp ne %struct.ptree_mask* %37, null
  br i1 %38, label %40, label %39

; <label>:39                                      ; preds = %28
  call void @perror(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:40                                      ; preds = %28
  %41 = load %struct.ptree** %phead, align 8
  %42 = getelementptr inbounds %struct.ptree* %41, i32 0, i32 1
  %43 = load %struct.ptree_mask** %42, align 8
  %44 = bitcast %struct.ptree_mask* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false)
  %45 = load %struct.ptree** %phead, align 8
  %46 = getelementptr inbounds %struct.ptree* %45, i32 0, i32 1
  %47 = load %struct.ptree_mask** %46, align 8
  store %struct.ptree_mask* %47, %struct.ptree_mask** %pm, align 8
  %48 = call noalias i8* @malloc(i64 16) #4
  %49 = bitcast i8* %48 to %struct.MyNode*
  %50 = bitcast %struct.MyNode* %49 to i8*
  %51 = load %struct.ptree_mask** %pm, align 8
  %52 = getelementptr inbounds %struct.ptree_mask* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ptree_mask** %pm, align 8
  %54 = getelementptr inbounds %struct.ptree_mask* %53, i32 0, i32 1
  %55 = load i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

; <label>:57                                      ; preds = %40
  call void @perror(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:58                                      ; preds = %40
  %59 = load %struct.ptree_mask** %pm, align 8
  %60 = getelementptr inbounds %struct.ptree_mask* %59, i32 0, i32 1
  %61 = load i8** %60, align 8
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 1, i32 1, i1 false)
  %62 = load %struct.ptree** %phead, align 8
  %63 = getelementptr inbounds %struct.ptree* %62, i32 0, i32 2
  store i8 1, i8* %63, align 1
  %64 = load %struct.ptree** %phead, align 8
  %65 = load %struct.ptree** %phead, align 8
  %66 = getelementptr inbounds %struct.ptree* %65, i32 0, i32 5
  store %struct.ptree* %64, %struct.ptree** %66, align 8
  %67 = load %struct.ptree** %phead, align 8
  %68 = getelementptr inbounds %struct.ptree* %67, i32 0, i32 4
  store %struct.ptree* %64, %struct.ptree** %68, align 8
  br label %69

; <label>:69                                      ; preds = %159, %58
  %70 = getelementptr inbounds [128 x i8]* %line, i32 0, i32 0
  %71 = load %struct._IO_FILE** %fp, align 8
  %72 = call i8* @fgets(i8* %70, i32 128, %struct._IO_FILE* %71)
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %160

; <label>:74                                      ; preds = %69
  %75 = getelementptr inbounds [128 x i8]* %line, i32 0, i32 0
  %76 = bitcast %struct.in_addr* %addr to i32*
  %77 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %75, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), float* %time, i32* %76) #4
  %78 = call noalias i8* @malloc(i64 40) #4
  %79 = bitcast i8* %78 to %struct.ptree*
  store %struct.ptree* %79, %struct.ptree** %p, align 8
  %80 = load %struct.ptree** %p, align 8
  %81 = icmp ne %struct.ptree* %80, null
  br i1 %81, label %83, label %82

; <label>:82                                      ; preds = %74
  call void @perror(i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:83                                      ; preds = %74
  %84 = load %struct.ptree** %p, align 8
  %85 = bitcast %struct.ptree* %84 to i8*
  call void @llvm.memset.p0i8.i64(i8* %85, i8 0, i64 40, i32 8, i1 false)
  %86 = call noalias i8* @malloc(i64 16) #4
  %87 = bitcast i8* %86 to %struct.ptree_mask*
  %88 = load %struct.ptree** %p, align 8
  %89 = getelementptr inbounds %struct.ptree* %88, i32 0, i32 1
  store %struct.ptree_mask* %87, %struct.ptree_mask** %89, align 8
  %90 = load %struct.ptree** %p, align 8
  %91 = getelementptr inbounds %struct.ptree* %90, i32 0, i32 1
  %92 = load %struct.ptree_mask** %91, align 8
  %93 = icmp ne %struct.ptree_mask* %92, null
  br i1 %93, label %95, label %94

; <label>:94                                      ; preds = %83
  call void @perror(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:95                                      ; preds = %83
  %96 = load %struct.ptree** %p, align 8
  %97 = getelementptr inbounds %struct.ptree* %96, i32 0, i32 1
  %98 = load %struct.ptree_mask** %97, align 8
  %99 = bitcast %struct.ptree_mask* %98 to i8*
  call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 16, i32 8, i1 false)
  %100 = load %struct.ptree** %p, align 8
  %101 = getelementptr inbounds %struct.ptree* %100, i32 0, i32 1
  %102 = load %struct.ptree_mask** %101, align 8
  store %struct.ptree_mask* %102, %struct.ptree_mask** %pm, align 8
  %103 = call noalias i8* @malloc(i64 16) #4
  %104 = bitcast i8* %103 to %struct.MyNode*
  %105 = bitcast %struct.MyNode* %104 to i8*
  %106 = load %struct.ptree_mask** %pm, align 8
  %107 = getelementptr inbounds %struct.ptree_mask* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ptree_mask** %pm, align 8
  %109 = getelementptr inbounds %struct.ptree_mask* %108, i32 0, i32 1
  %110 = load i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

; <label>:112                                     ; preds = %95
  call void @perror(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:113                                     ; preds = %95
  %114 = load %struct.ptree_mask** %pm, align 8
  %115 = getelementptr inbounds %struct.ptree_mask* %114, i32 0, i32 1
  %116 = load i8** %115, align 8
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 1, i32 1, i1 false)
  %117 = getelementptr inbounds %struct.in_addr* %addr, i32 0, i32 0
  %118 = load i32* %117, align 4
  %119 = zext i32 %118 to i64
  %120 = load %struct.ptree** %p, align 8
  %121 = getelementptr inbounds %struct.ptree* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i64* %mask, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @htonl(i32 %123) #8
  %125 = zext i32 %124 to i64
  %126 = load %struct.ptree** %p, align 8
  %127 = getelementptr inbounds %struct.ptree* %126, i32 0, i32 1
  %128 = load %struct.ptree_mask** %127, align 8
  %129 = getelementptr inbounds %struct.ptree_mask* %128, i32 0, i32 0
  store i64 %125, i64* %129, align 8
  %130 = getelementptr inbounds %struct.in_addr* %addr, i32 0, i32 0
  %131 = load i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = load %struct.ptree** %phead, align 8
  %134 = call %struct.ptree* @pat_search(i64 %132, %struct.ptree* %133)
  store %struct.ptree* %134, %struct.ptree** %pfind, align 8
  %135 = load %struct.ptree** %pfind, align 8
  %136 = getelementptr inbounds %struct.ptree* %135, i32 0, i32 0
  %137 = load i64* %136, align 8
  %138 = getelementptr inbounds %struct.in_addr* %addr, i32 0, i32 0
  %139 = load i32* %138, align 4
  %140 = zext i32 %139 to i64
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %149

; <label>:142                                     ; preds = %113
  %143 = load float* %time, align 4
  %144 = fpext float %143 to double
  %145 = getelementptr inbounds %struct.in_addr* %addr, i32 0, i32 0
  %146 = load i32* %145, align 4
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0), double %144, i32 %146)
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0))
  br label %153

; <label>:149                                     ; preds = %113
  %150 = load %struct.ptree** %p, align 8
  %151 = load %struct.ptree** %phead, align 8
  %152 = call %struct.ptree* @pat_insert(%struct.ptree* %150, %struct.ptree* %151)
  store %struct.ptree* %152, %struct.ptree** %p, align 8
  br label %153

; <label>:153                                     ; preds = %149, %142
  %154 = load %struct.ptree** %p, align 8
  %155 = icmp ne %struct.ptree* %154, null
  br i1 %155, label %159, label %156

; <label>:156                                     ; preds = %153
  %157 = load %struct._IO_FILE** @stderr, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

; <label>:159                                     ; preds = %153
  br label %69

; <label>:160                                     ; preds = %69
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  %162 = load i32* %1
  ret i32 %162
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
  %1 = alloca %struct.ptree*, align 8
  %2 = alloca %struct.ptree*, align 8
  %3 = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %buf = alloca %struct.ptree_mask*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %i = alloca i32, align 4
  %copied = alloca i32, align 4
  store %struct.ptree* %n, %struct.ptree** %2, align 8
  store %struct.ptree* %head, %struct.ptree** %3, align 8
  %4 = load %struct.ptree** %3, align 8
  %5 = icmp ne %struct.ptree* %4, null
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = load %struct.ptree** %2, align 8
  %8 = icmp ne %struct.ptree* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %6
  %10 = load %struct.ptree** %2, align 8
  %11 = getelementptr inbounds %struct.ptree* %10, i32 0, i32 1
  %12 = load %struct.ptree_mask** %11, align 8
  %13 = icmp ne %struct.ptree_mask* %12, null
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %9, %6, %0
  store %struct.ptree* null, %struct.ptree** %1
  br label %253

; <label>:15                                      ; preds = %9
  %16 = load %struct.ptree** %2, align 8
  %17 = getelementptr inbounds %struct.ptree* %16, i32 0, i32 1
  %18 = load %struct.ptree_mask** %17, align 8
  %19 = getelementptr inbounds %struct.ptree_mask* %18, i32 0, i32 0
  %20 = load i64* %19, align 8
  %21 = load %struct.ptree** %2, align 8
  %22 = getelementptr inbounds %struct.ptree* %21, i32 0, i32 0
  %23 = load i64* %22, align 8
  %24 = and i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ptree** %3, align 8
  store %struct.ptree* %25, %struct.ptree** %t, align 8
  br label %26

; <label>:26                                      ; preds = %50, %15
  %27 = load %struct.ptree** %t, align 8
  %28 = getelementptr inbounds %struct.ptree* %27, i32 0, i32 3
  %29 = load i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %i, align 4
  %31 = load %struct.ptree** %t, align 8
  %32 = getelementptr inbounds %struct.ptree* %31, i32 0, i32 3
  %33 = load i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.ptree** %2, align 8
  %36 = getelementptr inbounds %struct.ptree* %35, i32 0, i32 0
  %37 = load i64* %36, align 8
  %38 = call i64 @bit(i32 %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

; <label>:40                                      ; preds = %26
  %41 = load %struct.ptree** %t, align 8
  %42 = getelementptr inbounds %struct.ptree* %41, i32 0, i32 5
  %43 = load %struct.ptree** %42, align 8
  br label %48

; <label>:44                                      ; preds = %26
  %45 = load %struct.ptree** %t, align 8
  %46 = getelementptr inbounds %struct.ptree* %45, i32 0, i32 4
  %47 = load %struct.ptree** %46, align 8
  br label %48

; <label>:48                                      ; preds = %44, %40
  %49 = phi %struct.ptree* [ %43, %40 ], [ %47, %44 ]
  store %struct.ptree* %49, %struct.ptree** %t, align 8
  br label %50

; <label>:50                                      ; preds = %48
  %51 = load i32* %i, align 4
  %52 = load %struct.ptree** %t, align 8
  %53 = getelementptr inbounds %struct.ptree* %52, i32 0, i32 3
  %54 = load i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %26, label %57

; <label>:57                                      ; preds = %50
  %58 = load %struct.ptree** %2, align 8
  %59 = getelementptr inbounds %struct.ptree* %58, i32 0, i32 0
  %60 = load i64* %59, align 8
  %61 = load %struct.ptree** %t, align 8
  %62 = getelementptr inbounds %struct.ptree* %61, i32 0, i32 0
  %63 = load i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %201

; <label>:65                                      ; preds = %57
  store i32 0, i32* %i, align 4
  br label %66

; <label>:66                                      ; preds = %109, %65
  %67 = load i32* %i, align 4
  %68 = load %struct.ptree** %t, align 8
  %69 = getelementptr inbounds %struct.ptree* %68, i32 0, i32 2
  %70 = load i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %112

; <label>:73                                      ; preds = %66
  %74 = load %struct.ptree** %2, align 8
  %75 = getelementptr inbounds %struct.ptree* %74, i32 0, i32 1
  %76 = load %struct.ptree_mask** %75, align 8
  %77 = getelementptr inbounds %struct.ptree_mask* %76, i32 0, i32 0
  %78 = load i64* %77, align 8
  %79 = load i32* %i, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.ptree** %t, align 8
  %82 = getelementptr inbounds %struct.ptree* %81, i32 0, i32 1
  %83 = load %struct.ptree_mask** %82, align 8
  %84 = getelementptr inbounds %struct.ptree_mask* %83, i64 %80
  %85 = getelementptr inbounds %struct.ptree_mask* %84, i32 0, i32 0
  %86 = load i64* %85, align 8
  %87 = icmp eq i64 %78, %86
  br i1 %87, label %88, label %108

; <label>:88                                      ; preds = %73
  %89 = load %struct.ptree** %2, align 8
  %90 = getelementptr inbounds %struct.ptree* %89, i32 0, i32 1
  %91 = load %struct.ptree_mask** %90, align 8
  %92 = getelementptr inbounds %struct.ptree_mask* %91, i32 0, i32 1
  %93 = load i8** %92, align 8
  %94 = load i32* %i, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.ptree** %t, align 8
  %97 = getelementptr inbounds %struct.ptree* %96, i32 0, i32 1
  %98 = load %struct.ptree_mask** %97, align 8
  %99 = getelementptr inbounds %struct.ptree_mask* %98, i64 %95
  %100 = getelementptr inbounds %struct.ptree_mask* %99, i32 0, i32 1
  store i8* %93, i8** %100, align 8
  %101 = load %struct.ptree** %2, align 8
  %102 = getelementptr inbounds %struct.ptree* %101, i32 0, i32 1
  %103 = load %struct.ptree_mask** %102, align 8
  %104 = bitcast %struct.ptree_mask* %103 to i8*
  call void @free(i8* %104) #4
  %105 = load %struct.ptree** %2, align 8
  %106 = bitcast %struct.ptree* %105 to i8*
  call void @free(i8* %106) #4
  store %struct.ptree* null, %struct.ptree** %2, align 8
  %107 = load %struct.ptree** %t, align 8
  store %struct.ptree* %107, %struct.ptree** %1
  br label %253

; <label>:108                                     ; preds = %73
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i32* %i, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i, align 4
  br label %66

; <label>:112                                     ; preds = %66
  %113 = load %struct.ptree** %t, align 8
  %114 = getelementptr inbounds %struct.ptree* %113, i32 0, i32 2
  %115 = load i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = mul i64 16, %118
  %120 = call noalias i8* @malloc(i64 %119) #4
  %121 = bitcast i8* %120 to %struct.ptree_mask*
  store %struct.ptree_mask* %121, %struct.ptree_mask** %buf, align 8
  store i32 0, i32* %copied, align 4
  store i32 0, i32* %i, align 4
  %122 = load %struct.ptree_mask** %buf, align 8
  store %struct.ptree_mask* %122, %struct.ptree_mask** %pm, align 8
  br label %123

; <label>:123                                     ; preds = %169, %112
  %124 = load i32* %i, align 4
  %125 = load %struct.ptree** %t, align 8
  %126 = getelementptr inbounds %struct.ptree* %125, i32 0, i32 2
  %127 = load i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %172

; <label>:130                                     ; preds = %123
  %131 = load %struct.ptree** %2, align 8
  %132 = getelementptr inbounds %struct.ptree* %131, i32 0, i32 1
  %133 = load %struct.ptree_mask** %132, align 8
  %134 = getelementptr inbounds %struct.ptree_mask* %133, i32 0, i32 0
  %135 = load i64* %134, align 8
  %136 = load i32* %i, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.ptree** %t, align 8
  %139 = getelementptr inbounds %struct.ptree* %138, i32 0, i32 1
  %140 = load %struct.ptree_mask** %139, align 8
  %141 = getelementptr inbounds %struct.ptree_mask* %140, i64 %137
  %142 = getelementptr inbounds %struct.ptree_mask* %141, i32 0, i32 0
  %143 = load i64* %142, align 8
  %144 = icmp ugt i64 %135, %143
  br i1 %144, label %145, label %157

; <label>:145                                     ; preds = %130
  %146 = load %struct.ptree** %t, align 8
  %147 = getelementptr inbounds %struct.ptree* %146, i32 0, i32 1
  %148 = load %struct.ptree_mask** %147, align 8
  %149 = load i32* %i, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ptree_mask* %148, i64 %150
  %152 = bitcast %struct.ptree_mask* %151 to i8*
  %153 = load %struct.ptree_mask** %pm, align 8
  %154 = bitcast %struct.ptree_mask* %153 to i8*
  call void @bcopy(i8* %152, i8* %154, i64 16) #4
  %155 = load i32* %i, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %i, align 4
  br label %168

; <label>:157                                     ; preds = %130
  %158 = load %struct.ptree** %2, align 8
  %159 = getelementptr inbounds %struct.ptree* %158, i32 0, i32 1
  %160 = load %struct.ptree_mask** %159, align 8
  %161 = bitcast %struct.ptree_mask* %160 to i8*
  %162 = load %struct.ptree_mask** %pm, align 8
  %163 = bitcast %struct.ptree_mask* %162 to i8*
  call void @bcopy(i8* %161, i8* %163, i64 16) #4
  %164 = load %struct.ptree** %2, align 8
  %165 = getelementptr inbounds %struct.ptree* %164, i32 0, i32 1
  %166 = load %struct.ptree_mask** %165, align 8
  %167 = getelementptr inbounds %struct.ptree_mask* %166, i32 0, i32 0
  store i64 4294967295, i64* %167, align 8
  store i32 1, i32* %copied, align 4
  br label %168

; <label>:168                                     ; preds = %157, %145
  br label %169

; <label>:169                                     ; preds = %168
  %170 = load %struct.ptree_mask** %pm, align 8
  %171 = getelementptr inbounds %struct.ptree_mask* %170, i32 1
  store %struct.ptree_mask* %171, %struct.ptree_mask** %pm, align 8
  br label %123

; <label>:172                                     ; preds = %123
  %173 = load i32* %copied, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

; <label>:175                                     ; preds = %172
  %176 = load %struct.ptree** %2, align 8
  %177 = getelementptr inbounds %struct.ptree* %176, i32 0, i32 1
  %178 = load %struct.ptree_mask** %177, align 8
  %179 = bitcast %struct.ptree_mask* %178 to i8*
  %180 = load %struct.ptree_mask** %pm, align 8
  %181 = bitcast %struct.ptree_mask* %180 to i8*
  call void @bcopy(i8* %179, i8* %181, i64 16) #4
  br label %182

; <label>:182                                     ; preds = %175, %172
  %183 = load %struct.ptree** %2, align 8
  %184 = getelementptr inbounds %struct.ptree* %183, i32 0, i32 1
  %185 = load %struct.ptree_mask** %184, align 8
  %186 = bitcast %struct.ptree_mask* %185 to i8*
  call void @free(i8* %186) #4
  %187 = load %struct.ptree** %2, align 8
  %188 = bitcast %struct.ptree* %187 to i8*
  call void @free(i8* %188) #4
  store %struct.ptree* null, %struct.ptree** %2, align 8
  %189 = load %struct.ptree** %t, align 8
  %190 = getelementptr inbounds %struct.ptree* %189, i32 0, i32 2
  %191 = load i8* %190, align 1
  %192 = add i8 %191, 1
  store i8 %192, i8* %190, align 1
  %193 = load %struct.ptree** %t, align 8
  %194 = getelementptr inbounds %struct.ptree* %193, i32 0, i32 1
  %195 = load %struct.ptree_mask** %194, align 8
  %196 = bitcast %struct.ptree_mask* %195 to i8*
  call void @free(i8* %196) #4
  %197 = load %struct.ptree_mask** %buf, align 8
  %198 = load %struct.ptree** %t, align 8
  %199 = getelementptr inbounds %struct.ptree* %198, i32 0, i32 1
  store %struct.ptree_mask* %197, %struct.ptree_mask** %199, align 8
  %200 = load %struct.ptree** %t, align 8
  store %struct.ptree* %200, %struct.ptree** %1
  br label %253

; <label>:201                                     ; preds = %57
  store i32 1, i32* %i, align 4
  br label %202

; <label>:202                                     ; preds = %218, %201
  %203 = load i32* %i, align 4
  %204 = icmp slt i32 %203, 32
  br i1 %204, label %205, label %221

; <label>:205                                     ; preds = %202
  %206 = load i32* %i, align 4
  %207 = load %struct.ptree** %2, align 8
  %208 = getelementptr inbounds %struct.ptree* %207, i32 0, i32 0
  %209 = load i64* %208, align 8
  %210 = call i64 @bit(i32 %206, i64 %209)
  %211 = load i32* %i, align 4
  %212 = load %struct.ptree** %t, align 8
  %213 = getelementptr inbounds %struct.ptree* %212, i32 0, i32 0
  %214 = load i64* %213, align 8
  %215 = call i64 @bit(i32 %211, i64 %214)
  %216 = icmp eq i64 %210, %215
  br i1 %216, label %217, label %221

; <label>:217                                     ; preds = %205
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32* %i, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %i, align 4
  br label %202

; <label>:221                                     ; preds = %205, %202
  %222 = load %struct.ptree** %3, align 8
  %223 = getelementptr inbounds %struct.ptree* %222, i32 0, i32 3
  %224 = load i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load %struct.ptree** %2, align 8
  %227 = getelementptr inbounds %struct.ptree* %226, i32 0, i32 0
  %228 = load i64* %227, align 8
  %229 = call i64 @bit(i32 %225, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

; <label>:231                                     ; preds = %221
  %232 = load %struct.ptree** %3, align 8
  %233 = getelementptr inbounds %struct.ptree* %232, i32 0, i32 5
  %234 = load %struct.ptree** %233, align 8
  %235 = load %struct.ptree** %2, align 8
  %236 = load i32* %i, align 4
  %237 = load %struct.ptree** %3, align 8
  %238 = call %struct.ptree* @insertR(%struct.ptree* %234, %struct.ptree* %235, i32 %236, %struct.ptree* %237)
  %239 = load %struct.ptree** %3, align 8
  %240 = getelementptr inbounds %struct.ptree* %239, i32 0, i32 5
  store %struct.ptree* %238, %struct.ptree** %240, align 8
  br label %251

; <label>:241                                     ; preds = %221
  %242 = load %struct.ptree** %3, align 8
  %243 = getelementptr inbounds %struct.ptree* %242, i32 0, i32 4
  %244 = load %struct.ptree** %243, align 8
  %245 = load %struct.ptree** %2, align 8
  %246 = load i32* %i, align 4
  %247 = load %struct.ptree** %3, align 8
  %248 = call %struct.ptree* @insertR(%struct.ptree* %244, %struct.ptree* %245, i32 %246, %struct.ptree* %247)
  %249 = load %struct.ptree** %3, align 8
  %250 = getelementptr inbounds %struct.ptree* %249, i32 0, i32 4
  store %struct.ptree* %248, %struct.ptree** %250, align 8
  br label %251

; <label>:251                                     ; preds = %241, %231
  %252 = load %struct.ptree** %2, align 8
  store %struct.ptree* %252, %struct.ptree** %1
  br label %253

; <label>:253                                     ; preds = %251, %182, %88, %14
  %254 = load %struct.ptree** %1
  ret %struct.ptree* %254
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @pat_remove(%struct.ptree* %n, %struct.ptree* %head) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ptree*, align 8
  %3 = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %g = alloca %struct.ptree*, align 8
  %pt = alloca %struct.ptree*, align 8
  %pp = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %buf = alloca %struct.ptree_mask*, align 8
  %pm = alloca %struct.ptree_mask*, align 8
  %i = alloca i32, align 4
  store %struct.ptree* %n, %struct.ptree** %2, align 8
  store %struct.ptree* %head, %struct.ptree** %3, align 8
  %4 = load %struct.ptree** %2, align 8
  %5 = icmp ne %struct.ptree* %4, null
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = load %struct.ptree** %2, align 8
  %8 = getelementptr inbounds %struct.ptree* %7, i32 0, i32 1
  %9 = load %struct.ptree_mask** %8, align 8
  %10 = icmp ne %struct.ptree_mask* %9, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %6
  %12 = load %struct.ptree** %t, align 8
  %13 = icmp ne %struct.ptree* %12, null
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %11, %6, %0
  store i32 0, i32* %1
  br label %327

; <label>:15                                      ; preds = %11
  %16 = load %struct.ptree** %3, align 8
  store %struct.ptree* %16, %struct.ptree** %t, align 8
  store %struct.ptree* %16, %struct.ptree** %p, align 8
  store %struct.ptree* %16, %struct.ptree** %g, align 8
  br label %17

; <label>:17                                      ; preds = %43, %15
  %18 = load %struct.ptree** %t, align 8
  %19 = getelementptr inbounds %struct.ptree* %18, i32 0, i32 3
  %20 = load i8* %19, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %i, align 4
  %22 = load %struct.ptree** %p, align 8
  store %struct.ptree* %22, %struct.ptree** %g, align 8
  %23 = load %struct.ptree** %t, align 8
  store %struct.ptree* %23, %struct.ptree** %p, align 8
  %24 = load %struct.ptree** %t, align 8
  %25 = getelementptr inbounds %struct.ptree* %24, i32 0, i32 3
  %26 = load i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load %struct.ptree** %2, align 8
  %29 = getelementptr inbounds %struct.ptree* %28, i32 0, i32 0
  %30 = load i64* %29, align 8
  %31 = call i64 @bit(i32 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %17
  %34 = load %struct.ptree** %t, align 8
  %35 = getelementptr inbounds %struct.ptree* %34, i32 0, i32 5
  %36 = load %struct.ptree** %35, align 8
  br label %41

; <label>:37                                      ; preds = %17
  %38 = load %struct.ptree** %t, align 8
  %39 = getelementptr inbounds %struct.ptree* %38, i32 0, i32 4
  %40 = load %struct.ptree** %39, align 8
  br label %41

; <label>:41                                      ; preds = %37, %33
  %42 = phi %struct.ptree* [ %36, %33 ], [ %40, %37 ]
  store %struct.ptree* %42, %struct.ptree** %t, align 8
  br label %43

; <label>:43                                      ; preds = %41
  %44 = load i32* %i, align 4
  %45 = load %struct.ptree** %t, align 8
  %46 = getelementptr inbounds %struct.ptree* %45, i32 0, i32 3
  %47 = load i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %17, label %50

; <label>:50                                      ; preds = %43
  %51 = load %struct.ptree** %t, align 8
  %52 = getelementptr inbounds %struct.ptree* %51, i32 0, i32 0
  %53 = load i64* %52, align 8
  %54 = load %struct.ptree** %2, align 8
  %55 = getelementptr inbounds %struct.ptree* %54, i32 0, i32 0
  %56 = load i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %50
  store i32 0, i32* %1
  br label %327

; <label>:59                                      ; preds = %50
  %60 = load %struct.ptree** %t, align 8
  %61 = getelementptr inbounds %struct.ptree* %60, i32 0, i32 2
  %62 = load i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %231

; <label>:65                                      ; preds = %59
  %66 = load %struct.ptree** %t, align 8
  %67 = getelementptr inbounds %struct.ptree* %66, i32 0, i32 3
  %68 = load i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %65
  store i32 0, i32* %1
  br label %327

; <label>:72                                      ; preds = %65
  %73 = load %struct.ptree** %t, align 8
  %74 = getelementptr inbounds %struct.ptree* %73, i32 0, i32 1
  %75 = load %struct.ptree_mask** %74, align 8
  %76 = getelementptr inbounds %struct.ptree_mask* %75, i32 0, i32 0
  %77 = load i64* %76, align 8
  %78 = load %struct.ptree** %2, align 8
  %79 = getelementptr inbounds %struct.ptree* %78, i32 0, i32 1
  %80 = load %struct.ptree_mask** %79, align 8
  %81 = getelementptr inbounds %struct.ptree_mask* %80, i32 0, i32 0
  %82 = load i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %72
  store i32 0, i32* %1
  br label %327

; <label>:85                                      ; preds = %72
  %86 = load %struct.ptree** %p, align 8
  store %struct.ptree* %86, %struct.ptree** %pt, align 8
  store %struct.ptree* %86, %struct.ptree** %pp, align 8
  br label %87

; <label>:87                                      ; preds = %112, %85
  %88 = load %struct.ptree** %pt, align 8
  %89 = getelementptr inbounds %struct.ptree* %88, i32 0, i32 3
  %90 = load i8* %89, align 1
  %91 = sext i8 %90 to i32
  store i32 %91, i32* %i, align 4
  %92 = load %struct.ptree** %pt, align 8
  store %struct.ptree* %92, %struct.ptree** %pp, align 8
  %93 = load %struct.ptree** %pt, align 8
  %94 = getelementptr inbounds %struct.ptree* %93, i32 0, i32 3
  %95 = load i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load %struct.ptree** %p, align 8
  %98 = getelementptr inbounds %struct.ptree* %97, i32 0, i32 0
  %99 = load i64* %98, align 8
  %100 = call i64 @bit(i32 %96, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

; <label>:102                                     ; preds = %87
  %103 = load %struct.ptree** %pt, align 8
  %104 = getelementptr inbounds %struct.ptree* %103, i32 0, i32 5
  %105 = load %struct.ptree** %104, align 8
  br label %110

; <label>:106                                     ; preds = %87
  %107 = load %struct.ptree** %pt, align 8
  %108 = getelementptr inbounds %struct.ptree* %107, i32 0, i32 4
  %109 = load %struct.ptree** %108, align 8
  br label %110

; <label>:110                                     ; preds = %106, %102
  %111 = phi %struct.ptree* [ %105, %102 ], [ %109, %106 ]
  store %struct.ptree* %111, %struct.ptree** %pt, align 8
  br label %112

; <label>:112                                     ; preds = %110
  %113 = load i32* %i, align 4
  %114 = load %struct.ptree** %pt, align 8
  %115 = getelementptr inbounds %struct.ptree* %114, i32 0, i32 3
  %116 = load i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %87, label %119

; <label>:119                                     ; preds = %112
  %120 = load %struct.ptree** %pp, align 8
  %121 = getelementptr inbounds %struct.ptree* %120, i32 0, i32 3
  %122 = load i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = load %struct.ptree** %p, align 8
  %125 = getelementptr inbounds %struct.ptree* %124, i32 0, i32 0
  %126 = load i64* %125, align 8
  %127 = call i64 @bit(i32 %123, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

; <label>:129                                     ; preds = %119
  %130 = load %struct.ptree** %t, align 8
  %131 = load %struct.ptree** %pp, align 8
  %132 = getelementptr inbounds %struct.ptree* %131, i32 0, i32 5
  store %struct.ptree* %130, %struct.ptree** %132, align 8
  br label %137

; <label>:133                                     ; preds = %119
  %134 = load %struct.ptree** %t, align 8
  %135 = load %struct.ptree** %pp, align 8
  %136 = getelementptr inbounds %struct.ptree* %135, i32 0, i32 4
  store %struct.ptree* %134, %struct.ptree** %136, align 8
  br label %137

; <label>:137                                     ; preds = %133, %129
  %138 = load %struct.ptree** %g, align 8
  %139 = getelementptr inbounds %struct.ptree* %138, i32 0, i32 3
  %140 = load i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = load %struct.ptree** %2, align 8
  %143 = getelementptr inbounds %struct.ptree* %142, i32 0, i32 0
  %144 = load i64* %143, align 8
  %145 = call i64 @bit(i32 %141, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %169

; <label>:147                                     ; preds = %137
  %148 = load %struct.ptree** %p, align 8
  %149 = getelementptr inbounds %struct.ptree* %148, i32 0, i32 3
  %150 = load i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load %struct.ptree** %2, align 8
  %153 = getelementptr inbounds %struct.ptree* %152, i32 0, i32 0
  %154 = load i64* %153, align 8
  %155 = call i64 @bit(i32 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

; <label>:157                                     ; preds = %147
  %158 = load %struct.ptree** %p, align 8
  %159 = getelementptr inbounds %struct.ptree* %158, i32 0, i32 4
  %160 = load %struct.ptree** %159, align 8
  br label %165

; <label>:161                                     ; preds = %147
  %162 = load %struct.ptree** %p, align 8
  %163 = getelementptr inbounds %struct.ptree* %162, i32 0, i32 5
  %164 = load %struct.ptree** %163, align 8
  br label %165

; <label>:165                                     ; preds = %161, %157
  %166 = phi %struct.ptree* [ %160, %157 ], [ %164, %161 ]
  %167 = load %struct.ptree** %g, align 8
  %168 = getelementptr inbounds %struct.ptree* %167, i32 0, i32 5
  store %struct.ptree* %166, %struct.ptree** %168, align 8
  br label %191

; <label>:169                                     ; preds = %137
  %170 = load %struct.ptree** %p, align 8
  %171 = getelementptr inbounds %struct.ptree* %170, i32 0, i32 3
  %172 = load i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load %struct.ptree** %2, align 8
  %175 = getelementptr inbounds %struct.ptree* %174, i32 0, i32 0
  %176 = load i64* %175, align 8
  %177 = call i64 @bit(i32 %173, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

; <label>:179                                     ; preds = %169
  %180 = load %struct.ptree** %p, align 8
  %181 = getelementptr inbounds %struct.ptree* %180, i32 0, i32 4
  %182 = load %struct.ptree** %181, align 8
  br label %187

; <label>:183                                     ; preds = %169
  %184 = load %struct.ptree** %p, align 8
  %185 = getelementptr inbounds %struct.ptree* %184, i32 0, i32 5
  %186 = load %struct.ptree** %185, align 8
  br label %187

; <label>:187                                     ; preds = %183, %179
  %188 = phi %struct.ptree* [ %182, %179 ], [ %186, %183 ]
  %189 = load %struct.ptree** %g, align 8
  %190 = getelementptr inbounds %struct.ptree* %189, i32 0, i32 4
  store %struct.ptree* %188, %struct.ptree** %190, align 8
  br label %191

; <label>:191                                     ; preds = %187, %165
  %192 = load %struct.ptree** %t, align 8
  %193 = getelementptr inbounds %struct.ptree* %192, i32 0, i32 1
  %194 = load %struct.ptree_mask** %193, align 8
  %195 = getelementptr inbounds %struct.ptree_mask* %194, i32 0, i32 1
  %196 = load i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %204

; <label>:198                                     ; preds = %191
  %199 = load %struct.ptree** %t, align 8
  %200 = getelementptr inbounds %struct.ptree* %199, i32 0, i32 1
  %201 = load %struct.ptree_mask** %200, align 8
  %202 = getelementptr inbounds %struct.ptree_mask* %201, i32 0, i32 1
  %203 = load i8** %202, align 8
  call void @free(i8* %203) #4
  br label %204

; <label>:204                                     ; preds = %198, %191
  %205 = load %struct.ptree** %t, align 8
  %206 = getelementptr inbounds %struct.ptree* %205, i32 0, i32 1
  %207 = load %struct.ptree_mask** %206, align 8
  %208 = bitcast %struct.ptree_mask* %207 to i8*
  call void @free(i8* %208) #4
  %209 = load %struct.ptree** %t, align 8
  %210 = load %struct.ptree** %p, align 8
  %211 = icmp ne %struct.ptree* %209, %210
  br i1 %211, label %212, label %228

; <label>:212                                     ; preds = %204
  %213 = load %struct.ptree** %p, align 8
  %214 = getelementptr inbounds %struct.ptree* %213, i32 0, i32 0
  %215 = load i64* %214, align 8
  %216 = load %struct.ptree** %t, align 8
  %217 = getelementptr inbounds %struct.ptree* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load %struct.ptree** %p, align 8
  %219 = getelementptr inbounds %struct.ptree* %218, i32 0, i32 1
  %220 = load %struct.ptree_mask** %219, align 8
  %221 = load %struct.ptree** %t, align 8
  %222 = getelementptr inbounds %struct.ptree* %221, i32 0, i32 1
  store %struct.ptree_mask* %220, %struct.ptree_mask** %222, align 8
  %223 = load %struct.ptree** %p, align 8
  %224 = getelementptr inbounds %struct.ptree* %223, i32 0, i32 2
  %225 = load i8* %224, align 1
  %226 = load %struct.ptree** %t, align 8
  %227 = getelementptr inbounds %struct.ptree* %226, i32 0, i32 2
  store i8 %225, i8* %227, align 1
  br label %228

; <label>:228                                     ; preds = %212, %204
  %229 = load %struct.ptree** %p, align 8
  %230 = bitcast %struct.ptree* %229 to i8*
  call void @free(i8* %230) #4
  store i32 1, i32* %1
  br label %327

; <label>:231                                     ; preds = %59
  store i32 0, i32* %i, align 4
  br label %232

; <label>:232                                     ; preds = %256, %231
  %233 = load i32* %i, align 4
  %234 = load %struct.ptree** %t, align 8
  %235 = getelementptr inbounds %struct.ptree* %234, i32 0, i32 2
  %236 = load i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp slt i32 %233, %237
  br i1 %238, label %239, label %259

; <label>:239                                     ; preds = %232
  %240 = load %struct.ptree** %2, align 8
  %241 = getelementptr inbounds %struct.ptree* %240, i32 0, i32 1
  %242 = load %struct.ptree_mask** %241, align 8
  %243 = getelementptr inbounds %struct.ptree_mask* %242, i32 0, i32 0
  %244 = load i64* %243, align 8
  %245 = load i32* %i, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.ptree** %t, align 8
  %248 = getelementptr inbounds %struct.ptree* %247, i32 0, i32 1
  %249 = load %struct.ptree_mask** %248, align 8
  %250 = getelementptr inbounds %struct.ptree_mask* %249, i64 %246
  %251 = getelementptr inbounds %struct.ptree_mask* %250, i32 0, i32 0
  %252 = load i64* %251, align 8
  %253 = icmp eq i64 %244, %252
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %239
  br label %259

; <label>:255                                     ; preds = %239
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32* %i, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4
  br label %232

; <label>:259                                     ; preds = %254, %232
  %260 = load i32* %i, align 4
  %261 = load %struct.ptree** %t, align 8
  %262 = getelementptr inbounds %struct.ptree* %261, i32 0, i32 2
  %263 = load i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp sge i32 %260, %264
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %259
  store i32 0, i32* %1
  br label %327

; <label>:267                                     ; preds = %259
  %268 = load %struct.ptree** %t, align 8
  %269 = getelementptr inbounds %struct.ptree* %268, i32 0, i32 2
  %270 = load i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = mul i64 16, %273
  %275 = call noalias i8* @malloc(i64 %274) #4
  %276 = bitcast i8* %275 to %struct.ptree_mask*
  store %struct.ptree_mask* %276, %struct.ptree_mask** %buf, align 8
  store i32 0, i32* %i, align 4
  %277 = load %struct.ptree_mask** %buf, align 8
  store %struct.ptree_mask* %277, %struct.ptree_mask** %pm, align 8
  br label %278

; <label>:278                                     ; preds = %312, %267
  %279 = load i32* %i, align 4
  %280 = load %struct.ptree** %t, align 8
  %281 = getelementptr inbounds %struct.ptree* %280, i32 0, i32 2
  %282 = load i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp slt i32 %279, %283
  br i1 %284, label %285, label %315

; <label>:285                                     ; preds = %278
  %286 = load %struct.ptree** %2, align 8
  %287 = getelementptr inbounds %struct.ptree* %286, i32 0, i32 1
  %288 = load %struct.ptree_mask** %287, align 8
  %289 = getelementptr inbounds %struct.ptree_mask* %288, i32 0, i32 0
  %290 = load i64* %289, align 8
  %291 = load i32* %i, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.ptree** %t, align 8
  %294 = getelementptr inbounds %struct.ptree* %293, i32 0, i32 1
  %295 = load %struct.ptree_mask** %294, align 8
  %296 = getelementptr inbounds %struct.ptree_mask* %295, i64 %292
  %297 = getelementptr inbounds %struct.ptree_mask* %296, i32 0, i32 0
  %298 = load i64* %297, align 8
  %299 = icmp ne i64 %290, %298
  br i1 %299, label %300, label %311

; <label>:300                                     ; preds = %285
  %301 = load %struct.ptree** %t, align 8
  %302 = getelementptr inbounds %struct.ptree* %301, i32 0, i32 1
  %303 = load %struct.ptree_mask** %302, align 8
  %304 = load i32* %i, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.ptree_mask* %303, i64 %305
  %307 = bitcast %struct.ptree_mask* %306 to i8*
  %308 = load %struct.ptree_mask** %pm, align 8
  %309 = getelementptr inbounds %struct.ptree_mask* %308, i32 1
  store %struct.ptree_mask* %309, %struct.ptree_mask** %pm, align 8
  %310 = bitcast %struct.ptree_mask* %308 to i8*
  call void @bcopy(i8* %307, i8* %310, i64 16) #4
  br label %311

; <label>:311                                     ; preds = %300, %285
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32* %i, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %i, align 4
  br label %278

; <label>:315                                     ; preds = %278
  %316 = load %struct.ptree** %t, align 8
  %317 = getelementptr inbounds %struct.ptree* %316, i32 0, i32 2
  %318 = load i8* %317, align 1
  %319 = add i8 %318, -1
  store i8 %319, i8* %317, align 1
  %320 = load %struct.ptree** %t, align 8
  %321 = getelementptr inbounds %struct.ptree* %320, i32 0, i32 1
  %322 = load %struct.ptree_mask** %321, align 8
  %323 = bitcast %struct.ptree_mask* %322 to i8*
  call void @free(i8* %323) #4
  %324 = load %struct.ptree_mask** %buf, align 8
  %325 = load %struct.ptree** %t, align 8
  %326 = getelementptr inbounds %struct.ptree* %325, i32 0, i32 1
  store %struct.ptree_mask* %324, %struct.ptree_mask** %326, align 8
  store i32 1, i32* %1
  br label %327

; <label>:327                                     ; preds = %315, %266, %228, %84, %71, %58, %14
  %328 = load i32* %1
  ret i32 %328
}

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_search(i64 %key, %struct.ptree* %head) #0 {
  %1 = alloca %struct.ptree*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.ptree*, align 8
  %p = alloca %struct.ptree*, align 8
  %t = alloca %struct.ptree*, align 8
  %i = alloca i32, align 4
  store i64 %key, i64* %2, align 8
  store %struct.ptree* %head, %struct.ptree** %3, align 8
  store %struct.ptree* null, %struct.ptree** %p, align 8
  %4 = load %struct.ptree** %3, align 8
  store %struct.ptree* %4, %struct.ptree** %t, align 8
  %5 = load %struct.ptree** %t, align 8
  %6 = icmp ne %struct.ptree* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  store %struct.ptree* null, %struct.ptree** %1
  br label %70

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %45, %8
  %10 = load %struct.ptree** %t, align 8
  %11 = getelementptr inbounds %struct.ptree* %10, i32 0, i32 0
  %12 = load i64* %11, align 8
  %13 = load i64* %2, align 8
  %14 = load %struct.ptree** %t, align 8
  %15 = getelementptr inbounds %struct.ptree* %14, i32 0, i32 1
  %16 = load %struct.ptree_mask** %15, align 8
  %17 = getelementptr inbounds %struct.ptree_mask* %16, i32 0, i32 0
  %18 = load i64* %17, align 8
  %19 = and i64 %13, %18
  %20 = icmp eq i64 %12, %19
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %9
  %22 = load %struct.ptree** %t, align 8
  store %struct.ptree* %22, %struct.ptree** %p, align 8
  br label %23

; <label>:23                                      ; preds = %21, %9
  %24 = load %struct.ptree** %t, align 8
  %25 = getelementptr inbounds %struct.ptree* %24, i32 0, i32 3
  %26 = load i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %i, align 4
  %28 = load %struct.ptree** %t, align 8
  %29 = getelementptr inbounds %struct.ptree* %28, i32 0, i32 3
  %30 = load i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i64* %2, align 8
  %33 = call i64 @bit(i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

; <label>:35                                      ; preds = %23
  %36 = load %struct.ptree** %t, align 8
  %37 = getelementptr inbounds %struct.ptree* %36, i32 0, i32 5
  %38 = load %struct.ptree** %37, align 8
  br label %43

; <label>:39                                      ; preds = %23
  %40 = load %struct.ptree** %t, align 8
  %41 = getelementptr inbounds %struct.ptree* %40, i32 0, i32 4
  %42 = load %struct.ptree** %41, align 8
  br label %43

; <label>:43                                      ; preds = %39, %35
  %44 = phi %struct.ptree* [ %38, %35 ], [ %42, %39 ]
  store %struct.ptree* %44, %struct.ptree** %t, align 8
  br label %45

; <label>:45                                      ; preds = %43
  %46 = load i32* %i, align 4
  %47 = load %struct.ptree** %t, align 8
  %48 = getelementptr inbounds %struct.ptree* %47, i32 0, i32 3
  %49 = load i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %9, label %52

; <label>:52                                      ; preds = %45
  %53 = load %struct.ptree** %t, align 8
  %54 = getelementptr inbounds %struct.ptree* %53, i32 0, i32 0
  %55 = load i64* %54, align 8
  %56 = load i64* %2, align 8
  %57 = load %struct.ptree** %t, align 8
  %58 = getelementptr inbounds %struct.ptree* %57, i32 0, i32 1
  %59 = load %struct.ptree_mask** %58, align 8
  %60 = getelementptr inbounds %struct.ptree_mask* %59, i32 0, i32 0
  %61 = load i64* %60, align 8
  %62 = and i64 %56, %61
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %52
  %65 = load %struct.ptree** %t, align 8
  br label %68

; <label>:66                                      ; preds = %52
  %67 = load %struct.ptree** %p, align 8
  br label %68

; <label>:68                                      ; preds = %66, %64
  %69 = phi %struct.ptree* [ %65, %64 ], [ %67, %66 ]
  store %struct.ptree* %69, %struct.ptree** %1
  br label %70

; <label>:70                                      ; preds = %68, %7
  %71 = load %struct.ptree** %1
  ret %struct.ptree* %71
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bit(i32 %i, i64 %key) #6 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 %i, i32* %1, align 4
  store i64 %key, i64* %2, align 8
  %3 = load i64* %2, align 8
  %4 = load i32* %1, align 4
  %5 = sub nsw i32 31, %4
  %6 = shl i32 1, %5
  %7 = sext i32 %6 to i64
  %8 = and i64 %3, %7
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal %struct.ptree* @insertR(%struct.ptree* %h, %struct.ptree* %n, i32 %d, %struct.ptree* %p) #0 {
  %1 = alloca %struct.ptree*, align 8
  %2 = alloca %struct.ptree*, align 8
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptree*, align 8
  store %struct.ptree* %h, %struct.ptree** %2, align 8
  store %struct.ptree* %n, %struct.ptree** %3, align 8
  store i32 %d, i32* %4, align 4
  store %struct.ptree* %p, %struct.ptree** %5, align 8
  %6 = load %struct.ptree** %2, align 8
  %7 = getelementptr inbounds %struct.ptree* %6, i32 0, i32 3
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i32* %4, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.ptree** %2, align 8
  %14 = getelementptr inbounds %struct.ptree* %13, i32 0, i32 3
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load %struct.ptree** %5, align 8
  %18 = getelementptr inbounds %struct.ptree* %17, i32 0, i32 3
  %19 = load i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %16, %20
  br i1 %21, label %22, label %56

; <label>:22                                      ; preds = %12, %0
  %23 = load i32* %4, align 4
  %24 = trunc i32 %23 to i8
  %25 = load %struct.ptree** %3, align 8
  %26 = getelementptr inbounds %struct.ptree* %25, i32 0, i32 3
  store i8 %24, i8* %26, align 1
  %27 = load i32* %4, align 4
  %28 = load %struct.ptree** %3, align 8
  %29 = getelementptr inbounds %struct.ptree* %28, i32 0, i32 0
  %30 = load i64* %29, align 8
  %31 = call i64 @bit(i32 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %22
  %34 = load %struct.ptree** %2, align 8
  br label %37

; <label>:35                                      ; preds = %22
  %36 = load %struct.ptree** %3, align 8
  br label %37

; <label>:37                                      ; preds = %35, %33
  %38 = phi %struct.ptree* [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.ptree** %3, align 8
  %40 = getelementptr inbounds %struct.ptree* %39, i32 0, i32 4
  store %struct.ptree* %38, %struct.ptree** %40, align 8
  %41 = load i32* %4, align 4
  %42 = load %struct.ptree** %3, align 8
  %43 = getelementptr inbounds %struct.ptree* %42, i32 0, i32 0
  %44 = load i64* %43, align 8
  %45 = call i64 @bit(i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %37
  %48 = load %struct.ptree** %3, align 8
  br label %51

; <label>:49                                      ; preds = %37
  %50 = load %struct.ptree** %2, align 8
  br label %51

; <label>:51                                      ; preds = %49, %47
  %52 = phi %struct.ptree* [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.ptree** %3, align 8
  %54 = getelementptr inbounds %struct.ptree* %53, i32 0, i32 5
  store %struct.ptree* %52, %struct.ptree** %54, align 8
  %55 = load %struct.ptree** %3, align 8
  store %struct.ptree* %55, %struct.ptree** %1
  br label %88

; <label>:56                                      ; preds = %12
  %57 = load %struct.ptree** %2, align 8
  %58 = getelementptr inbounds %struct.ptree* %57, i32 0, i32 3
  %59 = load i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load %struct.ptree** %3, align 8
  %62 = getelementptr inbounds %struct.ptree* %61, i32 0, i32 0
  %63 = load i64* %62, align 8
  %64 = call i64 @bit(i32 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

; <label>:66                                      ; preds = %56
  %67 = load %struct.ptree** %2, align 8
  %68 = getelementptr inbounds %struct.ptree* %67, i32 0, i32 5
  %69 = load %struct.ptree** %68, align 8
  %70 = load %struct.ptree** %3, align 8
  %71 = load i32* %4, align 4
  %72 = load %struct.ptree** %2, align 8
  %73 = call %struct.ptree* @insertR(%struct.ptree* %69, %struct.ptree* %70, i32 %71, %struct.ptree* %72)
  %74 = load %struct.ptree** %2, align 8
  %75 = getelementptr inbounds %struct.ptree* %74, i32 0, i32 5
  store %struct.ptree* %73, %struct.ptree** %75, align 8
  br label %86

; <label>:76                                      ; preds = %56
  %77 = load %struct.ptree** %2, align 8
  %78 = getelementptr inbounds %struct.ptree* %77, i32 0, i32 4
  %79 = load %struct.ptree** %78, align 8
  %80 = load %struct.ptree** %3, align 8
  %81 = load i32* %4, align 4
  %82 = load %struct.ptree** %2, align 8
  %83 = call %struct.ptree* @insertR(%struct.ptree* %79, %struct.ptree* %80, i32 %81, %struct.ptree* %82)
  %84 = load %struct.ptree** %2, align 8
  %85 = getelementptr inbounds %struct.ptree* %84, i32 0, i32 4
  store %struct.ptree* %83, %struct.ptree** %85, align 8
  br label %86

; <label>:86                                      ; preds = %76, %66
  %87 = load %struct.ptree** %2, align 8
  store %struct.ptree* %87, %struct.ptree** %1
  br label %88

; <label>:88                                      ; preds = %86, %51
  %89 = load %struct.ptree** %1
  ret %struct.ptree* %89
}

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
