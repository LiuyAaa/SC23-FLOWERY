; ModuleID = 'basicmath-0.8.ll'
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
  %4 = load double* %b1, align 8, !llfi_index !46
  %5 = load double* %c1, align 8, !llfi_index !47
  %6 = load double* %d1, align 8, !llfi_index !48
  %7 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !49
  call void @SolveCubic(double %3, double %4, double %5, double %6, i32* %solutions, double* %7), !llfi_index !50
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !51
  store i32 0, i32* %i, align 4, !llfi_index !52
  br label %9, !llfi_index !53

; <label>:9                                       ; preds = %19, %0
  %10 = load i32* %i, align 4, !llfi_index !54
  %11 = load i32* %solutions, align 4, !llfi_index !55
  %12 = icmp slt i32 %10, %11, !llfi_index !56
  br i1 %12, label %13, label %22, !llfi_index !57

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4, !llfi_index !58
  %15 = sext i32 %14 to i64, !llfi_index !59
  %16 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %15, !llfi_index !60
  %17 = load double* %16, align 8, !llfi_index !61
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %17), !llfi_index !62
  br label %19, !llfi_index !63

; <label>:19                                      ; preds = %13
  %20 = load i32* %i, align 4, !llfi_index !64
  %21 = add nsw i32 %20, 1, !llfi_index !65
  store i32 %21, i32* %i, align 4, !llfi_index !66
  br label %9, !llfi_index !67

; <label>:22                                      ; preds = %9
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !68
  %24 = load double* %a2, align 8, !llfi_index !69
  %25 = load double* %b2, align 8, !llfi_index !70
  %26 = load double* %c2, align 8, !llfi_index !71
  %27 = load double* %d2, align 8, !llfi_index !72
  %28 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !73
  call void @SolveCubic(double %24, double %25, double %26, double %27, i32* %solutions, double* %28), !llfi_index !74
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !75
  store i32 0, i32* %i, align 4, !llfi_index !76
  br label %30, !llfi_index !77

; <label>:30                                      ; preds = %40, %22
  %31 = load i32* %i, align 4, !llfi_index !78
  %32 = load i32* %solutions, align 4, !llfi_index !79
  %33 = icmp slt i32 %31, %32, !llfi_index !80
  br i1 %33, label %34, label %43, !llfi_index !81

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !llfi_index !82
  %36 = sext i32 %35 to i64, !llfi_index !83
  %37 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %36, !llfi_index !84
  %38 = load double* %37, align 8, !llfi_index !85
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %38), !llfi_index !86
  br label %40, !llfi_index !87

; <label>:40                                      ; preds = %34
  %41 = load i32* %i, align 4, !llfi_index !88
  %42 = add nsw i32 %41, 1, !llfi_index !89
  store i32 %42, i32* %i, align 4, !llfi_index !90
  br label %30, !llfi_index !91

; <label>:43                                      ; preds = %30
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !92
  %45 = load double* %a3, align 8, !llfi_index !93
  %46 = load double* %b3, align 8, !llfi_index !94
  %47 = load double* %c3, align 8, !llfi_index !95
  %48 = load double* %d3, align 8, !llfi_index !96
  %49 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !97
  call void @SolveCubic(double %45, double %46, double %47, double %48, i32* %solutions, double* %49), !llfi_index !98
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !99
  store i32 0, i32* %i, align 4, !llfi_index !100
  br label %51, !llfi_index !101

; <label>:51                                      ; preds = %61, %43
  %52 = load i32* %i, align 4, !llfi_index !102
  %53 = load i32* %solutions, align 4, !llfi_index !103
  %54 = icmp slt i32 %52, %53, !llfi_index !104
  br i1 %54, label %55, label %64, !llfi_index !105

; <label>:55                                      ; preds = %51
  %56 = load i32* %i, align 4, !llfi_index !106
  %57 = sext i32 %56 to i64, !llfi_index !107
  %58 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %57, !llfi_index !108
  %59 = load double* %58, align 8, !llfi_index !109
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %59), !llfi_index !110
  br label %61, !llfi_index !111

; <label>:61                                      ; preds = %55
  %62 = load i32* %i, align 4, !llfi_index !112
  %63 = add nsw i32 %62, 1, !llfi_index !113
  store i32 %63, i32* %i, align 4, !llfi_index !114
  br label %51, !llfi_index !115

; <label>:64                                      ; preds = %51
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !116
  %66 = load double* %a4, align 8, !llfi_index !117
  %67 = load double* %b4, align 8, !llfi_index !118
  %68 = load double* %c4, align 8, !llfi_index !119
  %69 = load double* %d4, align 8, !llfi_index !120
  %70 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !121
  call void @SolveCubic(double %66, double %67, double %68, double %69, i32* %solutions, double* %70), !llfi_index !122
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !123
  store i32 0, i32* %i, align 4, !llfi_index !124
  br label %72, !llfi_index !125

; <label>:72                                      ; preds = %82, %64
  %73 = load i32* %i, align 4, !llfi_index !126
  %74 = load i32* %solutions, align 4, !llfi_index !127
  %75 = icmp slt i32 %73, %74, !llfi_index !128
  br i1 %75, label %76, label %85, !llfi_index !129

; <label>:76                                      ; preds = %72
  %77 = load i32* %i, align 4, !llfi_index !130
  %78 = sext i32 %77 to i64, !llfi_index !131
  %79 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %78, !llfi_index !132
  %80 = load double* %79, align 8, !llfi_index !133
  %81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %80), !llfi_index !134
  br label %82, !llfi_index !135

; <label>:82                                      ; preds = %76
  %83 = load i32* %i, align 4, !llfi_index !136
  %84 = add nsw i32 %83, 1, !llfi_index !137
  store i32 %84, i32* %i, align 4, !llfi_index !138
  br label %72, !llfi_index !139

; <label>:85                                      ; preds = %72
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !140
  store double 1.000000e+00, double* %a1, align 8, !llfi_index !141
  br label %87, !llfi_index !142

; <label>:87                                      ; preds = %163, %85
  %88 = load double* %a1, align 8, !llfi_index !143
  %89 = fcmp olt double %88, 1.000000e+01, !llfi_index !144
  br i1 %89, label %90, label %166, !llfi_index !145

; <label>:90                                      ; preds = %87
  store double 1.000000e+01, double* %b1, align 8, !llfi_index !146
  br label %91, !llfi_index !147

; <label>:91                                      ; preds = %159, %90
  %92 = load double* %b1, align 8, !llfi_index !148
  %93 = fcmp ogt double %92, 0.000000e+00, !llfi_index !149
  br i1 %93, label %94, label %162, !llfi_index !150

