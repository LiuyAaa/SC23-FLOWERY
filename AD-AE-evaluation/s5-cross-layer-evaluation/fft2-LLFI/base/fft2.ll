; ModuleID = 'main.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str111 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str212 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str313 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str414 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %MAXSIZE = alloca i32, align 4
  %MAXWAVES = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %RealIn = alloca float*, align 8
  %ImagIn = alloca float*, align 8
  %RealOut = alloca float*, align 8
  %ImagOut = alloca float*, align 8
  %coeff = alloca float*, align 8
  %amp = alloca float*, align 8
  %invfft = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %invfft, align 4
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str1, i32 0, i32 0))
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str2, i32 0, i32 0))
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

; <label>:11                                      ; preds = %0
  %12 = load i32* %2, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %11
  %15 = load i8*** %3, align 8
  %16 = getelementptr inbounds i8** %15, i64 3
  %17 = load i8** %16, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i64 2)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %invfft, align 4
  br label %22

; <label>:22                                      ; preds = %14, %11
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i8*** %3, align 8
  %25 = getelementptr inbounds i8** %24, i64 2
  %26 = load i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #6
  store i32 %27, i32* %MAXSIZE, align 4
  %28 = load i8*** %3, align 8
  %29 = getelementptr inbounds i8** %28, i64 1
  %30 = load i8** %29, align 8
  %31 = call i32 @atoi(i8* %30) #6
  store i32 %31, i32* %MAXWAVES, align 4
  call void @srand(i32 1) #7
  %32 = load i32* %MAXSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 %34) #7
  %36 = bitcast i8* %35 to float*
  store float* %36, float** %RealIn, align 8
  %37 = load i32* %MAXSIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = call noalias i8* @malloc(i64 %39) #7
  %41 = bitcast i8* %40 to float*
  store float* %41, float** %ImagIn, align 8
  %42 = load i32* %MAXSIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = call noalias i8* @malloc(i64 %44) #7
  %46 = bitcast i8* %45 to float*
  store float* %46, float** %RealOut, align 8
  %47 = load i32* %MAXSIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = call noalias i8* @malloc(i64 %49) #7
  %51 = bitcast i8* %50 to float*
  store float* %51, float** %ImagOut, align 8
  %52 = load i32* %MAXWAVES, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = call noalias i8* @malloc(i64 %54) #7
  %56 = bitcast i8* %55 to float*
  store float* %56, float** %coeff, align 8
  %57 = load i32* %MAXWAVES, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = call noalias i8* @malloc(i64 %59) #7
  %61 = bitcast i8* %60 to float*
  store float* %61, float** %amp, align 8
  store i32 0, i32* %i, align 4
  br label %62

; <label>:62                                      ; preds = %81, %23
  %63 = load i32* %i, align 4
  %64 = load i32* %MAXWAVES, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %84

; <label>:66                                      ; preds = %62
  %67 = call i32 @rand() #7
  %68 = srem i32 %67, 1000
  %69 = sitofp i32 %68 to float
  %70 = load i32* %i, align 4
  %71 = zext i32 %70 to i64
  %72 = load float** %coeff, align 8
  %73 = getelementptr inbounds float* %72, i64 %71
  store float %69, float* %73, align 4
  %74 = call i32 @rand() #7
  %75 = srem i32 %74, 1000
  %76 = sitofp i32 %75 to float
  %77 = load i32* %i, align 4
  %78 = zext i32 %77 to i64
  %79 = load float** %amp, align 8
  %80 = getelementptr inbounds float* %79, i64 %78
  store float %76, float* %80, align 4
  br label %81

; <label>:81                                      ; preds = %66
  %82 = load i32* %i, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %i, align 4
  br label %62

; <label>:84                                      ; preds = %62
  store i32 0, i32* %i, align 4
  br label %85

; <label>:85                                      ; preds = %163, %84
  %86 = load i32* %i, align 4
  %87 = load i32* %MAXSIZE, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %166

