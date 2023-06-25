; ModuleID = 'basicmath-0.5.ll'
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

; <label>:87                                      ; preds = %153, %85
  %88 = load double* %a1, align 8, !llfi_index !143
  %89 = fcmp olt double %88, 1.000000e+01, !llfi_index !144
  br i1 %89, label %90, label %156, !llfi_index !145

; <label>:90                                      ; preds = %87
  store double 1.000000e+01, double* %b1, align 8, !llfi_index !146
  br label %91, !llfi_index !147

; <label>:91                                      ; preds = %149, %90
  %92 = load double* %b1, align 8, !llfi_index !148
  %93 = fcmp ogt double %92, 0.000000e+00, !llfi_index !149
  br i1 %93, label %94, label %152, !llfi_index !150

; <label>:94                                      ; preds = %91
  store double 5.000000e+00, double* %c1, align 8, !llfi_index !151
  br label %95, !llfi_index !152

; <label>:95                                      ; preds = %147, %94
  %96 = load double* %c1, align 8, !llfi_index !153
  %97 = fcmp olt double %96, 1.500000e+01, !llfi_index !154
  %98 = fcmp olt double %96, 1.500000e+01, !llfi_index !154
  %check_cmp = icmp eq i1 %97, %98
  br i1 %check_cmp, label %99, label %checkBb

checkBb:                                          ; preds = %95
  call void @check_flag()
  br label %99

; <label>:99                                      ; preds = %checkBb, %95
  br i1 %97, label %100, label %148, !llfi_index !155

; <label>:100                                     ; preds = %99
  store double -1.000000e+00, double* %d1, align 8, !llfi_index !156
  br label %101, !llfi_index !157

; <label>:101                                     ; preds = %140, %100
  %102 = load double* %d1, align 8, !llfi_index !158
  %103 = fcmp ogt double %102, -1.100000e+01, !llfi_index !159
  %104 = fcmp ogt double %102, -1.100000e+01, !llfi_index !159
  %check_cmp1 = icmp eq i1 %103, %104
  br i1 %check_cmp1, label %105, label %checkBb2

checkBb2:                                         ; preds = %101
  call void @check_flag()
  br label %105

; <label>:105                                     ; preds = %checkBb2, %101
  br i1 %103, label %106, label %141, !llfi_index !160

; <label>:106                                     ; preds = %105
  %107 = load double* %a1, align 8, !llfi_index !161
  %108 = load double* %b1, align 8, !llfi_index !162
  %109 = load double* %c1, align 8, !llfi_index !163
  %110 = load double* %c1, align 8, !llfi_index !163
  %check_cmp3 = fcmp ueq double %109, %110
  br i1 %check_cmp3, label %111, label %checkBb4

checkBb4:                                         ; preds = %106
  call void @check_flag()
  br label %111

; <label>:111                                     ; preds = %checkBb4, %106
  %112 = load double* %d1, align 8, !llfi_index !164
  %113 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0, !llfi_index !165
  call void @SolveCubic(double %107, double %108, double %109, double %112, i32* %solutions, double* %113), !llfi_index !166
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !llfi_index !167
  store i32 0, i32* %i, align 4, !llfi_index !168
  br label %115, !llfi_index !169

; <label>:115                                     ; preds = %131, %111
  %116 = load i32* %i, align 4, !llfi_index !170
  %117 = load i32* %i, align 4, !llfi_index !170
  %118 = load i32* %solutions, align 4, !llfi_index !171
  %119 = load i32* %solutions, align 4, !llfi_index !171
  %120 = icmp slt i32 %116, %118, !llfi_index !172
  %121 = icmp slt i32 %117, %119, !llfi_index !172
  %check_cmp5 = icmp eq i1 %120, %121
  br i1 %check_cmp5, label %122, label %checkBb6

checkBb6:                                         ; preds = %115
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb6, %115
  br i1 %120, label %123, label %134, !llfi_index !173

; <label>:123                                     ; preds = %122
  %124 = load i32* %i, align 4, !llfi_index !174
  %125 = sext i32 %124 to i64, !llfi_index !175
  %126 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %125, !llfi_index !176
  %127 = load double* %126, align 8, !llfi_index !177
  %128 = load double* %126, align 8, !llfi_index !177
  %check_cmp7 = fcmp ueq double %127, %128
  br i1 %check_cmp7, label %129, label %checkBb8

checkBb8:                                         ; preds = %123
  call void @check_flag()
  br label %129

; <label>:129                                     ; preds = %checkBb8, %123
  %130 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %127), !llfi_index !178
  br label %131, !llfi_index !179

; <label>:131                                     ; preds = %129
  %132 = load i32* %i, align 4, !llfi_index !180
  %133 = add nsw i32 %132, 1, !llfi_index !181
  store i32 %133, i32* %i, align 4, !llfi_index !182
  br label %115, !llfi_index !183

; <label>:134                                     ; preds = %122
  %135 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !llfi_index !184
  br label %136, !llfi_index !185

; <label>:136                                     ; preds = %134
  %137 = load double* %d1, align 8, !llfi_index !186
  %138 = fadd double %137, -1.000000e+00, !llfi_index !187
  %139 = fadd double %137, -1.000000e+00, !llfi_index !187
  %check_cmp9 = fcmp ueq double %138, %139
  br i1 %check_cmp9, label %140, label %checkBb10

checkBb10:                                        ; preds = %136
  call void @check_flag()
  br label %140

; <label>:140                                     ; preds = %checkBb10, %136
  store double %138, double* %d1, align 8, !llfi_index !188
  br label %101, !llfi_index !189

; <label>:141                                     ; preds = %105
  br label %142, !llfi_index !190

; <label>:142                                     ; preds = %141
  %143 = load double* %c1, align 8, !llfi_index !191
  %144 = load double* %c1, align 8, !llfi_index !191
  %145 = fadd double %143, 5.000000e-01, !llfi_index !192
  %146 = fadd double %144, 5.000000e-01, !llfi_index !192
  %check_cmp11 = fcmp ueq double %145, %146
  br i1 %check_cmp11, label %147, label %checkBb12

