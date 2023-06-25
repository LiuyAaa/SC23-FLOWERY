; ModuleID = 'qsort-0.6.ll'
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
  %23 = icmp slt i32 %22, 0, !llfi_index !17
  %24 = icmp slt i32 %22, 0, !llfi_index !17
  %check_cmp3 = icmp eq i1 %23, %24
  br i1 %check_cmp3, label %25, label %checkBb4

checkBb4:                                         ; preds = %20
  call void @check_flag()
  br label %25

; <label>:25                                      ; preds = %checkBb4, %20
  br i1 %23, label %26, label %27, !llfi_index !18

; <label>:26                                      ; preds = %25
  br label %31, !llfi_index !19

; <label>:27                                      ; preds = %25
  %28 = load i32* %result, align 4, !llfi_index !20
  %29 = icmp eq i32 %28, 0, !llfi_index !21
  %30 = select i1 %29, i32 0, i32 -1, !llfi_index !22
  br label %31, !llfi_index !23

; <label>:31                                      ; preds = %27, %26
  %32 = phi i32 [ 1, %26 ], [ %30, %27 ], !llfi_index !24
  ret i32 %32, !llfi_index !25
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

; <label>:14                                      ; preds = %42, %9
  %15 = load %struct._IO_FILE** %fp, align 8, !llfi_index !50
  %16 = load i32* %count, align 4, !llfi_index !51
  %17 = load i32* %count, align 4, !llfi_index !51
  %18 = sext i32 %16 to i64, !llfi_index !52
  %19 = sext i32 %17 to i64, !llfi_index !52
  %20 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %18, !llfi_index !53
  %21 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %19, !llfi_index !53
  %22 = getelementptr inbounds %struct.myStringStruct* %20, i32 0, i32 0, !llfi_index !54
  %23 = getelementptr inbounds %struct.myStringStruct* %21, i32 0, i32 0, !llfi_index !54
  %check_cmp = icmp eq [128 x i8]* %22, %23
  br i1 %check_cmp, label %24, label %checkBb

checkBb:                                          ; preds = %14
  call void @check_flag()
  br label %24

; <label>:24                                      ; preds = %checkBb, %14
  %25 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), [128 x i8]* %22), !llfi_index !55
  %26 = icmp eq i32 %25, 1, !llfi_index !56
  %27 = icmp eq i32 %25, 1, !llfi_index !56
  %check_cmp1 = icmp eq i1 %26, %27
  br i1 %check_cmp1, label %28, label %checkBb2

checkBb2:                                         ; preds = %24
  call void @check_flag()
  br label %28

; <label>:28                                      ; preds = %checkBb2, %24
  br i1 %26, label %29, label %35, !llfi_index !57

; <label>:29                                      ; preds = %28
  %30 = load i32* %count, align 4, !llfi_index !58
  %31 = load i32* %count, align 4, !llfi_index !58
  %32 = icmp slt i32 %30, 60000, !llfi_index !59
  %33 = icmp slt i32 %31, 60000, !llfi_index !59
  %check_cmp3 = icmp eq i1 %32, %33
  br i1 %check_cmp3, label %34, label %checkBb4

checkBb4:                                         ; preds = %29
  call void @check_flag()
  br label %34

; <label>:34                                      ; preds = %checkBb4, %29
  br label %35, !llfi_index !60

; <label>:35                                      ; preds = %34, %28
  %36 = phi i1 [ false, %28 ], [ %32, %34 ], !llfi_index !61
  br i1 %36, label %37, label %43, !llfi_index !62

; <label>:37                                      ; preds = %35
  %38 = load i32* %count, align 4, !llfi_index !63
  %39 = load i32* %count, align 4, !llfi_index !63
  %40 = add nsw i32 %38, 1, !llfi_index !64
  %41 = add nsw i32 %39, 1, !llfi_index !64
  %check_cmp5 = icmp eq i32 %40, %41
  br i1 %check_cmp5, label %42, label %checkBb6

checkBb6:                                         ; preds = %37
  call void @check_flag()
  br label %42

; <label>:42                                      ; preds = %checkBb6, %37
  store i32 %40, i32* %count, align 4, !llfi_index !65
  br label %14, !llfi_index !66

; <label>:43                                      ; preds = %35
  br label %44, !llfi_index !67

; <label>:44                                      ; preds = %43
  %45 = load i32* %count, align 4, !llfi_index !68
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i32 %45), !llfi_index !69
  %47 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i32 0, !llfi_index !70
  %48 = bitcast %struct.myStringStruct* %47 to i8*, !llfi_index !71
  %49 = load i32* %count, align 4, !llfi_index !72
  %50 = sext i32 %49 to i64, !llfi_index !73
  call void @qsort(i8* %48, i64 %50, i64 128, i32 (i8*, i8*)* @compare), !llfi_index !74
  store i32 0, i32* %i, align 4, !llfi_index !75
  br label %51, !llfi_index !76

; <label>:51                                      ; preds = %76, %44
  %52 = load i32* %i, align 4, !llfi_index !77
  %53 = load i32* %i, align 4, !llfi_index !77
  %54 = load i32* %count, align 4, !llfi_index !78
  %55 = icmp slt i32 %52, %54, !llfi_index !79
  %56 = icmp slt i32 %53, %54, !llfi_index !79
  %check_cmp7 = icmp eq i1 %55, %56
  br i1 %check_cmp7, label %57, label %checkBb8

checkBb8:                                         ; preds = %51
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb8, %51
  br i1 %55, label %58, label %77, !llfi_index !80

; <label>:58                                      ; preds = %57
  %59 = load i32* %i, align 4, !llfi_index !81
  %60 = load i32* %i, align 4, !llfi_index !81
  %61 = sext i32 %59 to i64, !llfi_index !82
  %62 = sext i32 %60 to i64, !llfi_index !82
  %63 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %61, !llfi_index !83
  %64 = getelementptr inbounds [60000 x %struct.myStringStruct]* %array, i32 0, i64 %62, !llfi_index !83
  %65 = getelementptr inbounds %struct.myStringStruct* %63, i32 0, i32 0, !llfi_index !84
  %66 = getelementptr inbounds %struct.myStringStruct* %64, i32 0, i32 0, !llfi_index !84
  %67 = getelementptr inbounds [128 x i8]* %65, i32 0, i32 0, !llfi_index !85
  %68 = getelementptr inbounds [128 x i8]* %66, i32 0, i32 0, !llfi_index !85
  %check_cmp9 = icmp eq i8* %67, %68
  br i1 %check_cmp9, label %69, label %checkBb10

checkBb10:                                        ; preds = %58
  call void @check_flag()
  br label %69

; <label>:69                                      ; preds = %checkBb10, %58
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %67), !llfi_index !86
  br label %71, !llfi_index !87

; <label>:71                                      ; preds = %69
  %72 = load i32* %i, align 4, !llfi_index !88
  %73 = load i32* %i, align 4, !llfi_index !88
  %74 = add nsw i32 %72, 1, !llfi_index !89
  %75 = add nsw i32 %73, 1, !llfi_index !89
  %check_cmp11 = icmp eq i32 %74, %75
  br i1 %check_cmp11, label %76, label %checkBb12

checkBb12:                                        ; preds = %71
  call void @check_flag()
  br label %76

; <label>:76                                      ; preds = %checkBb12, %71
  store i32 %74, i32* %i, align 4, !llfi_index !90
  br label %51, !llfi_index !91

; <label>:77                                      ; preds = %57
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