; <label>:89                                      ; preds = %85
  %90 = load i32* %i, align 4
  %91 = zext i32 %90 to i64
  %92 = load float** %RealIn, align 8
  %93 = getelementptr inbounds float* %92, i64 %91
  store float 0.000000e+00, float* %93, align 4
  store i32 0, i32* %j, align 4
  br label %94

; <label>:94                                      ; preds = %159, %89
  %95 = load i32* %j, align 4
  %96 = load i32* %MAXWAVES, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %162

; <label>:98                                      ; preds = %94
  %99 = call i32 @rand() #7
  %100 = srem i32 %99, 2
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

; <label>:102                                     ; preds = %98
  %103 = load i32* %j, align 4
  %104 = zext i32 %103 to i64
  %105 = load float** %coeff, align 8
  %106 = getelementptr inbounds float* %105, i64 %104
  %107 = load float* %106, align 4
  %108 = fpext float %107 to double
  %109 = load i32* %j, align 4
  %110 = zext i32 %109 to i64
  %111 = load float** %amp, align 8
  %112 = getelementptr inbounds float* %111, i64 %110
  %113 = load float* %112, align 4
  %114 = load i32* %i, align 4
  %115 = uitofp i32 %114 to float
  %116 = fmul float %113, %115
  %117 = fpext float %116 to double
  %118 = call double @cos(double %117) #7
  %119 = fmul double %108, %118
  %120 = load i32* %i, align 4
  %121 = zext i32 %120 to i64
  %122 = load float** %RealIn, align 8
  %123 = getelementptr inbounds float* %122, i64 %121
  %124 = load float* %123, align 4
  %125 = fpext float %124 to double
  %126 = fadd double %125, %119
  %127 = fptrunc double %126 to float
  store float %127, float* %123, align 4
  br label %154

; <label>:128                                     ; preds = %98
  %129 = load i32* %j, align 4
  %130 = zext i32 %129 to i64
  %131 = load float** %coeff, align 8
  %132 = getelementptr inbounds float* %131, i64 %130
  %133 = load float* %132, align 4
  %134 = fpext float %133 to double
  %135 = load i32* %j, align 4
  %136 = zext i32 %135 to i64
  %137 = load float** %amp, align 8
  %138 = getelementptr inbounds float* %137, i64 %136
  %139 = load float* %138, align 4
  %140 = load i32* %i, align 4
  %141 = uitofp i32 %140 to float
  %142 = fmul float %139, %141
  %143 = fpext float %142 to double
  %144 = call double @sin(double %143) #7
  %145 = fmul double %134, %144
  %146 = load i32* %i, align 4
  %147 = zext i32 %146 to i64
  %148 = load float** %RealIn, align 8
  %149 = getelementptr inbounds float* %148, i64 %147
  %150 = load float* %149, align 4
  %151 = fpext float %150 to double
  %152 = fadd double %151, %145
  %153 = fptrunc double %152 to float
  store float %153, float* %149, align 4
  br label %154

; <label>:154                                     ; preds = %128, %102
  %155 = load i32* %i, align 4
  %156 = zext i32 %155 to i64
  %157 = load float** %ImagIn, align 8
  %158 = getelementptr inbounds float* %157, i64 %156
  store float 0.000000e+00, float* %158, align 4
  br label %159

; <label>:159                                     ; preds = %154
  %160 = load i32* %j, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %j, align 4
  br label %94

; <label>:162                                     ; preds = %94
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32* %i, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %i, align 4
  br label %85

; <label>:166                                     ; preds = %85
  %167 = load i32* %MAXSIZE, align 4
  %168 = load i32* %invfft, align 4
  %169 = load float** %RealIn, align 8
  %170 = load float** %ImagIn, align 8
  %171 = load float** %RealOut, align 8
  %172 = load float** %ImagOut, align 8
  %173 = call i32 (i32, i32, float*, float*, float*, float*, ...)* bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %167, i32 %168, float* %169, float* %170, float* %171, float* %172)
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %175

