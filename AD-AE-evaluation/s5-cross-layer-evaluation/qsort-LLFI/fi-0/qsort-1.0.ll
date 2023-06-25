; ModuleID = 'qsort-1.0.ll'
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
@.str5 = private unnamed_addr constant [69 x i8] c"**********************SDC DETECTED!check-flag**********************\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @compare(i8* %elem1, i8* %elem2) #0 {
  %1 = alloca i8*, align 8, !llfi_index !1
  %2 = alloca i8*, align 8, !llfi_index !2
  %result = alloca i32, align 4, !llfi_index !3
  store i8* %elem1, i8** %1, align 8, !llfi_index !4
  store i8* %elem2, i8** %2, align 8, !llfi_index !5
  %3 = load i8** %1, align 8, !llfi_index !6
  %4 = load i8** %1, align 8, !llfi_index !6
  %5 = bitcast i8* %3 to %struct.myStringStruct*, !llfi_index !7
  %6 = bitcast i8* %4 to %struct.myStringStruct*, !llfi_index !7
  %7 = getelementptr inbounds %struct.myStringStruct* %5, i32 0, i32 0, !llfi_index !8
  %8 = getelementptr inbounds %struct.myStringStruct* %6, i32 0, i32 0, !llfi_index !8
  %9 = getelementptr inbounds [128 x i8]* %7, i32 0, i32 0, !llfi_index !9
  %10 = getelementptr inbounds [128 x i8]* %8, i32 0, i32 0, !llfi_index !9
  %check_cmp = icmp eq i8* %9, %10
  br i1 %check_cmp, label %11, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %11

; <label>:11                                      ; preds = %checkBb, %0
  %12 = load i8** %2, align 8, !llfi_index !10
  %13 = load i8** %2, align 8, !llfi_index !10
  %14 = bitcast i8* %12 to %struct.myStringStruct*, !llfi_index !11
  %15 = bitcast i8* %13 to %struct.myStringStruct*, !llfi_index !11
  %16 = getelementptr inbounds %struct.myStringStruct* %14, i32 0, i32 0, !llfi_index !12
  %17 = getelementptr inbounds %struct.myStringStruct* %15, i32 0, i32 0, !llfi_index !12
  %18 = getelementptr inbounds [128 x i8]* %16, i32 0, i32 0, !llfi_index !13
  %19 = getelementptr inbounds [128 x i8]* %17, i32 0, i32 0, !llfi_index !13
  %check_cmp1 = icmp eq i8* %18, %19
  br i1 %check_cmp1, label %20, label %checkBb2

checkBb2:                                         ; preds = %11
  call void @check_flag()
  br label %20

; <label>:20                                      ; preds = %checkBb2, %11
  %21 = call i32 @strcmp(i8* %9, i8* %18) #4, !llfi_index !14
  store i32 %21, i32* %result, align 4, !llfi_index !15
  %22 = load i32* %result, align 4, !llfi_index !16
  %23 = load i32* %result, align 4, !llfi_index !16
  %24 = icmp slt i32 %22, 0, !llfi_index !17
  %25 = icmp slt i32 %23, 0, !llfi_index !17
  %check_cmp3 = icmp eq i1 %24, %25
  br i1 %check_cmp3, label %26, label %checkBb4

checkBb4:                                         ; preds = %20
  call void @check_flag()
  br label %26

; <label>:26                                      ; preds = %checkBb4, %20
  br i1 %24, label %27, label %28, !llfi_index !18

; <label>:27                                      ; preds = %26
  br label %35, !llfi_index !19

; <label>:28                                      ; preds = %26
  %29 = load i32* %result, align 4, !llfi_index !20
  %30 = load i32* %result, align 4, !llfi_index !20
  %31 = icmp eq i32 %29, 0, !llfi_index !21
  %32 = icmp eq i32 %30, 0, !llfi_index !21
  %check_cmp5 = icmp eq i1 %31, %32
  br i1 %check_cmp5, label %33, label %checkBb6

checkBb6:                                         ; preds = %28
  call void @check_flag()
  br label %33

; <label>:33                                      ; preds = %checkBb6, %28
  %34 = select i1 %31, i32 0, i32 -1, !llfi_index !22
  br label %35, !llfi_index !23

; <label>:35                                      ; preds = %33, %27
  %36 = phi i32 [ 1, %27 ], [ %34, %33 ], !llfi_index !24
  ret i32 %36, !llfi_index !25
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !26
  %2 = alloca i32, align 4, !llfi_index !27
  %3 = alloca i8**, align 8, !llfi_index !28
  %array = alloca [60000 x %struct.myStringStruct], align 16, !llfi_index !29
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !30
  %i = alloca i32, align 4, !llfi_index !31
  %count = alloca i32, align 4, !llfi_index !32
  store i32 0, i32* %1, !llfi_index !33
  store i32 %argc, i32* %2, align 4, !llfi_index !34
  store i8** %argv, i8*** %3, align 8, !llfi_index !35
  store i32 0, i32* %count, align 4, !llfi_index !36
  %4 = load i32* %2, align 4, !llfi_index !37
  %5 = load i32* %2, align 4, !llfi_index !37
  %6 = icmp slt i32 %4, 2, !llfi_index !38
  %7 = icmp slt i32 %5, 2, !llfi_index !38
  %check_cmp = icmp eq i1 %6, %7
  br i1 %check_cmp, label %8, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb, %0
  br i1 %6, label %9, label %14, !llfi_index !39

