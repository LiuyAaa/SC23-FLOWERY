; ModuleID = 'basicmath_small.ll'
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

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %c1 = alloca double, align 8
  %d1 = alloca double, align 8
  %a2 = alloca double, align 8
  %b2 = alloca double, align 8
  %c2 = alloca double, align 8
  %d2 = alloca double, align 8
  %a3 = alloca double, align 8
  %b3 = alloca double, align 8
  %c3 = alloca double, align 8
  %d3 = alloca double, align 8
  %a4 = alloca double, align 8
  %b4 = alloca double, align 8
  %c4 = alloca double, align 8
  %d4 = alloca double, align 8
  %x = alloca [3 x double], align 16
  %X = alloca double, align 8
  %solutions = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %q = alloca %struct.int_sqrt, align 4
  %n = alloca i64, align 8
  store i32 0, i32* %1
  store double 1.000000e+00, double* %a1, align 8
  store double -1.050000e+01, double* %b1, align 8
  store double 3.200000e+01, double* %c1, align 8
  store double -3.000000e+01, double* %d1, align 8
  store double 1.000000e+00, double* %a2, align 8
  store double -4.500000e+00, double* %b2, align 8
  store double 1.700000e+01, double* %c2, align 8
  store double -3.000000e+01, double* %d2, align 8
  store double 1.000000e+00, double* %a3, align 8
  store double -3.500000e+00, double* %b3, align 8
  store double 2.200000e+01, double* %c3, align 8
  store double -3.100000e+01, double* %d3, align 8
  store double 1.000000e+00, double* %a4, align 8
  store double -1.370000e+01, double* %b4, align 8
  store double 1.000000e+00, double* %c4, align 8
  store double -3.500000e+01, double* %d4, align 8
  store i64 1072497001, i64* %l, align 8
  store i64 0, i64* %n, align 8
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0))
  %3 = load double* %a1, align 8
  %4 = load double* %b1, align 8
  %5 = load double* %c1, align 8
  %6 = load double* %d1, align 8
  %7 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %3, double %4, double %5, double %6, i32* %solutions, double* %7)
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %19, %0
  %10 = load i32* %i, align 4
  %11 = load i32* %solutions, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %15
  %17 = load double* %16, align 8
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %17)
  br label %19

; <label>:19                                      ; preds = %13
  %20 = load i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %9

; <label>:22                                      ; preds = %9
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %24 = load double* %a2, align 8
  %25 = load double* %b2, align 8
  %26 = load double* %c2, align 8
  %27 = load double* %d2, align 8
  %28 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %24, double %25, double %26, double %27, i32* %solutions, double* %28)
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %30

; <label>:30                                      ; preds = %40, %22
  %31 = load i32* %i, align 4
  %32 = load i32* %solutions, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %36
  %38 = load double* %37, align 8
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %38)
  br label %40

; <label>:40                                      ; preds = %34
  %41 = load i32* %i, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4
  br label %30

; <label>:43                                      ; preds = %30
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %45 = load double* %a3, align 8
  %46 = load double* %b3, align 8
  %47 = load double* %c3, align 8
  %48 = load double* %d3, align 8
  %49 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %45, double %46, double %47, double %48, i32* %solutions, double* %49)
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %51

; <label>:51                                      ; preds = %61, %43
  %52 = load i32* %i, align 4
  %53 = load i32* %solutions, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

; <label>:55                                      ; preds = %51
  %56 = load i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %57
  %59 = load double* %58, align 8
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %59)
  br label %61

; <label>:61                                      ; preds = %55
  %62 = load i32* %i, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %i, align 4
  br label %51

; <label>:64                                      ; preds = %51
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %66 = load double* %a4, align 8
  %67 = load double* %b4, align 8
  %68 = load double* %c4, align 8
  %69 = load double* %d4, align 8
  %70 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %66, double %67, double %68, double %69, i32* %solutions, double* %70)
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %72

; <label>:72                                      ; preds = %82, %64
  %73 = load i32* %i, align 4
  %74 = load i32* %solutions, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %85

; <label>:76                                      ; preds = %72
  %77 = load i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %78
  %80 = load double* %79, align 8
  %81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %80)
  br label %82

; <label>:82                                      ; preds = %76
  %83 = load i32* %i, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4
  br label %72

; <label>:85                                      ; preds = %72
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  store double 1.000000e+00, double* %a1, align 8
  br label %87

; <label>:87                                      ; preds = %136, %85
  %88 = load double* %a1, align 8
  %89 = fcmp olt double %88, 1.000000e+01
  br i1 %89, label %90, label %139

