; ModuleID = 'basicmath-1.0.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@.str11 = private unnamed_addr constant [69 x i8] c"**********************SDC DETECTED!check-flag**********************\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %a1 = alloca double, align 8, !llfi_index !2
  %b1 = alloca double, align 8, !llfi_index !3
  %c1 = alloca double, align 8, !llfi_index !4
  %d1 = alloca double, align 8, !llfi_index !5
  %a2 = alloca double, align 8, !llfi_index !6
  %b2 = alloca double, align 8, !llfi_index !7
  %c2 = alloca double, align 8, !llfi_index !8
  %d2 = alloca double, align 8, !llfi_index !9
  %a3 = alloca double, align 8, !llfi_index !10
  %b3 = alloca double, align 8, !llfi_index !11
  %c3 = alloca double, align 8, !llfi_index !12
  %d3 = alloca double, align 8, !llfi_index !13
  %a4 = alloca double, align 8, !llfi_index !14
  %b4 = alloca double, align 8, !llfi_index !15
  %c4 = alloca double, align 8, !llfi_index !16
  %d4 = alloca double, align 8, !llfi_index !17
  %x = alloca [3 x double], align 16, !llfi_index !18
  %X = alloca double, align 8, !llfi_index !19
  %solutions = alloca i32, align 4, !llfi_index !20
  %i = alloca i32, align 4, !llfi_index !21
  %l = alloca i64, align 8, !llfi_index !22
  %q = alloca %struct.int_sqrt, align 4, !llfi_index !23
  %n = alloca i64, align 8, !llfi_index !24
  store i32 0, i32* %1, !llfi_index !25
  store double 1.000000e+00, double* %a1, align 8, !llfi_index !26
  store double -1.050000e+01, double* %b1, align 8, !llfi_index !27
  store double 3.200000e+01, double* %c1, align 8, !llfi_index !28
  store double -3.000000e+01, double* %d1, align 8, !llfi_index !29
  store double 1.000000e+00, double* %a2, align 8, !llfi_index !30
  store double -4.500000e+00, double* %b2, align 8, !llfi_index !31
  store double 1.700000e+01, double* %c2, align 8, !llfi_index !32
  store double -3.000000e+01, double* %d2, align 8, !llfi_index !33
  store double 1.000000e+00, double* %a3, align 8, !llfi_index !34
  store double -3.500000e+00, double* %b3, align 8, !llfi_index !35
  store double 2.200000e+01, double* %c3, align 8, !llfi_index !36
  store double -3.100000e+01, double* %d3, align 8, !llfi_index !37
  store double 1.000000e+00, double* %a4, align 8, !llfi_index !38
  store double -1.370000e+01, double* %b4, align 8, !llfi_index !39
  store double 1.000000e+00, double* %c4, align 8, !llfi_index !40
  store double -3.500000e+01, double* %d4, align 8, !llfi_index !41
  store i64 1072497001, i64* %l, align 8, !llfi_index !42
  store i64 0, i64* %n, align 8, !llfi_index !43
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0)), !llfi_index !44
  %3 = load double* %a1, align 8, !llfi_index !45
  %4 = load double* %a1, align 8, !llfi_index !45
  %check_cmp = fcmp ueq double %3, %4
  br i1 %check_cmp, label %5, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %5

; <label>:5                                       ; preds = %checkBb, %0
  %6 = load double* %b1, align 8, !llfi_index !46
  %7 = load double* %b1, align 8, !llfi_index !46
  %check_cmp1 = fcmp ueq double %6, %7
  br i1 %check_cmp1, label %8, label %checkBb2

checkBb2:                                         ; preds = %5
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb2, %5
  %9 = load double* %c1, align 8, !llfi_index !47
  %10 = load double* %c1, align 8, !llfi_index !47
  %check_cmp3 = fcmp ueq double %9, %10
  br i1 %check_cmp3, label %11, label %checkBb4

checkBb4:                                         ; preds = %8
  call void @check_flag()
  br label %11

; <label>:11                                      ; preds = %checkBb4, %8
  %12 = load double* %d1, align 8, !llfi_index !48
  %13 = load double* %d1, align 8, !llfi_index !48
  %check_cmp5 = fcmp ueq double %12, %13
  br i1 %check_cmp5, label %14, label %checkBb6

checkBb6:                                         ; preds = %11
  call void @check_flag()
  br label %14

; <label>:14                                      ; preds = %checkBb6, %11
  %15 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !49
  %16 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !49
  %check_cmp7 = icmp eq double* %15, %16
  br i1 %check_cmp7, label %17, label %checkBb8

checkBb8:                                         ; preds = %14
  call void @check_flag()
  br label %17

; <label>:17                                      ; preds = %checkBb8, %14
  call void @SolveCubic(double %3, double %6, double %9, double %12, i32* %solutions, double* %15), !llfi_index !50
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !51
  store i32 0, i32* %i, align 4, !llfi_index !52
  br label %19, !llfi_index !53

; <label>:19                                      ; preds = %43, %17
  %20 = load i32* %i, align 4, !llfi_index !54
  %21 = load i32* %i, align 4, !llfi_index !54
  %22 = load i32* %solutions, align 4, !llfi_index !55
  %23 = load i32* %solutions, align 4, !llfi_index !55
  %24 = icmp slt i32 %20, %22, !llfi_index !56
  %25 = icmp slt i32 %21, %23, !llfi_index !56
  %check_cmp9 = icmp eq i1 %24, %25
  br i1 %check_cmp9, label %26, label %checkBb10

checkBb10:                                        ; preds = %19
  call void @check_flag()
  br label %26

; <label>:26                                      ; preds = %checkBb10, %19
  br i1 %24, label %27, label %44, !llfi_index !57

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !llfi_index !58
  %29 = load i32* %i, align 4, !llfi_index !58
  %30 = sext i32 %28 to i64, !llfi_index !59
  %31 = sext i32 %29 to i64, !llfi_index !59
  %32 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %30, !llfi_index !60
  %33 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %31, !llfi_index !60
  %34 = load double* %32, align 8, !llfi_index !61
  %35 = load double* %33, align 8, !llfi_index !61
  %check_cmp11 = fcmp ueq double %34, %35
  br i1 %check_cmp11, label %36, label %checkBb12

checkBb12:                                        ; preds = %27
  call void @check_flag()
  br label %36

; <label>:36                                      ; preds = %checkBb12, %27
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %34), !llfi_index !62
  br label %38, !llfi_index !63

; <label>:38                                      ; preds = %36
  %39 = load i32* %i, align 4, !llfi_index !64
  %40 = load i32* %i, align 4, !llfi_index !64
  %41 = add nsw i32 %39, 1, !llfi_index !65
  %42 = add nsw i32 %40, 1, !llfi_index !65
  %check_cmp13 = icmp eq i32 %41, %42
  br i1 %check_cmp13, label %43, label %checkBb14

checkBb14:                                        ; preds = %38
  call void @check_flag()
  br label %43

; <label>:43                                      ; preds = %checkBb14, %38
  store i32 %41, i32* %i, align 4, !llfi_index !66
  br label %19, !llfi_index !67

; <label>:44                                      ; preds = %26
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !68
  %46 = load double* %a2, align 8, !llfi_index !69
  %47 = load double* %a2, align 8, !llfi_index !69
  %check_cmp15 = fcmp ueq double %46, %47
  br i1 %check_cmp15, label %48, label %checkBb16

checkBb16:                                        ; preds = %44
  call void @check_flag()
  br label %48

; <label>:48                                      ; preds = %checkBb16, %44
  %49 = load double* %b2, align 8, !llfi_index !70
  %50 = load double* %b2, align 8, !llfi_index !70
  %check_cmp17 = fcmp ueq double %49, %50
  br i1 %check_cmp17, label %51, label %checkBb18

checkBb18:                                        ; preds = %48
  call void @check_flag()
  br label %51

; <label>:51                                      ; preds = %checkBb18, %48
  %52 = load double* %c2, align 8, !llfi_index !71
  %53 = load double* %c2, align 8, !llfi_index !71
  %check_cmp19 = fcmp ueq double %52, %53
  br i1 %check_cmp19, label %54, label %checkBb20

checkBb20:                                        ; preds = %51
  call void @check_flag()
  br label %54

; <label>:54                                      ; preds = %checkBb20, %51
  %55 = load double* %d2, align 8, !llfi_index !72
  %56 = load double* %d2, align 8, !llfi_index !72
  %check_cmp21 = fcmp ueq double %55, %56
  br i1 %check_cmp21, label %57, label %checkBb22

checkBb22:                                        ; preds = %54
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb22, %54
  %58 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !73
  %59 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !73
  %check_cmp23 = icmp eq double* %58, %59
  br i1 %check_cmp23, label %60, label %checkBb24

checkBb24:                                        ; preds = %57
  call void @check_flag()
  br label %60

; <label>:60                                      ; preds = %checkBb24, %57
  call void @SolveCubic(double %46, double %49, double %52, double %55, i32* %solutions, double* %58), !llfi_index !74
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !75
  store i32 0, i32* %i, align 4, !llfi_index !76
  br label %62, !llfi_index !77

; <label>:62                                      ; preds = %86, %60
  %63 = load i32* %i, align 4, !llfi_index !78
  %64 = load i32* %i, align 4, !llfi_index !78
  %65 = load i32* %solutions, align 4, !llfi_index !79
  %66 = load i32* %solutions, align 4, !llfi_index !79
  %67 = icmp slt i32 %63, %65, !llfi_index !80
  %68 = icmp slt i32 %64, %66, !llfi_index !80
  %check_cmp25 = icmp eq i1 %67, %68
  br i1 %check_cmp25, label %69, label %checkBb26

checkBb26:                                        ; preds = %62
  call void @check_flag()
  br label %69

; <label>:69                                      ; preds = %checkBb26, %62
  br i1 %67, label %70, label %87, !llfi_index !81

; <label>:70                                      ; preds = %69
  %71 = load i32* %i, align 4, !llfi_index !82
  %72 = load i32* %i, align 4, !llfi_index !82
  %73 = sext i32 %71 to i64, !llfi_index !83
  %74 = sext i32 %72 to i64, !llfi_index !83
  %75 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %73, !llfi_index !84
  %76 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %74, !llfi_index !84
  %77 = load double* %75, align 8, !llfi_index !85
  %78 = load double* %76, align 8, !llfi_index !85
  %check_cmp27 = fcmp ueq double %77, %78
  br i1 %check_cmp27, label %79, label %checkBb28

checkBb28:                                        ; preds = %70
  call void @check_flag()
  br label %79

; <label>:79                                      ; preds = %checkBb28, %70
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %77), !llfi_index !86
  br label %81, !llfi_index !87

; <label>:81                                      ; preds = %79
  %82 = load i32* %i, align 4, !llfi_index !88
  %83 = load i32* %i, align 4, !llfi_index !88
  %84 = add nsw i32 %82, 1, !llfi_index !89
  %85 = add nsw i32 %83, 1, !llfi_index !89
  %check_cmp29 = icmp eq i32 %84, %85
  br i1 %check_cmp29, label %86, label %checkBb30

checkBb30:                                        ; preds = %81
  call void @check_flag()
  br label %86

; <label>:86                                      ; preds = %checkBb30, %81
  store i32 %84, i32* %i, align 4, !llfi_index !90
  br label %62, !llfi_index !91

; <label>:87                                      ; preds = %69
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !92
  %89 = load double* %a3, align 8, !llfi_index !93
  %90 = load double* %a3, align 8, !llfi_index !93
  %check_cmp31 = fcmp ueq double %89, %90
  br i1 %check_cmp31, label %91, label %checkBb32

checkBb32:                                        ; preds = %87
  call void @check_flag()
  br label %91

; <label>:91                                      ; preds = %checkBb32, %87
  %92 = load double* %b3, align 8, !llfi_index !94
  %93 = load double* %b3, align 8, !llfi_index !94
  %check_cmp33 = fcmp ueq double %92, %93
  br i1 %check_cmp33, label %94, label %checkBb34

checkBb34:                                        ; preds = %91
  call void @check_flag()
  br label %94