; <label>:175                                     ; preds = %187, %166
  %176 = load i32* %i, align 4
  %177 = load i32* %MAXSIZE, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %190

; <label>:179                                     ; preds = %175
  %180 = load i32* %i, align 4
  %181 = zext i32 %180 to i64
  %182 = load float** %RealOut, align 8
  %183 = getelementptr inbounds float* %182, i64 %181
  %184 = load float* %183, align 4
  %185 = fpext float %184 to double
  %186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), double %185)
  br label %187

; <label>:187                                     ; preds = %179
  %188 = load i32* %i, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %i, align 4
  br label %175

; <label>:190                                     ; preds = %175
  %191 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  %192 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %193

; <label>:193                                     ; preds = %205, %190
  %194 = load i32* %i, align 4
  %195 = load i32* %MAXSIZE, align 4
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %197, label %208

; <label>:197                                     ; preds = %193
  %198 = load i32* %i, align 4
  %199 = zext i32 %198 to i64
  %200 = load float** %ImagOut, align 8
  %201 = getelementptr inbounds float* %200, i64 %199
  %202 = load float* %201, align 4
  %203 = fpext float %202 to double
  %204 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), double %203)
  br label %205

; <label>:205                                     ; preds = %197
  %206 = load i32* %i, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %i, align 4
  br label %193

; <label>:208                                     ; preds = %193
  %209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  %210 = load float** %RealIn, align 8
  %211 = bitcast float* %210 to i8*
  call void @free(i8* %211) #7
  %212 = load float** %ImagIn, align 8
  %213 = bitcast float* %212 to i8*
  call void @free(i8* %213) #7
  %214 = load float** %RealOut, align 8
  %215 = bitcast float* %214 to i8*
  call void @free(i8* %215) #7
  %216 = load float** %ImagOut, align 8
  %217 = bitcast float* %216 to i8*
  call void @free(i8* %217) #7
  %218 = load float** %coeff, align 8
  %219 = bitcast float* %218 to i8*
  call void @free(i8* %219) #7
  %220 = load float** %amp, align 8
  %221 = bitcast float* %220 to i8*
  call void @free(i8* %221) #7
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %223 = load i32* %1
  ret i32 %223
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @IsPowerOfTwo(i32 %x) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1
  br label %14

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = load i32* %2, align 4
  %9 = sub i32 %8, 1
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  store i32 0, i32* %1
  br label %14

; <label>:13                                      ; preds = %6
  store i32 1, i32* %1
  br label %14