; <label>:90                                      ; preds = %87
  store double 1.000000e+01, double* %b1, align 8
  br label %91

; <label>:91                                      ; preds = %132, %90
  %92 = load double* %b1, align 8
  %93 = fcmp ogt double %92, 0.000000e+00
  br i1 %93, label %94, label %135

; <label>:94                                      ; preds = %91
  store double 5.000000e+00, double* %c1, align 8
  br label %95

; <label>:95                                      ; preds = %128, %94
  %96 = load double* %c1, align 8
  %97 = fcmp olt double %96, 1.500000e+01
  br i1 %97, label %98, label %131

; <label>:98                                      ; preds = %95
  store double -1.000000e+00, double* %d1, align 8
  br label %99

; <label>:99                                      ; preds = %124, %98
  %100 = load double* %d1, align 8
  %101 = fcmp ogt double %100, -1.100000e+01
  br i1 %101, label %102, label %127

; <label>:102                                     ; preds = %99
  %103 = load double* %a1, align 8
  %104 = load double* %b1, align 8
  %105 = load double* %c1, align 8
  %106 = load double* %d1, align 8
  %107 = getelementptr inbounds [3 x double]* %x, i32 0, i32 0
  call void @SolveCubic(double %103, double %104, double %105, double %106, i32* %solutions, double* %107)
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %109

; <label>:109                                     ; preds = %119, %102
  %110 = load i32* %i, align 4
  %111 = load i32* %solutions, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %122

; <label>:113                                     ; preds = %109
  %114 = load i32* %i, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x double]* %x, i32 0, i64 %115
  %117 = load double* %116, align 8
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %117)
  br label %119

; <label>:119                                     ; preds = %113
  %120 = load i32* %i, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4
  br label %109

; <label>:122                                     ; preds = %109
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  br label %124

; <label>:124                                     ; preds = %122
  %125 = load double* %d1, align 8
  %126 = fadd double %125, -1.000000e+00
  store double %126, double* %d1, align 8
  br label %99

; <label>:127                                     ; preds = %99
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load double* %c1, align 8
  %130 = fadd double %129, 5.000000e-01
  store double %130, double* %c1, align 8
  br label %95

; <label>:131                                     ; preds = %95
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load double* %b1, align 8
  %134 = fadd double %133, -1.000000e+00
  store double %134, double* %b1, align 8
  br label %91

; <label>:135                                     ; preds = %91
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load double* %a1, align 8
  %138 = fadd double %137, 1.000000e+00
  store double %138, double* %a1, align 8
  br label %87

; <label>:139                                     ; preds = %87
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %141

; <label>:141                                     ; preds = %151, %139
  %142 = load i32* %i, align 4
  %143 = icmp slt i32 %142, 1001
  br i1 %143, label %144, label %154

; <label>:144                                     ; preds = %141
  %145 = load i32* %i, align 4
  %146 = sext i32 %145 to i64
  call void @usqrt(i64 %146, %struct.int_sqrt* %q)
  %147 = load i32* %i, align 4
  %148 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0
  %149 = load i32* %148, align 4
  %150 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str5, i32 0, i32 0), i32 %147, i32 %149)
  br label %151

; <label>:151                                     ; preds = %144
  %152 = load i32* %i, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4
  br label %141

; <label>:154                                     ; preds = %141
  %155 = load i64* %l, align 8
  call void @usqrt(i64 %155, %struct.int_sqrt* %q)
  %156 = load i64* %l, align 8
  %157 = getelementptr inbounds %struct.int_sqrt* %q, i32 0, i32 0
  %158 = load i32* %157, align 4
  %159 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i32 0, i32 0), i64 %156, i32 %158)
  %160 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0))
  store double 0.000000e+00, double* %X, align 8
  br label %161

; <label>:161                                     ; preds = %172, %154
  %162 = load double* %X, align 8
  %163 = fcmp ole double %162, 3.600000e+02
  br i1 %163, label %164, label %175

; <label>:164                                     ; preds = %161
  %165 = load double* %X, align 8
  %166 = load double* %X, align 8
  %167 = call double @atan(double 1.000000e+00) #4
  %168 = fmul double 4.000000e+00, %167
  %169 = fmul double %166, %168
  %170 = fdiv double %169, 1.800000e+02
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), double %165, double %170)
  br label %172

; <label>:172                                     ; preds = %164
  %173 = load double* %X, align 8
  %174 = fadd double %173, 1.000000e+00
  store double %174, double* %X, align 8
  br label %161