; <label>:94                                      ; preds = %checkBb34, %91
  %95 = load double* %c3, align 8, !llfi_index !95
  %96 = load double* %c3, align 8, !llfi_index !95
  %check_cmp35 = fcmp ueq double %95, %96
  br i1 %check_cmp35, label %97, label %checkBb36

checkBb36:                                        ; preds = %94
  call void @check_flag()
  br label %97

; <label>:97                                      ; preds = %checkBb36, %94
  %98 = load double* %d3, align 8, !llfi_index !96
  %99 = load double* %d3, align 8, !llfi_index !96
  %check_cmp37 = fcmp ueq double %98, %99
  br i1 %check_cmp37, label %100, label %checkBb38

checkBb38:                                        ; preds = %97
  call void @check_flag()
  br label %100

; <label>:100                                     ; preds = %checkBb38, %97
  %101 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !97
  %102 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !97
  %check_cmp39 = icmp eq double* %101, %102
  br i1 %check_cmp39, label %103, label %checkBb40

checkBb40:                                        ; preds = %100
  call void @check_flag()
  br label %103

; <label>:103                                     ; preds = %checkBb40, %100
  call void @SolveCubic(double %89, double %92, double %95, double %98, i32* %solutions, double* %101), !llfi_index !98
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !99
  store i32 0, i32* %i, align 4, !llfi_index !100
  br label %105, !llfi_index !101

; <label>:105                                     ; preds = %129, %103
  %106 = load i32* %i, align 4, !llfi_index !102
  %107 = load i32* %i, align 4, !llfi_index !102
  %108 = load i32* %solutions, align 4, !llfi_index !103
  %109 = load i32* %solutions, align 4, !llfi_index !103
  %110 = icmp slt i32 %106, %108, !llfi_index !104
  %111 = icmp slt i32 %107, %109, !llfi_index !104
  %check_cmp41 = icmp eq i1 %110, %111
  br i1 %check_cmp41, label %112, label %checkBb42

checkBb42:                                        ; preds = %105
  call void @check_flag()
  br label %112

; <label>:112                                     ; preds = %checkBb42, %105
  br i1 %110, label %113, label %130, !llfi_index !105

; <label>:113                                     ; preds = %112
  %114 = load i32* %i, align 4, !llfi_index !106
  %115 = load i32* %i, align 4, !llfi_index !106
  %116 = sext i32 %114 to i64, !llfi_index !107
  %117 = sext i32 %115 to i64, !llfi_index !107
  %118 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %116, !llfi_index !108
  %119 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %117, !llfi_index !108
  %120 = load double* %118, align 8, !llfi_index !109
  %121 = load double* %119, align 8, !llfi_index !109
  %check_cmp43 = fcmp ueq double %120, %121
  br i1 %check_cmp43, label %122, label %checkBb44

checkBb44:                                        ; preds = %113
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb44, %113
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %120), !llfi_index !110
  br label %124, !llfi_index !111

; <label>:124                                     ; preds = %122
  %125 = load i32* %i, align 4, !llfi_index !112
  %126 = load i32* %i, align 4, !llfi_index !112
  %127 = add nsw i32 %125, 1, !llfi_index !113
  %128 = add nsw i32 %126, 1, !llfi_index !113
  %check_cmp45 = icmp eq i32 %127, %128
  br i1 %check_cmp45, label %129, label %checkBb46

checkBb46:                                        ; preds = %124
  call void @check_flag()
  br label %129

; <label>:129                                     ; preds = %checkBb46, %124
  store i32 %127, i32* %i, align 4, !llfi_index !114
  br label %105, !llfi_index !115

; <label>:130                                     ; preds = %112
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !116
  %132 = load double* %a4, align 8, !llfi_index !117
  %133 = load double* %a4, align 8, !llfi_index !117
  %check_cmp47 = fcmp ueq double %132, %133
  br i1 %check_cmp47, label %134, label %checkBb48

checkBb48:                                        ; preds = %130
  call void @check_flag()
  br label %134

; <label>:134                                     ; preds = %checkBb48, %130
  %135 = load double* %b4, align 8, !llfi_index !118
  %136 = load double* %b4, align 8, !llfi_index !118
  %check_cmp49 = fcmp ueq double %135, %136
  br i1 %check_cmp49, label %137, label %checkBb50

checkBb50:                                        ; preds = %134
  call void @check_flag()
  br label %137

; <label>:137                                     ; preds = %checkBb50, %134
  %138 = load double* %c4, align 8, !llfi_index !119
  %139 = load double* %c4, align 8, !llfi_index !119
  %check_cmp51 = fcmp ueq double %138, %139
  br i1 %check_cmp51, label %140, label %checkBb52

checkBb52:                                        ; preds = %137
  call void @check_flag()
  br label %140

; <label>:140                                     ; preds = %checkBb52, %137
  %141 = load double* %d4, align 8, !llfi_index !120
  %142 = load double* %d4, align 8, !llfi_index !120
  %check_cmp53 = fcmp ueq double %141, %142
  br i1 %check_cmp53, label %143, label %checkBb54

checkBb54:                                        ; preds = %140
  call void @check_flag()
  br label %143

; <label>:143                                     ; preds = %checkBb54, %140
  %144 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !121
  %145 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !121
  %check_cmp55 = icmp eq double* %144, %145
  br i1 %check_cmp55, label %146, label %checkBb56

checkBb56:                                        ; preds = %143
  call void @check_flag()
  br label %146

; <label>:146                                     ; preds = %checkBb56, %143
  call void @SolveCubic(double %132, double %135, double %138, double %141, i32* %solutions, double* %144), !llfi_index !122
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !123
  store i32 0, i32* %i, align 4, !llfi_index !124
  br label %148, !llfi_index !125

; <label>:148                                     ; preds = %172, %146
  %149 = load i32* %i, align 4, !llfi_index !126
  %150 = load i32* %i, align 4, !llfi_index !126
  %151 = load i32* %solutions, align 4, !llfi_index !127
  %152 = load i32* %solutions, align 4, !llfi_index !127
  %153 = icmp slt i32 %149, %151, !llfi_index !128
  %154 = icmp slt i32 %150, %152, !llfi_index !128
  %check_cmp57 = icmp eq i1 %153, %154
  br i1 %check_cmp57, label %155, label %checkBb58

checkBb58:                                        ; preds = %148
  call void @check_flag()
  br label %155

; <label>:155                                     ; preds = %checkBb58, %148
  br i1 %153, label %156, label %173, !llfi_index !129

; <label>:156                                     ; preds = %155
  %157 = load i32* %i, align 4, !llfi_index !130
  %158 = load i32* %i, align 4, !llfi_index !130
  %159 = sext i32 %157 to i64, !llfi_index !131
  %160 = sext i32 %158 to i64, !llfi_index !131
  %161 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %159, !llfi_index !132
  %162 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %160, !llfi_index !132
  %163 = load double* %161, align 8, !llfi_index !133
  %164 = load double* %162, align 8, !llfi_index !133
  %check_cmp59 = fcmp ueq double %163, %164
  br i1 %check_cmp59, label %165, label %checkBb60

checkBb60:                                        ; preds = %156
  call void @check_flag()
  br label %165

; <label>:165                                     ; preds = %checkBb60, %156
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %163), !llfi_index !134
  br label %167, !llfi_index !135

; <label>:167                                     ; preds = %165
  %168 = load i32* %i, align 4, !llfi_index !136
  %169 = load i32* %i, align 4, !llfi_index !136
  %170 = add nsw i32 %168, 1, !llfi_index !137
  %171 = add nsw i32 %169, 1, !llfi_index !137
  %check_cmp61 = icmp eq i32 %170, %171
  br i1 %check_cmp61, label %172, label %checkBb62

checkBb62:                                        ; preds = %167
  call void @check_flag()
  br label %172

; <label>:172                                     ; preds = %checkBb62, %167
  store i32 %170, i32* %i, align 4, !llfi_index !138
  br label %148, !llfi_index !139

; <label>:173                                     ; preds = %155
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !140
  store double 1.000000e+00, double* %a1, align 8, !llfi_index !141
  br label %175, !llfi_index !142

; <label>:175                                     ; preds = %272, %173
  %176 = load double* %a1, align 8, !llfi_index !143
  %177 = load double* %a1, align 8, !llfi_index !143
  %178 = fcmp olt double %176, 1.000000e+01, !llfi_index !144
  %179 = fcmp olt double %177, 1.000000e+01, !llfi_index !144
  %check_cmp63 = icmp eq i1 %178, %179
  br i1 %check_cmp63, label %180, label %checkBb64

checkBb64:                                        ; preds = %175
  call void @check_flag()
  br label %180

; <label>:180                                     ; preds = %checkBb64, %175
  br i1 %178, label %181, label %273, !llfi_index !145

; <label>:181                                     ; preds = %180
  store double 1.000000e+01, double* %b1, align 8, !llfi_index !146
  br label %182, !llfi_index !147

; <label>:182                                     ; preds = %265, %181
  %183 = load double* %b1, align 8, !llfi_index !148
  %184 = load double* %b1, align 8, !llfi_index !148
  %185 = fcmp ogt double %183, 0.000000e+00, !llfi_index !149
  %186 = fcmp ogt double %184, 0.000000e+00, !llfi_index !149
  %check_cmp65 = icmp eq i1 %185, %186
  br i1 %check_cmp65, label %187, label %checkBb66

checkBb66:                                        ; preds = %182
  call void @check_flag()
  br label %187

; <label>:187                                     ; preds = %checkBb66, %182
  br i1 %185, label %188, label %266, !llfi_index !150

; <label>:188                                     ; preds = %187
  store double 5.000000e+00, double* %c1, align 8, !llfi_index !151
  br label %189, !llfi_index !152

; <label>:189                                     ; preds = %258, %188
  %190 = load double* %c1, align 8, !llfi_index !153
  %191 = load double* %c1, align 8, !llfi_index !153
  %192 = fcmp olt double %190, 1.500000e+01, !llfi_index !154
  %193 = fcmp olt double %191, 1.500000e+01, !llfi_index !154
  %check_cmp67 = icmp eq i1 %192, %193
  br i1 %check_cmp67, label %194, label %checkBb68

checkBb68:                                        ; preds = %189
  call void @check_flag()
  br label %194

; <label>:194                                     ; preds = %checkBb68, %189
  br i1 %192, label %195, label %259, !llfi_index !155

; <label>:195                                     ; preds = %194
  store double -1.000000e+00, double* %d1, align 8, !llfi_index !156
  br label %196, !llfi_index !157

; <label>:196                                     ; preds = %251, %195
  %197 = load double* %d1, align 8, !llfi_index !158
  %198 = load double* %d1, align 8, !llfi_index !158
  %199 = fcmp ogt double %197, -1.100000e+01, !llfi_index !159
  %200 = fcmp ogt double %198, -1.100000e+01, !llfi_index !159
  %check_cmp69 = icmp eq i1 %199, %200
  br i1 %check_cmp69, label %201, label %checkBb70

checkBb70:                                        ; preds = %196
  call void @check_flag()
  br label %201

; <label>:201                                     ; preds = %checkBb70, %196
  br i1 %199, label %202, label %252, !llfi_index !160

; <label>:202                                     ; preds = %201
  %203 = load double* %a1, align 8, !llfi_index !161
  %204 = load double* %a1, align 8, !llfi_index !161
  %check_cmp71 = fcmp ueq double %203, %204
  br i1 %check_cmp71, label %205, label %checkBb72

checkBb72:                                        ; preds = %202
  call void @check_flag()
  br label %205

; <label>:205                                     ; preds = %checkBb72, %202
  %206 = load double* %b1, align 8, !llfi_index !162
  %207 = load double* %b1, align 8, !llfi_index !162
  %check_cmp73 = fcmp ueq double %206, %207
  br i1 %check_cmp73, label %208, label %checkBb74

checkBb74:                                        ; preds = %205
  call void @check_flag()
  br label %208

; <label>:208                                     ; preds = %checkBb74, %205
  %209 = load double* %c1, align 8, !llfi_index !163
  %210 = load double* %c1, align 8, !llfi_index !163
  %check_cmp75 = fcmp ueq double %209, %210
  br i1 %check_cmp75, label %211, label %checkBb76