; <label>:9                                       ; preds = %8
  %10 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !40
  %11 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !40
  %check_cmp1 = icmp eq %struct._IO_FILE* %10, %11
  br i1 %check_cmp1, label %12, label %checkBb2

checkBb2:                                         ; preds = %9
  call void @check_flag()
  br label %12

; <label>:12                                      ; preds = %checkBb2, %9
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0)), !llfi_index !41
  call void @exit(i32 -1) #5, !llfi_index !42
  unreachable, !llfi_index !43

; <label>:14                                      ; preds = %8
  %15 = load i8*** %3, align 8, !llfi_index !44
  %16 = load i8*** %3, align 8, !llfi_index !44
  %17 = getelementptr inbounds i8** %15, i64 1, !llfi_index !45
  %18 = getelementptr inbounds i8** %16, i64 1, !llfi_index !45
  %19 = load i8** %17, align 8, !llfi_index !46
  %20 = load i8** %18, align 8, !llfi_index !46
  %check_cmp3 = icmp eq i8* %19, %20
  br i1 %check_cmp3, label %21, label %checkBb4

checkBb4:                                         ; preds = %14
  call void @check_flag()
  br label %21

; <label>:21                                      ; preds = %checkBb4, %14
  %22 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !47
  store %struct._IO_FILE* %22, %struct._IO_FILE** %fp, align 8, !llfi_index !48
  br label %23, !llfi_index !49

; <label>:23                                      ; preds = %53, %21
  %24 = load %struct._IO_FILE** %fp, align 8, !llfi_index !50
  %25 = load %struct._IO_FILE** %fp, align 8, !llfi_index !50
  %check_cmp5 = icmp eq %struct._IO_FILE* %24, %25
  br i1 %check_cmp5, label %26, label %checkBb6

checkBb6:                                         ; preds = %23
  call void @check_flag()
  br label %26

; <label>:26                                      ; preds = %checkBb6, %23
  %27 = load i32* %count, align 4, !llfi_index !51
  %28 = load i32* %count, align 4, !llfi_index !51
  %29 = sext i32 %27 to i64, !llfi_index !52
  %30 = sext i32 %28 to i64, !llfi_index !52
  %31 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %29, !llfi_index !53
  %32 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %30, !llfi_index !53
  %33 = getelementptr inbounds %struct.myStringStruct* %31, i32 0, i32 0, !llfi_index !54
  %34 = getelementptr inbounds %struct.myStringStruct* %32, i32 0, i32 0, !llfi_index !54
  %check_cmp7 = icmp eq [128 x i8]* %33, %34
  br i1 %check_cmp7, label %35, label %checkBb8

checkBb8:                                         ; preds = %26
  call void @check_flag()
  br label %35

; <label>:35                                      ; preds = %checkBb8, %26
  %36 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %33), !llfi_index !55
  %37 = icmp eq i32 %36, 1, !llfi_index !56
  %38 = icmp eq i32 %36, 1, !llfi_index !56
  %check_cmp9 = icmp eq i1 %37, %38
  br i1 %check_cmp9, label %39, label %checkBb10

checkBb10:                                        ; preds = %35
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb10, %35
  br i1 %37, label %40, label %46, !llfi_index !57

; <label>:40                                      ; preds = %39
  %41 = load i32* %count, align 4, !llfi_index !58
  %42 = load i32* %count, align 4, !llfi_index !58
  %43 = icmp slt i32 %41, 60000, !llfi_index !59
  %44 = icmp slt i32 %42, 60000, !llfi_index !59
  %check_cmp11 = icmp eq i1 %43, %44
  br i1 %check_cmp11, label %45, label %checkBb12

checkBb12:                                        ; preds = %40
  call void @check_flag()
  br label %45

; <label>:45                                      ; preds = %checkBb12, %40
  br label %46, !llfi_index !60

; <label>:46                                      ; preds = %45, %39
  %47 = phi i1 [ false, %39 ], [ %43, %45 ], !llfi_index !61
  br i1 %47, label %48, label %54, !llfi_index !62

; <label>:48                                      ; preds = %46
  %49 = load i32* %count, align 4, !llfi_index !63
  %50 = load i32* %count, align 4, !llfi_index !63
  %51 = add nsw i32 %49, 1, !llfi_index !64
  %52 = add nsw i32 %50, 1, !llfi_index !64
  %check_cmp13 = icmp eq i32 %51, %52
  br i1 %check_cmp13, label %53, label %checkBb14

