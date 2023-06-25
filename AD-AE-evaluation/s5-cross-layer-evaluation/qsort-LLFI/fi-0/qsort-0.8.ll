; ModuleID = 'qsort-0.8.ll'
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
  br label %32, !llfi_index !19

; <label>:28                                      ; preds = %26
  %29 = load i32* %result, align 4, !llfi_index !20
  %30 = icmp eq i32 %29, 0, !llfi_index !21
  %31 = select i1 %30, i32 0, i32 -1, !llfi_index !22
  br label %32, !llfi_index !23

; <label>:32                                      ; preds = %28, %27
  %33 = phi i32 [ 1, %27 ], [ %31, %28 ], !llfi_index !24
  ret i32 %33, !llfi_index !25
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
  %5 = icmp slt i32 %4, 2, !llfi_index !38
  br i1 %5, label %6, label %9, !llfi_index !39

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !40
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0)), !llfi_index !41
  call void @exit(i32 -1) #5, !llfi_index !42
  unreachable, !llfi_index !43

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8, !llfi_index !44
  %11 = getelementptr inbounds i8** %10, i64 1, !llfi_index !45
  %12 = load i8** %11, align 8, !llfi_index !46
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !47
  store %struct._IO_FILE* %13, %struct._IO_FILE** %fp, align 8, !llfi_index !48
  br label %14, !llfi_index !49

; <label>:14                                      ; preds = %44, %9
  %15 = load %struct._IO_FILE** %fp, align 8, !llfi_index !50
  %16 = load %struct._IO_FILE** %fp, align 8, !llfi_index !50
  %check_cmp = icmp eq %struct._IO_FILE* %15, %16
  br i1 %check_cmp, label %17, label %checkBb

checkBb:                                          ; preds = %14
  call void @check_flag()
  br label %17

; <label>:17                                      ; preds = %checkBb, %14
  %18 = load i32* %count, align 4, !llfi_index !51
  %19 = load i32* %count, align 4, !llfi_index !51
  %20 = sext i32 %18 to i64, !llfi_index !52
  %21 = sext i32 %19 to i64, !llfi_index !52
  %22 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %20, !llfi_index !53
  %23 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %21, !llfi_index !53
  %24 = getelementptr inbounds %struct.myStringStruct* %22, i32 0, i32 0, !llfi_index !54
  %25 = getelementptr inbounds %struct.myStringStruct* %23, i32 0, i32 0, !llfi_index !54
  %check_cmp1 = icmp eq [128 x i8]* %24, %25
  br i1 %check_cmp1, label %26, label %checkBb2

checkBb2:                                         ; preds = %17
  call void @check_flag()
  br label %26

; <label>:26                                      ; preds = %checkBb2, %17
  %27 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %24), !llfi_index !55
  %28 = icmp eq i32 %27, 1, !llfi_index !56
  %29 = icmp eq i32 %27, 1, !llfi_index !56
  %check_cmp3 = icmp eq i1 %28, %29
  br i1 %check_cmp3, label %30, label %checkBb4

checkBb4:                                         ; preds = %26
  call void @check_flag()
  br label %30

; <label>:30                                      ; preds = %checkBb4, %26
  br i1 %28, label %31, label %37, !llfi_index !57

; <label>:31                                      ; preds = %30
  %32 = load i32* %count, align 4, !llfi_index !58
  %33 = load i32* %count, align 4, !llfi_index !58
  %34 = icmp slt i32 %32, 60000, !llfi_index !59
  %35 = icmp slt i32 %33, 60000, !llfi_index !59
  %check_cmp5 = icmp eq i1 %34, %35
  br i1 %check_cmp5, label %36, label %checkBb6

checkBb6:                                         ; preds = %31
  call void @check_flag()
  br label %36

; <label>:36                                      ; preds = %checkBb6, %31
  br label %37, !llfi_index !60

; <label>:37                                      ; preds = %36, %30
  %38 = phi i1 [ false, %30 ], [ %34, %36 ], !llfi_index !61
  br i1 %38, label %39, label %45, !llfi_index !62