checkBb76:                                        ; preds = %208
  call void @check_flag()
  br label %211

; <label>:211                                     ; preds = %checkBb76, %208
  %212 = load double* %d1, align 8, !llfi_index !164
  %213 = load double* %d1, align 8, !llfi_index !164
  %check_cmp77 = fcmp ueq double %212, %213
  br i1 %check_cmp77, label %214, label %checkBb78

checkBb78:                                        ; preds = %211
  call void @check_flag()
  br label %214

; <label>:214                                     ; preds = %checkBb78, %211
  %215 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !165
  %216 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !165
  %check_cmp79 = icmp eq double* %215, %216
  br i1 %check_cmp79, label %217, label %checkBb80

checkBb80:                                        ; preds = %214
  call void @check_flag()
  br label %217

; <label>:217                                     ; preds = %checkBb80, %214
  call void @SolveCubic(double %203, double %206, double %209, double %212, i32* %solutions, double* %215), !llfi_index !166
  %218 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !167
  store i32 0, i32* %i, align 4, !llfi_index !168
  br label %219, !llfi_index !169

; <label>:219                                     ; preds = %243, %217
  %220 = load i32* %i, align 4, !llfi_index !170
  %221 = load i32* %i, align 4, !llfi_index !170
  %222 = load i32* %solutions, align 4, !llfi_index !171
  %223 = load i32* %solutions, align 4, !llfi_index !171
  %224 = icmp slt i32 %220, %222, !llfi_index !172
  %225 = icmp slt i32 %221, %223, !llfi_index !172
  %check_cmp81 = icmp eq i1 %224, %225
  br i1 %check_cmp81, label %226, label %checkBb82

checkBb82:                                        ; preds = %219
  call void @check_flag()
  br label %226

; <label>:226                                     ; preds = %checkBb82, %219
  br i1 %224, label %227, label %244, !llfi_index !173

; <label>:227                                     ; preds = %226
  %228 = load i32* %i, align 4, !llfi_index !174
  %229 = load i32* %i, align 4, !llfi_index !174
  %230 = sext i32 %228 to i64, !llfi_index !175
  %231 = sext i32 %229 to i64, !llfi_index !175
  %232 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %230, !llfi_index !176
  %233 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %231, !llfi_index !176
  %234 = load double* %232, align 8, !llfi_index !177
  %235 = load double* %233, align 8, !llfi_index !177
  %check_cmp83 = fcmp ueq double %234, %235
  br i1 %check_cmp83, label %236, label %checkBb84

checkBb84:                                        ; preds = %227
  call void @check_flag()
  br label %236

; <label>:236                                     ; preds = %checkBb84, %227
  %237 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %234), !llfi_index !178
  br label %238, !llfi_index !179

; <label>:238                                     ; preds = %236
  %239 = load i32* %i, align 4, !llfi_index !180
  %240 = load i32* %i, align 4, !llfi_index !180
  %241 = add nsw i32 %239, 1, !llfi_index !181
  %242 = add nsw i32 %240, 1, !llfi_index !181
  %check_cmp85 = icmp eq i32 %241, %242
  br i1 %check_cmp85, label %243, label %checkBb86

checkBb86:                                        ; preds = %238
  call void @check_flag()
  br label %243

; <label>:243                                     ; preds = %checkBb86, %238
  store i32 %241, i32* %i, align 4, !llfi_index !182
  br label %219, !llfi_index !183

; <label>:244                                     ; preds = %226
  %245 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !184
  br label %246, !llfi_index !185

; <label>:246                                     ; preds = %244
  %247 = load double* %d1, align 8, !llfi_index !186
  %248 = load double* %d1, align 8, !llfi_index !186
  %249 = fadd double %247, -1.000000e+00, !llfi_index !187
  %250 = fadd double %248, -1.000000e+00, !llfi_index !187
  %check_cmp87 = fcmp ueq double %249, %250
  br i1 %check_cmp87, label %251, label %checkBb88

checkBb88:                                        ; preds = %246
  call void @check_flag()
  br label %251

; <label>:251                                     ; preds = %checkBb88, %246
  store double %249, double* %d1, align 8, !llfi_index !188
  br label %196, !llfi_index !189

; <label>:252                                     ; preds = %201
  br label %253, !llfi_index !190

; <label>:253                                     ; preds = %252
  %254 = load double* %c1, align 8, !llfi_index !191
  %255 = load double* %c1, align 8, !llfi_index !191
  %256 = fadd double %254, 5.000000e-01, !llfi_index !192
  %257 = fadd double %255, 5.000000e-01, !llfi_index !192
  %check_cmp89 = fcmp ueq double %256, %257
  br i1 %check_cmp89, label %258, label %checkBb90

checkBb90:                                        ; preds = %253
  call void @check_flag()
  br label %258

; <label>:258                                     ; preds = %checkBb90, %253
  store double %256, double* %c1, align 8, !llfi_index !193
  br label %189, !llfi_index !194

; <label>:259                                     ; preds = %194
  br label %260, !llfi_index !195

; <label>:260                                     ; preds = %259
  %261 = load double* %b1, align 8, !llfi_index !196
  %262 = load double* %b1, align 8, !llfi_index !196
  %263 = fadd double %261, -1.000000e+00, !llfi_index !197
  %264 = fadd double %262, -1.000000e+00, !llfi_index !197
  %check_cmp91 = fcmp ueq double %263, %264
  br i1 %check_cmp91, label %265, label %checkBb92

checkBb92:                                        ; preds = %260
  call void @check_flag()
  br label %265

; <label>:265                                     ; preds = %checkBb92, %260
  store double %263, double* %b1, align 8, !llfi_index !198
  br label %182, !llfi_index !199

; <label>:266                                     ; preds = %187
  br label %267, !llfi_index !200

; <label>:267                                     ; preds = %266
  %268 = load double* %a1, align 8, !llfi_index !201
  %269 = load double* %a1, align 8, !llfi_index !201
  %270 = fadd double %268, 1.000000e+00, !llfi_index !202
  %271 = fadd double %269, 1.000000e+00, !llfi_index !202
  %check_cmp93 = fcmp ueq double %270, %271
  br i1 %check_cmp93, label %272, label %checkBb94

checkBb94:                                        ; preds = %267
  call void @check_flag()
  br label %272

; <label>:272                                     ; preds = %checkBb94, %267
  store double %270, double* %a1, align 8, !llfi_index !203
  br label %175, !llfi_index !204

; <label>:273                                     ; preds = %180
  %274 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0)), !llfi_index !205
  store i32 0, i32* %i, align 4, !llfi_index !206
  br label %275, !llfi_index !207

; <label>:275                                     ; preds = %301, %273
  %276 = load i32* %i, align 4, !llfi_index !208
  %277 = load i32* %i, align 4, !llfi_index !208
  %278 = icmp slt i32 %276, 1001, !llfi_index !209
  %279 = icmp slt i32 %277, 1001, !llfi_index !209
  %check_cmp95 = icmp eq i1 %278, %279
  br i1 %check_cmp95, label %280, label %checkBb96

checkBb96:                                        ; preds = %275
  call void @check_flag()
  br label %280

; <label>:280                                     ; preds = %checkBb96, %275
  br i1 %278, label %281, label %302, !llfi_index !210

; <label>:281                                     ; preds = %280
  %282 = load i32* %i, align 4, !llfi_index !211
  %283 = load i32* %i, align 4, !llfi_index !211
  %284 = sext i32 %282 to i64, !llfi_index !212
  %285 = sext i32 %283 to i64, !llfi_index !212
  %check_cmp97 = icmp eq i64 %284, %285
  br i1 %check_cmp97, label %286, label %checkBb98

checkBb98:                                        ; preds = %281
  call void @check_flag()
  br label %286

; <label>:286                                     ; preds = %checkBb98, %281
  call void @usqrt(i64 %284, %struct.int_sqrt* %q), !llfi_index !213
  %287 = load i32* %i, align 4, !llfi_index !214
  %288 = load i32* %i, align 4, !llfi_index !214
  %check_cmp99 = icmp eq i32 %287, %288
  br i1 %check_cmp99, label %289, label %checkBb100

checkBb100:                                       ; preds = %286
  call void @check_flag()
  br label %289

; <label>:289                                     ; preds = %checkBb100, %286
  %290 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !215
  %291 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !215
  %292 = load i32* %290, align 4, !llfi_index !216
  %293 = load i32* %291, align 4, !llfi_index !216
  %check_cmp101 = icmp eq i32 %292, %293
  br i1 %check_cmp101, label %294, label %checkBb102

checkBb102:                                       ; preds = %289
  call void @check_flag()
  br label %294

; <label>:294                                     ; preds = %checkBb102, %289
  %295 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i32 %287, i32 %292), !llfi_index !217
  br label %296, !llfi_index !218

; <label>:296                                     ; preds = %294
  %297 = load i32* %i, align 4, !llfi_index !219
  %298 = load i32* %i, align 4, !llfi_index !219
  %299 = add nsw i32 %297, 1, !llfi_index !220
  %300 = add nsw i32 %298, 1, !llfi_index !220
  %check_cmp103 = icmp eq i32 %299, %300
  br i1 %check_cmp103, label %301, label %checkBb104

checkBb104:                                       ; preds = %296
  call void @check_flag()
  br label %301

; <label>:301                                     ; preds = %checkBb104, %296
  store i32 %299, i32* %i, align 4, !llfi_index !221
  br label %275, !llfi_index !222

; <label>:302                                     ; preds = %280
  %303 = load i64* %l, align 8, !llfi_index !223
  %304 = load i64* %l, align 8, !llfi_index !223
  %check_cmp105 = icmp eq i64 %303, %304
  br i1 %check_cmp105, label %305, label %checkBb106

checkBb106:                                       ; preds = %302
  call void @check_flag()
  br label %305

; <label>:305                                     ; preds = %checkBb106, %302
  call void @usqrt(i64 %303, %struct.int_sqrt* %q), !llfi_index !224
  %306 = load i64* %l, align 8, !llfi_index !225
  %307 = load i64* %l, align 8, !llfi_index !225
  %check_cmp107 = icmp eq i64 %306, %307
  br i1 %check_cmp107, label %308, label %checkBb108

checkBb108:                                       ; preds = %305
  call void @check_flag()
  br label %308

; <label>:308                                     ; preds = %checkBb108, %305
  %309 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !226
  %310 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !226
  %311 = load i32* %309, align 4, !llfi_index !227
  %312 = load i32* %310, align 4, !llfi_index !227
  %check_cmp109 = icmp eq i32 %311, %312
  br i1 %check_cmp109, label %313, label %checkBb110

checkBb110:                                       ; preds = %308
  call void @check_flag()
  br label %313

; <label>:313                                     ; preds = %checkBb110, %308
  %314 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0), i64 %306, i32 %311), !llfi_index !228
  %315 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0)), !llfi_index !229
  store double 0.000000e+00, double* %X, align 8, !llfi_index !230
  br label %316, !llfi_index !231

; <label>:316                                     ; preds = %342, %313
  %317 = load double* %X, align 8, !llfi_index !232
  %318 = load double* %X, align 8, !llfi_index !232
  %319 = fcmp ole double %317, 3.600000e+02, !llfi_index !233
  %320 = fcmp ole double %318, 3.600000e+02, !llfi_index !233
  %check_cmp111 = icmp eq i1 %319, %320
  br i1 %check_cmp111, label %321, label %checkBb112

checkBb112:                                       ; preds = %316
  call void @check_flag()
  br label %321

; <label>:321                                     ; preds = %checkBb112, %316
  br i1 %319, label %322, label %343, !llfi_index !234

; <label>:322                                     ; preds = %321
  %323 = load double* %X, align 8, !llfi_index !235
  %324 = load double* %X, align 8, !llfi_index !235
  %check_cmp113 = fcmp ueq double %323, %324
  br i1 %check_cmp113, label %325, label %checkBb114

checkBb114:                                       ; preds = %322
  call void @check_flag()
  br label %325