; <label>:94                                      ; preds = %91
  store double 5.000000e+00, double* %c1, align 8, !llfi_index !151
  br label %95, !llfi_index !152

; <label>:95                                      ; preds = %157, %94
  %96 = load double* %c1, align 8, !llfi_index !153
  %97 = fcmp olt double %96, 1.500000e+01, !llfi_index !154
  %98 = fcmp olt double %96, 1.500000e+01, !llfi_index !154
  %check_cmp = icmp eq i1 %97, %98
  br i1 %check_cmp, label %99, label %checkBb

checkBb:                                          ; preds = %95
  call void @check_flag()
  br label %99

; <label>:99                                      ; preds = %checkBb, %95
  br i1 %97, label %100, label %158, !llfi_index !155

; <label>:100                                     ; preds = %99
  store double -1.000000e+00, double* %d1, align 8, !llfi_index !156
  br label %101, !llfi_index !157

; <label>:101                                     ; preds = %150, %100
  %102 = load double* %d1, align 8, !llfi_index !158
  %103 = fcmp ogt double %102, -1.100000e+01, !llfi_index !159
  %104 = fcmp ogt double %102, -1.100000e+01, !llfi_index !159
  %check_cmp1 = icmp eq i1 %103, %104
  br i1 %check_cmp1, label %105, label %checkBb2

checkBb2:                                         ; preds = %101
  call void @check_flag()
  br label %105

; <label>:105                                     ; preds = %checkBb2, %101
  br i1 %103, label %106, label %151, !llfi_index !160

; <label>:106                                     ; preds = %105
  %107 = load double* %a1, align 8, !llfi_index !161
  %108 = load double* %a1, align 8, !llfi_index !161
  %check_cmp3 = fcmp ueq double %107, %108
  br i1 %check_cmp3, label %109, label %checkBb4

checkBb4:                                         ; preds = %106
  call void @check_flag()
  br label %109

; <label>:109                                     ; preds = %checkBb4, %106
  %110 = load double* %b1, align 8, !llfi_index !162
  %111 = load double* %b1, align 8, !llfi_index !162
  %check_cmp5 = fcmp ueq double %110, %111
  br i1 %check_cmp5, label %112, label %checkBb6

checkBb6:                                         ; preds = %109
  call void @check_flag()
  br label %112

; <label>:112                                     ; preds = %checkBb6, %109
  %113 = load double* %c1, align 8, !llfi_index !163
  %114 = load double* %c1, align 8, !llfi_index !163
  %check_cmp7 = fcmp ueq double %113, %114
  br i1 %check_cmp7, label %115, label %checkBb8

checkBb8:                                         ; preds = %112
  call void @check_flag()
  br label %115

; <label>:115                                     ; preds = %checkBb8, %112
  %116 = load double* %d1, align 8, !llfi_index !164
  %117 = load double* %d1, align 8, !llfi_index !164
  %check_cmp9 = fcmp ueq double %116, %117
  br i1 %check_cmp9, label %118, label %checkBb10

checkBb10:                                        ; preds = %115
  call void @check_flag()
  br label %118

; <label>:118                                     ; preds = %checkBb10, %115
  %119 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !165
  call void @SolveCubic(double %107, double %110, double %113, double %116, i32* %solutions, double* %119), !llfi_index !166
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !167
  store i32 0, i32* %i, align 4, !llfi_index !168
  br label %121, !llfi_index !169

; <label>:121                                     ; preds = %140, %118
  %122 = load i32* %i, align 4, !llfi_index !170
  %123 = load i32* %i, align 4, !llfi_index !170
  %124 = load i32* %solutions, align 4, !llfi_index !171
  %125 = load i32* %solutions, align 4, !llfi_index !171
  %126 = icmp slt i32 %122, %124, !llfi_index !172
  %127 = icmp slt i32 %123, %125, !llfi_index !172
  %check_cmp11 = icmp eq i1 %126, %127
  br i1 %check_cmp11, label %128, label %checkBb12

checkBb12:                                        ; preds = %121
  call void @check_flag()
  br label %128

; <label>:128                                     ; preds = %checkBb12, %121
  br i1 %126, label %129, label %143, !llfi_index !173

; <label>:129                                     ; preds = %128
  %130 = load i32* %i, align 4, !llfi_index !174
  %131 = load i32* %i, align 4, !llfi_index !174
  %132 = sext i32 %130 to i64, !llfi_index !175
  %133 = sext i32 %131 to i64, !llfi_index !175
  %134 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %132, !llfi_index !176
  %135 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %133, !llfi_index !176
  %136 = load double* %134, align 8, !llfi_index !177
  %137 = load double* %135, align 8, !llfi_index !177
  %check_cmp13 = fcmp ueq double %136, %137
  br i1 %check_cmp13, label %138, label %checkBb14

checkBb14:                                        ; preds = %129
  call void @check_flag()
  br label %138

; <label>:138                                     ; preds = %checkBb14, %129
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %136), !llfi_index !178
  br label %140, !llfi_index !179

; <label>:140                                     ; preds = %138
  %141 = load i32* %i, align 4, !llfi_index !180
  %142 = add nsw i32 %141, 1, !llfi_index !181
  store i32 %142, i32* %i, align 4, !llfi_index !182
  br label %121, !llfi_index !183

; <label>:143                                     ; preds = %128
  %144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !184
  br label %145, !llfi_index !185

; <label>:145                                     ; preds = %143
  %146 = load double* %d1, align 8, !llfi_index !186
  %147 = load double* %d1, align 8, !llfi_index !186
  %148 = fadd double %146, -1.000000e+00, !llfi_index !187
  %149 = fadd double %147, -1.000000e+00, !llfi_index !187
  %check_cmp15 = fcmp ueq double %148, %149
  br i1 %check_cmp15, label %150, label %checkBb16

checkBb16:                                        ; preds = %145
  call void @check_flag()
  br label %150

; <label>:150                                     ; preds = %checkBb16, %145
  store double %148, double* %d1, align 8, !llfi_index !188
  br label %101, !llfi_index !189

; <label>:151                                     ; preds = %105
  br label %152, !llfi_index !190

; <label>:152                                     ; preds = %151
  %153 = load double* %c1, align 8, !llfi_index !191
  %154 = load double* %c1, align 8, !llfi_index !191
  %155 = fadd double %153, 5.000000e-01, !llfi_index !192
  %156 = fadd double %154, 5.000000e-01, !llfi_index !192
  %check_cmp17 = fcmp ueq double %155, %156
  br i1 %check_cmp17, label %157, label %checkBb18