; <label>:39                                      ; preds = %37
  %40 = load i32* %count, align 4, !llfi_index !63
  %41 = load i32* %count, align 4, !llfi_index !63
  %42 = add nsw i32 %40, 1, !llfi_index !64
  %43 = add nsw i32 %41, 1, !llfi_index !64
  %check_cmp7 = icmp eq i32 %42, %43
  br i1 %check_cmp7, label %44, label %checkBb8

checkBb8:                                         ; preds = %39
  call void @check_flag()
  br label %44

; <label>:44                                      ; preds = %checkBb8, %39
  store i32 %42, i32* %count, align 4, !llfi_index !65
  br label %14, !llfi_index !66

; <label>:45                                      ; preds = %37
  br label %46, !llfi_index !67

; <label>:46                                      ; preds = %45
  %47 = load i32* %count, align 4, !llfi_index !68
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i32 %47), !llfi_index !69
  %49 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0, !llfi_index !70
  %50 = bitcast %struct.myStringStruct* %49 to i8*, !llfi_index !71
  %51 = load i32* %count, align 4, !llfi_index !72
  %52 = sext i32 %51 to i64, !llfi_index !73
  call void @qsort(i8* %50, i64 %52, i64 128, i32 (i8*, i8*)* @compare), !llfi_index !74
  store i32 0, i32* %i, align 4, !llfi_index !75
  br label %53, !llfi_index !76

; <label>:53                                      ; preds = %79, %46
  %54 = load i32* %i, align 4, !llfi_index !77
  %55 = load i32* %i, align 4, !llfi_index !77
  %56 = load i32* %count, align 4, !llfi_index !78
  %57 = load i32* %count, align 4, !llfi_index !78
  %58 = icmp slt i32 %54, %56, !llfi_index !79
  %59 = icmp slt i32 %55, %57, !llfi_index !79
  %check_cmp9 = icmp eq i1 %58, %59
  br i1 %check_cmp9, label %60, label %checkBb10

checkBb10:                                        ; preds = %53
  call void @check_flag()
  br label %60

; <label>:60                                      ; preds = %checkBb10, %53
  br i1 %58, label %61, label %80, !llfi_index !80

; <label>:61                                      ; preds = %60
  %62 = load i32* %i, align 4, !llfi_index !81
  %63 = load i32* %i, align 4, !llfi_index !81
  %64 = sext i32 %62 to i64, !llfi_index !82
  %65 = sext i32 %63 to i64, !llfi_index !82
  %66 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %64, !llfi_index !83
  %67 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %65, !llfi_index !83
  %68 = getelementptr inbounds %struct.myStringStruct* %66, i32 0, i32 0, !llfi_index !84
  %69 = getelementptr inbounds %struct.myStringStruct* %67, i32 0, i32 0, !llfi_index !84
  %70 = getelementptr inbounds [128 x i8]* %68, i32 0, i32 0, !llfi_index !85
  %71 = getelementptr inbounds [128 x i8]* %69, i32 0, i32 0, !llfi_index !85
  %check_cmp11 = icmp eq i8* %70, %71
  br i1 %check_cmp11, label %72, label %checkBb12

checkBb12:                                        ; preds = %61
  call void @check_flag()
  br label %72

; <label>:72                                      ; preds = %checkBb12, %61
  %73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %70), !llfi_index !86
  br label %74, !llfi_index !87

; <label>:74                                      ; preds = %72
  %75 = load i32* %i, align 4, !llfi_index !88
  %76 = load i32* %i, align 4, !llfi_index !88
  %77 = add nsw i32 %75, 1, !llfi_index !89
  %78 = add nsw i32 %76, 1, !llfi_index !89
  %check_cmp13 = icmp eq i32 %77, %78
  br i1 %check_cmp13, label %79, label %checkBb14

checkBb14:                                        ; preds = %74
  call void @check_flag()
  br label %79

; <label>:79                                      ; preds = %checkBb14, %74
  store i32 %77, i32* %i, align 4, !llfi_index !90
  br label %53, !llfi_index !91

; <label>:80                                      ; preds = %60
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