checkBb12:                                        ; preds = %142
  call void @check_flag()
  br label %147

; <label>:147                                     ; preds = %checkBb12, %142
  store double %145, double* %c1, align 8, !llfi_index !193
  br label %95, !llfi_index !194

; <label>:148                                     ; preds = %99
  br label %149, !llfi_index !195

; <label>:149                                     ; preds = %148
  %150 = load double* %b1, align 8, !llfi_index !196
  %151 = fadd double %150, -1.000000e+00, !llfi_index !197
  store double %151, double* %b1, align 8, !llfi_index !198
  br label %91, !llfi_index !199

; <label>:152                                     ; preds = %91
  br label %153, !llfi_index !200

; <label>:153                                     ; preds = %152
  %154 = load double* %a1, align 8, !llfi_index !201
  %155 = fadd double %154, 1.000000e+00, !llfi_index !202
  store double %155, double* %a1, align 8, !llfi_index !203
  br label %87, !llfi_index !204

; <label>:156                                     ; preds = %87
  %157 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0)), !llfi_index !205
  store i32 0, i32* %i, align 4, !llfi_index !206
  br label %158, !llfi_index !207

; <label>:158                                     ; preds = %178, %156
  %159 = load i32* %i, align 4, !llfi_index !208
  %160 = load i32* %i, align 4, !llfi_index !208
  %161 = icmp slt i32 %159, 1001, !llfi_index !209
  %162 = icmp slt i32 %160, 1001, !llfi_index !209
  %check_cmp13 = icmp eq i1 %161, %162
  br i1 %check_cmp13, label %163, label %checkBb14

checkBb14:                                        ; preds = %158
  call void @check_flag()
  br label %163

; <label>:163                                     ; preds = %checkBb14, %158
  br i1 %161, label %164, label %181, !llfi_index !210

; <label>:164                                     ; preds = %163
  %165 = load i32* %i, align 4, !llfi_index !211
  %166 = load i32* %i, align 4, !llfi_index !211
  %167 = sext i32 %165 to i64, !llfi_index !212
  %168 = sext i32 %166 to i64, !llfi_index !212
  %check_cmp15 = icmp eq i64 %167, %168
  br i1 %check_cmp15, label %169, label %checkBb16

checkBb16:                                        ; preds = %164
  call void @check_flag()
  br label %169

; <label>:169                                     ; preds = %checkBb16, %164
  call void @usqrt(i64 %167, %struct.int_sqrt* %q), !llfi_index !213
  %170 = load i32* %i, align 4, !llfi_index !214
  %171 = load i32* %i, align 4, !llfi_index !214
  %check_cmp17 = icmp eq i32 %170, %171
  br i1 %check_cmp17, label %172, label %checkBb18

checkBb18:                                        ; preds = %169
  call void @check_flag()
  br label %172

; <label>:172                                     ; preds = %checkBb18, %169
  %173 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !215
  %174 = load i32* %173, align 4, !llfi_index !216
  %175 = load i32* %173, align 4, !llfi_index !216
  %check_cmp19 = icmp eq i32 %174, %175
  br i1 %check_cmp19, label %176, label %checkBb20

checkBb20:                                        ; preds = %172
  call void @check_flag()
  br label %176

; <label>:176                                     ; preds = %checkBb20, %172
  %177 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i32 %170, i32 %174), !llfi_index !217
  br label %178, !llfi_index !218

; <label>:178                                     ; preds = %176
  %179 = load i32* %i, align 4, !llfi_index !219
  %180 = add nsw i32 %179, 1, !llfi_index !220
  store i32 %180, i32* %i, align 4, !llfi_index !221
  br label %158, !llfi_index !222

; <label>:181                                     ; preds = %163
  %182 = load i64* %l, align 8, !llfi_index !223
  call void @usqrt(i64 %182, %struct.int_sqrt* %q), !llfi_index !224
  %183 = load i64* %l, align 8, !llfi_index !225
  %184 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0, !llfi_index !226
  %185 = load i32* %184, align 4, !llfi_index !227
  %186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0), i64 %183, i32 %185), !llfi_index !228
  %187 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0)), !llfi_index !229
  store double 0.000000e+00, double* %X, align 8, !llfi_index !230
  br label %188, !llfi_index !231

; <label>:188                                     ; preds = %213, %181
  %189 = load double* %X, align 8, !llfi_index !232
  %190 = fcmp ole double %189, 3.600000e+02, !llfi_index !233
  %191 = fcmp ole double %189, 3.600000e+02, !llfi_index !233
  %check_cmp21 = icmp eq i1 %190, %191
  br i1 %check_cmp21, label %192, label %checkBb22

checkBb22:                                        ; preds = %188
  call void @check_flag()
  br label %192

; <label>:192                                     ; preds = %checkBb22, %188
  br i1 %190, label %193, label %214, !llfi_index !234

; <label>:193                                     ; preds = %192
  %194 = load double* %X, align 8, !llfi_index !235
  %195 = load double* %X, align 8, !llfi_index !235
  %check_cmp23 = fcmp ueq double %194, %195
  br i1 %check_cmp23, label %196, label %checkBb24

checkBb24:                                        ; preds = %193
  call void @check_flag()
  br label %196

; <label>:196                                     ; preds = %checkBb24, %193
  %197 = load double* %X, align 8, !llfi_index !236
  %198 = load double* %X, align 8, !llfi_index !236
  %199 = call double @atan(double 1.000000e+00) #4, !llfi_index !237
  %200 = fmul double 4.000000e+00, %199, !llfi_index !238
  %201 = fmul double 4.000000e+00, %199, !llfi_index !238
  %202 = fmul double %197, %200, !llfi_index !239
  %203 = fmul double %198, %201, !llfi_index !239
  %204 = fdiv double %202, 1.800000e+02, !llfi_index !240
  %205 = fdiv double %203, 1.800000e+02, !llfi_index !240
  %check_cmp25 = fcmp ueq double %204, %205
  br i1 %check_cmp25, label %206, label %checkBb26