; <label>:14                                      ; preds = %13, %12, %5
  %15 = load i32* %1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @NumberOfBitsNeeded(i32 %PowerOfTwo) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %PowerOfTwo, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct._IO_FILE** @stderr, align 8
  %6 = load i32* %1, align 4
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([73 x i8]* @.str9, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #5
  unreachable

; <label>:8                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %18, %8
  %10 = load i32* %1, align 4
  %11 = load i32* %i, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4
  ret i32 %16

; <label>:17                                      ; preds = %9
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %9
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @ReverseBits(i32 %index, i32 %NumBits) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %rev = alloca i32, align 4
  store i32 %index, i32* %1, align 4
  store i32 %NumBits, i32* %2, align 4
  store i32 0, i32* %rev, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %15, %0
  %4 = load i32* %i, align 4
  %5 = load i32* %2, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %3
  %8 = load i32* %rev, align 4
  %9 = shl i32 %8, 1
  %10 = load i32* %1, align 4
  %11 = and i32 %10, 1
  %12 = or i32 %9, %11
  store i32 %12, i32* %rev, align 4
  %13 = load i32* %1, align 4
  %14 = lshr i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %15

; <label>:15                                      ; preds = %7
  %16 = load i32* %i, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %3

; <label>:18                                      ; preds = %3
  %19 = load i32* %rev, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define double @Index_to_frequency(i32 %NumSamples, i32 %Index) #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %NumSamples, i32* %2, align 4
  store i32 %Index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = load i32* %2, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store double 0.000000e+00, double* %1
  br label %29

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4
  %10 = load i32* %2, align 4
  %11 = udiv i32 %10, 2
  %12 = icmp ule i32 %9, %11
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %8
  %14 = load i32* %3, align 4
  %15 = uitofp i32 %14 to double
  %16 = load i32* %2, align 4
  %17 = uitofp i32 %16 to double
  %18 = fdiv double %15, %17
  store double %18, double* %1
  br label %29

; <label>:19                                      ; preds = %8
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i32* %2, align 4
  %22 = load i32* %3, align 4
  %23 = sub i32 %21, %22
  %24 = uitofp i32 %23 to double
  %25 = fsub double -0.000000e+00, %24
  %26 = load i32* %2, align 4
  %27 = uitofp i32 %26 to double
  %28 = fdiv double %25, %27
  store double %28, double* %1
  br label %29

; <label>:29                                      ; preds = %20, %13, %7
  %30 = load double* %1
  ret double %30
}

; Function Attrs: nounwind uwtable
define void @fft_float(i32 %NumSamples, i32 %InverseTransform, float* %RealIn, float* %ImagIn, float* %RealOut, float* %ImagOut) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %NumBits = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %BlockSize = alloca i32, align 4
  %BlockEnd = alloca i32, align 4
  %angle_numerator = alloca double, align 8
  %tr = alloca double, align 8
  %ti = alloca double, align 8
  %delta_angle = alloca double, align 8
  %sm2 = alloca double, align 8
  %sm1 = alloca double, align 8
  %cm2 = alloca double, align 8
  %cm1 = alloca double, align 8
  %w = alloca double, align 8
  %ar = alloca [3 x double], align 16
  %ai = alloca [3 x double], align 16
  %temp = alloca double, align 8
  %denom = alloca double, align 8
  store i32 %NumSamples, i32* %1, align 4
  store i32 %InverseTransform, i32* %2, align 4
  store float* %RealIn, float** %3, align 8
  store float* %ImagIn, float** %4, align 8
  store float* %RealOut, float** %5, align 8
  store float* %ImagOut, float** %6, align 8
  store double 0x401921FB54442D18, double* %angle_numerator, align 8
  %7 = load i32* %1, align 4
  %8 = call i32 @IsPowerOfTwo(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct._IO_FILE** @stderr, align 8
  %12 = load i32* %1, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8]* @.str10, i32 0, i32 0), i32 %12)
  call void @exit(i32 1) #5
  unreachable

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %14
  %18 = load double* %angle_numerator, align 8
  %19 = fsub double -0.000000e+00, %18
  store double %19, double* %angle_numerator, align 8
  br label %20

; <label>:20                                      ; preds = %17, %14
  %21 = load float** %3, align 8
  %22 = bitcast float* %21 to i8*
  call void @CheckPointer(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str111, i32 0, i32 0))
  %23 = load float** %5, align 8
  %24 = bitcast float* %23 to i8*
  call void @CheckPointer(i8* %24, i8* getelementptr inbounds ([8 x i8]* @.str212, i32 0, i32 0))
  %25 = load float** %6, align 8
  %26 = bitcast float* %25 to i8*
  call void @CheckPointer(i8* %26, i8* getelementptr inbounds ([8 x i8]* @.str313, i32 0, i32 0))
  %27 = load i32* %1, align 4
  %28 = call i32 @NumberOfBitsNeeded(i32 %27)
  store i32 %28, i32* %NumBits, align 4
  store i32 0, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %63, %20
  %30 = load i32* %i, align 4
  %31 = load i32* %1, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %66

