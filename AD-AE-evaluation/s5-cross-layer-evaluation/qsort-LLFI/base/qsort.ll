; ModuleID = 'qsort_small.c'
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

; Function Attrs: nounwind uwtable
define i32 @compare(i8* %elem1, i8* %elem2) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %result = alloca i32, align 4
  store i8* %elem1, i8** %1, align 8
  store i8* %elem2, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.myStringStruct*
  %5 = getelementptr inbounds %struct.myStringStruct* %4, i32 0, i32 0
  %6 = getelementptr inbounds [128 x i8]* %5, i32 0, i32 0
  %7 = load i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.myStringStruct*
  %9 = getelementptr inbounds %struct.myStringStruct* %8, i32 0, i32 0
  %10 = getelementptr inbounds [128 x i8]* %9, i32 0, i32 0
  %11 = call i32 @strcmp(i8* %6, i8* %10) #4
  store i32 %11, i32* %result, align 4
  %12 = load i32* %result, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  br label %19

; <label>:15                                      ; preds = %0
  %16 = load i32* %result, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -1
  br label %19

; <label>:19                                      ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %array = alloca [60000 x %struct.myStringStruct], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %count, align 4
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8
  %11 = getelementptr inbounds i8** %10, i64 1
  %12 = load i8** %11, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %fp, align 8
  br label %14

; <label>:14                                      ; preds = %27, %9
  %15 = load %struct._IO_FILE** %fp, align 8
  %16 = load i32* %count, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %17
  %19 = getelementptr inbounds %struct.myStringStruct* %18, i32 0, i32 0
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14
  %23 = load i32* %count, align 4
  %24 = icmp slt i32 %23, 60000
  br label %25

; <label>:25                                      ; preds = %22, %14
  %26 = phi i1 [ false, %14 ], [ %24, %22 ]
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %25
  %28 = load i32* %count, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %count, align 4
  br label %14

; <label>:30                                      ; preds = %25
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load i32* %count, align 4
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i32 %32)
  %34 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0
  %35 = bitcast %struct.myStringStruct* %34 to i8*
  %36 = load i32* %count, align 4
  %37 = sext i32 %36 to i64
  call void @qsort(i8* %35, i64 %37, i64 128, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %i, align 4
  br label %38

; <label>:38                                      ; preds = %49, %31
  %39 = load i32* %i, align 4
  %40 = load i32* %count, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

; <label>:42                                      ; preds = %38
  %43 = load i32* %i, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %44
  %46 = getelementptr inbounds %struct.myStringStruct* %45, i32 0, i32 0
  %47 = getelementptr inbounds [128 x i8]* %46, i32 0, i32 0
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %47)
  br label %49

; <label>:49                                      ; preds = %42
  %50 = load i32* %i, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %i, align 4
  br label %38

; <label>:52                                      ; preds = %38
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