checkBb26:                                        ; preds = %196
  call void @check_flag()
  br label %206

; <label>:206                                     ; preds = %checkBb26, %196
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), double %194, double %204), !llfi_index !241
  br label %208, !llfi_index !242

; <label>:208                                     ; preds = %206
  %209 = load double* %X, align 8, !llfi_index !243
  %210 = load double* %X, align 8, !llfi_index !243
  %211 = fadd double %209, 1.000000e+00, !llfi_index !244
  %212 = fadd double %210, 1.000000e+00, !llfi_index !244
  %check_cmp27 = fcmp ueq double %211, %212
  br i1 %check_cmp27, label %213, label %checkBb28

checkBb28:                                        ; preds = %208
  call void @check_flag()
  br label %213

; <label>:213                                     ; preds = %checkBb28, %208
  store double %211, double* %X, align 8, !llfi_index !245
  br label %188, !llfi_index !246

; <label>:214                                     ; preds = %192
  %215 = call i32 (i8*, ...)* bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8]* @.str9, i32 0, i32 0)), !llfi_index !247
  store double 0.000000e+00, double* %X, align 8, !llfi_index !248
  br label %216, !llfi_index !249

; <label>:216                                     ; preds = %247, %214
  %217 = load double* %X, align 8, !llfi_index !250
  %218 = call double @atan(double 1.000000e+00) #4, !llfi_index !251
  %219 = fmul double 4.000000e+00, %218, !llfi_index !252
  %220 = fmul double 2.000000e+00, %219, !llfi_index !253
  %221 = fadd double %220, 1.000000e-06, !llfi_index !254
  %222 = fcmp ole double %217, %221, !llfi_index !255
  %223 = fcmp ole double %217, %221, !llfi_index !255
  %check_cmp29 = icmp eq i1 %222, %223
  br i1 %check_cmp29, label %224, label %checkBb30

checkBb30:                                        ; preds = %216
  call void @check_flag()
  br label %224

; <label>:224                                     ; preds = %checkBb30, %216
  br i1 %222, label %225, label %248, !llfi_index !256

; <label>:225                                     ; preds = %224
  %226 = load double* %X, align 8, !llfi_index !257
  %227 = load double* %X, align 8, !llfi_index !257
  %check_cmp31 = fcmp ueq double %226, %227
  br i1 %check_cmp31, label %228, label %checkBb32

checkBb32:                                        ; preds = %225
  call void @check_flag()
  br label %228

; <label>:228                                     ; preds = %checkBb32, %225
  %229 = load double* %X, align 8, !llfi_index !258
  %230 = fmul double %229, 1.800000e+02, !llfi_index !259
  %231 = call double @atan(double 1.000000e+00) #4, !llfi_index !260
  %232 = fmul double 4.000000e+00, %231, !llfi_index !261
  %233 = fdiv double %230, %232, !llfi_index !262
  %234 = fdiv double %230, %232, !llfi_index !262
  %check_cmp33 = fcmp ueq double %233, %234
  br i1 %check_cmp33, label %235, label %checkBb34

checkBb34:                                        ; preds = %228
  call void @check_flag()
  br label %235

; <label>:235                                     ; preds = %checkBb34, %228
  %236 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), double %226, double %233), !llfi_index !263
  br label %237, !llfi_index !264

; <label>:237                                     ; preds = %235
  %238 = call double @atan(double 1.000000e+00) #4, !llfi_index !265
  %239 = fmul double 4.000000e+00, %238, !llfi_index !266
  %240 = fmul double 4.000000e+00, %238, !llfi_index !266
  %241 = fdiv double %239, 1.800000e+02, !llfi_index !267
  %242 = fdiv double %240, 1.800000e+02, !llfi_index !267
  %243 = load double* %X, align 8, !llfi_index !268
  %244 = load double* %X, align 8, !llfi_index !268
  %245 = fadd double %243, %241, !llfi_index !269
  %246 = fadd double %244, %242, !llfi_index !269
  %check_cmp35 = fcmp ueq double %245, %246
  br i1 %check_cmp35, label %247, label %checkBb36

checkBb36:                                        ; preds = %237
  call void @check_flag()
  br label %247

; <label>:247                                     ; preds = %checkBb36, %237
  store double %245, double* %X, align 8, !llfi_index !270
  br label %216, !llfi_index !271

; <label>:248                                     ; preds = %224
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
  %8 = load double* %1, align 8, !llfi_index !293
  %9 = load double* %1, align 8, !llfi_index !293
  %check_cmp = fcmp ueq double %8, %9
  br i1 %check_cmp, label %10, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %10

; <label>:10                                      ; preds = %checkBb, %0
  %11 = fdiv double %7, %8, !llfi_index !294
  %12 = fpext double %11 to x86_fp80, !llfi_index !295
  store x86_fp80 %12, x86_fp80* %a1, align 16, !llfi_index !296
  %13 = load double* %3, align 8, !llfi_index !297
  %14 = load double* %3, align 8, !llfi_index !297
  %15 = load double* %1, align 8, !llfi_index !298
  %16 = load double* %1, align 8, !llfi_index !298
  %17 = fdiv double %13, %15, !llfi_index !299
  %18 = fdiv double %14, %16, !llfi_index !299
  %19 = fpext double %17 to x86_fp80, !llfi_index !300
  %20 = fpext double %18 to x86_fp80, !llfi_index !300
  %check_cmp1 = fcmp ueq x86_fp80 %19, %20
  br i1 %check_cmp1, label %21, label %checkBb2

checkBb2:                                         ; preds = %10
  call void @check_flag()
  br label %21

; <label>:21                                      ; preds = %checkBb2, %10
  store x86_fp80 %19, x86_fp80* %a2, align 16, !llfi_index !301
  %22 = load double* %4, align 8, !llfi_index !302
  %23 = load double* %4, align 8, !llfi_index !302
  %24 = load double* %1, align 8, !llfi_index !303
  %25 = fdiv double %22, %24, !llfi_index !304
  %26 = fdiv double %23, %24, !llfi_index !304
  %27 = fpext double %25 to x86_fp80, !llfi_index !305
  %28 = fpext double %26 to x86_fp80, !llfi_index !305
  %check_cmp3 = fcmp ueq x86_fp80 %27, %28
  br i1 %check_cmp3, label %29, label %checkBb4