checkBb18:                                        ; preds = %152
  call void @check_flag()
  br label %157

; <label>:157                                     ; preds = %checkBb18, %152
  store double %155, double* %c1, align 8, !llfi_index !193
  br label %95, !llfi_index !194

; <label>:158                                     ; preds = %99
  br label %159, !llfi_index !195

; <label>:159                                     ; preds = %158
  %160 = load double* %b1, align 8, !llfi_index !196
  %161 = fadd double %160, -1.000000e+00, !llfi_index !197
  store double %161, double* %b1, align 8, !llfi_index !198
  br label %91, !llfi_index !199

; <label>:162                                     ; preds = %91
  br label %163, !llfi_index !200

; <label>:163                                     ; preds = %162
  %164 = load double* %a1, align 8, !llfi_index !201
  %165 = fadd double %164, 1.000000e+00, !llfi_index !202
  store double %165, double* %a1, align 8, !llfi_index !203
  br label %87, !llfi_index !204

; <label>:166                                     ; preds = %87
  %167 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0)), !llfi_index !205
  store i32 0, i32* %i, align 4, !llfi_index !206
  br label %168, !llfi_index !207

; <label>:168                                     ; preds = %189, %166
  %169 = load i32* %i, align 4, !llfi_index !208
  %170 = load i32* %i, align 4, !llfi_index !208
  %171 = icmp slt i32 %169, 1001, !llfi_index !209
  %172 = icmp slt i32 %170, 1001, !llfi_index !209
  %check_cmp19 = icmp eq i1 %171, %172
  br i1 %check_cmp19, label %173, label %checkBb20

checkBb20:                                        ; preds = %168
  call void @check_flag()
  br label %173

; <label>:173                                     ; preds = %checkBb20, %168
  br i1 %171, label %174, label %192, !llfi_index !210

; <label>:174                                     ; preds = %173
  %175 = load i32* %i, align 4, !llfi_index !211
  %176 = load i32* %i, align 4, !llfi_index !211
  %177 = sext i32 %175 to i64, !llfi_index !212
  %178 = sext i32 %176 to i64, !llfi_index !212
  %check_cmp21 = icmp eq i64 %177, %178
  br i1 %check_cmp21, label %179, label %checkBb22

checkBb22:                                        ; preds = %174
  call void @check_flag()
  br label %179

; <label>:179                                     ; preds = %checkBb22, %174
  call void @usqrt(i64 %177, %struct.int_sqrt* %q), !llfi_index !213
  %180 = load i32* %i, align 4, !llfi_index !214
  %181 = load i32* %i, align 4, !llfi_index !214
  %check_cmp23 = icmp eq i32 %180, %181
  br i1 %check_cmp23, label %182, label %checkBb24

checkBb24:                                        ; preds = %179
  call void @check_flag()
  br label %182

; <label>:182                                     ; preds = %checkBb24, %179
  %183 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !215
  %184 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !215
  %185 = load i32* %183, align 4, !llfi_index !216
  %186 = load i32* %184, align 4, !llfi_index !216
  %check_cmp25 = icmp eq i32 %185, %186
  br i1 %check_cmp25, label %187, label %checkBb26

checkBb26:                                        ; preds = %182
  call void @check_flag()
  br label %187

; <label>:187                                     ; preds = %checkBb26, %182
  %188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i32 %180, i32 %185), !llfi_index !217
  br label %189, !llfi_index !218

; <label>:189                                     ; preds = %187
  %190 = load i32* %i, align 4, !llfi_index !219
  %191 = add nsw i32 %190, 1, !llfi_index !220
  store i32 %191, i32* %i, align 4, !llfi_index !221
  br label %168, !llfi_index !222

; <label>:192                                     ; preds = %173
  %193 = load i64* %l, align 8, !llfi_index !223
  call void @usqrt(i64 %193, %struct.int_sqrt* %q), !llfi_index !224
  %194 = load i64* %l, align 8, !llfi_index !225
  %195 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !226
  %196 = load i32* %195, align 4, !llfi_index !227
  %197 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0), i64 %194, i32 %196), !llfi_index !228
  %198 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0)), !llfi_index !229
  store double 0.000000e+00, double* %X, align 8, !llfi_index !230
  br label %199, !llfi_index !231

; <label>:199                                     ; preds = %225, %192
  %200 = load double* %X, align 8, !llfi_index !232
  %201 = load double* %X, align 8, !llfi_index !232
  %202 = fcmp ole double %200, 3.600000e+02, !llfi_index !233
  %203 = fcmp ole double %201, 3.600000e+02, !llfi_index !233
  %check_cmp27 = icmp eq i1 %202, %203
  br i1 %check_cmp27, label %204, label %checkBb28

checkBb28:                                        ; preds = %199
  call void @check_flag()
  br label %204

; <label>:204                                     ; preds = %checkBb28, %199
  br i1 %202, label %205, label %226, !llfi_index !234

; <label>:205                                     ; preds = %204
  %206 = load double* %X, align 8, !llfi_index !235
  %207 = load double* %X, align 8, !llfi_index !235
  %check_cmp29 = fcmp ueq double %206, %207
  br i1 %check_cmp29, label %208, label %checkBb30

checkBb30:                                        ; preds = %205
  call void @check_flag()
  br label %208

; <label>:208                                     ; preds = %checkBb30, %205
  %209 = load double* %X, align 8, !llfi_index !236
  %210 = load double* %X, align 8, !llfi_index !236
  %211 = call double @atan(double 1.000000e+00) #4, !llfi_index !237
  %212 = fmul double 4.000000e+00, %211, !llfi_index !238
  %213 = fmul double 4.000000e+00, %211, !llfi_index !238
  %214 = fmul double %209, %212, !llfi_index !239
  %215 = fmul double %210, %213, !llfi_index !239
  %216 = fdiv double %214, 1.800000e+02, !llfi_index !240
  %217 = fdiv double %215, 1.800000e+02, !llfi_index !240
  %check_cmp31 = fcmp ueq double %216, %217
  br i1 %check_cmp31, label %218, label %checkBb32

checkBb32:                                        ; preds = %208
  call void @check_flag()
  br label %218

; <label>:218                                     ; preds = %checkBb32, %208
  %219 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), double %206, double %216), !llfi_index !241
  br label %220, !llfi_index !242

; <label>:220                                     ; preds = %218
  %221 = load double* %X, align 8, !llfi_index !243
  %222 = load double* %X, align 8, !llfi_index !243
  %223 = fadd double %221, 1.000000e+00, !llfi_index !244
  %224 = fadd double %222, 1.000000e+00, !llfi_index !244
  %check_cmp33 = fcmp ueq double %223, %224
  br i1 %check_cmp33, label %225, label %checkBb34