; <label>:175                                     ; preds = %161
  %176 = call i32 (i8*, ...)* bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8]* @.str9, i32 0, i32 0))
  store double 0.000000e+00, double* %X, align 8
  br label %177

; <label>:177                                     ; preds = %192, %175
  %178 = load double* %X, align 8
  %179 = call double @atan(double 1.000000e+00) #4
  %180 = fmul double 4.000000e+00, %179
  %181 = fmul double 2.000000e+00, %180
  %182 = fadd double %181, 1.000000e-06
  %183 = fcmp ole double %178, %182
  br i1 %183, label %184, label %198

; <label>:184                                     ; preds = %177
  %185 = load double* %X, align 8
  %186 = load double* %X, align 8
  %187 = fmul double %186, 1.800000e+02
  %188 = call double @atan(double 1.000000e+00) #4
  %189 = fmul double 4.000000e+00, %188
  %190 = fdiv double %187, %189
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0), double %185, double %190)
  br label %192

; <label>:192                                     ; preds = %184
  %193 = call double @atan(double 1.000000e+00) #4
  %194 = fmul double 4.000000e+00, %193
  %195 = fdiv double %194, 1.800000e+02
  %196 = load double* %X, align 8
  %197 = fadd double %196, %195
  store double %197, double* %X, align 8
  br label %177

; <label>:198                                     ; preds = %177
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(...) #1

; Function Attrs: nounwind uwtable
define void @SolveCubic(double %a, double %b, double %c, double %d, i32* %solutions, double* %x) #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %a1 = alloca x86_fp80, align 16
  %a2 = alloca x86_fp80, align 16
  %a3 = alloca x86_fp80, align 16
  %Q = alloca x86_fp80, align 16
  %R = alloca x86_fp80, align 16
  %R2_Q3 = alloca double, align 8
  %theta = alloca double, align 8
  store double %a, double* %1, align 8
  store double %b, double* %2, align 8
  store double %c, double* %3, align 8
  store double %d, double* %4, align 8
  store i32* %solutions, i32** %5, align 8
  store double* %x, double** %6, align 8
  %7 = load double* %2, align 8
  %8 = load double* %1, align 8
  %9 = fdiv double %7, %8
  %10 = fpext double %9 to x86_fp80
  store x86_fp80 %10, x86_fp80* %a1, align 16
  %11 = load double* %3, align 8
  %12 = load double* %1, align 8
  %13 = fdiv double %11, %12
  %14 = fpext double %13 to x86_fp80
  store x86_fp80 %14, x86_fp80* %a2, align 16
  %15 = load double* %4, align 8
  %16 = load double* %1, align 8
  %17 = fdiv double %15, %16
  %18 = fpext double %17 to x86_fp80
  store x86_fp80 %18, x86_fp80* %a3, align 16
  %19 = load x86_fp80* %a1, align 16
  %20 = load x86_fp80* %a1, align 16
  %21 = fmul x86_fp80 %19, %20
  %22 = load x86_fp80* %a2, align 16
  %23 = fmul x86_fp80 0xK4000C000000000000000, %22
  %24 = fsub x86_fp80 %21, %23
  %25 = fdiv x86_fp80 %24, 0xK40029000000000000000
  store x86_fp80 %25, x86_fp80* %Q, align 16
  %26 = load x86_fp80* %a1, align 16
  %27 = fmul x86_fp80 0xK40008000000000000000, %26
  %28 = load x86_fp80* %a1, align 16
  %29 = fmul x86_fp80 %27, %28
  %30 = load x86_fp80* %a1, align 16
  %31 = fmul x86_fp80 %29, %30
  %32 = load x86_fp80* %a1, align 16
  %33 = fmul x86_fp80 0xK40029000000000000000, %32
  %34 = load x86_fp80* %a2, align 16
  %35 = fmul x86_fp80 %33, %34
  %36 = fsub x86_fp80 %31, %35
  %37 = load x86_fp80* %a3, align 16
  %38 = fmul x86_fp80 0xK4003D800000000000000, %37
  %39 = fadd x86_fp80 %36, %38
  %40 = fdiv x86_fp80 %39, 0xK4004D800000000000000
  store x86_fp80 %40, x86_fp80* %R, align 16
  %41 = load x86_fp80* %R, align 16
  %42 = load x86_fp80* %R, align 16
  %43 = fmul x86_fp80 %41, %42
  %44 = load x86_fp80* %Q, align 16
  %45 = load x86_fp80* %Q, align 16
  %46 = fmul x86_fp80 %44, %45
  %47 = load x86_fp80* %Q, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = fsub x86_fp80 %43, %48
  %50 = fptrunc x86_fp80 %49 to double
  store double %50, double* %R2_Q3, align 8
  %51 = load double* %R2_Q3, align 8
  %52 = fcmp ole double %51, 0.000000e+00
  br i1 %52, label %53, label %120