; <label>:33                                      ; preds = %29
  %34 = load i32* %i, align 4
  %35 = load i32* %NumBits, align 4
  %36 = call i32 @ReverseBits(i32 %34, i32 %35)
  store i32 %36, i32* %j, align 4
  %37 = load i32* %i, align 4
  %38 = zext i32 %37 to i64
  %39 = load float** %3, align 8
  %40 = getelementptr inbounds float* %39, i64 %38
  %41 = load float* %40, align 4
  %42 = load i32* %j, align 4
  %43 = zext i32 %42 to i64
  %44 = load float** %5, align 8
  %45 = getelementptr inbounds float* %44, i64 %43
  store float %41, float* %45, align 4
  %46 = load float** %4, align 8
  %47 = icmp eq float* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %33
  br label %56

; <label>:49                                      ; preds = %33
  %50 = load i32* %i, align 4
  %51 = zext i32 %50 to i64
  %52 = load float** %4, align 8
  %53 = getelementptr inbounds float* %52, i64 %51
  %54 = load float* %53, align 4
  %55 = fpext float %54 to double
  br label %56

; <label>:56                                      ; preds = %49, %48
  %57 = phi double [ 0.000000e+00, %48 ], [ %55, %49 ]
  %58 = fptrunc double %57 to float
  %59 = load i32* %j, align 4
  %60 = zext i32 %59 to i64
  %61 = load float** %6, align 8
  %62 = getelementptr inbounds float* %61, i64 %60
  store float %58, float* %62, align 4
  br label %63

; <label>:63                                      ; preds = %56
  %64 = load i32* %i, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %i, align 4
  br label %29

; <label>:66                                      ; preds = %29
  store i32 1, i32* %BlockEnd, align 4
  store i32 2, i32* %BlockSize, align 4
  br label %67

; <label>:67                                      ; preds = %234, %66
  %68 = load i32* %BlockSize, align 4
  %69 = load i32* %1, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %237

; <label>:71                                      ; preds = %67
  %72 = load double* %angle_numerator, align 8
  %73 = load i32* %BlockSize, align 4
  %74 = uitofp i32 %73 to double
  %75 = fdiv double %72, %74
  store double %75, double* %delta_angle, align 8
  %76 = load double* %delta_angle, align 8
  %77 = fmul double -2.000000e+00, %76
  %78 = call double @sin(double %77) #7
  store double %78, double* %sm2, align 8
  %79 = load double* %delta_angle, align 8
  %80 = fsub double -0.000000e+00, %79
  %81 = call double @sin(double %80) #7
  store double %81, double* %sm1, align 8
  %82 = load double* %delta_angle, align 8
  %83 = fmul double -2.000000e+00, %82
  %84 = call double @cos(double %83) #7
  store double %84, double* %cm2, align 8
  %85 = load double* %delta_angle, align 8
  %86 = fsub double -0.000000e+00, %85
  %87 = call double @cos(double %86) #7
  store double %87, double* %cm1, align 8
  %88 = load double* %cm1, align 8
  %89 = fmul double 2.000000e+00, %88
  store double %89, double* %w, align 8
  store i32 0, i32* %i, align 4
  br label %90

; <label>:90                                      ; preds = %228, %71
  %91 = load i32* %i, align 4
  %92 = load i32* %1, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %232

; <label>:94                                      ; preds = %90
  %95 = load double* %cm2, align 8
  %96 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 2
  store double %95, double* %96, align 8
  %97 = load double* %cm1, align 8
  %98 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 1
  store double %97, double* %98, align 8
  %99 = load double* %sm2, align 8
  %100 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 2
  store double %99, double* %100, align 8
  %101 = load double* %sm1, align 8
  %102 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 1
  store double %101, double* %102, align 8
  %103 = load i32* %i, align 4
  store i32 %103, i32* %j, align 4
  store i32 0, i32* %n, align 4
  br label %104