checkBb4:                                         ; preds = %21
  call void @check_flag()
  br label %29

; <label>:29                                      ; preds = %checkBb4, %21
  store x86_fp80 %27, x86_fp80* %a3, align 16, !llfi_index !306
  %30 = load x86_fp80* %a1, align 16, !llfi_index !307
  %31 = load x86_fp80* %a1, align 16, !llfi_index !308
  %32 = fmul x86_fp80 %30, %31, !llfi_index !309
  %33 = fmul x86_fp80 %30, %31, !llfi_index !309
  %34 = load x86_fp80* %a2, align 16, !llfi_index !310
  %35 = load x86_fp80* %a2, align 16, !llfi_index !310
  %36 = fmul x86_fp80 0xK4000C000000000000000, %34, !llfi_index !311
  %37 = fmul x86_fp80 0xK4000C000000000000000, %35, !llfi_index !311
  %38 = fsub x86_fp80 %32, %36, !llfi_index !312
  %39 = fsub x86_fp80 %33, %37, !llfi_index !312
  %40 = fdiv x86_fp80 %38, 0xK40029000000000000000, !llfi_index !313
  %41 = fdiv x86_fp80 %39, 0xK40029000000000000000, !llfi_index !313
  %check_cmp5 = fcmp ueq x86_fp80 %40, %41
  br i1 %check_cmp5, label %42, label %checkBb6

checkBb6:                                         ; preds = %29
  call void @check_flag()
  br label %42

; <label>:42                                      ; preds = %checkBb6, %29
  store x86_fp80 %40, x86_fp80* %Q, align 16, !llfi_index !314
  %43 = load x86_fp80* %a1, align 16, !llfi_index !315
  %44 = fmul x86_fp80 0xK40008000000000000000, %43, !llfi_index !316
  %45 = load x86_fp80* %a1, align 16, !llfi_index !317
  %46 = fmul x86_fp80 %44, %45, !llfi_index !318
  %47 = load x86_fp80* %a1, align 16, !llfi_index !319
  %48 = load x86_fp80* %a1, align 16, !llfi_index !319
  %check_cmp7 = fcmp ueq x86_fp80 %47, %48
  br i1 %check_cmp7, label %49, label %checkBb8

checkBb8:                                         ; preds = %42
  call void @check_flag()
  br label %49

; <label>:49                                      ; preds = %checkBb8, %42
  %50 = fmul x86_fp80 %46, %47, !llfi_index !320
  %51 = load x86_fp80* %a1, align 16, !llfi_index !321
  %52 = fmul x86_fp80 0xK40029000000000000000, %51, !llfi_index !322
  %53 = fmul x86_fp80 0xK40029000000000000000, %51, !llfi_index !322
  %check_cmp9 = fcmp ueq x86_fp80 %52, %53
  br i1 %check_cmp9, label %54, label %checkBb10

checkBb10:                                        ; preds = %49
  call void @check_flag()
  br label %54

; <label>:54                                      ; preds = %checkBb10, %49
  %55 = load x86_fp80* %a2, align 16, !llfi_index !323
  %56 = load x86_fp80* %a2, align 16, !llfi_index !323
  %check_cmp11 = fcmp ueq x86_fp80 %55, %56
  br i1 %check_cmp11, label %57, label %checkBb12

checkBb12:                                        ; preds = %54
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb12, %54
  %58 = fmul x86_fp80 %52, %55, !llfi_index !324
  %59 = fsub x86_fp80 %50, %58, !llfi_index !325
  %60 = fsub x86_fp80 %50, %58, !llfi_index !325
  %61 = load x86_fp80* %a3, align 16, !llfi_index !326
  %62 = load x86_fp80* %a3, align 16, !llfi_index !326
  %check_cmp13 = fcmp ueq x86_fp80 %61, %62
  br i1 %check_cmp13, label %63, label %checkBb14

checkBb14:                                        ; preds = %57
  call void @check_flag()
  br label %63

; <label>:63                                      ; preds = %checkBb14, %57
  %64 = fmul x86_fp80 0xK4003D800000000000000, %61, !llfi_index !327
  %65 = fadd x86_fp80 %59, %64, !llfi_index !328
  %66 = fadd x86_fp80 %60, %64, !llfi_index !328
  %check_cmp15 = fcmp ueq x86_fp80 %65, %66
  br i1 %check_cmp15, label %67, label %checkBb16

checkBb16:                                        ; preds = %63
  call void @check_flag()
  br label %67

; <label>:67                                      ; preds = %checkBb16, %63
  %68 = fdiv x86_fp80 %65, 0xK4004D800000000000000, !llfi_index !329
  store x86_fp80 %68, x86_fp80* %R, align 16, !llfi_index !330
  %69 = load x86_fp80* %R, align 16, !llfi_index !331
  %70 = load x86_fp80* %R, align 16, !llfi_index !331
  %check_cmp17 = fcmp ueq x86_fp80 %69, %70
  br i1 %check_cmp17, label %71, label %checkBb18

checkBb18:                                        ; preds = %67
  call void @check_flag()
  br label %71

; <label>:71                                      ; preds = %checkBb18, %67
  %72 = load x86_fp80* %R, align 16, !llfi_index !332
  %73 = load x86_fp80* %R, align 16, !llfi_index !332
  %check_cmp19 = fcmp ueq x86_fp80 %72, %73
  br i1 %check_cmp19, label %74, label %checkBb20

checkBb20:                                        ; preds = %71
  call void @check_flag()
  br label %74