; <label>:53                                      ; preds = %0
  %54 = load i32** %5, align 8
  store i32 3, i32* %54, align 4
  %55 = load x86_fp80* %R, align 16
  %56 = load x86_fp80* %Q, align 16
  %57 = load x86_fp80* %Q, align 16
  %58 = fmul x86_fp80 %56, %57
  %59 = load x86_fp80* %Q, align 16
  %60 = fmul x86_fp80 %58, %59
  %61 = fptrunc x86_fp80 %60 to double
  %62 = call double @sqrt(double %61) #4
  %63 = fpext double %62 to x86_fp80
  %64 = fdiv x86_fp80 %55, %63
  %65 = fptrunc x86_fp80 %64 to double
  %66 = call double @acos(double %65) #4
  store double %66, double* %theta, align 8
  %67 = load x86_fp80* %Q, align 16
  %68 = fptrunc x86_fp80 %67 to double
  %69 = call double @sqrt(double %68) #4
  %70 = fmul double -2.000000e+00, %69
  %71 = load double* %theta, align 8
  %72 = fdiv double %71, 3.000000e+00
  %73 = call double @cos(double %72) #4
  %74 = fmul double %70, %73
  %75 = fpext double %74 to x86_fp80
  %76 = load x86_fp80* %a1, align 16
  %77 = fdiv x86_fp80 %76, 0xK4000C000000000000000
  %78 = fsub x86_fp80 %75, %77
  %79 = fptrunc x86_fp80 %78 to double
  %80 = load double** %6, align 8
  %81 = getelementptr inbounds double* %80, i64 0
  store double %79, double* %81, align 8
  %82 = load x86_fp80* %Q, align 16
  %83 = fptrunc x86_fp80 %82 to double
  %84 = call double @sqrt(double %83) #4
  %85 = fmul double -2.000000e+00, %84
  %86 = load double* %theta, align 8
  %87 = call double @atan(double 1.000000e+00) #4
  %88 = fmul double 4.000000e+00, %87
  %89 = fmul double 2.000000e+00, %88
  %90 = fadd double %86, %89
  %91 = fdiv double %90, 3.000000e+00
  %92 = call double @cos(double %91) #4
  %93 = fmul double %85, %92
  %94 = fpext double %93 to x86_fp80
  %95 = load x86_fp80* %a1, align 16
  %96 = fdiv x86_fp80 %95, 0xK4000C000000000000000
  %97 = fsub x86_fp80 %94, %96
  %98 = fptrunc x86_fp80 %97 to double
  %99 = load double** %6, align 8
  %100 = getelementptr inbounds double* %99, i64 1
  store double %98, double* %100, align 8
  %101 = load x86_fp80* %Q, align 16
  %102 = fptrunc x86_fp80 %101 to double
  %103 = call double @sqrt(double %102) #4
  %104 = fmul double -2.000000e+00, %103
  %105 = load double* %theta, align 8
  %106 = call double @atan(double 1.000000e+00) #4
  %107 = fmul double 4.000000e+00, %106
  %108 = fmul double 4.000000e+00, %107
  %109 = fadd double %105, %108
  %110 = fdiv double %109, 3.000000e+00
  %111 = call double @cos(double %110) #4
  %112 = fmul double %104, %111
  %113 = fpext double %112 to x86_fp80
  %114 = load x86_fp80* %a1, align 16
  %115 = fdiv x86_fp80 %114, 0xK4000C000000000000000
  %116 = fsub x86_fp80 %113, %115
  %117 = fptrunc x86_fp80 %116 to double
  %118 = load double** %6, align 8
  %119 = getelementptr inbounds double* %118, i64 2
  store double %117, double* %119, align 8
  br label %159