; <label>:104                                     ; preds = %222, %94
  %105 = load i32* %n, align 4
  %106 = load i32* %BlockEnd, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %227

; <label>:108                                     ; preds = %104
  %109 = load double* %w, align 8
  %110 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 1
  %111 = load double* %110, align 8
  %112 = fmul double %109, %111
  %113 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 2
  %114 = load double* %113, align 8
  %115 = fsub double %112, %114
  %116 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 0
  store double %115, double* %116, align 8
  %117 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 1
  %118 = load double* %117, align 8
  %119 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 2
  store double %118, double* %119, align 8
  %120 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 0
  %121 = load double* %120, align 8
  %122 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 1
  store double %121, double* %122, align 8
  %123 = load double* %w, align 8
  %124 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 1
  %125 = load double* %124, align 8
  %126 = fmul double %123, %125
  %127 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 2
  %128 = load double* %127, align 8
  %129 = fsub double %126, %128
  %130 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 0
  store double %129, double* %130, align 8
  %131 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 1
  %132 = load double* %131, align 8
  %133 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 2
  store double %132, double* %133, align 8
  %134 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 0
  %135 = load double* %134, align 8
  %136 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 1
  store double %135, double* %136, align 8
  %137 = load i32* %j, align 4
  %138 = load i32* %BlockEnd, align 4
  %139 = add i32 %137, %138
  store i32 %139, i32* %k, align 4
  %140 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 0
  %141 = load double* %140, align 8
  %142 = load i32* %k, align 4
  %143 = zext i32 %142 to i64
  %144 = load float** %5, align 8
  %145 = getelementptr inbounds float* %144, i64 %143
  %146 = load float* %145, align 4
  %147 = fpext float %146 to double
  %148 = fmul double %141, %147
  %149 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 0
  %150 = load double* %149, align 8
  %151 = load i32* %k, align 4
  %152 = zext i32 %151 to i64
  %153 = load float** %6, align 8
  %154 = getelementptr inbounds float* %153, i64 %152
  %155 = load float* %154, align 4
  %156 = fpext float %155 to double
  %157 = fmul double %150, %156
  %158 = fsub double %148, %157
  store double %158, double* %tr, align 8
  %159 = getelementptr inbounds [3 x double]* %ar, i32 0, i64 0
  %160 = load double* %159, align 8
  %161 = load i32* %k, align 4
  %162 = zext i32 %161 to i64
  %163 = load float** %6, align 8
  %164 = getelementptr inbounds float* %163, i64 %162
  %165 = load float* %164, align 4
  %166 = fpext float %165 to double
  %167 = fmul double %160, %166
  %168 = getelementptr inbounds [3 x double]* %ai, i32 0, i64 0
  %169 = load double* %168, align 8
  %170 = load i32* %k, align 4
  %171 = zext i32 %170 to i64
  %172 = load float** %5, align 8
  %173 = getelementptr inbounds float* %172, i64 %171
  %174 = load float* %173, align 4
  %175 = fpext float %174 to double
  %176 = fmul double %169, %175
  %177 = fadd double %167, %176
  store double %177, double* %ti, align 8
  %178 = load i32* %j, align 4
  %179 = zext i32 %178 to i64
  %180 = load float** %5, align 8
  %181 = getelementptr inbounds float* %180, i64 %179
  %182 = load float* %181, align 4
  %183 = fpext float %182 to double
  %184 = load double* %tr, align 8
  %185 = fsub double %183, %184
  %186 = fptrunc double %185 to float
  %187 = load i32* %k, align 4
  %188 = zext i32 %187 to i64
  %189 = load float** %5, align 8
  %190 = getelementptr inbounds float* %189, i64 %188
  store float %186, float* %190, align 4
  %191 = load i32* %j, align 4
  %192 = zext i32 %191 to i64
  %193 = load float** %6, align 8
  %194 = getelementptr inbounds float* %193, i64 %192
  %195 = load float* %194, align 4
  %196 = fpext float %195 to double
  %197 = load double* %ti, align 8
  %198 = fsub double %196, %197
  %199 = fptrunc double %198 to float
  %200 = load i32* %k, align 4
  %201 = zext i32 %200 to i64
  %202 = load float** %6, align 8
  %203 = getelementptr inbounds float* %202, i64 %201
  store float %199, float* %203, align 4
  %204 = load double* %tr, align 8
  %205 = load i32* %j, align 4
  %206 = zext i32 %205 to i64
  %207 = load float** %5, align 8
  %208 = getelementptr inbounds float* %207, i64 %206
  %209 = load float* %208, align 4
  %210 = fpext float %209 to double
  %211 = fadd double %210, %204
  %212 = fptrunc double %211 to float
  store float %212, float* %208, align 4
  %213 = load double* %ti, align 8
  %214 = load i32* %j, align 4
  %215 = zext i32 %214 to i64
  %216 = load float** %6, align 8
  %217 = getelementptr inbounds float* %216, i64 %215
  %218 = load float* %217, align 4
  %219 = fpext float %218 to double
  %220 = fadd double %219, %213
  %221 = fptrunc double %220 to float
  store float %221, float* %217, align 4
  br label %222