; <label>:74                                      ; preds = %checkBb20, %71
  %75 = fmul x86_fp80 %69, %72, !llfi_index !333
  %76 = load x86_fp80* %Q, align 16, !llfi_index !334
  %77 = load x86_fp80* %Q, align 16, !llfi_index !335
  %78 = fmul x86_fp80 %76, %77, !llfi_index !336
  %79 = load x86_fp80* %Q, align 16, !llfi_index !337
  %80 = fmul x86_fp80 %78, %79, !llfi_index !338
  %81 = fsub x86_fp80 %75, %80, !llfi_index !339
  %82 = fptrunc x86_fp80 %81 to double, !llfi_index !340
  %83 = fptrunc x86_fp80 %81 to double, !llfi_index !340
  %check_cmp21 = fcmp ueq double %82, %83
  br i1 %check_cmp21, label %84, label %checkBb22

checkBb22:                                        ; preds = %74
  call void @check_flag()
  br label %84

; <label>:84                                      ; preds = %checkBb22, %74
  store double %82, double* %R2_Q3, align 8, !llfi_index !341
  %85 = load double* %R2_Q3, align 8, !llfi_index !342
  %86 = fcmp ole double %85, 0.000000e+00, !llfi_index !343
  %87 = fcmp ole double %85, 0.000000e+00, !llfi_index !343
  %check_cmp23 = icmp eq i1 %86, %87
  br i1 %check_cmp23, label %88, label %checkBb24

checkBb24:                                        ; preds = %84
  call void @check_flag()
  br label %88

; <label>:88                                      ; preds = %checkBb24, %84
  br i1 %86, label %89, label %216, !llfi_index !344

; <label>:89                                      ; preds = %88
  %90 = load i32** %5, align 8, !llfi_index !345
  store i32 3, i32* %90, align 4, !llfi_index !346
  %91 = load x86_fp80* %R, align 16, !llfi_index !347
  %92 = load x86_fp80* %R, align 16, !llfi_index !347
  %93 = load x86_fp80* %Q, align 16, !llfi_index !348
  %94 = load x86_fp80* %Q, align 16, !llfi_index !348
  %95 = load x86_fp80* %Q, align 16, !llfi_index !349
  %96 = load x86_fp80* %Q, align 16, !llfi_index !349
  %97 = fmul x86_fp80 %93, %95, !llfi_index !350
  %98 = fmul x86_fp80 %94, %96, !llfi_index !350
  %99 = load x86_fp80* %Q, align 16, !llfi_index !351
  %100 = load x86_fp80* %Q, align 16, !llfi_index !351
  %101 = fmul x86_fp80 %97, %99, !llfi_index !352
  %102 = fmul x86_fp80 %98, %100, !llfi_index !352
  %103 = fptrunc x86_fp80 %101 to double, !llfi_index !353
  %104 = fptrunc x86_fp80 %102 to double, !llfi_index !353
  %check_cmp25 = fcmp ueq double %103, %104
  br i1 %check_cmp25, label %105, label %checkBb26

checkBb26:                                        ; preds = %89
  call void @check_flag()
  br label %105

; <label>:105                                     ; preds = %checkBb26, %89
  %106 = call double @sqrt(double %103) #4, !llfi_index !354
  %107 = fpext double %106 to x86_fp80, !llfi_index !355
  %108 = fpext double %106 to x86_fp80, !llfi_index !355
  %109 = fdiv x86_fp80 %91, %107, !llfi_index !356
  %110 = fdiv x86_fp80 %92, %108, !llfi_index !356
  %111 = fptrunc x86_fp80 %109 to double, !llfi_index !357
  %112 = fptrunc x86_fp80 %110 to double, !llfi_index !357
  %check_cmp27 = fcmp ueq double %111, %112
  br i1 %check_cmp27, label %113, label %checkBb28

checkBb28:                                        ; preds = %105
  call void @check_flag()
  br label %113

; <label>:113                                     ; preds = %checkBb28, %105
  %114 = call double @acos(double %111) #4, !llfi_index !358
  store double %114, double* %theta, align 8, !llfi_index !359
  %115 = load x86_fp80* %Q, align 16, !llfi_index !360
  %116 = load x86_fp80* %Q, align 16, !llfi_index !360
  %117 = fptrunc x86_fp80 %115 to double, !llfi_index !361
  %118 = fptrunc x86_fp80 %116 to double, !llfi_index !361
  %check_cmp29 = fcmp ueq double %117, %118
  br i1 %check_cmp29, label %119, label %checkBb30

checkBb30:                                        ; preds = %113
  call void @check_flag()
  br label %119

; <label>:119                                     ; preds = %checkBb30, %113
  %120 = call double @sqrt(double %117) #4, !llfi_index !362
  %121 = fmul double -2.000000e+00, %120, !llfi_index !363
  %122 = fmul double -2.000000e+00, %120, !llfi_index !363
  %123 = load double* %theta, align 8, !llfi_index !364
  %124 = load double* %theta, align 8, !llfi_index !364
  %125 = fdiv double %123, 3.000000e+00, !llfi_index !365
  %126 = fdiv double %124, 3.000000e+00, !llfi_index !365
  %check_cmp31 = fcmp ueq double %125, %126
  br i1 %check_cmp31, label %127, label %checkBb32

checkBb32:                                        ; preds = %119
  call void @check_flag()
  br label %127

; <label>:127                                     ; preds = %checkBb32, %119
  %128 = call double @cos(double %125) #4, !llfi_index !366
  %129 = fmul double %121, %128, !llfi_index !367
  %130 = fmul double %122, %128, !llfi_index !367
  %131 = fpext double %129 to x86_fp80, !llfi_index !368
  %132 = fpext double %130 to x86_fp80, !llfi_index !368
  %133 = load x86_fp80* %a1, align 16, !llfi_index !369
  %134 = load x86_fp80* %a1, align 16, !llfi_index !369
  %135 = fdiv x86_fp80 %133, 0xK4000C000000000000000, !llfi_index !370
  %136 = fdiv x86_fp80 %134, 0xK4000C000000000000000, !llfi_index !370
  %137 = fsub x86_fp80 %131, %135, !llfi_index !371
  %138 = fsub x86_fp80 %132, %136, !llfi_index !371
  %139 = fptrunc x86_fp80 %137 to double, !llfi_index !372
  %140 = fptrunc x86_fp80 %138 to double, !llfi_index !372
  %check_cmp33 = fcmp ueq double %139, %140
  br i1 %check_cmp33, label %141, label %checkBb34