; <label>:325                                     ; preds = %checkBb114, %322
  %326 = load double* %X, align 8, !llfi_index !236
  %327 = load double* %X, align 8, !llfi_index !236
  %328 = call double @atan(double 1.000000e+00) #4, !llfi_index !237
  %329 = fmul double 4.000000e+00, %328, !llfi_index !238
  %330 = fmul double 4.000000e+00, %328, !llfi_index !238
  %331 = fmul double %326, %329, !llfi_index !239
  %332 = fmul double %327, %330, !llfi_index !239
  %333 = fdiv double %331, 1.800000e+02, !llfi_index !240
  %334 = fdiv double %332, 1.800000e+02, !llfi_index !240
  %check_cmp115 = fcmp ueq double %333, %334
  br i1 %check_cmp115, label %335, label %checkBb116

checkBb116:                                       ; preds = %325
  call void @check_flag()
  br label %335

; <label>:335                                     ; preds = %checkBb116, %325
  %336 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), double %323, double %333), !llfi_index !241
  br label %337, !llfi_index !242

; <label>:337                                     ; preds = %335
  %338 = load double* %X, align 8, !llfi_index !243
  %339 = load double* %X, align 8, !llfi_index !243
  %340 = fadd double %338, 1.000000e+00, !llfi_index !244
  %341 = fadd double %339, 1.000000e+00, !llfi_index !244
  %check_cmp117 = fcmp ueq double %340, %341
  br i1 %check_cmp117, label %342, label %checkBb118

checkBb118:                                       ; preds = %337
  call void @check_flag()
  br label %342

; <label>:342                                     ; preds = %checkBb118, %337
  store double %340, double* %X, align 8, !llfi_index !245
  br label %316, !llfi_index !246

; <label>:343                                     ; preds = %321
  %344 = call i32 (i8*, ...)* bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8]* @.str9, i32 0, i32 0)), !llfi_index !247
  store double 0.000000e+00, double* %X, align 8, !llfi_index !248
  br label %345, !llfi_index !249

; <label>:345                                     ; preds = %383, %343
  %346 = load double* %X, align 8, !llfi_index !250
  %347 = load double* %X, align 8, !llfi_index !250
  %348 = call double @atan(double 1.000000e+00) #4, !llfi_index !251
  %349 = fmul double 4.000000e+00, %348, !llfi_index !252
  %350 = fmul double 4.000000e+00, %348, !llfi_index !252
  %351 = fmul double 2.000000e+00, %349, !llfi_index !253
  %352 = fmul double 2.000000e+00, %350, !llfi_index !253
  %353 = fadd double %351, 1.000000e-06, !llfi_index !254
  %354 = fadd double %352, 1.000000e-06, !llfi_index !254
  %355 = fcmp ole double %346, %353, !llfi_index !255
  %356 = fcmp ole double %347, %354, !llfi_index !255
  %check_cmp119 = icmp eq i1 %355, %356
  br i1 %check_cmp119, label %357, label %checkBb120

checkBb120:                                       ; preds = %345
  call void @check_flag()
  br label %357

; <label>:357                                     ; preds = %checkBb120, %345
  br i1 %355, label %358, label %384, !llfi_index !256

; <label>:358                                     ; preds = %357
  %359 = load double* %X, align 8, !llfi_index !257
  %360 = load double* %X, align 8, !llfi_index !257
  %check_cmp121 = fcmp ueq double %359, %360
  br i1 %check_cmp121, label %361, label %checkBb122

checkBb122:                                       ; preds = %358
  call void @check_flag()
  br label %361

; <label>:361                                     ; preds = %checkBb122, %358
  %362 = load double* %X, align 8, !llfi_index !258
  %363 = load double* %X, align 8, !llfi_index !258
  %364 = fmul double %362, 1.800000e+02, !llfi_index !259
  %365 = fmul double %363, 1.800000e+02, !llfi_index !259
  %366 = call double @atan(double 1.000000e+00) #4, !llfi_index !260
  %367 = fmul double 4.000000e+00, %366, !llfi_index !261
  %368 = fmul double 4.000000e+00, %366, !llfi_index !261
  %369 = fdiv double %364, %367, !llfi_index !262
  %370 = fdiv double %365, %368, !llfi_index !262
  %check_cmp123 = fcmp ueq double %369, %370
  br i1 %check_cmp123, label %371, label %checkBb124

checkBb124:                                       ; preds = %361
  call void @check_flag()
  br label %371

; <label>:371                                     ; preds = %checkBb124, %361
  %372 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), double %359, double %369), !llfi_index !263
  br label %373, !llfi_index !264

; <label>:373                                     ; preds = %371
  %374 = call double @atan(double 1.000000e+00) #4, !llfi_index !265
  %375 = fmul double 4.000000e+00, %374, !llfi_index !266
  %376 = fmul double 4.000000e+00, %374, !llfi_index !266
  %377 = fdiv double %375, 1.800000e+02, !llfi_index !267
  %378 = fdiv double %376, 1.800000e+02, !llfi_index !267
  %379 = load double* %X, align 8, !llfi_index !268
  %380 = load double* %X, align 8, !llfi_index !268
  %381 = fadd double %379, %377, !llfi_index !269
  %382 = fadd double %380, %378, !llfi_index !269
  %check_cmp125 = fcmp ueq double %381, %382
  br i1 %check_cmp125, label %383, label %checkBb126

checkBb126:                                       ; preds = %373
  call void @check_flag()
  br label %383

; <label>:383                                     ; preds = %checkBb126, %373
  store double %381, double* %X, align 8, !llfi_index !270
  br label %345, !llfi_index !271

; <label>:384                                     ; preds = %357
  ret i32 0, !llfi_index !272
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(...) #1

; Function Attrs: nounwind uwtable
define void @SolveCubic(double %a, double %b, double %c, double %d, i32* %solutions, double* %x) #0 {
  %1 = alloca double, align 8, !llfi_index !273
  %2 = alloca double, align 8, !llfi_index !274
  %3 = alloca double, align 8, !llfi_index !275
  %4 = alloca double, align 8, !llfi_index !276
  %5 = alloca i32*, align 8, !llfi_index !277
  %6 = alloca double*, align 8, !llfi_index !278
  %a1 = alloca x86_fp80, align 16, !llfi_index !279
  %a2 = alloca x86_fp80, align 16, !llfi_index !280
  %a3 = alloca x86_fp80, align 16, !llfi_index !281
  %Q = alloca x86_fp80, align 16, !llfi_index !282
  %R = alloca x86_fp80, align 16, !llfi_index !283
  %R2_Q3 = alloca double, align 8, !llfi_index !284
  %theta = alloca double, align 8, !llfi_index !285
  store double %a, double* %1, align 8, !llfi_index !286
  store double %b, double* %2, align 8, !llfi_index !287
  store double %c, double* %3, align 8, !llfi_index !288
  store double %d, double* %4, align 8, !llfi_index !289
  store i32* %solutions, i32** %5, align 8, !llfi_index !290
  store double* %x, double** %6, align 8, !llfi_index !291
  %7 = load double* %2, align 8, !llfi_index !292
  %8 = load double* %2, align 8, !llfi_index !292
  %9 = load double* %1, align 8, !llfi_index !293
  %10 = load double* %1, align 8, !llfi_index !293
  %11 = fdiv double %7, %9, !llfi_index !294
  %12 = fdiv double %8, %10, !llfi_index !294
  %13 = fpext double %11 to x86_fp80, !llfi_index !295
  %14 = fpext double %12 to x86_fp80, !llfi_index !295
  %check_cmp = fcmp ueq x86_fp80 %13, %14
  br i1 %check_cmp, label %15, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %15

; <label>:15                                      ; preds = %checkBb, %0
  store x86_fp80 %13, x86_fp80* %a1, align 16, !llfi_index !296
  %16 = load double* %3, align 8, !llfi_index !297
  %17 = load double* %3, align 8, !llfi_index !297
  %18 = load double* %1, align 8, !llfi_index !298
  %19 = load double* %1, align 8, !llfi_index !298
  %20 = fdiv double %16, %18, !llfi_index !299
  %21 = fdiv double %17, %19, !llfi_index !299
  %22 = fpext double %20 to x86_fp80, !llfi_index !300
  %23 = fpext double %21 to x86_fp80, !llfi_index !300
  %check_cmp1 = fcmp ueq x86_fp80 %22, %23
  br i1 %check_cmp1, label %24, label %checkBb2

checkBb2:                                         ; preds = %15
  call void @check_flag()
  br label %24

; <label>:24                                      ; preds = %checkBb2, %15
  store x86_fp80 %22, x86_fp80* %a2, align 16, !llfi_index !301
  %25 = load double* %4, align 8, !llfi_index !302
  %26 = load double* %4, align 8, !llfi_index !302
  %27 = load double* %1, align 8, !llfi_index !303
  %28 = load double* %1, align 8, !llfi_index !303
  %29 = fdiv double %25, %27, !llfi_index !304
  %30 = fdiv double %26, %28, !llfi_index !304
  %31 = fpext double %29 to x86_fp80, !llfi_index !305
  %32 = fpext double %30 to x86_fp80, !llfi_index !305
  %check_cmp3 = fcmp ueq x86_fp80 %31, %32
  br i1 %check_cmp3, label %33, label %checkBb4

checkBb4:                                         ; preds = %24
  call void @check_flag()
  br label %33

; <label>:33                                      ; preds = %checkBb4, %24
  store x86_fp80 %31, x86_fp80* %a3, align 16, !llfi_index !306
  %34 = load x86_fp80* %a1, align 16, !llfi_index !307
  %35 = load x86_fp80* %a1, align 16, !llfi_index !307
  %36 = load x86_fp80* %a1, align 16, !llfi_index !308
  %37 = load x86_fp80* %a1, align 16, !llfi_index !308
  %38 = fmul x86_fp80 %34, %36, !llfi_index !309
  %39 = fmul x86_fp80 %35, %37, !llfi_index !309
  %40 = load x86_fp80* %a2, align 16, !llfi_index !310
  %41 = load x86_fp80* %a2, align 16, !llfi_index !310
  %42 = fmul x86_fp80 0xK4000C000000000000000, %40, !llfi_index !311
  %43 = fmul x86_fp80 0xK4000C000000000000000, %41, !llfi_index !311
  %44 = fsub x86_fp80 %38, %42, !llfi_index !312
  %45 = fsub x86_fp80 %39, %43, !llfi_index !312
  %46 = fdiv x86_fp80 %44, 0xK40029000000000000000, !llfi_index !313
  %47 = fdiv x86_fp80 %45, 0xK40029000000000000000, !llfi_index !313
  %check_cmp5 = fcmp ueq x86_fp80 %46, %47
  br i1 %check_cmp5, label %48, label %checkBb6

checkBb6:                                         ; preds = %33
  call void @check_flag()
  br label %48

; <label>:48                                      ; preds = %checkBb6, %33
  store x86_fp80 %46, x86_fp80* %Q, align 16, !llfi_index !314
  %49 = load x86_fp80* %a1, align 16, !llfi_index !315
  %50 = load x86_fp80* %a1, align 16, !llfi_index !315
  %51 = fmul x86_fp80 0xK40008000000000000000, %49, !llfi_index !316
  %52 = fmul x86_fp80 0xK40008000000000000000, %50, !llfi_index !316
  %53 = load x86_fp80* %a1, align 16, !llfi_index !317
  %54 = load x86_fp80* %a1, align 16, !llfi_index !317
  %55 = fmul x86_fp80 %51, %53, !llfi_index !318
  %56 = fmul x86_fp80 %52, %54, !llfi_index !318
  %57 = load x86_fp80* %a1, align 16, !llfi_index !319
  %58 = load x86_fp80* %a1, align 16, !llfi_index !319
  %59 = fmul x86_fp80 %55, %57, !llfi_index !320
  %60 = fmul x86_fp80 %56, %58, !llfi_index !320
  %61 = load x86_fp80* %a1, align 16, !llfi_index !321
  %62 = load x86_fp80* %a1, align 16, !llfi_index !321
  %63 = fmul x86_fp80 0xK40029000000000000000, %61, !llfi_index !322
  %64 = fmul x86_fp80 0xK40029000000000000000, %62, !llfi_index !322
  %65 = load x86_fp80* %a2, align 16, !llfi_index !323
  %66 = load x86_fp80* %a2, align 16, !llfi_index !323
  %67 = fmul x86_fp80 %63, %65, !llfi_index !324
  %68 = fmul x86_fp80 %64, %66, !llfi_index !324
  %69 = fsub x86_fp80 %59, %67, !llfi_index !325
  %70 = fsub x86_fp80 %60, %68, !llfi_index !325
  %71 = load x86_fp80* %a3, align 16, !llfi_index !326
  %72 = load x86_fp80* %a3, align 16, !llfi_index !326
  %73 = fmul x86_fp80 0xK4003D800000000000000, %71, !llfi_index !327
  %74 = fmul x86_fp80 0xK4003D800000000000000, %72, !llfi_index !327
  %75 = fadd x86_fp80 %69, %73, !llfi_index !328
  %76 = fadd x86_fp80 %70, %74, !llfi_index !328
  %77 = fdiv x86_fp80 %75, 0xK4004D800000000000000, !llfi_index !329
  %78 = fdiv x86_fp80 %76, 0xK4004D800000000000000, !llfi_index !329
  %check_cmp7 = fcmp ueq x86_fp80 %77, %78
  br i1 %check_cmp7, label %79, label %checkBb8