; <label>:222                                     ; preds = %108
  %223 = load i32* %j, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %j, align 4
  %225 = load i32* %n, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %n, align 4
  br label %104

; <label>:227                                     ; preds = %104
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i32* %BlockSize, align 4
  %230 = load i32* %i, align 4
  %231 = add i32 %230, %229
  store i32 %231, i32* %i, align 4
  br label %90

; <label>:232                                     ; preds = %90
  %233 = load i32* %BlockSize, align 4
  store i32 %233, i32* %BlockEnd, align 4
  br label %234

; <label>:234                                     ; preds = %232
  %235 = load i32* %BlockSize, align 4
  %236 = shl i32 %235, 1
  store i32 %236, i32* %BlockSize, align 4
  br label %67

; <label>:237                                     ; preds = %67
  %238 = load i32* %2, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %270

; <label>:240                                     ; preds = %237
  %241 = load i32* %1, align 4
  %242 = uitofp i32 %241 to double
  store double %242, double* %denom, align 8
  store i32 0, i32* %i, align 4
  br label %243

; <label>:243                                     ; preds = %266, %240
  %244 = load i32* %i, align 4
  %245 = load i32* %1, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %269

; <label>:247                                     ; preds = %243
  %248 = load double* %denom, align 8
  %249 = load i32* %i, align 4
  %250 = zext i32 %249 to i64
  %251 = load float** %5, align 8
  %252 = getelementptr inbounds float* %251, i64 %250
  %253 = load float* %252, align 4
  %254 = fpext float %253 to double
  %255 = fdiv double %254, %248
  %256 = fptrunc double %255 to float
  store float %256, float* %252, align 4
  %257 = load double* %denom, align 8
  %258 = load i32* %i, align 4
  %259 = zext i32 %258 to i64
  %260 = load float** %6, align 8
  %261 = getelementptr inbounds float* %260, i64 %259
  %262 = load float* %261, align 4
  %263 = fpext float %262 to double
  %264 = fdiv double %263, %257
  %265 = fptrunc double %264 to float
  store float %265, float* %261, align 4
  br label %266

; <label>:266                                     ; preds = %247
  %267 = load i32* %i, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %i, align 4
  br label %243

; <label>:269                                     ; preds = %243
  br label %270

; <label>:270                                     ; preds = %269, %237
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CheckPointer(i8* %p, i8* %name) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %p, i8** %1, align 8
  store i8* %name, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 8
  %7 = load i8** %2, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8]* @.str414, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #5
  unreachable

; <label>:9                                       ; preds = %0
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