checkBb34:                                        ; preds = %127
  call void @check_flag()
  br label %141

; <label>:141                                     ; preds = %checkBb34, %127
  %142 = load double** %6, align 8, !llfi_index !373
  %143 = getelementptr inbounds double* %142, i64 0, !llfi_index !374
  store double %139, double* %143, align 8, !llfi_index !375
  %144 = load x86_fp80* %Q, align 16, !llfi_index !376
  %145 = load x86_fp80* %Q, align 16, !llfi_index !376
  %146 = fptrunc x86_fp80 %144 to double, !llfi_index !377
  %147 = fptrunc x86_fp80 %145 to double, !llfi_index !377
  %check_cmp35 = fcmp ueq double %146, %147
  br i1 %check_cmp35, label %148, label %checkBb36

checkBb36:                                        ; preds = %141
  call void @check_flag()
  br label %148

; <label>:148                                     ; preds = %checkBb36, %141
  %149 = call double @sqrt(double %146) #4, !llfi_index !378
  %150 = fmul double -2.000000e+00, %149, !llfi_index !379
  %151 = fmul double -2.000000e+00, %149, !llfi_index !379
  %152 = load double* %theta, align 8, !llfi_index !380
  %153 = load double* %theta, align 8, !llfi_index !380
  %154 = call double @atan(double 1.000000e+00) #4, !llfi_index !381
  %155 = fmul double 4.000000e+00, %154, !llfi_index !382
  %156 = fmul double 4.000000e+00, %154, !llfi_index !382
  %157 = fmul double 2.000000e+00, %155, !llfi_index !383
  %158 = fmul double 2.000000e+00, %156, !llfi_index !383
  %159 = fadd double %152, %157, !llfi_index !384
  %160 = fadd double %153, %158, !llfi_index !384
  %161 = fdiv double %159, 3.000000e+00, !llfi_index !385
  %162 = fdiv double %160, 3.000000e+00, !llfi_index !385
  %check_cmp37 = fcmp ueq double %161, %162
  br i1 %check_cmp37, label %163, label %checkBb38

checkBb38:                                        ; preds = %148
  call void @check_flag()
  br label %163

; <label>:163                                     ; preds = %checkBb38, %148
  %164 = call double @cos(double %161) #4, !llfi_index !386
  %165 = fmul double %150, %164, !llfi_index !387
  %166 = fmul double %151, %164, !llfi_index !387
  %167 = fpext double %165 to x86_fp80, !llfi_index !388
  %168 = fpext double %166 to x86_fp80, !llfi_index !388
  %169 = load x86_fp80* %a1, align 16, !llfi_index !389
  %170 = load x86_fp80* %a1, align 16, !llfi_index !389
  %171 = fdiv x86_fp80 %169, 0xK4000C000000000000000, !llfi_index !390
  %172 = fdiv x86_fp80 %170, 0xK4000C000000000000000, !llfi_index !390
  %173 = fsub x86_fp80 %167, %171, !llfi_index !391
  %174 = fsub x86_fp80 %168, %172, !llfi_index !391
  %175 = fptrunc x86_fp80 %173 to double, !llfi_index !392
  %176 = fptrunc x86_fp80 %174 to double, !llfi_index !392
  %check_cmp39 = fcmp ueq double %175, %176
  br i1 %check_cmp39, label %177, label %checkBb40

checkBb40:                                        ; preds = %163
  call void @check_flag()
  br label %177

; <label>:177                                     ; preds = %checkBb40, %163
  %178 = load double** %6, align 8, !llfi_index !393
  %179 = getelementptr inbounds double* %178, i64 1, !llfi_index !394
  store double %175, double* %179, align 8, !llfi_index !395
  %180 = load x86_fp80* %Q, align 16, !llfi_index !396
  %181 = load x86_fp80* %Q, align 16, !llfi_index !396
  %182 = fptrunc x86_fp80 %180 to double, !llfi_index !397
  %183 = fptrunc x86_fp80 %181 to double, !llfi_index !397
  %check_cmp41 = fcmp ueq double %182, %183
  br i1 %check_cmp41, label %184, label %checkBb42

checkBb42:                                        ; preds = %177
  call void @check_flag()
  br label %184

; <label>:184                                     ; preds = %checkBb42, %177
  %185 = call double @sqrt(double %182) #4, !llfi_index !398
  %186 = fmul double -2.000000e+00, %185, !llfi_index !399
  %187 = fmul double -2.000000e+00, %185, !llfi_index !399
  %188 = load double* %theta, align 8, !llfi_index !400
  %189 = load double* %theta, align 8, !llfi_index !400
  %190 = call double @atan(double 1.000000e+00) #4, !llfi_index !401
  %191 = fmul double 4.000000e+00, %190, !llfi_index !402
  %192 = fmul double 4.000000e+00, %190, !llfi_index !402
  %193 = fmul double 4.000000e+00, %191, !llfi_index !403
  %194 = fmul double 4.000000e+00, %192, !llfi_index !403
  %195 = fadd double %188, %193, !llfi_index !404
  %196 = fadd double %189, %194, !llfi_index !404
  %197 = fdiv double %195, 3.000000e+00, !llfi_index !405
  %198 = fdiv double %196, 3.000000e+00, !llfi_index !405
  %check_cmp43 = fcmp ueq double %197, %198
  br i1 %check_cmp43, label %199, label %checkBb44

checkBb44:                                        ; preds = %184
  call void @check_flag()
  br label %199