checkBb14:                                        ; preds = %48
  call void @check_flag()
  br label %53

; <label>:53                                      ; preds = %checkBb14, %48
  store i32 %51, i32* %count, align 4, !llfi_index !65
  br label %23, !llfi_index !66

; <label>:54                                      ; preds = %46
  br label %55, !llfi_index !67

; <label>:55                                      ; preds = %54
  %56 = load i32* %count, align 4, !llfi_index !68
  %57 = load i32* %count, align 4, !llfi_index !68
  %check_cmp15 = icmp eq i32 %56, %57
  br i1 %check_cmp15, label %58, label %checkBb16

checkBb16:                                        ; preds = %55
  call void @check_flag()
  br label %58

; <label>:58                                      ; preds = %checkBb16, %55
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i32 %56), !llfi_index !69
  %60 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0, !llfi_index !70
  %61 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0, !llfi_index !70
  %62 = bitcast %struct.myStringStruct* %60 to i8*, !llfi_index !71
  %63 = bitcast %struct.myStringStruct* %61 to i8*, !llfi_index !71
  %check_cmp17 = icmp eq i8* %62, %63
  br i1 %check_cmp17, label %64, label %checkBb18

checkBb18:                                        ; preds = %58
  call void @check_flag()
  br label %64

; <label>:64                                      ; preds = %checkBb18, %58
  %65 = load i32* %count, align 4, !llfi_index !72
  %66 = load i32* %count, align 4, !llfi_index !72
  %67 = sext i32 %65 to i64, !llfi_index !73
  %68 = sext i32 %66 to i64, !llfi_index !73
  %check_cmp19 = icmp eq i64 %67, %68
  br i1 %check_cmp19, label %69, label %checkBb20

checkBb20:                                        ; preds = %64
  call void @check_flag()
  br label %69

; <label>:69                                      ; preds = %checkBb20, %64
  call void @qsort(i8* %62, i64 %67, i64 128, i32 (i8*, i8*)* @compare), !llfi_index !74
  store i32 0, i32* %i, align 4, !llfi_index !75
  br label %70, !llfi_index !76

; <label>:70                                      ; preds = %96, %69
  %71 = load i32* %i, align 4, !llfi_index !77
  %72 = load i32* %i, align 4, !llfi_index !77
  %73 = load i32* %count, align 4, !llfi_index !78
  %74 = load i32* %count, align 4, !llfi_index !78
  %75 = icmp slt i32 %71, %73, !llfi_index !79
  %76 = icmp slt i32 %72, %74, !llfi_index !79
  %check_cmp21 = icmp eq i1 %75, %76
  br i1 %check_cmp21, label %77, label %checkBb22

checkBb22:                                        ; preds = %70
  call void @check_flag()
  br label %77

; <label>:77                                      ; preds = %checkBb22, %70
  br i1 %75, label %78, label %97, !llfi_index !80

; <label>:78                                      ; preds = %77
  %79 = load i32* %i, align 4, !llfi_index !81
  %80 = load i32* %i, align 4, !llfi_index !81
  %81 = sext i32 %79 to i64, !llfi_index !82
  %82 = sext i32 %80 to i64, !llfi_index !82
  %83 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %81, !llfi_index !83
  %84 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %82, !llfi_index !83
  %85 = getelementptr inbounds %struct.myStringStruct* %83, i32 0, i32 0, !llfi_index !84
  %86 = getelementptr inbounds %struct.myStringStruct* %84, i32 0, i32 0, !llfi_index !84
  %87 = getelementptr inbounds [128 x i8]* %85, i32 0, i32 0, !llfi_index !85
  %88 = getelementptr inbounds [128 x i8]* %86, i32 0, i32 0, !llfi_index !85
  %check_cmp23 = icmp eq i8* %87, %88
  br i1 %check_cmp23, label %89, label %checkBb24

checkBb24:                                        ; preds = %78
  call void @check_flag()
  br label %89

; <label>:89                                      ; preds = %checkBb24, %78
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %87), !llfi_index !86
  br label %91, !llfi_index !87

; <label>:91                                      ; preds = %89
  %92 = load i32* %i, align 4, !llfi_index !88
  %93 = load i32* %i, align 4, !llfi_index !88
  %94 = add nsw i32 %92, 1, !llfi_index !89
  %95 = add nsw i32 %93, 1, !llfi_index !89
  %check_cmp25 = icmp eq i32 %94, %95
  br i1 %check_cmp25, label %96, label %checkBb26

checkBb26:                                        ; preds = %91
  call void @check_flag()
  br label %96

; <label>:96                                      ; preds = %checkBb26, %91
  store i32 %94, i32* %i, align 4, !llfi_index !90
  br label %70, !llfi_index !91

; <label>:97                                      ; preds = %77
  ret i32 0, !llfi_index !92
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str5, i32 0, i32 0))
  call void @exit(i32 99) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }

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