checkBb8:                                         ; preds = %48
  call void @check_flag()
  br label %79

; <label>:79                                      ; preds = %checkBb8, %48
  store x86_fp80 %77, x86_fp80* %R, align 16, !llfi_index !330
  %80 = load x86_fp80* %R, align 16, !llfi_index !331
  %81 = load x86_fp80* %R, align 16, !llfi_index !331
  %82 = load x86_fp80* %R, align 16, !llfi_index !332
  %83 = load x86_fp80* %R, align 16, !llfi_index !332
  %84 = fmul x86_fp80 %80, %82, !llfi_index !333
  %85 = fmul x86_fp80 %81, %83, !llfi_index !333
  %86 = load x86_fp80* %Q, align 16, !llfi_index !334
  %87 = load x86_fp80* %Q, align 16, !llfi_index !334
  %88 = load x86_fp80* %Q, align 16, !llfi_index !335
  %89 = load x86_fp80* %Q, align 16, !llfi_index !335
  %90 = fmul x86_fp80 %86, %88, !llfi_index !336
  %91 = fmul x86_fp80 %87, %89, !llfi_index !336
  %92 = load x86_fp80* %Q, align 16, !llfi_index !337
  %93 = load x86_fp80* %Q, align 16, !llfi_index !337
  %94 = fmul x86_fp80 %90, %92, !llfi_index !338
  %95 = fmul x86_fp80 %91, %93, !llfi_index !338
  %96 = fsub x86_fp80 %84, %94, !llfi_index !339
  %97 = fsub x86_fp80 %85, %95, !llfi_index !339
  %98 = fptrunc x86_fp80 %96 to double, !llfi_index !340
  %99 = fptrunc x86_fp80 %97 to double, !llfi_index !340
  %check_cmp9 = fcmp ueq double %98, %99
  br i1 %check_cmp9, label %100, label %checkBb10

checkBb10:                                        ; preds = %79
  call void @check_flag()
  br label %100

; <label>:100                                     ; preds = %checkBb10, %79
  store double %98, double* %R2_Q3, align 8, !llfi_index !341
  %101 = load double* %R2_Q3, align 8, !llfi_index !342
  %102 = load double* %R2_Q3, align 8, !llfi_index !342
  %103 = fcmp ole double %101, 0.000000e+00, !llfi_index !343
  %104 = fcmp ole double %102, 0.000000e+00, !llfi_index !343
  %check_cmp11 = icmp eq i1 %103, %104
  br i1 %check_cmp11, label %105, label %checkBb12

checkBb12:                                        ; preds = %100
  call void @check_flag()
  br label %105

; <label>:105                                     ; preds = %checkBb12, %100
  br i1 %103, label %106, label %244, !llfi_index !344

; <label>:106                                     ; preds = %105
  %107 = load i32** %5, align 8, !llfi_index !345
  %108 = load i32** %5, align 8, !llfi_index !345
  %check_cmp13 = icmp eq i32* %107, %108
  br i1 %check_cmp13, label %109, label %checkBb14

checkBb14:                                        ; preds = %106
  call void @check_flag()
  br label %109

; <label>:109                                     ; preds = %checkBb14, %106
  store i32 3, i32* %107, align 4, !llfi_index !346
  %110 = load x86_fp80* %R, align 16, !llfi_index !347
  %111 = load x86_fp80* %R, align 16, !llfi_index !347
  %112 = load x86_fp80* %Q, align 16, !llfi_index !348
  %113 = load x86_fp80* %Q, align 16, !llfi_index !348
  %114 = load x86_fp80* %Q, align 16, !llfi_index !349
  %115 = load x86_fp80* %Q, align 16, !llfi_index !349
  %116 = fmul x86_fp80 %112, %114, !llfi_index !350
  %117 = fmul x86_fp80 %113, %115, !llfi_index !350
  %118 = load x86_fp80* %Q, align 16, !llfi_index !351
  %119 = load x86_fp80* %Q, align 16, !llfi_index !351
  %120 = fmul x86_fp80 %116, %118, !llfi_index !352
  %121 = fmul x86_fp80 %117, %119, !llfi_index !352
  %122 = fptrunc x86_fp80 %120 to double, !llfi_index !353
  %123 = fptrunc x86_fp80 %121 to double, !llfi_index !353
  %check_cmp15 = fcmp ueq double %122, %123
  br i1 %check_cmp15, label %124, label %checkBb16

checkBb16:                                        ; preds = %109
  call void @check_flag()
  br label %124

; <label>:124                                     ; preds = %checkBb16, %109
  %125 = call double @sqrt(double %122) #4, !llfi_index !354
  %126 = fpext double %125 to x86_fp80, !llfi_index !355
  %127 = fpext double %125 to x86_fp80, !llfi_index !355
  %128 = fdiv x86_fp80 %110, %126, !llfi_index !356
  %129 = fdiv x86_fp80 %111, %127, !llfi_index !356
  %130 = fptrunc x86_fp80 %128 to double, !llfi_index !357
  %131 = fptrunc x86_fp80 %129 to double, !llfi_index !357
  %check_cmp17 = fcmp ueq double %130, %131
  br i1 %check_cmp17, label %132, label %checkBb18

checkBb18:                                        ; preds = %124
  call void @check_flag()
  br label %132

; <label>:132                                     ; preds = %checkBb18, %124
  %133 = call double @acos(double %130) #4, !llfi_index !358
  store double %133, double* %theta, align 8, !llfi_index !359
  %134 = load x86_fp80* %Q, align 16, !llfi_index !360
  %135 = load x86_fp80* %Q, align 16, !llfi_index !360
  %136 = fptrunc x86_fp80 %134 to double, !llfi_index !361
  %137 = fptrunc x86_fp80 %135 to double, !llfi_index !361
  %check_cmp19 = fcmp ueq double %136, %137
  br i1 %check_cmp19, label %138, label %checkBb20

checkBb20:                                        ; preds = %132
  call void @check_flag()
  br label %138

; <label>:138                                     ; preds = %checkBb20, %132
  %139 = call double @sqrt(double %136) #4, !llfi_index !362
  %140 = fmul double -2.000000e+00, %139, !llfi_index !363
  %141 = fmul double -2.000000e+00, %139, !llfi_index !363
  %142 = load double* %theta, align 8, !llfi_index !364
  %143 = load double* %theta, align 8, !llfi_index !364
  %144 = fdiv double %142, 3.000000e+00, !llfi_index !365
  %145 = fdiv double %143, 3.000000e+00, !llfi_index !365
  %check_cmp21 = fcmp ueq double %144, %145
  br i1 %check_cmp21, label %146, label %checkBb22

checkBb22:                                        ; preds = %138
  call void @check_flag()
  br label %146

; <label>:146                                     ; preds = %checkBb22, %138
  %147 = call double @cos(double %144) #4, !llfi_index !366
  %148 = fmul double %140, %147, !llfi_index !367
  %149 = fmul double %141, %147, !llfi_index !367
  %150 = fpext double %148 to x86_fp80, !llfi_index !368
  %151 = fpext double %149 to x86_fp80, !llfi_index !368
  %152 = load x86_fp80* %a1, align 16, !llfi_index !369
  %153 = load x86_fp80* %a1, align 16, !llfi_index !369
  %154 = fdiv x86_fp80 %152, 0xK4000C000000000000000, !llfi_index !370
  %155 = fdiv x86_fp80 %153, 0xK4000C000000000000000, !llfi_index !370
  %156 = fsub x86_fp80 %150, %154, !llfi_index !371
  %157 = fsub x86_fp80 %151, %155, !llfi_index !371
  %158 = fptrunc x86_fp80 %156 to double, !llfi_index !372
  %159 = fptrunc x86_fp80 %157 to double, !llfi_index !372
  %check_cmp23 = fcmp ueq double %158, %159
  br i1 %check_cmp23, label %160, label %checkBb24

checkBb24:                                        ; preds = %146
  call void @check_flag()
  br label %160

; <label>:160                                     ; preds = %checkBb24, %146
  %161 = load double** %6, align 8, !llfi_index !373
  %162 = load double** %6, align 8, !llfi_index !373
  %163 = getelementptr inbounds double* %161, i64 0, !llfi_index !374
  %164 = getelementptr inbounds double* %162, i64 0, !llfi_index !374
  %check_cmp25 = icmp eq double* %163, %164
  br i1 %check_cmp25, label %165, label %checkBb26

checkBb26:                                        ; preds = %160
  call void @check_flag()
  br label %165

; <label>:165                                     ; preds = %checkBb26, %160
  store double %158, double* %163, align 8, !llfi_index !375
  %166 = load x86_fp80* %Q, align 16, !llfi_index !376
  %167 = load x86_fp80* %Q, align 16, !llfi_index !376
  %168 = fptrunc x86_fp80 %166 to double, !llfi_index !377
  %169 = fptrunc x86_fp80 %167 to double, !llfi_index !377
  %check_cmp27 = fcmp ueq double %168, %169
  br i1 %check_cmp27, label %170, label %checkBb28

checkBb28:                                        ; preds = %165
  call void @check_flag()
  br label %170

; <label>:170                                     ; preds = %checkBb28, %165
  %171 = call double @sqrt(double %168) #4, !llfi_index !378
  %172 = fmul double -2.000000e+00, %171, !llfi_index !379
  %173 = fmul double -2.000000e+00, %171, !llfi_index !379
  %174 = load double* %theta, align 8, !llfi_index !380
  %175 = load double* %theta, align 8, !llfi_index !380
  %176 = call double @atan(double 1.000000e+00) #4, !llfi_index !381
  %177 = fmul double 4.000000e+00, %176, !llfi_index !382
  %178 = fmul double 4.000000e+00, %176, !llfi_index !382
  %179 = fmul double 2.000000e+00, %177, !llfi_index !383
  %180 = fmul double 2.000000e+00, %178, !llfi_index !383
  %181 = fadd double %174, %179, !llfi_index !384
  %182 = fadd double %175, %180, !llfi_index !384
  %183 = fdiv double %181, 3.000000e+00, !llfi_index !385
  %184 = fdiv double %182, 3.000000e+00, !llfi_index !385
  %check_cmp29 = fcmp ueq double %183, %184
  br i1 %check_cmp29, label %185, label %checkBb30

checkBb30:                                        ; preds = %170
  call void @check_flag()
  br label %185

; <label>:185                                     ; preds = %checkBb30, %170
  %186 = call double @cos(double %183) #4, !llfi_index !386
  %187 = fmul double %172, %186, !llfi_index !387
  %188 = fmul double %173, %186, !llfi_index !387
  %189 = fpext double %187 to x86_fp80, !llfi_index !388
  %190 = fpext double %188 to x86_fp80, !llfi_index !388
  %191 = load x86_fp80* %a1, align 16, !llfi_index !389
  %192 = load x86_fp80* %a1, align 16, !llfi_index !389
  %193 = fdiv x86_fp80 %191, 0xK4000C000000000000000, !llfi_index !390
  %194 = fdiv x86_fp80 %192, 0xK4000C000000000000000, !llfi_index !390
  %195 = fsub x86_fp80 %189, %193, !llfi_index !391
  %196 = fsub x86_fp80 %190, %194, !llfi_index !391
  %197 = fptrunc x86_fp80 %195 to double, !llfi_index !392
  %198 = fptrunc x86_fp80 %196 to double, !llfi_index !392
  %check_cmp31 = fcmp ueq double %197, %198
  br i1 %check_cmp31, label %199, label %checkBb32