checkBb34:                                        ; preds = %220
  call void @check_flag()
  br label %225

; <label>:225                                     ; preds = %checkBb34, %220
  store double %223, double* %X, align 8, !llfi_index !245
  br label %199, !llfi_index !246

; <label>:226                                     ; preds = %204
  %227 = call i32 (i8*, ...)* bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8]* @.str9, i32 0, i32 0)), !llfi_index !247
  store double 0.000000e+00, double* %X, align 8, !llfi_index !248
  br label %228, !llfi_index !249

; <label>:228                                     ; preds = %262, %226
  %229 = load double* %X, align 8, !llfi_index !250
  %230 = call double @atan(double 1.000000e+00) #4, !llfi_index !251
  %231 = fmul double 4.000000e+00, %230, !llfi_index !252
  %232 = fmul double 2.000000e+00, %231, !llfi_index !253
  %233 = fadd double %232, 1.000000e-06, !llfi_index !254
  %234 = fcmp ole double %229, %233, !llfi_index !255
  %235 = fcmp ole double %229, %233, !llfi_index !255
  %check_cmp35 = icmp eq i1 %234, %235
  br i1 %check_cmp35, label %236, label %checkBb36

checkBb36:                                        ; preds = %228
  call void @check_flag()
  br label %236

; <label>:236                                     ; preds = %checkBb36, %228
  br i1 %234, label %237, label %263, !llfi_index !256

; <label>:237                                     ; preds = %236
  %238 = load double* %X, align 8, !llfi_index !257
  %239 = load double* %X, align 8, !llfi_index !257
  %check_cmp37 = fcmp ueq double %238, %239
  br i1 %check_cmp37, label %240, label %checkBb38

checkBb38:                                        ; preds = %237
  call void @check_flag()
  br label %240

; <label>:240                                     ; preds = %checkBb38, %237
  %241 = load double* %X, align 8, !llfi_index !258
  %242 = load double* %X, align 8, !llfi_index !258
  %243 = fmul double %241, 1.800000e+02, !llfi_index !259
  %244 = fmul double %242, 1.800000e+02, !llfi_index !259
  %245 = call double @atan(double 1.000000e+00) #4, !llfi_index !260
  %246 = fmul double 4.000000e+00, %245, !llfi_index !261
  %247 = fmul double 4.000000e+00, %245, !llfi_index !261
  %248 = fdiv double %243, %246, !llfi_index !262
  %249 = fdiv double %244, %247, !llfi_index !262
  %check_cmp39 = fcmp ueq double %248, %249
  br i1 %check_cmp39, label %250, label %checkBb40

checkBb40:                                        ; preds = %240
  call void @check_flag()
  br label %250

; <label>:250                                     ; preds = %checkBb40, %240
  %251 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), double %238, double %248), !llfi_index !263
  br label %252, !llfi_index !264

; <label>:252                                     ; preds = %250
  %253 = call double @atan(double 1.000000e+00) #4, !llfi_index !265
  %254 = fmul double 4.000000e+00, %253, !llfi_index !266
  %255 = fmul double 4.000000e+00, %253, !llfi_index !266
  %256 = fdiv double %254, 1.800000e+02, !llfi_index !267
  %257 = fdiv double %255, 1.800000e+02, !llfi_index !267
  %258 = load double* %X, align 8, !llfi_index !268
  %259 = load double* %X, align 8, !llfi_index !268
  %260 = fadd double %258, %256, !llfi_index !269
  %261 = fadd double %259, %257, !llfi_index !269
  %check_cmp41 = fcmp ueq double %260, %261
  br i1 %check_cmp41, label %262, label %checkBb42

checkBb42:                                        ; preds = %252
  call void @check_flag()
  br label %262

; <label>:262                                     ; preds = %checkBb42, %252
  store double %260, double* %X, align 8, !llfi_index !270
  br label %228, !llfi_index !271

; <label>:263                                     ; preds = %236
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
  %102 = fcmp ole double %101, 0.000000e+00, !llfi_index !343
  %103 = fcmp ole double %101, 0.000000e+00, !llfi_index !343
  %check_cmp11 = icmp eq i1 %102, %103
  br i1 %check_cmp11, label %104, label %checkBb12

checkBb12:                                        ; preds = %100
  call void @check_flag()
  br label %104

; <label>:104                                     ; preds = %checkBb12, %100
  br i1 %102, label %105, label %241, !llfi_index !344

; <label>:105                                     ; preds = %104
  %106 = load i32** %5, align 8, !llfi_index !345
  store i32 3, i32* %106, align 4, !llfi_index !346
  %107 = load x86_fp80* %R, align 16, !llfi_index !347
  %108 = load x86_fp80* %R, align 16, !llfi_index !347
  %109 = load x86_fp80* %Q, align 16, !llfi_index !348
  %110 = load x86_fp80* %Q, align 16, !llfi_index !348
  %111 = load x86_fp80* %Q, align 16, !llfi_index !349
  %112 = load x86_fp80* %Q, align 16, !llfi_index !349
  %113 = fmul x86_fp80 %109, %111, !llfi_index !350
  %114 = fmul x86_fp80 %110, %112, !llfi_index !350
  %115 = load x86_fp80* %Q, align 16, !llfi_index !351
  %116 = load x86_fp80* %Q, align 16, !llfi_index !351
  %117 = fmul x86_fp80 %113, %115, !llfi_index !352
  %118 = fmul x86_fp80 %114, %116, !llfi_index !352
  %119 = fptrunc x86_fp80 %117 to double, !llfi_index !353
  %120 = fptrunc x86_fp80 %118 to double, !llfi_index !353
  %check_cmp13 = fcmp ueq double %119, %120
  br i1 %check_cmp13, label %121, label %checkBb14

checkBb14:                                        ; preds = %105
  call void @check_flag()
  br label %121

; <label>:121                                     ; preds = %checkBb14, %105
  %122 = call double @sqrt(double %119) #4, !llfi_index !354
  %123 = fpext double %122 to x86_fp80, !llfi_index !355
  %124 = fpext double %122 to x86_fp80, !llfi_index !355
  %125 = fdiv x86_fp80 %107, %123, !llfi_index !356
  %126 = fdiv x86_fp80 %108, %124, !llfi_index !356
  %127 = fptrunc x86_fp80 %125 to double, !llfi_index !357
  %128 = fptrunc x86_fp80 %126 to double, !llfi_index !357
  %check_cmp15 = fcmp ueq double %127, %128
  br i1 %check_cmp15, label %129, label %checkBb16