; <label>:120                                     ; preds = %0
  %121 = load i32** %5, align 8
  store i32 1, i32* %121, align 4
  %122 = load double* %R2_Q3, align 8
  %123 = call double @sqrt(double %122) #4
  %124 = load x86_fp80* %R, align 16
  %125 = fptrunc x86_fp80 %124 to double
  %126 = call double @fabs(double %125) #5
  %127 = fadd double %123, %126
  %128 = call double @pow(double %127, double 0x3FD5555555555555) #4
  %129 = load double** %6, align 8
  %130 = getelementptr inbounds double* %129, i64 0
  store double %128, double* %130, align 8
  %131 = load x86_fp80* %Q, align 16
  %132 = load double** %6, align 8
  %133 = getelementptr inbounds double* %132, i64 0
  %134 = load double* %133, align 8
  %135 = fpext double %134 to x86_fp80
  %136 = fdiv x86_fp80 %131, %135
  %137 = load double** %6, align 8
  %138 = getelementptr inbounds double* %137, i64 0
  %139 = load double* %138, align 8
  %140 = fpext double %139 to x86_fp80
  %141 = fadd x86_fp80 %140, %136
  %142 = fptrunc x86_fp80 %141 to double
  store double %142, double* %138, align 8
  %143 = load x86_fp80* %R, align 16
  %144 = fcmp olt x86_fp80 %143, 0xK00000000000000000000
  %145 = select i1 %144, i32 1, i32 -1
  %146 = sitofp i32 %145 to double
  %147 = load double** %6, align 8
  %148 = getelementptr inbounds double* %147, i64 0
  %149 = load double* %148, align 8
  %150 = fmul double %149, %146
  store double %150, double* %148, align 8
  %151 = load x86_fp80* %a1, align 16
  %152 = fdiv x86_fp80 %151, 0xK4000C000000000000000
  %153 = load double** %6, align 8
  %154 = getelementptr inbounds double* %153, i64 0
  %155 = load double* %154, align 8
  %156 = fpext double %155 to x86_fp80
  %157 = fsub x86_fp80 %156, %152
  %158 = fptrunc x86_fp80 %157 to double
  store double %158, double* %154, align 8
  br label %159

; <label>:159                                     ; preds = %120, %53
  ret void
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
  %1 = alloca i64, align 8
  %2 = alloca %struct.int_sqrt*, align 8
  %a = alloca i64, align 8
  %r = alloca i64, align 8
  %e = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %x, i64* %1, align 8
  store %struct.int_sqrt* %q, %struct.int_sqrt** %2, align 8
  store i64 0, i64* %a, align 8
  store i64 0, i64* %r, align 8
  store i64 0, i64* %e, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %30, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %33

; <label>:6                                       ; preds = %3
  %7 = load i64* %r, align 8
  %8 = shl i64 %7, 2
  %9 = load i64* %1, align 8
  %10 = and i64 %9, 3221225472
  %11 = lshr i64 %10, 30
  %12 = add i64 %8, %11
  store i64 %12, i64* %r, align 8
  %13 = load i64* %1, align 8
  %14 = shl i64 %13, 2
  store i64 %14, i64* %1, align 8
  %15 = load i64* %a, align 8
  %16 = shl i64 %15, 1
  store i64 %16, i64* %a, align 8
  %17 = load i64* %a, align 8
  %18 = shl i64 %17, 1
  %19 = add i64 %18, 1
  store i64 %19, i64* %e, align 8
  %20 = load i64* %r, align 8
  %21 = load i64* %e, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %29

; <label>:23                                      ; preds = %6
  %24 = load i64* %e, align 8
  %25 = load i64* %r, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %r, align 8
  %27 = load i64* %a, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %a, align 8
  br label %29

; <label>:29                                      ; preds = %23, %6
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4
  br label %3

; <label>:33                                      ; preds = %3
  %34 = load %struct.int_sqrt** %2, align 8
  %35 = bitcast %struct.int_sqrt* %34 to i8*
  %36 = bitcast i64* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define double @rad2deg(double %rad) #0 {
  %1 = alloca double, align 8
  store double %rad, double* %1, align 8
  %2 = load double* %1, align 8
  %3 = fmul double 1.800000e+02, %2
  %4 = call double @atan(double 1.000000e+00) #4
  %5 = fmul double 4.000000e+00, %4
  %6 = fdiv double %3, %5
  ret double %6
}

; Function Attrs: nounwind uwtable
define double @deg2rad(double %deg) #0 {
  %1 = alloca double, align 8
  store double %deg, double* %1, align 8
  %2 = call double @atan(double 1.000000e+00) #4
  %3 = fmul double 4.000000e+00, %2
  %4 = load double* %1, align 8
  %5 = fmul double %3, %4
  %6 = fdiv double %5, 1.800000e+02
  ret double %6
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