checkBb32:                                        ; preds = %185
  call void @check_flag()
  br label %199

; <label>:199                                     ; preds = %checkBb32, %185
  %200 = load double** %6, align 8, !llfi_index !393
  %201 = load double** %6, align 8, !llfi_index !393
  %202 = getelementptr inbounds double* %200, i64 1, !llfi_index !394
  %203 = getelementptr inbounds double* %201, i64 1, !llfi_index !394
  %check_cmp33 = icmp eq double* %202, %203
  br i1 %check_cmp33, label %204, label %checkBb34

checkBb34:                                        ; preds = %199
  call void @check_flag()
  br label %204

; <label>:204                                     ; preds = %checkBb34, %199
  store double %197, double* %202, align 8, !llfi_index !395
  %205 = load x86_fp80* %Q, align 16, !llfi_index !396
  %206 = load x86_fp80* %Q, align 16, !llfi_index !396
  %207 = fptrunc x86_fp80 %205 to double, !llfi_index !397
  %208 = fptrunc x86_fp80 %206 to double, !llfi_index !397
  %check_cmp35 = fcmp ueq double %207, %208
  br i1 %check_cmp35, label %209, label %checkBb36

checkBb36:                                        ; preds = %204
  call void @check_flag()
  br label %209

; <label>:209                                     ; preds = %checkBb36, %204
  %210 = call double @sqrt(double %207) #4, !llfi_index !398
  %211 = fmul double -2.000000e+00, %210, !llfi_index !399
  %212 = fmul double -2.000000e+00, %210, !llfi_index !399
  %213 = load double* %theta, align 8, !llfi_index !400
  %214 = load double* %theta, align 8, !llfi_index !400
  %215 = call double @atan(double 1.000000e+00) #4, !llfi_index !401
  %216 = fmul double 4.000000e+00, %215, !llfi_index !402
  %217 = fmul double 4.000000e+00, %215, !llfi_index !402
  %218 = fmul double 4.000000e+00, %216, !llfi_index !403
  %219 = fmul double 4.000000e+00, %217, !llfi_index !403
  %220 = fadd double %213, %218, !llfi_index !404
  %221 = fadd double %214, %219, !llfi_index !404
  %222 = fdiv double %220, 3.000000e+00, !llfi_index !405
  %223 = fdiv double %221, 3.000000e+00, !llfi_index !405
  %check_cmp37 = fcmp ueq double %222, %223
  br i1 %check_cmp37, label %224, label %checkBb38

checkBb38:                                        ; preds = %209
  call void @check_flag()
  br label %224

; <label>:224                                     ; preds = %checkBb38, %209
  %225 = call double @cos(double %222) #4, !llfi_index !406
  %226 = fmul double %211, %225, !llfi_index !407
  %227 = fmul double %212, %225, !llfi_index !407
  %228 = fpext double %226 to x86_fp80, !llfi_index !408
  %229 = fpext double %227 to x86_fp80, !llfi_index !408
  %230 = load x86_fp80* %a1, align 16, !llfi_index !409
  %231 = load x86_fp80* %a1, align 16, !llfi_index !409
  %232 = fdiv x86_fp80 %230, 0xK4000C000000000000000, !llfi_index !410
  %233 = fdiv x86_fp80 %231, 0xK4000C000000000000000, !llfi_index !410
  %234 = fsub x86_fp80 %228, %232, !llfi_index !411
  %235 = fsub x86_fp80 %229, %233, !llfi_index !411
  %236 = fptrunc x86_fp80 %234 to double, !llfi_index !412
  %237 = fptrunc x86_fp80 %235 to double, !llfi_index !412
  %check_cmp39 = fcmp ueq double %236, %237
  br i1 %check_cmp39, label %238, label %checkBb40

checkBb40:                                        ; preds = %224
  call void @check_flag()
  br label %238

; <label>:238                                     ; preds = %checkBb40, %224
  %239 = load double** %6, align 8, !llfi_index !413
  %240 = load double** %6, align 8, !llfi_index !413
  %241 = getelementptr inbounds double* %239, i64 2, !llfi_index !414
  %242 = getelementptr inbounds double* %240, i64 2, !llfi_index !414
  %check_cmp41 = icmp eq double* %241, %242
  br i1 %check_cmp41, label %243, label %checkBb42

checkBb42:                                        ; preds = %238
  call void @check_flag()
  br label %243

; <label>:243                                     ; preds = %checkBb42, %238
  store double %236, double* %241, align 8, !llfi_index !415
  br label %326, !llfi_index !416

; <label>:244                                     ; preds = %105
  %245 = load i32** %5, align 8, !llfi_index !417
  %246 = load i32** %5, align 8, !llfi_index !417
  %check_cmp43 = icmp eq i32* %245, %246
  br i1 %check_cmp43, label %247, label %checkBb44

checkBb44:                                        ; preds = %244
  call void @check_flag()
  br label %247

; <label>:247                                     ; preds = %checkBb44, %244
  store i32 1, i32* %245, align 4, !llfi_index !418
  %248 = load double* %R2_Q3, align 8, !llfi_index !419
  %249 = load double* %R2_Q3, align 8, !llfi_index !419
  %check_cmp45 = fcmp ueq double %248, %249
  br i1 %check_cmp45, label %250, label %checkBb46

checkBb46:                                        ; preds = %247
  call void @check_flag()
  br label %250

; <label>:250                                     ; preds = %checkBb46, %247
  %251 = call double @sqrt(double %248) #4, !llfi_index !420
  %252 = load x86_fp80* %R, align 16, !llfi_index !421
  %253 = load x86_fp80* %R, align 16, !llfi_index !421
  %254 = fptrunc x86_fp80 %252 to double, !llfi_index !422
  %255 = fptrunc x86_fp80 %253 to double, !llfi_index !422
  %check_cmp47 = fcmp ueq double %254, %255
  br i1 %check_cmp47, label %256, label %checkBb48

checkBb48:                                        ; preds = %250
  call void @check_flag()
  br label %256

; <label>:256                                     ; preds = %checkBb48, %250
  %257 = call double @fabs(double %254) #6, !llfi_index !423
  %258 = fadd double %251, %257, !llfi_index !424
  %259 = fadd double %251, %257, !llfi_index !424
  %check_cmp49 = fcmp ueq double %258, %259
  br i1 %check_cmp49, label %260, label %checkBb50

checkBb50:                                        ; preds = %256
  call void @check_flag()
  br label %260

; <label>:260                                     ; preds = %checkBb50, %256
  %261 = call double @pow(double %258, double 0x3FD5555555555555) #4, !llfi_index !425
  %262 = load double** %6, align 8, !llfi_index !426
  %263 = load double** %6, align 8, !llfi_index !426
  %264 = getelementptr inbounds double* %262, i64 0, !llfi_index !427
  %265 = getelementptr inbounds double* %263, i64 0, !llfi_index !427
  %check_cmp51 = icmp eq double* %264, %265
  br i1 %check_cmp51, label %266, label %checkBb52

checkBb52:                                        ; preds = %260
  call void @check_flag()
  br label %266

; <label>:266                                     ; preds = %checkBb52, %260
  store double %261, double* %264, align 8, !llfi_index !428
  %267 = load x86_fp80* %Q, align 16, !llfi_index !429
  %268 = load x86_fp80* %Q, align 16, !llfi_index !429
  %269 = load double** %6, align 8, !llfi_index !430
  %270 = load double** %6, align 8, !llfi_index !430
  %271 = getelementptr inbounds double* %269, i64 0, !llfi_index !431
  %272 = getelementptr inbounds double* %270, i64 0, !llfi_index !431
  %273 = load double* %271, align 8, !llfi_index !432
  %274 = load double* %272, align 8, !llfi_index !432
  %275 = fpext double %273 to x86_fp80, !llfi_index !433
  %276 = fpext double %274 to x86_fp80, !llfi_index !433
  %277 = fdiv x86_fp80 %267, %275, !llfi_index !434
  %278 = fdiv x86_fp80 %268, %276, !llfi_index !434
  %279 = load double** %6, align 8, !llfi_index !435
  %280 = load double** %6, align 8, !llfi_index !435
  %281 = getelementptr inbounds double* %279, i64 0, !llfi_index !436
  %282 = getelementptr inbounds double* %280, i64 0, !llfi_index !436
  %283 = load double* %281, align 8, !llfi_index !437
  %284 = load double* %282, align 8, !llfi_index !437
  %285 = fpext double %283 to x86_fp80, !llfi_index !438
  %286 = fpext double %284 to x86_fp80, !llfi_index !438
  %287 = fadd x86_fp80 %285, %277, !llfi_index !439
  %288 = fadd x86_fp80 %286, %278, !llfi_index !439
  %289 = fptrunc x86_fp80 %287 to double, !llfi_index !440
  %290 = fptrunc x86_fp80 %288 to double, !llfi_index !440
  %check_cmp53 = fcmp ueq double %289, %290
  br i1 %check_cmp53, label %291, label %checkBb54

checkBb54:                                        ; preds = %266
  call void @check_flag()
  br label %291

; <label>:291                                     ; preds = %checkBb54, %266
  store double %289, double* %281, align 8, !llfi_index !441
  %292 = load x86_fp80* %R, align 16, !llfi_index !442
  %293 = load x86_fp80* %R, align 16, !llfi_index !442
  %294 = fcmp olt x86_fp80 %292, 0xK00000000000000000000, !llfi_index !443
  %295 = fcmp olt x86_fp80 %293, 0xK00000000000000000000, !llfi_index !443
  %check_cmp55 = icmp eq i1 %294, %295
  br i1 %check_cmp55, label %296, label %checkBb56

checkBb56:                                        ; preds = %291
  call void @check_flag()
  br label %296

; <label>:296                                     ; preds = %checkBb56, %291
  %297 = select i1 %294, i32 1, i32 -1, !llfi_index !444
  %298 = sitofp i32 %297 to double, !llfi_index !445
  %299 = sitofp i32 %297 to double, !llfi_index !445
  %300 = load double** %6, align 8, !llfi_index !446
  %301 = load double** %6, align 8, !llfi_index !446
  %302 = getelementptr inbounds double* %300, i64 0, !llfi_index !447
  %303 = getelementptr inbounds double* %301, i64 0, !llfi_index !447
  %304 = load double* %302, align 8, !llfi_index !448
  %305 = load double* %303, align 8, !llfi_index !448
  %306 = fmul double %304, %298, !llfi_index !449
  %307 = fmul double %305, %299, !llfi_index !449
  %check_cmp57 = fcmp ueq double %306, %307
  br i1 %check_cmp57, label %308, label %checkBb58

checkBb58:                                        ; preds = %296
  call void @check_flag()
  br label %308

; <label>:308                                     ; preds = %checkBb58, %296
  store double %306, double* %302, align 8, !llfi_index !450
  %309 = load x86_fp80* %a1, align 16, !llfi_index !451
  %310 = load x86_fp80* %a1, align 16, !llfi_index !451
  %311 = fdiv x86_fp80 %309, 0xK4000C000000000000000, !llfi_index !452
  %312 = fdiv x86_fp80 %310, 0xK4000C000000000000000, !llfi_index !452
  %313 = load double** %6, align 8, !llfi_index !453
  %314 = load double** %6, align 8, !llfi_index !453
  %315 = getelementptr inbounds double* %313, i64 0, !llfi_index !454
  %316 = getelementptr inbounds double* %314, i64 0, !llfi_index !454
  %317 = load double* %315, align 8, !llfi_index !455
  %318 = load double* %316, align 8, !llfi_index !455
  %319 = fpext double %317 to x86_fp80, !llfi_index !456
  %320 = fpext double %318 to x86_fp80, !llfi_index !456
  %321 = fsub x86_fp80 %319, %311, !llfi_index !457
  %322 = fsub x86_fp80 %320, %312, !llfi_index !457
  %323 = fptrunc x86_fp80 %321 to double, !llfi_index !458
  %324 = fptrunc x86_fp80 %322 to double, !llfi_index !458
  %check_cmp59 = fcmp ueq double %323, %324
  br i1 %check_cmp59, label %325, label %checkBb60