checkBb16:                                        ; preds = %121
  call void @check_flag()
  br label %129

; <label>:129                                     ; preds = %checkBb16, %121
  %130 = call double @acos(double %127) #4, !llfi_index !358
  store double %130, double* %theta, align 8, !llfi_index !359
  %131 = load x86_fp80* %Q, align 16, !llfi_index !360
  %132 = load x86_fp80* %Q, align 16, !llfi_index !360
  %133 = fptrunc x86_fp80 %131 to double, !llfi_index !361
  %134 = fptrunc x86_fp80 %132 to double, !llfi_index !361
  %check_cmp17 = fcmp ueq double %133, %134
  br i1 %check_cmp17, label %135, label %checkBb18

checkBb18:                                        ; preds = %129
  call void @check_flag()
  br label %135

; <label>:135                                     ; preds = %checkBb18, %129
  %136 = call double @sqrt(double %133) #4, !llfi_index !362
  %137 = fmul double -2.000000e+00, %136, !llfi_index !363
  %138 = fmul double -2.000000e+00, %136, !llfi_index !363
  %139 = load double* %theta, align 8, !llfi_index !364
  %140 = load double* %theta, align 8, !llfi_index !364
  %141 = fdiv double %139, 3.000000e+00, !llfi_index !365
  %142 = fdiv double %140, 3.000000e+00, !llfi_index !365
  %check_cmp19 = fcmp ueq double %141, %142
  br i1 %check_cmp19, label %143, label %checkBb20

checkBb20:                                        ; preds = %135
  call void @check_flag()
  br label %143

; <label>:143                                     ; preds = %checkBb20, %135
  %144 = call double @cos(double %141) #4, !llfi_index !366
  %145 = fmul double %137, %144, !llfi_index !367
  %146 = fmul double %138, %144, !llfi_index !367
  %147 = fpext double %145 to x86_fp80, !llfi_index !368
  %148 = fpext double %146 to x86_fp80, !llfi_index !368
  %149 = load x86_fp80* %a1, align 16, !llfi_index !369
  %150 = load x86_fp80* %a1, align 16, !llfi_index !369
  %151 = fdiv x86_fp80 %149, 0xK4000C000000000000000, !llfi_index !370
  %152 = fdiv x86_fp80 %150, 0xK4000C000000000000000, !llfi_index !370
  %153 = fsub x86_fp80 %147, %151, !llfi_index !371
  %154 = fsub x86_fp80 %148, %152, !llfi_index !371
  %155 = fptrunc x86_fp80 %153 to double, !llfi_index !372
  %156 = fptrunc x86_fp80 %154 to double, !llfi_index !372
  %check_cmp21 = fcmp ueq double %155, %156
  br i1 %check_cmp21, label %157, label %checkBb22

checkBb22:                                        ; preds = %143
  call void @check_flag()
  br label %157

; <label>:157                                     ; preds = %checkBb22, %143
  %158 = load double** %6, align 8, !llfi_index !373
  %159 = load double** %6, align 8, !llfi_index !373
  %160 = getelementptr inbounds double* %158, i64 0, !llfi_index !374
  %161 = getelementptr inbounds double* %159, i64 0, !llfi_index !374
  %check_cmp23 = icmp eq double* %160, %161
  br i1 %check_cmp23, label %162, label %checkBb24

checkBb24:                                        ; preds = %157
  call void @check_flag()
  br label %162

; <label>:162                                     ; preds = %checkBb24, %157
  store double %155, double* %160, align 8, !llfi_index !375
  %163 = load x86_fp80* %Q, align 16, !llfi_index !376
  %164 = load x86_fp80* %Q, align 16, !llfi_index !376
  %165 = fptrunc x86_fp80 %163 to double, !llfi_index !377
  %166 = fptrunc x86_fp80 %164 to double, !llfi_index !377
  %check_cmp25 = fcmp ueq double %165, %166
  br i1 %check_cmp25, label %167, label %checkBb26

checkBb26:                                        ; preds = %162
  call void @check_flag()
  br label %167

; <label>:167                                     ; preds = %checkBb26, %162
  %168 = call double @sqrt(double %165) #4, !llfi_index !378
  %169 = fmul double -2.000000e+00, %168, !llfi_index !379
  %170 = fmul double -2.000000e+00, %168, !llfi_index !379
  %171 = load double* %theta, align 8, !llfi_index !380
  %172 = load double* %theta, align 8, !llfi_index !380
  %173 = call double @atan(double 1.000000e+00) #4, !llfi_index !381
  %174 = fmul double 4.000000e+00, %173, !llfi_index !382
  %175 = fmul double 4.000000e+00, %173, !llfi_index !382
  %176 = fmul double 2.000000e+00, %174, !llfi_index !383
  %177 = fmul double 2.000000e+00, %175, !llfi_index !383
  %178 = fadd double %171, %176, !llfi_index !384
  %179 = fadd double %172, %177, !llfi_index !384
  %180 = fdiv double %178, 3.000000e+00, !llfi_index !385
  %181 = fdiv double %179, 3.000000e+00, !llfi_index !385
  %check_cmp27 = fcmp ueq double %180, %181
  br i1 %check_cmp27, label %182, label %checkBb28

checkBb28:                                        ; preds = %167
  call void @check_flag()
  br label %182

; <label>:182                                     ; preds = %checkBb28, %167
  %183 = call double @cos(double %180) #4, !llfi_index !386
  %184 = fmul double %169, %183, !llfi_index !387
  %185 = fmul double %170, %183, !llfi_index !387
  %186 = fpext double %184 to x86_fp80, !llfi_index !388
  %187 = fpext double %185 to x86_fp80, !llfi_index !388
  %188 = load x86_fp80* %a1, align 16, !llfi_index !389
  %189 = load x86_fp80* %a1, align 16, !llfi_index !389
  %190 = fdiv x86_fp80 %188, 0xK4000C000000000000000, !llfi_index !390
  %191 = fdiv x86_fp80 %189, 0xK4000C000000000000000, !llfi_index !390
  %192 = fsub x86_fp80 %186, %190, !llfi_index !391
  %193 = fsub x86_fp80 %187, %191, !llfi_index !391
  %194 = fptrunc x86_fp80 %192 to double, !llfi_index !392
  %195 = fptrunc x86_fp80 %193 to double, !llfi_index !392
  %check_cmp29 = fcmp ueq double %194, %195
  br i1 %check_cmp29, label %196, label %checkBb30

checkBb30:                                        ; preds = %182
  call void @check_flag()
  br label %196