; <label>:199                                     ; preds = %checkBb44, %184
  %200 = call double @cos(double %197) #4, !llfi_index !406
  %201 = fmul double %186, %200, !llfi_index !407
  %202 = fmul double %187, %200, !llfi_index !407
  %203 = fpext double %201 to x86_fp80, !llfi_index !408
  %204 = fpext double %202 to x86_fp80, !llfi_index !408
  %205 = load x86_fp80* %a1, align 16, !llfi_index !409
  %206 = load x86_fp80* %a1, align 16, !llfi_index !409
  %207 = fdiv x86_fp80 %205, 0xK4000C000000000000000, !llfi_index !410
  %208 = fdiv x86_fp80 %206, 0xK4000C000000000000000, !llfi_index !410
  %209 = fsub x86_fp80 %203, %207, !llfi_index !411
  %210 = fsub x86_fp80 %204, %208, !llfi_index !411
  %211 = fptrunc x86_fp80 %209 to double, !llfi_index !412
  %212 = fptrunc x86_fp80 %210 to double, !llfi_index !412
  %check_cmp45 = fcmp ueq double %211, %212
  br i1 %check_cmp45, label %213, label %checkBb46

checkBb46:                                        ; preds = %199
  call void @check_flag()
  br label %213

; <label>:213                                     ; preds = %checkBb46, %199
  %214 = load double** %6, align 8, !llfi_index !413
  %215 = getelementptr inbounds double* %214, i64 2, !llfi_index !414
  store double %211, double* %215, align 8, !llfi_index !415
  br label %282, !llfi_index !416

; <label>:216                                     ; preds = %88
  %217 = load i32** %5, align 8, !llfi_index !417
  store i32 1, i32* %217, align 4, !llfi_index !418
  %218 = load double* %R2_Q3, align 8, !llfi_index !419
  %219 = load double* %R2_Q3, align 8, !llfi_index !419
  %check_cmp47 = fcmp ueq double %218, %219
  br i1 %check_cmp47, label %220, label %checkBb48

checkBb48:                                        ; preds = %216
  call void @check_flag()
  br label %220

; <label>:220                                     ; preds = %checkBb48, %216
  %221 = call double @sqrt(double %218) #4, !llfi_index !420
  %222 = load x86_fp80* %R, align 16, !llfi_index !421
  %223 = load x86_fp80* %R, align 16, !llfi_index !421
  %check_cmp49 = fcmp ueq x86_fp80 %222, %223
  br i1 %check_cmp49, label %224, label %checkBb50

checkBb50:                                        ; preds = %220
  call void @check_flag()
  br label %224

; <label>:224                                     ; preds = %checkBb50, %220
  %225 = fptrunc x86_fp80 %222 to double, !llfi_index !422
  %226 = call double @fabs(double %225) #6, !llfi_index !423
  %227 = fadd double %221, %226, !llfi_index !424
  %228 = fadd double %221, %226, !llfi_index !424
  %check_cmp51 = fcmp ueq double %227, %228
  br i1 %check_cmp51, label %229, label %checkBb52

checkBb52:                                        ; preds = %224
  call void @check_flag()
  br label %229

; <label>:229                                     ; preds = %checkBb52, %224
  %230 = call double @pow(double %227, double 0x3FD5555555555555) #4, !llfi_index !425
  %231 = load double** %6, align 8, !llfi_index !426
  %232 = getelementptr inbounds double* %231, i64 0, !llfi_index !427
  store double %230, double* %232, align 8, !llfi_index !428
  %233 = load x86_fp80* %Q, align 16, !llfi_index !429
  %234 = load double** %6, align 8, !llfi_index !430
  %235 = getelementptr inbounds double* %234, i64 0, !llfi_index !431
  %236 = load double* %235, align 8, !llfi_index !432
  %237 = load double* %235, align 8, !llfi_index !432
  %238 = fpext double %236 to x86_fp80, !llfi_index !433
  %239 = fpext double %237 to x86_fp80, !llfi_index !433
  %check_cmp53 = fcmp ueq x86_fp80 %238, %239
  br i1 %check_cmp53, label %240, label %checkBb54

checkBb54:                                        ; preds = %229
  call void @check_flag()
  br label %240

; <label>:240                                     ; preds = %checkBb54, %229
  %241 = fdiv x86_fp80 %233, %238, !llfi_index !434
  %242 = load double** %6, align 8, !llfi_index !435
  %243 = getelementptr inbounds double* %242, i64 0, !llfi_index !436
  %244 = load double* %243, align 8, !llfi_index !437
  %245 = load double* %243, align 8, !llfi_index !437
  %246 = fpext double %244 to x86_fp80, !llfi_index !438
  %247 = fpext double %245 to x86_fp80, !llfi_index !438
  %248 = fadd x86_fp80 %246, %241, !llfi_index !439
  %249 = fadd x86_fp80 %247, %241, !llfi_index !439
  %250 = fptrunc x86_fp80 %248 to double, !llfi_index !440
  %251 = fptrunc x86_fp80 %249 to double, !llfi_index !440
  %check_cmp55 = fcmp ueq double %250, %251
  br i1 %check_cmp55, label %252, label %checkBb56

checkBb56:                                        ; preds = %240
  call void @check_flag()
  br label %252

; <label>:252                                     ; preds = %checkBb56, %240
  store double %250, double* %243, align 8, !llfi_index !441
  %253 = load x86_fp80* %R, align 16, !llfi_index !442
  %254 = fcmp olt x86_fp80 %253, 0xK00000000000000000000, !llfi_index !443
  %255 = fcmp olt x86_fp80 %253, 0xK00000000000000000000, !llfi_index !443
  %check_cmp57 = icmp eq i1 %254, %255
  br i1 %check_cmp57, label %256, label %checkBb58

checkBb58:                                        ; preds = %252
  call void @check_flag()
  br label %256

; <label>:256                                     ; preds = %checkBb58, %252
  %257 = select i1 %254, i32 1, i32 -1, !llfi_index !444
  %258 = sitofp i32 %257 to double, !llfi_index !445
  %259 = sitofp i32 %257 to double, !llfi_index !445
  %260 = load double** %6, align 8, !llfi_index !446
  %261 = getelementptr inbounds double* %260, i64 0, !llfi_index !447
  %262 = load double* %261, align 8, !llfi_index !448
  %263 = load double* %261, align 8, !llfi_index !448
  %264 = fmul double %262, %258, !llfi_index !449
  %265 = fmul double %263, %259, !llfi_index !449
  %check_cmp59 = fcmp ueq double %264, %265
  br i1 %check_cmp59, label %266, label %checkBb60