checkBb60:                                        ; preds = %308
  call void @check_flag()
  br label %325

; <label>:325                                     ; preds = %checkBb60, %308
  store double %323, double* %315, align 8, !llfi_index !459
  br label %326, !llfi_index !460

; <label>:326                                     ; preds = %325, %243
  ret void, !llfi_index !461
}

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define void @usqrt(i64 %x, %struct.int_sqrt* %q) #0 {
  %1 = alloca i64, align 8, !llfi_index !462
  %2 = alloca %struct.int_sqrt*, align 8, !llfi_index !463
  %a = alloca i64, align 8, !llfi_index !464
  %r = alloca i64, align 8, !llfi_index !465
  %e = alloca i64, align 8, !llfi_index !466
  %i = alloca i32, align 4, !llfi_index !467
  store i64 %x, i64* %1, align 8, !llfi_index !468
  store %struct.int_sqrt* %q, %struct.int_sqrt** %2, align 8, !llfi_index !469
  store i64 0, i64* %a, align 8, !llfi_index !470
  store i64 0, i64* %r, align 8, !llfi_index !471
  store i64 0, i64* %e, align 8, !llfi_index !472
  store i32 0, i32* %i, align 4, !llfi_index !473
  br label %3, !llfi_index !474

; <label>:3                                       ; preds = %66, %0
  %4 = load i32* %i, align 4, !llfi_index !475
  %5 = load i32* %i, align 4, !llfi_index !475
  %6 = icmp slt i32 %4, 32, !llfi_index !476
  %7 = icmp slt i32 %5, 32, !llfi_index !476
  %check_cmp = icmp eq i1 %6, %7
  br i1 %check_cmp, label %8, label %checkBb

checkBb:                                          ; preds = %3
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb, %3
  br i1 %6, label %9, label %67, !llfi_index !477

; <label>:9                                       ; preds = %8
  %10 = load i64* %r, align 8, !llfi_index !478
  %11 = load i64* %r, align 8, !llfi_index !478
  %12 = shl i64 %10, 2, !llfi_index !479
  %13 = shl i64 %11, 2, !llfi_index !479
  %14 = load i64* %1, align 8, !llfi_index !480
  %15 = load i64* %1, align 8, !llfi_index !480
  %16 = and i64 %14, 3221225472, !llfi_index !481
  %17 = and i64 %15, 3221225472, !llfi_index !481
  %18 = lshr i64 %16, 30, !llfi_index !482
  %19 = lshr i64 %17, 30, !llfi_index !482
  %20 = add i64 %12, %18, !llfi_index !483
  %21 = add i64 %13, %19, !llfi_index !483
  %check_cmp1 = icmp eq i64 %20, %21
  br i1 %check_cmp1, label %22, label %checkBb2

checkBb2:                                         ; preds = %9
  call void @check_flag()
  br label %22

; <label>:22                                      ; preds = %checkBb2, %9
  store i64 %20, i64* %r, align 8, !llfi_index !484
  %23 = load i64* %1, align 8, !llfi_index !485
  %24 = load i64* %1, align 8, !llfi_index !485
  %25 = shl i64 %23, 2, !llfi_index !486
  %26 = shl i64 %24, 2, !llfi_index !486
  %check_cmp3 = icmp eq i64 %25, %26
  br i1 %check_cmp3, label %27, label %checkBb4

checkBb4:                                         ; preds = %22
  call void @check_flag()
  br label %27

; <label>:27                                      ; preds = %checkBb4, %22
  store i64 %25, i64* %1, align 8, !llfi_index !487
  %28 = load i64* %a, align 8, !llfi_index !488
  %29 = load i64* %a, align 8, !llfi_index !488
  %30 = shl i64 %28, 1, !llfi_index !489
  %31 = shl i64 %29, 1, !llfi_index !489
  %check_cmp5 = icmp eq i64 %30, %31
  br i1 %check_cmp5, label %32, label %checkBb6

checkBb6:                                         ; preds = %27
  call void @check_flag()
  br label %32

; <label>:32                                      ; preds = %checkBb6, %27
  store i64 %30, i64* %a, align 8, !llfi_index !490
  %33 = load i64* %a, align 8, !llfi_index !491
  %34 = load i64* %a, align 8, !llfi_index !491
  %35 = shl i64 %33, 1, !llfi_index !492
  %36 = shl i64 %34, 1, !llfi_index !492
  %37 = add i64 %35, 1, !llfi_index !493
  %38 = add i64 %36, 1, !llfi_index !493
  %check_cmp7 = icmp eq i64 %37, %38
  br i1 %check_cmp7, label %39, label %checkBb8

checkBb8:                                         ; preds = %32
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb8, %32
  store i64 %37, i64* %e, align 8, !llfi_index !494
  %40 = load i64* %r, align 8, !llfi_index !495
  %41 = load i64* %r, align 8, !llfi_index !495
  %42 = load i64* %e, align 8, !llfi_index !496
  %43 = load i64* %e, align 8, !llfi_index !496
  %44 = icmp uge i64 %40, %42, !llfi_index !497
  %45 = icmp uge i64 %41, %43, !llfi_index !497
  %check_cmp9 = icmp eq i1 %44, %45
  br i1 %check_cmp9, label %46, label %checkBb10

checkBb10:                                        ; preds = %39
  call void @check_flag()
  br label %46

; <label>:46                                      ; preds = %checkBb10, %39
  br i1 %44, label %47, label %60, !llfi_index !498

; <label>:47                                      ; preds = %46
  %48 = load i64* %e, align 8, !llfi_index !499
  %49 = load i64* %e, align 8, !llfi_index !499
  %50 = load i64* %r, align 8, !llfi_index !500
  %51 = load i64* %r, align 8, !llfi_index !500
  %52 = sub i64 %50, %48, !llfi_index !501
  %53 = sub i64 %51, %49, !llfi_index !501
  %check_cmp11 = icmp eq i64 %52, %53
  br i1 %check_cmp11, label %54, label %checkBb12

checkBb12:                                        ; preds = %47
  call void @check_flag()
  br label %54

; <label>:54                                      ; preds = %checkBb12, %47
  store i64 %52, i64* %r, align 8, !llfi_index !502
  %55 = load i64* %a, align 8, !llfi_index !503
  %56 = load i64* %a, align 8, !llfi_index !503
  %57 = add i64 %55, 1, !llfi_index !504
  %58 = add i64 %56, 1, !llfi_index !504
  %check_cmp13 = icmp eq i64 %57, %58
  br i1 %check_cmp13, label %59, label %checkBb14

checkBb14:                                        ; preds = %54
  call void @check_flag()
  br label %59

; <label>:59                                      ; preds = %checkBb14, %54
  store i64 %57, i64* %a, align 8, !llfi_index !505
  br label %60, !llfi_index !506

; <label>:60                                      ; preds = %59, %46
  br label %61, !llfi_index !507

; <label>:61                                      ; preds = %60
  %62 = load i32* %i, align 4, !llfi_index !508
  %63 = load i32* %i, align 4, !llfi_index !508
  %64 = add nsw i32 %62, 1, !llfi_index !509
  %65 = add nsw i32 %63, 1, !llfi_index !509
  %check_cmp15 = icmp eq i32 %64, %65
  br i1 %check_cmp15, label %66, label %checkBb16

checkBb16:                                        ; preds = %61
  call void @check_flag()
  br label %66

; <label>:66                                      ; preds = %checkBb16, %61
  store i32 %64, i32* %i, align 4, !llfi_index !510
  br label %3, !llfi_index !511

; <label>:67                                      ; preds = %8
  %68 = load %struct.int_sqrt** %2, align 8, !llfi_index !512
  %69 = load %struct.int_sqrt** %2, align 8, !llfi_index !512
  %70 = bitcast %struct.int_sqrt* %68 to i8*, !llfi_index !513
  %71 = bitcast %struct.int_sqrt* %69 to i8*, !llfi_index !513
  %72 = bitcast i64* %a to i8*, !llfi_index !514
  %73 = bitcast i64* %a to i8*, !llfi_index !514
  %check_cmp17 = icmp eq i8* %72, %73
  br i1 %check_cmp17, label %74, label %checkBb18

checkBb18:                                        ; preds = %67
  call void @check_flag()
  br label %74

; <label>:74                                      ; preds = %checkBb18, %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %72, i64 8, i32 4, i1 false), !llfi_index !515
  ret void, !llfi_index !516
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define double @rad2deg(double %rad) #0 {
  %1 = alloca double, align 8, !llfi_index !517
  store double %rad, double* %1, align 8, !llfi_index !518
  %2 = load double* %1, align 8, !llfi_index !519
  %3 = load double* %1, align 8, !llfi_index !519
  %4 = fmul double 1.800000e+02, %2, !llfi_index !520
  %5 = fmul double 1.800000e+02, %3, !llfi_index !520
  %6 = call double @atan(double 1.000000e+00) #4, !llfi_index !521
  %7 = fmul double 4.000000e+00, %6, !llfi_index !522
  %8 = fmul double 4.000000e+00, %6, !llfi_index !522
  %9 = fdiv double %4, %7, !llfi_index !523
  %10 = fdiv double %5, %8, !llfi_index !523
  %check_cmp = fcmp ueq double %9, %10
  br i1 %check_cmp, label %11, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %11

; <label>:11                                      ; preds = %checkBb, %0
  ret double %9, !llfi_index !524
}

; Function Attrs: nounwind uwtable
define double @deg2rad(double %deg) #0 {
  %1 = alloca double, align 8, !llfi_index !525
  store double %deg, double* %1, align 8, !llfi_index !526
  %2 = call double @atan(double 1.000000e+00) #4, !llfi_index !527
  %3 = fmul double 4.000000e+00, %2, !llfi_index !528
  %4 = fmul double 4.000000e+00, %2, !llfi_index !528
  %5 = load double* %1, align 8, !llfi_index !529
  %6 = load double* %1, align 8, !llfi_index !529
  %7 = fmul double %3, %5, !llfi_index !530
  %8 = fmul double %4, %6, !llfi_index !530
  %9 = fdiv double %7, 1.800000e+02, !llfi_index !531
  %10 = fdiv double %8, 1.800000e+02, !llfi_index !531
  %check_cmp = fcmp ueq double %9, %10
  br i1 %check_cmp, label %11, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %11