; <label>:196                                     ; preds = %checkBb30, %182
  %197 = load double** %6, align 8, !llfi_index !393
  %198 = load double** %6, align 8, !llfi_index !393
  %199 = getelementptr inbounds double* %197, i64 1, !llfi_index !394
  %200 = getelementptr inbounds double* %198, i64 1, !llfi_index !394
  %check_cmp31 = icmp eq double* %199, %200
  br i1 %check_cmp31, label %201, label %checkBb32

checkBb32:                                        ; preds = %196
  call void @check_flag()
  br label %201

; <label>:201                                     ; preds = %checkBb32, %196
  store double %194, double* %199, align 8, !llfi_index !395
  %202 = load x86_fp80* %Q, align 16, !llfi_index !396
  %203 = load x86_fp80* %Q, align 16, !llfi_index !396
  %204 = fptrunc x86_fp80 %202 to double, !llfi_index !397
  %205 = fptrunc x86_fp80 %203 to double, !llfi_index !397
  %check_cmp33 = fcmp ueq double %204, %205
  br i1 %check_cmp33, label %206, label %checkBb34

checkBb34:                                        ; preds = %201
  call void @check_flag()
  br label %206

; <label>:206                                     ; preds = %checkBb34, %201
  %207 = call double @sqrt(double %204) #4, !llfi_index !398
  %208 = fmul double -2.000000e+00, %207, !llfi_index !399
  %209 = fmul double -2.000000e+00, %207, !llfi_index !399
  %210 = load double* %theta, align 8, !llfi_index !400
  %211 = load double* %theta, align 8, !llfi_index !400
  %212 = call double @atan(double 1.000000e+00) #4, !llfi_index !401
  %213 = fmul double 4.000000e+00, %212, !llfi_index !402
  %214 = fmul double 4.000000e+00, %212, !llfi_index !402
  %215 = fmul double 4.000000e+00, %213, !llfi_index !403
  %216 = fmul double 4.000000e+00, %214, !llfi_index !403
  %217 = fadd double %210, %215, !llfi_index !404
  %218 = fadd double %211, %216, !llfi_index !404
  %219 = fdiv double %217, 3.000000e+00, !llfi_index !405
  %220 = fdiv double %218, 3.000000e+00, !llfi_index !405
  %check_cmp35 = fcmp ueq double %219, %220
  br i1 %check_cmp35, label %221, label %checkBb36

checkBb36:                                        ; preds = %206
  call void @check_flag()
  br label %221

; <label>:221                                     ; preds = %checkBb36, %206
  %222 = call double @cos(double %219) #4, !llfi_index !406
  %223 = fmul double %208, %222, !llfi_index !407
  %224 = fmul double %209, %222, !llfi_index !407
  %225 = fpext double %223 to x86_fp80, !llfi_index !408
  %226 = fpext double %224 to x86_fp80, !llfi_index !408
  %227 = load x86_fp80* %a1, align 16, !llfi_index !409
  %228 = load x86_fp80* %a1, align 16, !llfi_index !409
  %229 = fdiv x86_fp80 %227, 0xK4000C000000000000000, !llfi_index !410
  %230 = fdiv x86_fp80 %228, 0xK4000C000000000000000, !llfi_index !410
  %231 = fsub x86_fp80 %225, %229, !llfi_index !411
  %232 = fsub x86_fp80 %226, %230, !llfi_index !411
  %233 = fptrunc x86_fp80 %231 to double, !llfi_index !412
  %234 = fptrunc x86_fp80 %232 to double, !llfi_index !412
  %check_cmp37 = fcmp ueq double %233, %234
  br i1 %check_cmp37, label %235, label %checkBb38

checkBb38:                                        ; preds = %221
  call void @check_flag()
  br label %235

; <label>:235                                     ; preds = %checkBb38, %221
  %236 = load double** %6, align 8, !llfi_index !413
  %237 = load double** %6, align 8, !llfi_index !413
  %238 = getelementptr inbounds double* %236, i64 2, !llfi_index !414
  %239 = getelementptr inbounds double* %237, i64 2, !llfi_index !414
  %check_cmp39 = icmp eq double* %238, %239
  br i1 %check_cmp39, label %240, label %checkBb40

checkBb40:                                        ; preds = %235
  call void @check_flag()
  br label %240

; <label>:240                                     ; preds = %checkBb40, %235
  store double %233, double* %238, align 8, !llfi_index !415
  br label %318, !llfi_index !416

; <label>:241                                     ; preds = %104
  %242 = load i32** %5, align 8, !llfi_index !417
  store i32 1, i32* %242, align 4, !llfi_index !418
  %243 = load double* %R2_Q3, align 8, !llfi_index !419
  %244 = load double* %R2_Q3, align 8, !llfi_index !419
  %check_cmp41 = fcmp ueq double %243, %244
  br i1 %check_cmp41, label %245, label %checkBb42

checkBb42:                                        ; preds = %241
  call void @check_flag()
  br label %245

; <label>:245                                     ; preds = %checkBb42, %241
  %246 = call double @sqrt(double %243) #4, !llfi_index !420
  %247 = load x86_fp80* %R, align 16, !llfi_index !421
  %248 = load x86_fp80* %R, align 16, !llfi_index !421
  %249 = fptrunc x86_fp80 %247 to double, !llfi_index !422
  %250 = fptrunc x86_fp80 %248 to double, !llfi_index !422
  %check_cmp43 = fcmp ueq double %249, %250
  br i1 %check_cmp43, label %251, label %checkBb44

checkBb44:                                        ; preds = %245
  call void @check_flag()
  br label %251

; <label>:251                                     ; preds = %checkBb44, %245
  %252 = call double @fabs(double %249) #6, !llfi_index !423
  %253 = fadd double %246, %252, !llfi_index !424
  %254 = fadd double %246, %252, !llfi_index !424
  %check_cmp45 = fcmp ueq double %253, %254
  br i1 %check_cmp45, label %255, label %checkBb46

checkBb46:                                        ; preds = %251
  call void @check_flag()
  br label %255

; <label>:255                                     ; preds = %checkBb46, %251
  %256 = call double @pow(double %253, double 0x3FD5555555555555) #4, !llfi_index !425
  %257 = load double** %6, align 8, !llfi_index !426
  %258 = load double** %6, align 8, !llfi_index !426
  %259 = getelementptr inbounds double* %257, i64 0, !llfi_index !427
  %260 = getelementptr inbounds double* %258, i64 0, !llfi_index !427
  %check_cmp47 = icmp eq double* %259, %260
  br i1 %check_cmp47, label %261, label %checkBb48