checkBb60:                                        ; preds = %256
  call void @check_flag()
  br label %266

; <label>:266                                     ; preds = %checkBb60, %256
  store double %264, double* %261, align 8, !llfi_index !450
  %267 = load x86_fp80* %a1, align 16, !llfi_index !451
  %268 = load x86_fp80* %a1, align 16, !llfi_index !451
  %269 = fdiv x86_fp80 %267, 0xK4000C000000000000000, !llfi_index !452
  %270 = fdiv x86_fp80 %268, 0xK4000C000000000000000, !llfi_index !452
  %271 = load double** %6, align 8, !llfi_index !453
  %272 = getelementptr inbounds double* %271, i64 0, !llfi_index !454
  %273 = load double* %272, align 8, !llfi_index !455
  %274 = load double* %272, align 8, !llfi_index !455
  %275 = fpext double %273 to x86_fp80, !llfi_index !456
  %276 = fpext double %274 to x86_fp80, !llfi_index !456
  %277 = fsub x86_fp80 %275, %269, !llfi_index !457
  %278 = fsub x86_fp80 %276, %270, !llfi_index !457
  %279 = fptrunc x86_fp80 %277 to double, !llfi_index !458
  %280 = fptrunc x86_fp80 %278 to double, !llfi_index !458
  %check_cmp61 = fcmp ueq double %279, %280
  br i1 %check_cmp61, label %281, label %checkBb62

checkBb62:                                        ; preds = %266
  call void @check_flag()
  br label %281

; <label>:281                                     ; preds = %checkBb62, %266
  store double %279, double* %272, align 8, !llfi_index !459
  br label %282, !llfi_index !460

; <label>:282                                     ; preds = %281, %213
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

; <label>:3                                       ; preds = %57, %0
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
  br i1 %6, label %9, label %58, !llfi_index !477

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
  store i64 %23, i64* %1, align 8, !llfi_index !487
  %24 = load i64* %a, align 8, !llfi_index !488
  %25 = load i64* %a, align 8, !llfi_index !488
  %26 = shl i64 %24, 1, !llfi_index !489
  %27 = shl i64 %25, 1, !llfi_index !489
  %check_cmp3 = icmp eq i64 %26, %27
  br i1 %check_cmp3, label %28, label %checkBb4

checkBb4:                                         ; preds = %21
  call void @check_flag()
  br label %28

; <label>:28                                      ; preds = %checkBb4, %21
  store i64 %26, i64* %a, align 8, !llfi_index !490
  %29 = load i64* %a, align 8, !llfi_index !491
  %30 = shl i64 %29, 1, !llfi_index !492
  %31 = add i64 %30, 1, !llfi_index !493
  store i64 %31, i64* %e, align 8, !llfi_index !494
  %32 = load i64* %r, align 8, !llfi_index !495
  %33 = load i64* %r, align 8, !llfi_index !495
  %34 = load i64* %e, align 8, !llfi_index !496
  %35 = icmp uge i64 %32, %34, !llfi_index !497
  %36 = icmp uge i64 %33, %34, !llfi_index !497
  %check_cmp5 = icmp eq i1 %35, %36
  br i1 %check_cmp5, label %37, label %checkBb6

checkBb6:                                         ; preds = %28
  call void @check_flag()
  br label %37

; <label>:37                                      ; preds = %checkBb6, %28
  br i1 %35, label %38, label %51, !llfi_index !498

; <label>:38                                      ; preds = %37
  %39 = load i64* %e, align 8, !llfi_index !499
  %40 = load i64* %e, align 8, !llfi_index !499
  %41 = load i64* %r, align 8, !llfi_index !500
  %42 = load i64* %r, align 8, !llfi_index !500
  %43 = sub i64 %41, %39, !llfi_index !501
  %44 = sub i64 %42, %40, !llfi_index !501
  %check_cmp7 = icmp eq i64 %43, %44
  br i1 %check_cmp7, label %45, label %checkBb8

checkBb8:                                         ; preds = %38
  call void @check_flag()
  br label %45

; <label>:45                                      ; preds = %checkBb8, %38
  store i64 %43, i64* %r, align 8, !llfi_index !502
  %46 = load i64* %a, align 8, !llfi_index !503
  %47 = load i64* %a, align 8, !llfi_index !503
  %48 = add i64 %46, 1, !llfi_index !504
  %49 = add i64 %47, 1, !llfi_index !504
  %check_cmp9 = icmp eq i64 %48, %49
  br i1 %check_cmp9, label %50, label %checkBb10

checkBb10:                                        ; preds = %45
  call void @check_flag()
  br label %50

; <label>:50                                      ; preds = %checkBb10, %45
  store i64 %48, i64* %a, align 8, !llfi_index !505
  br label %51, !llfi_index !506

; <label>:51                                      ; preds = %50, %37
  br label %52, !llfi_index !507

; <label>:52                                      ; preds = %51
  %53 = load i32* %i, align 4, !llfi_index !508
  %54 = load i32* %i, align 4, !llfi_index !508
  %55 = add nsw i32 %53, 1, !llfi_index !509
  %56 = add nsw i32 %54, 1, !llfi_index !509
  %check_cmp11 = icmp eq i32 %55, %56
  br i1 %check_cmp11, label %57, label %checkBb12

checkBb12:                                        ; preds = %52
  call void @check_flag()
  br label %57

; <label>:57                                      ; preds = %checkBb12, %52
  store i32 %55, i32* %i, align 4, !llfi_index !510
  br label %3, !llfi_index !511

; <label>:58                                      ; preds = %8
  %59 = load %struct.int_sqrt** %2, align 8, !llfi_index !512
  %60 = bitcast %struct.int_sqrt* %59 to i8*, !llfi_index !513
  %61 = bitcast i64* %a to i8*, !llfi_index !514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 4, i1 false), !llfi_index !515
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