; <label>:11                                      ; preds = %checkBb, %0
  ret double %9, !llfi_index !532
}

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str11, i32 0, i32 0))
  call void @exit(i32 99) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}

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
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}
!169 = metadata !{i64 169}
!170 = metadata !{i64 170}
!171 = metadata !{i64 171}
!172 = metadata !{i64 172}
!173 = metadata !{i64 173}
!174 = metadata !{i64 174}
!175 = metadata !{i64 175}
!176 = metadata !{i64 176}
!177 = metadata !{i64 177}
!178 = metadata !{i64 178}
!179 = metadata !{i64 179}
!180 = metadata !{i64 180}
!181 = metadata !{i64 181}
!182 = metadata !{i64 182}
!183 = metadata !{i64 183}
!184 = metadata !{i64 184}
!185 = metadata !{i64 185}
!186 = metadata !{i64 186}
!187 = metadata !{i64 187}
!188 = metadata !{i64 188}
!189 = metadata !{i64 189}
!190 = metadata !{i64 190}
!191 = metadata !{i64 191}
!192 = metadata !{i64 192}
!193 = metadata !{i64 193}
!194 = metadata !{i64 194}
!195 = metadata !{i64 195}
!196 = metadata !{i64 196}
!197 = metadata !{i64 197}
!198 = metadata !{i64 198}
!199 = metadata !{i64 199}
!200 = metadata !{i64 200}
!201 = metadata !{i64 201}
!202 = metadata !{i64 202}
!203 = metadata !{i64 203}
!204 = metadata !{i64 204}
!205 = metadata !{i64 205}
!206 = metadata !{i64 206}
!207 = metadata !{i64 207}
!208 = metadata !{i64 208}
!209 = metadata !{i64 209}
!210 = metadata !{i64 210}
!211 = metadata !{i64 211}
!212 = metadata !{i64 212}
!213 = metadata !{i64 213}
!214 = metadata !{i64 214}
!215 = metadata !{i64 215}
!216 = metadata !{i64 216}
!217 = metadata !{i64 217}
!218 = metadata !{i64 218}
!219 = metadata !{i64 219}
!220 = metadata !{i64 220}
!221 = metadata !{i64 221}
!222 = metadata !{i64 222}
!223 = metadata !{i64 223}
!224 = metadata !{i64 224}
!225 = metadata !{i64 225}
!226 = metadata !{i64 226}
!227 = metadata !{i64 227}
!228 = metadata !{i64 228}
!229 = metadata !{i64 229}
!230 = metadata !{i64 230}
!231 = metadata !{i64 231}
!232 = metadata !{i64 232}
!233 = metadata !{i64 233}
!234 = metadata !{i64 234}
!235 = metadata !{i64 235}
!236 = metadata !{i64 236}
!237 = metadata !{i64 237}
!238 = metadata !{i64 238}
!239 = metadata !{i64 239}
!240 = metadata !{i64 240}
!241 = metadata !{i64 241}
!242 = metadata !{i64 242}
!243 = metadata !{i64 243}
!244 = metadata !{i64 244}
!245 = metadata !{i64 245}
!246 = metadata !{i64 246}
!247 = metadata !{i64 247}
!248 = metadata !{i64 248}
!249 = metadata !{i64 249}
!250 = metadata !{i64 250}
!251 = metadata !{i64 251}
!252 = metadata !{i64 252}
!253 = metadata !{i64 253}
!254 = metadata !{i64 254}
!255 = metadata !{i64 255}
!256 = metadata !{i64 256}
!257 = metadata !{i64 257}
!258 = metadata !{i64 258}
!259 = metadata !{i64 259}
!260 = metadata !{i64 260}
!261 = metadata !{i64 261}
!262 = metadata !{i64 262}
!263 = metadata !{i64 263}
!264 = metadata !{i64 264}
!265 = metadata !{i64 265}
!266 = metadata !{i64 266}
!267 = metadata !{i64 267}
!268 = metadata !{i64 268}
!269 = metadata !{i64 269}
!270 = metadata !{i64 270}
!271 = metadata !{i64 271}
!272 = metadata !{i64 272}
!273 = metadata !{i64 273}
!274 = metadata !{i64 274}
!275 = metadata !{i64 275}
!276 = metadata !{i64 276}
!277 = metadata !{i64 277}
!278 = metadata !{i64 278}
!279 = metadata !{i64 279}
!280 = metadata !{i64 280}
!281 = metadata !{i64 281}
!282 = metadata !{i64 282}
!283 = metadata !{i64 283}
!284 = metadata !{i64 284}
!285 = metadata !{i64 285}
!286 = metadata !{i64 286}
!287 = metadata !{i64 287}
!288 = metadata !{i64 288}
!289 = metadata !{i64 289}
!290 = metadata !{i64 290}
!291 = metadata !{i64 291}
!292 = metadata !{i64 292}
!293 = metadata !{i64 293}
!294 = metadata !{i64 294}
!295 = metadata !{i64 295}
!296 = metadata !{i64 296}
!297 = metadata !{i64 297}
!298 = metadata !{i64 298}
!299 = metadata !{i64 299}
!300 = metadata !{i64 300}
!301 = metadata !{i64 301}
!302 = metadata !{i64 302}
!303 = metadata !{i64 303}
!304 = metadata !{i64 304}
!305 = metadata !{i64 305}
!306 = metadata !{i64 306}
!307 = metadata !{i64 307}
!308 = metadata !{i64 308}
!309 = metadata !{i64 309}
!310 = metadata !{i64 310}
!311 = metadata !{i64 311}
!312 = metadata !{i64 312}
!313 = metadata !{i64 313}
!314 = metadata !{i64 314}
!315 = metadata !{i64 315}
!316 = metadata !{i64 316}
!317 = metadata !{i64 317}
!318 = metadata !{i64 318}
!319 = metadata !{i64 319}
!320 = metadata !{i64 320}
!321 = metadata !{i64 321}
!322 = metadata !{i64 322}
!323 = metadata !{i64 323}
!324 = metadata !{i64 324}
!325 = metadata !{i64 325}
!326 = metadata !{i64 326}
!327 = metadata !{i64 327}
!328 = metadata !{i64 328}
!329 = metadata !{i64 329}
!330 = metadata !{i64 330}
!331 = metadata !{i64 331}
!332 = metadata !{i64 332}
!333 = metadata !{i64 333}
!334 = metadata !{i64 334}
!335 = metadata !{i64 335}
!336 = metadata !{i64 336}
!337 = metadata !{i64 337}
!338 = metadata !{i64 338}
!339 = metadata !{i64 339}
!340 = metadata !{i64 340}
!341 = metadata !{i64 341}
!342 = metadata !{i64 342}
!343 = metadata !{i64 343}
!344 = metadata !{i64 344}
!345 = metadata !{i64 345}
!346 = metadata !{i64 346}
!347 = metadata !{i64 347}
!348 = metadata !{i64 348}
!349 = metadata !{i64 349}
!350 = metadata !{i64 350}
!351 = metadata !{i64 351}
!352 = metadata !{i64 352}
!353 = metadata !{i64 353}
!354 = metadata !{i64 354}
!355 = metadata !{i64 355}
!356 = metadata !{i64 356}
!357 = metadata !{i64 357}
!358 = metadata !{i64 358}
!359 = metadata !{i64 359}
!360 = metadata !{i64 360}
!361 = metadata !{i64 361}
!362 = metadata !{i64 362}
!363 = metadata !{i64 363}
!364 = metadata !{i64 364}
!365 = metadata !{i64 365}
!366 = metadata !{i64 366}
!367 = metadata !{i64 367}
!368 = metadata !{i64 368}
!369 = metadata !{i64 369}
!370 = metadata !{i64 370}
!371 = metadata !{i64 371}
!372 = metadata !{i64 372}
!373 = metadata !{i64 373}
!374 = metadata !{i64 374}
!375 = metadata !{i64 375}
!376 = metadata !{i64 376}
!377 = metadata !{i64 377}
!378 = metadata !{i64 378}
!379 = metadata !{i64 379}
!380 = metadata !{i64 380}
!381 = metadata !{i64 381}
!382 = metadata !{i64 382}
!383 = metadata !{i64 383}
!384 = metadata !{i64 384}
!385 = metadata !{i64 385}
!386 = metadata !{i64 386}
!387 = metadata !{i64 387}
!388 = metadata !{i64 388}
!389 = metadata !{i64 389}
!390 = metadata !{i64 390}
!391 = metadata !{i64 391}
!392 = metadata !{i64 392}
!393 = metadata !{i64 393}
!394 = metadata !{i64 394}
!395 = metadata !{i64 395}
!396 = metadata !{i64 396}
!397 = metadata !{i64 397}
!398 = metadata !{i64 398}
!399 = metadata !{i64 399}
!400 = metadata !{i64 400}
!401 = metadata !{i64 401}
!402 = metadata !{i64 402}
!403 = metadata !{i64 403}
!404 = metadata !{i64 404}
!405 = metadata !{i64 405}
!406 = metadata !{i64 406}
!407 = metadata !{i64 407}
!408 = metadata !{i64 408}
!409 = metadata !{i64 409}
!410 = metadata !{i64 410}
!411 = metadata !{i64 411}
!412 = metadata !{i64 412}
!413 = metadata !{i64 413}
!414 = metadata !{i64 414}
!415 = metadata !{i64 415}
!416 = metadata !{i64 416}
!417 = metadata !{i64 417}
!418 = metadata !{i64 418}
!419 = metadata !{i64 419}
!420 = metadata !{i64 420}
!421 = metadata !{i64 421}
!422 = metadata !{i64 422}
!423 = metadata !{i64 423}
!424 = metadata !{i64 424}
!425 = metadata !{i64 425}
!426 = metadata !{i64 426}
!427 = metadata !{i64 427}
!428 = metadata !{i64 428}
!429 = metadata !{i64 429}
!430 = metadata !{i64 430}
!431 = metadata !{i64 431}
!432 = metadata !{i64 432}
!433 = metadata !{i64 433}
!434 = metadata !{i64 434}
!435 = metadata !{i64 435}
!436 = metadata !{i64 436}
!437 = metadata !{i64 437}
!438 = metadata !{i64 438}
!439 = metadata !{i64 439}
!440 = metadata !{i64 440}
!441 = metadata !{i64 441}
!442 = metadata !{i64 442}
!443 = metadata !{i64 443}
!444 = metadata !{i64 444}
!445 = metadata !{i64 445}
!446 = metadata !{i64 446}
!447 = metadata !{i64 447}
!448 = metadata !{i64 448}
!449 = metadata !{i64 449}
!450 = metadata !{i64 450}
!451 = metadata !{i64 451}
!452 = metadata !{i64 452}
!453 = metadata !{i64 453}
!454 = metadata !{i64 454}
!455 = metadata !{i64 455}
!456 = metadata !{i64 456}
!457 = metadata !{i64 457}
!458 = metadata !{i64 458}
!459 = metadata !{i64 459}
!460 = metadata !{i64 460}
!461 = metadata !{i64 461}
!462 = metadata !{i64 462}
!463 = metadata !{i64 463}
!464 = metadata !{i64 464}
!465 = metadata !{i64 465}
!466 = metadata !{i64 466}
!467 = metadata !{i64 467}
!468 = metadata !{i64 468}
!469 = metadata !{i64 469}
!470 = metadata !{i64 470}
!471 = metadata !{i64 471}
!472 = metadata !{i64 472}
!473 = metadata !{i64 473}
!474 = metadata !{i64 474}
!475 = metadata !{i64 475}
!476 = metadata !{i64 476}
!477 = metadata !{i64 477}
!478 = metadata !{i64 478}
!479 = metadata !{i64 479}
!480 = metadata !{i64 480}
!481 = metadata !{i64 481}
!482 = metadata !{i64 482}
!483 = metadata !{i64 483}
!484 = metadata !{i64 484}
!485 = metadata !{i64 485}
!486 = metadata !{i64 486}
!487 = metadata !{i64 487}
!488 = metadata !{i64 488}
!489 = metadata !{i64 489}
!490 = metadata !{i64 490}
!491 = metadata !{i64 491}
!492 = metadata !{i64 492}
!493 = metadata !{i64 493}
!494 = metadata !{i64 494}
!495 = metadata !{i64 495}
!496 = metadata !{i64 496}
!497 = metadata !{i64 497}
!498 = metadata !{i64 498}
!499 = metadata !{i64 499}
!500 = metadata !{i64 500}
!501 = metadata !{i64 501}
!502 = metadata !{i64 502}
!503 = metadata !{i64 503}
!504 = metadata !{i64 504}
!505 = metadata !{i64 505}
!506 = metadata !{i64 506}
!507 = metadata !{i64 507}
!508 = metadata !{i64 508}
!509 = metadata !{i64 509}
!510 = metadata !{i64 510}
!511 = metadata !{i64 511}
!512 = metadata !{i64 512}
!513 = metadata !{i64 513}
!514 = metadata !{i64 514}
!515 = metadata !{i64 515}
!516 = metadata !{i64 516}
!517 = metadata !{i64 517}
!518 = metadata !{i64 518}
!519 = metadata !{i64 519}
!520 = metadata !{i64 520}
!521 = metadata !{i64 521}
!522 = metadata !{i64 522}
!523 = metadata !{i64 523}
!524 = metadata !{i64 524}
!525 = metadata !{i64 525}
!526 = metadata !{i64 526}
!527 = metadata !{i64 527}
!528 = metadata !{i64 528}
!529 = metadata !{i64 529}
!530 = metadata !{i64 530}
!531 = metadata !{i64 531}
!532 = metadata !{i64 532}