checkBb48:                                        ; preds = %255
  call void @check_flag()
  br label %261

; <label>:261                                     ; preds = %checkBb48, %255
  store double %256, double* %259, align 8, !llfi_index !428
  %262 = load x86_fp80* %Q, align 16, !llfi_index !429
  %263 = load x86_fp80* %Q, align 16, !llfi_index !429
  %264 = load double** %6, align 8, !llfi_index !430
  %265 = load double** %6, align 8, !llfi_index !430
  %266 = getelementptr inbounds double* %264, i64 0, !llfi_index !431
  %267 = getelementptr inbounds double* %265, i64 0, !llfi_index !431
  %268 = load double* %266, align 8, !llfi_index !432
  %269 = load double* %267, align 8, !llfi_index !432
  %270 = fpext double %268 to x86_fp80, !llfi_index !433
  %271 = fpext double %269 to x86_fp80, !llfi_index !433
  %272 = fdiv x86_fp80 %262, %270, !llfi_index !434
  %273 = fdiv x86_fp80 %263, %271, !llfi_index !434
  %274 = load double** %6, align 8, !llfi_index !435
  %275 = load double** %6, align 8, !llfi_index !435
  %276 = getelementptr inbounds double* %274, i64 0, !llfi_index !436
  %277 = getelementptr inbounds double* %275, i64 0, !llfi_index !436
  %278 = load double* %276, align 8, !llfi_index !437
  %279 = load double* %277, align 8, !llfi_index !437
  %280 = fpext double %278 to x86_fp80, !llfi_index !438
  %281 = fpext double %279 to x86_fp80, !llfi_index !438
  %282 = fadd x86_fp80 %280, %272, !llfi_index !439
  %283 = fadd x86_fp80 %281, %273, !llfi_index !439
  %284 = fptrunc x86_fp80 %282 to double, !llfi_index !440
  %285 = fptrunc x86_fp80 %283 to double, !llfi_index !440
  %check_cmp49 = fcmp ueq double %284, %285
  br i1 %check_cmp49, label %286, label %checkBb50

checkBb50:                                        ; preds = %261
  call void @check_flag()
  br label %286

; <label>:286                                     ; preds = %checkBb50, %261
  store double %284, double* %276, align 8, !llfi_index !441
  %287 = load x86_fp80* %R, align 16, !llfi_index !442
  %288 = fcmp olt x86_fp80 %287, 0xK00000000000000000000, !llfi_index !443
  %289 = fcmp olt x86_fp80 %287, 0xK00000000000000000000, !llfi_index !443
  %check_cmp51 = icmp eq i1 %288, %289
  br i1 %check_cmp51, label %290, label %checkBb52

checkBb52:                                        ; preds = %286
  call void @check_flag()
  br label %290

; <label>:290                                     ; preds = %checkBb52, %286
  %291 = select i1 %288, i32 1, i32 -1, !llfi_index !444
  %292 = sitofp i32 %291 to double, !llfi_index !445
  %293 = sitofp i32 %291 to double, !llfi_index !445
  %294 = load double** %6, align 8, !llfi_index !446
  %295 = getelementptr inbounds double* %294, i64 0, !llfi_index !447
  %296 = load double* %295, align 8, !llfi_index !448
  %297 = load double* %295, align 8, !llfi_index !448
  %298 = fmul double %296, %292, !llfi_index !449
  %299 = fmul double %297, %293, !llfi_index !449
  %check_cmp53 = fcmp ueq double %298, %299
  br i1 %check_cmp53, label %300, label %checkBb54

checkBb54:                                        ; preds = %290
  call void @check_flag()
  br label %300

; <label>:300                                     ; preds = %checkBb54, %290
  store double %298, double* %295, align 8, !llfi_index !450
  %301 = load x86_fp80* %a1, align 16, !llfi_index !451
  %302 = load x86_fp80* %a1, align 16, !llfi_index !451
  %303 = fdiv x86_fp80 %301, 0xK4000C000000000000000, !llfi_index !452
  %304 = fdiv x86_fp80 %302, 0xK4000C000000000000000, !llfi_index !452
  %305 = load double** %6, align 8, !llfi_index !453
  %306 = load double** %6, align 8, !llfi_index !453
  %307 = getelementptr inbounds double* %305, i64 0, !llfi_index !454
  %308 = getelementptr inbounds double* %306, i64 0, !llfi_index !454
  %309 = load double* %307, align 8, !llfi_index !455
  %310 = load double* %308, align 8, !llfi_index !455
  %311 = fpext double %309 to x86_fp80, !llfi_index !456
  %312 = fpext double %310 to x86_fp80, !llfi_index !456
  %313 = fsub x86_fp80 %311, %303, !llfi_index !457
  %314 = fsub x86_fp80 %312, %304, !llfi_index !457
  %315 = fptrunc x86_fp80 %313 to double, !llfi_index !458
  %316 = fptrunc x86_fp80 %314 to double, !llfi_index !458
  %check_cmp55 = fcmp ueq double %315, %316
  br i1 %check_cmp55, label %317, label %checkBb56

checkBb56:                                        ; preds = %300
  call void @check_flag()
  br label %317

; <label>:317                                     ; preds = %checkBb56, %300
  store double %315, double* %307, align 8, !llfi_index !459
  br label %318, !llfi_index !460

; <label>:318                                     ; preds = %317, %240
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

; <label>:3                                       ; preds = %64, %0
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
  br i1 %6, label %9, label %65, !llfi_index !477

; <label>:9                                       ; preds = %8
  %10 = load i64* %r, align 8, !llfi_index !478
  %11 = load i64* %r, align 8, !llfi_index !478
  %12 = shl i64 %10, 2, !llfi_index !479
  %13 = shl i64 %11, 2, !llfi_index !479
  %14 = load i64* %1, align 8, !llfi_index !480
  %15 = and i64 %14, 3221225472, !llfi_index !481
  %16 = and i64 %14, 3221225472, !llfi_index !481
  %17 = lshr i64 %15, 30, !llfi_index !482
  %18 = lshr i64 %16, 30, !llfi_index !482
  %19 = add i64 %12, %17, !llfi_index !483
  %20 = add i64 %13, %18, !llfi_index !483
  %check_cmp1 = icmp eq i64 %19, %20
  br i1 %check_cmp1, label %21, label %checkBb2

checkBb2:                                         ; preds = %9
  call void @check_flag()
  br label %21

; <label>:21                                      ; preds = %checkBb2, %9
  store i64 %19, i64* %r, align 8, !llfi_index !484
  %22 = load i64* %1, align 8, !llfi_index !485
  %23 = shl i64 %22, 2, !llfi_index !486
  %24 = shl i64 %22, 2, !llfi_index !486
  %check_cmp3 = icmp eq i64 %23, %24
  br i1 %check_cmp3, label %25, label %checkBb4

checkBb4:                                         ; preds = %21
  call void @check_flag()
  br label %25

; <label>:25                                      ; preds = %checkBb4, %21
  store i64 %23, i64* %1, align 8, !llfi_index !487
  %26 = load i64* %a, align 8, !llfi_index !488
  %27 = load i64* %a, align 8, !llfi_index !488
  %28 = shl i64 %26, 1, !llfi_index !489
  %29 = shl i64 %27, 1, !llfi_index !489
  %check_cmp5 = icmp eq i64 %28, %29
  br i1 %check_cmp5, label %30, label %checkBb6

checkBb6:                                         ; preds = %25
  call void @check_flag()
  br label %30

; <label>:30                                      ; preds = %checkBb6, %25
  store i64 %28, i64* %a, align 8, !llfi_index !490
  %31 = load i64* %a, align 8, !llfi_index !491
  %32 = load i64* %a, align 8, !llfi_index !491
  %33 = shl i64 %31, 1, !llfi_index !492
  %34 = shl i64 %32, 1, !llfi_index !492
  %35 = add i64 %33, 1, !llfi_index !493
  %36 = add i64 %34, 1, !llfi_index !493
  %check_cmp7 = icmp eq i64 %35, %36
  br i1 %check_cmp7, label %37, label %checkBb8

checkBb8:                                         ; preds = %30
  call void @check_flag()
  br label %37

; <label>:37                                      ; preds = %checkBb8, %30
  store i64 %35, i64* %e, align 8, !llfi_index !494
  %38 = load i64* %r, align 8, !llfi_index !495
  %39 = load i64* %r, align 8, !llfi_index !495
  %40 = load i64* %e, align 8, !llfi_index !496
  %41 = load i64* %e, align 8, !llfi_index !496
  %42 = icmp uge i64 %38, %40, !llfi_index !497
  %43 = icmp uge i64 %39, %41, !llfi_index !497
  %check_cmp9 = icmp eq i1 %42, %43
  br i1 %check_cmp9, label %44, label %checkBb10

checkBb10:                                        ; preds = %37
  call void @check_flag()
  br label %44

; <label>:44                                      ; preds = %checkBb10, %37
  br i1 %42, label %45, label %58, !llfi_index !498

; <label>:45                                      ; preds = %44
  %46 = load i64* %e, align 8, !llfi_index !499
  %47 = load i64* %e, align 8, !llfi_index !499
  %48 = load i64* %r, align 8, !llfi_index !500
  %49 = load i64* %r, align 8, !llfi_index !500
  %50 = sub i64 %48, %46, !llfi_index !501
  %51 = sub i64 %49, %47, !llfi_index !501
  %check_cmp11 = icmp eq i64 %50, %51
  br i1 %check_cmp11, label %52, label %checkBb12

checkBb12:                                        ; preds = %45
  call void @check_flag()
  br label %52

; <label>:52                                      ; preds = %checkBb12, %45
  store i64 %50, i64* %r, align 8, !llfi_index !502
  %53 = load i64* %a, align 8, !llfi_index !503
  %54 = load i64* %a, align 8, !llfi_index !503
  %55 = add i64 %53, 1, !llfi_index !504
  %56 = add i64 %54, 1, !llfi_index !504
  %check_cmp13 = icmp eq i64 %55, %56
  br i1 %check_cmp13, label %57, label %checkBb14

checkBb14:                                        ; preds = %52
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb14, %52
  store i64 %55, i64* %a, align 8, !llfi_index !505
  br label %58, !llfi_index !506

; <label>:58                                      ; preds = %57, %44
  br label %59, !llfi_index !507

; <label>:59                                      ; preds = %58
  %60 = load i32* %i, align 4, !llfi_index !508
  %61 = load i32* %i, align 4, !llfi_index !508
  %62 = add nsw i32 %60, 1, !llfi_index !509
  %63 = add nsw i32 %61, 1, !llfi_index !509
  %check_cmp15 = icmp eq i32 %62, %63
  br i1 %check_cmp15, label %64, label %checkBb16

checkBb16:                                        ; preds = %59
  call void @check_flag()
  br label %64

; <label>:64                                      ; preds = %checkBb16, %59
  store i32 %62, i32* %i, align 4, !llfi_index !510
  br label %3, !llfi_index !511

; <label>:65                                      ; preds = %8
  %66 = load %struct.int_sqrt** %2, align 8, !llfi_index !512
  %67 = load %struct.int_sqrt** %2, align 8, !llfi_index !512
  %68 = bitcast %struct.int_sqrt* %66 to i8*, !llfi_index !513
  %69 = bitcast %struct.int_sqrt* %67 to i8*, !llfi_index !513
  %70 = bitcast i64* %a to i8*, !llfi_index !514
  %71 = bitcast i64* %a to i8*, !llfi_index !514
  %check_cmp17 = icmp eq i8* %70, %71
  br i1 %check_cmp17, label %72, label %checkBb18

checkBb18:                                        ; preds = %65
  call void @check_flag()
  br label %72

; <label>:72                                      ; preds = %checkBb18, %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %70, i64 8, i32 4, i1 false), !llfi_index !515
  ret void, !llfi_index !516
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define double @rad2deg(double %rad) #0 {
  %1 = alloca double, align 8, !llfi_index !517
  store double %rad, double* %1, align 8, !llfi_index !518
  %2 = load double* %1, align 8, !llfi_index !519
  %3 = fmul double 1.800000e+02, %2, !llfi_index !520
  %4 = call double @atan(double 1.000000e+00) #4, !llfi_index !521
  %5 = fmul double 4.000000e+00, %4, !llfi_index !522
  %6 = fdiv double %3, %5, !llfi_index !523
  ret double %6, !llfi_index !524
}

; Function Attrs: nounwind uwtable
define double @deg2rad(double %deg) #0 {
  %1 = alloca double, align 8, !llfi_index !525
  store double %deg, double* %1, align 8, !llfi_index !526
  %2 = call double @atan(double 1.000000e+00) #4, !llfi_index !527
  %3 = fmul double 4.000000e+00, %2, !llfi_index !528
  %4 = load double* %1, align 8, !llfi_index !529
  %5 = fmul double %3, %4, !llfi_index !530
  %6 = fdiv double %5, 1.800000e+02, !llfi_index !531
  ret double %6, !llfi_index !532
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
