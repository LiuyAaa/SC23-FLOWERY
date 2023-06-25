; ModuleID = 'celer.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__stopwatch_t = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.timezone = type { i32, i32 }

@omp_num_threads = global i32 1, align 4
@.str = private unnamed_addr constant [8 x i8] c"::vs:i:\00", align 1
@optarg = external global i8*
@do_verify = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [16 x i8] c"invalid option\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"missing argument\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"Usage: %s [-v] [-s matrix_size|-i input_file]\0A\00", align 1
@optind = external global i32
@.str4 = private unnamed_addr constant [67 x i8] c"Usage: %s [-v] [-n no. of threads] [-s matrix_size|-i input_file]\0A\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"error create matrix from file %s\0A\00", align 1
@.str6 = private unnamed_addr constant [40 x i8] c"error create matrix internally size=%d\0A\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"No input file specified!\0A\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@long_options = internal global <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 1, i32* null, i32 105, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i32 1, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str112 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str213 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str314 = private unnamed_addr constant [35 x i8] c"dismatch at (%d, %d): (o)%f (n)%f\0A\00", align 1
@.str415 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str12 = private unnamed_addr constant [59 x i8] c"**********************SDC DETECTED!**********************\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @lud_omp(float* %a, i32 %size) #0 {
  %1 = alloca float*, align 8, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %i = alloca i32, align 4, !llfi_index !3
  %j = alloca i32, align 4, !llfi_index !4
  %k = alloca i32, align 4, !llfi_index !5
  %sum = alloca float, align 4, !llfi_index !6
  store float* %a, float** %1, align 8, !llfi_index !7
  store i32 %size, i32* %2, align 4, !llfi_index !8
  store i32 0, i32* %i, align 4, !llfi_index !9
  br label %3, !llfi_index !10

; <label>:3                                       ; preds = %254, %0
  %4 = load i32* %i, align 4, !llfi_index !11
  %5 = load i32* %i, align 4, !llfi_index !11
  %6 = load i32* %2, align 4, !llfi_index !12
  %7 = load i32* %2, align 4, !llfi_index !12
  %AI = alloca i1
  store i1 true, i1* %AI
  %8 = icmp slt i32 %4, %6, !llfi_index !13
  %9 = icmp slt i32 %5, %7, !llfi_index !13
  %check_cmp = icmp eq i1 %8, %9
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %8, label %10, label %255, !llfi_index !14

; <label>:10                                      ; preds = %3
  %11 = load i32* %i, align 4, !llfi_index !15
  %12 = load i32* %i, align 4, !llfi_index !15
  %check_cmp1 = icmp eq i32 %11, %12
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  store i32 %11, i32* %j, align 4, !llfi_index !16
  br label %13, !llfi_index !17

; <label>:13                                      ; preds = %113, %10
  %14 = load i32* %j, align 4, !llfi_index !18
  %15 = load i32* %j, align 4, !llfi_index !18
  %16 = load i32* %2, align 4, !llfi_index !19
  %17 = load i32* %2, align 4, !llfi_index !19
  %18 = icmp slt i32 %14, %16, !llfi_index !20
  %19 = icmp slt i32 %15, %17, !llfi_index !20
  %check_cmp4 = icmp eq i1 %18, %19
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  store i1 %check_and6, i1* %AI
  br i1 %18, label %20, label %118, !llfi_index !21

; <label>:20                                      ; preds = %13
  %21 = load i32* %i, align 4, !llfi_index !22
  %22 = load i32* %i, align 4, !llfi_index !22
  %23 = load i32* %2, align 4, !llfi_index !23
  %24 = load i32* %2, align 4, !llfi_index !23
  %25 = mul nsw i32 %21, %23, !llfi_index !24
  %26 = mul nsw i32 %22, %24, !llfi_index !24
  %27 = load i32* %j, align 4, !llfi_index !25
  %28 = load i32* %j, align 4, !llfi_index !25
  %29 = add nsw i32 %25, %27, !llfi_index !26
  %30 = add nsw i32 %26, %28, !llfi_index !26
  %31 = sext i32 %29 to i64, !llfi_index !27
  %32 = sext i32 %30 to i64, !llfi_index !27
  %33 = load float** %1, align 8, !llfi_index !28
  %34 = load float** %1, align 8, !llfi_index !28
  %35 = getelementptr inbounds float* %33, i64 %31, !llfi_index !29
  %36 = getelementptr inbounds float* %34, i64 %32, !llfi_index !29
  %37 = load float* %35, align 4, !llfi_index !30
  %38 = load float* %36, align 4, !llfi_index !30
  %check_cmp7 = fcmp ueq float %37, %38
  %loadone8 = load i1* %AI
  %check_and9 = and i1 %check_cmp7, %loadone8
  store i1 %check_and9, i1* %AI
  store float %37, float* %sum, align 4, !llfi_index !31
  store i32 0, i32* %k, align 4, !llfi_index !32
  br label %39, !llfi_index !33

; <label>:39                                      ; preds = %89, %20
  %40 = load i32* %k, align 4, !llfi_index !34
  %41 = load i32* %k, align 4, !llfi_index !34
  %42 = load i32* %i, align 4, !llfi_index !35
  %43 = load i32* %i, align 4, !llfi_index !35
  %44 = icmp slt i32 %40, %42, !llfi_index !36
  %45 = icmp slt i32 %41, %43, !llfi_index !36
  %check_cmp10 = icmp eq i1 %44, %45
  %loadone11 = load i1* %AI
  %check_and12 = and i1 %check_cmp10, %loadone11
  store i1 %check_and12, i1* %AI
  br i1 %44, label %46, label %94, !llfi_index !37

; <label>:46                                      ; preds = %39
  %47 = load i32* %i, align 4, !llfi_index !38
  %48 = load i32* %i, align 4, !llfi_index !38
  %49 = load i32* %2, align 4, !llfi_index !39
  %50 = load i32* %2, align 4, !llfi_index !39
  %51 = mul nsw i32 %47, %49, !llfi_index !40
  %52 = mul nsw i32 %48, %50, !llfi_index !40
  %53 = load i32* %k, align 4, !llfi_index !41
  %54 = load i32* %k, align 4, !llfi_index !41
  %55 = add nsw i32 %51, %53, !llfi_index !42
  %56 = add nsw i32 %52, %54, !llfi_index !42
  %57 = sext i32 %55 to i64, !llfi_index !43
  %58 = sext i32 %56 to i64, !llfi_index !43
  %59 = load float** %1, align 8, !llfi_index !44
  %60 = load float** %1, align 8, !llfi_index !44
  %61 = getelementptr inbounds float* %59, i64 %57, !llfi_index !45
  %62 = getelementptr inbounds float* %60, i64 %58, !llfi_index !45
  %63 = load float* %61, align 4, !llfi_index !46
  %64 = load float* %62, align 4, !llfi_index !46
  %65 = load i32* %k, align 4, !llfi_index !47
  %66 = load i32* %k, align 4, !llfi_index !47
  %67 = load i32* %2, align 4, !llfi_index !48
  %68 = load i32* %2, align 4, !llfi_index !48
  %69 = mul nsw i32 %65, %67, !llfi_index !49
  %70 = mul nsw i32 %66, %68, !llfi_index !49
  %71 = load i32* %j, align 4, !llfi_index !50
  %72 = load i32* %j, align 4, !llfi_index !50
  %73 = add nsw i32 %69, %71, !llfi_index !51
  %74 = add nsw i32 %70, %72, !llfi_index !51
  %75 = sext i32 %73 to i64, !llfi_index !52
  %76 = sext i32 %74 to i64, !llfi_index !52
  %77 = load float** %1, align 8, !llfi_index !53
  %78 = load float** %1, align 8, !llfi_index !53
  %79 = getelementptr inbounds float* %77, i64 %75, !llfi_index !54
  %80 = getelementptr inbounds float* %78, i64 %76, !llfi_index !54
  %81 = load float* %79, align 4, !llfi_index !55
  %82 = load float* %80, align 4, !llfi_index !55
  %83 = fmul float %63, %81, !llfi_index !56
  %84 = fmul float %64, %82, !llfi_index !56
  %85 = load float* %sum, align 4, !llfi_index !57
  %86 = load float* %sum, align 4, !llfi_index !57
  %87 = fsub float %85, %83, !llfi_index !58
  %88 = fsub float %86, %84, !llfi_index !58
  %check_cmp13 = fcmp ueq float %87, %88
  %loadone14 = load i1* %AI
  %check_and15 = and i1 %check_cmp13, %loadone14
  store i1 %check_and15, i1* %AI
  store float %87, float* %sum, align 4, !llfi_index !59
  br label %89, !llfi_index !60

; <label>:89                                      ; preds = %46
  %90 = load i32* %k, align 4, !llfi_index !61
  %91 = load i32* %k, align 4, !llfi_index !61
  %92 = add nsw i32 %90, 1, !llfi_index !62
  %93 = add nsw i32 %91, 1, !llfi_index !62
  %check_cmp16 = icmp eq i32 %92, %93
  %loadone17 = load i1* %AI
  %check_and18 = and i1 %check_cmp16, %loadone17
  store i1 %check_and18, i1* %AI
  store i32 %92, i32* %k, align 4, !llfi_index !63
  br label %39, !llfi_index !64

; <label>:94                                      ; preds = %39
  %95 = load float* %sum, align 4, !llfi_index !65
  %96 = load float* %sum, align 4, !llfi_index !65
  %check_cmp19 = fcmp ueq float %95, %96
  %loadone20 = load i1* %AI
  %check_and21 = and i1 %check_cmp19, %loadone20
  %97 = load i32* %i, align 4, !llfi_index !66
  %98 = load i32* %i, align 4, !llfi_index !66
  %99 = load i32* %2, align 4, !llfi_index !67
  %100 = load i32* %2, align 4, !llfi_index !67
  %101 = mul nsw i32 %97, %99, !llfi_index !68
  %102 = mul nsw i32 %98, %100, !llfi_index !68
  %103 = load i32* %j, align 4, !llfi_index !69
  %104 = load i32* %j, align 4, !llfi_index !69
  %105 = add nsw i32 %101, %103, !llfi_index !70
  %106 = add nsw i32 %102, %104, !llfi_index !70
  %107 = sext i32 %105 to i64, !llfi_index !71
  %108 = sext i32 %106 to i64, !llfi_index !71
  %109 = load float** %1, align 8, !llfi_index !72
  %110 = load float** %1, align 8, !llfi_index !72
  %111 = getelementptr inbounds float* %109, i64 %107, !llfi_index !73
  %112 = getelementptr inbounds float* %110, i64 %108, !llfi_index !73
  %check_cmp22 = icmp eq float* %111, %112
  %check_and23 = and i1 %check_cmp22, %check_and21
  store i1 %check_and23, i1* %AI
  store float %95, float* %111, align 4, !llfi_index !74
  br label %113, !llfi_index !75

; <label>:113                                     ; preds = %94
  %114 = load i32* %j, align 4, !llfi_index !76
  %115 = load i32* %j, align 4, !llfi_index !76
  %116 = add nsw i32 %114, 1, !llfi_index !77
  %117 = add nsw i32 %115, 1, !llfi_index !77
  %check_cmp24 = icmp eq i32 %116, %117
  %loadone25 = load i1* %AI
  %check_and26 = and i1 %check_cmp24, %loadone25
  store i1 %check_and26, i1* %AI
  store i32 %116, i32* %j, align 4, !llfi_index !78
  br label %13, !llfi_index !79

; <label>:118                                     ; preds = %13
  %119 = load i32* %i, align 4, !llfi_index !80
  %120 = load i32* %i, align 4, !llfi_index !80
  %121 = add nsw i32 %119, 1, !llfi_index !81
  %122 = add nsw i32 %120, 1, !llfi_index !81
  %check_cmp27 = icmp eq i32 %121, %122
  %loadone28 = load i1* %AI
  %check_and29 = and i1 %check_cmp27, %loadone28
  store i1 %check_and29, i1* %AI
  store i32 %121, i32* %j, align 4, !llfi_index !82
  br label %123, !llfi_index !83

; <label>:123                                     ; preds = %243, %118
  %124 = load i32* %j, align 4, !llfi_index !84
  %125 = load i32* %j, align 4, !llfi_index !84
  %126 = load i32* %2, align 4, !llfi_index !85
  %127 = load i32* %2, align 4, !llfi_index !85
  %128 = icmp slt i32 %124, %126, !llfi_index !86
  %129 = icmp slt i32 %125, %127, !llfi_index !86
  %check_cmp30 = icmp eq i1 %128, %129
  %loadone31 = load i1* %AI
  %check_and32 = and i1 %check_cmp30, %loadone31
  store i1 %check_and32, i1* %AI
  br i1 %128, label %130, label %248, !llfi_index !87

; <label>:130                                     ; preds = %123
  %131 = load i32* %j, align 4, !llfi_index !88
  %132 = load i32* %j, align 4, !llfi_index !88
  %133 = load i32* %2, align 4, !llfi_index !89
  %134 = load i32* %2, align 4, !llfi_index !89
  %135 = mul nsw i32 %131, %133, !llfi_index !90
  %136 = mul nsw i32 %132, %134, !llfi_index !90
  %137 = load i32* %i, align 4, !llfi_index !91
  %138 = load i32* %i, align 4, !llfi_index !91
  %139 = add nsw i32 %135, %137, !llfi_index !92
  %140 = add nsw i32 %136, %138, !llfi_index !92
  %141 = sext i32 %139 to i64, !llfi_index !93
  %142 = sext i32 %140 to i64, !llfi_index !93
  %143 = load float** %1, align 8, !llfi_index !94
  %144 = load float** %1, align 8, !llfi_index !94
  %145 = getelementptr inbounds float* %143, i64 %141, !llfi_index !95
  %146 = getelementptr inbounds float* %144, i64 %142, !llfi_index !95
  %147 = load float* %145, align 4, !llfi_index !96
  %148 = load float* %146, align 4, !llfi_index !96
  %check_cmp33 = fcmp ueq float %147, %148
  %loadone34 = load i1* %AI
  %check_and35 = and i1 %check_cmp33, %loadone34
  store i1 %check_and35, i1* %AI
  store float %147, float* %sum, align 4, !llfi_index !97
  store i32 0, i32* %k, align 4, !llfi_index !98
  br label %149, !llfi_index !99

; <label>:149                                     ; preds = %199, %130
  %150 = load i32* %k, align 4, !llfi_index !100
  %151 = load i32* %k, align 4, !llfi_index !100
  %152 = load i32* %i, align 4, !llfi_index !101
  %153 = load i32* %i, align 4, !llfi_index !101
  %154 = icmp slt i32 %150, %152, !llfi_index !102
  %155 = icmp slt i32 %151, %153, !llfi_index !102
  %check_cmp36 = icmp eq i1 %154, %155
  %loadone37 = load i1* %AI
  %check_and38 = and i1 %check_cmp36, %loadone37
  store i1 %check_and38, i1* %AI
  br i1 %154, label %156, label %204, !llfi_index !103

; <label>:156                                     ; preds = %149
  %157 = load i32* %j, align 4, !llfi_index !104
  %158 = load i32* %j, align 4, !llfi_index !104
  %159 = load i32* %2, align 4, !llfi_index !105
  %160 = load i32* %2, align 4, !llfi_index !105
  %161 = mul nsw i32 %157, %159, !llfi_index !106
  %162 = mul nsw i32 %158, %160, !llfi_index !106
  %163 = load i32* %k, align 4, !llfi_index !107
  %164 = load i32* %k, align 4, !llfi_index !107
  %165 = add nsw i32 %161, %163, !llfi_index !108
  %166 = add nsw i32 %162, %164, !llfi_index !108
  %167 = sext i32 %165 to i64, !llfi_index !109
  %168 = sext i32 %166 to i64, !llfi_index !109
  %169 = load float** %1, align 8, !llfi_index !110
  %170 = load float** %1, align 8, !llfi_index !110
  %171 = getelementptr inbounds float* %169, i64 %167, !llfi_index !111
  %172 = getelementptr inbounds float* %170, i64 %168, !llfi_index !111
  %173 = load float* %171, align 4, !llfi_index !112
  %174 = load float* %172, align 4, !llfi_index !112
  %175 = load i32* %k, align 4, !llfi_index !113
  %176 = load i32* %k, align 4, !llfi_index !113
  %177 = load i32* %2, align 4, !llfi_index !114
  %178 = load i32* %2, align 4, !llfi_index !114
  %179 = mul nsw i32 %175, %177, !llfi_index !115
  %180 = mul nsw i32 %176, %178, !llfi_index !115
  %181 = load i32* %i, align 4, !llfi_index !116
  %182 = load i32* %i, align 4, !llfi_index !116
  %183 = add nsw i32 %179, %181, !llfi_index !117
  %184 = add nsw i32 %180, %182, !llfi_index !117
  %185 = sext i32 %183 to i64, !llfi_index !118
  %186 = sext i32 %184 to i64, !llfi_index !118
  %187 = load float** %1, align 8, !llfi_index !119
  %188 = load float** %1, align 8, !llfi_index !119
  %189 = getelementptr inbounds float* %187, i64 %185, !llfi_index !120
  %190 = getelementptr inbounds float* %188, i64 %186, !llfi_index !120
  %191 = load float* %189, align 4, !llfi_index !121
  %192 = load float* %190, align 4, !llfi_index !121
  %193 = fmul float %173, %191, !llfi_index !122
  %194 = fmul float %174, %192, !llfi_index !122
  %195 = load float* %sum, align 4, !llfi_index !123
  %196 = load float* %sum, align 4, !llfi_index !123
  %197 = fsub float %195, %193, !llfi_index !124
  %198 = fsub float %196, %194, !llfi_index !124
  %check_cmp39 = fcmp ueq float %197, %198
  %loadone40 = load i1* %AI
  %check_and41 = and i1 %check_cmp39, %loadone40
  store i1 %check_and41, i1* %AI
  store float %197, float* %sum, align 4, !llfi_index !125
  br label %199, !llfi_index !126

; <label>:199                                     ; preds = %156
  %200 = load i32* %k, align 4, !llfi_index !127
  %201 = load i32* %k, align 4, !llfi_index !127
  %202 = add nsw i32 %200, 1, !llfi_index !128
  %203 = add nsw i32 %201, 1, !llfi_index !128
  %check_cmp42 = icmp eq i32 %202, %203
  %loadone43 = load i1* %AI
  %check_and44 = and i1 %check_cmp42, %loadone43
  store i1 %check_and44, i1* %AI
  store i32 %202, i32* %k, align 4, !llfi_index !129
  br label %149, !llfi_index !130

; <label>:204                                     ; preds = %149
  %205 = load float* %sum, align 4, !llfi_index !131
  %206 = load float* %sum, align 4, !llfi_index !131
  %207 = load i32* %i, align 4, !llfi_index !132
  %208 = load i32* %i, align 4, !llfi_index !132
  %209 = load i32* %2, align 4, !llfi_index !133
  %210 = load i32* %2, align 4, !llfi_index !133
  %211 = mul nsw i32 %207, %209, !llfi_index !134
  %212 = mul nsw i32 %208, %210, !llfi_index !134
  %213 = load i32* %i, align 4, !llfi_index !135
  %214 = load i32* %i, align 4, !llfi_index !135
  %215 = add nsw i32 %211, %213, !llfi_index !136
  %216 = add nsw i32 %212, %214, !llfi_index !136
  %217 = sext i32 %215 to i64, !llfi_index !137
  %218 = sext i32 %216 to i64, !llfi_index !137
  %219 = load float** %1, align 8, !llfi_index !138
  %220 = load float** %1, align 8, !llfi_index !138
  %221 = getelementptr inbounds float* %219, i64 %217, !llfi_index !139
  %222 = getelementptr inbounds float* %220, i64 %218, !llfi_index !139
  %223 = load float* %221, align 4, !llfi_index !140
  %224 = load float* %222, align 4, !llfi_index !140
  %225 = fdiv float %205, %223, !llfi_index !141
  %226 = fdiv float %206, %224, !llfi_index !141
  %check_cmp45 = fcmp ueq float %225, %226
  %loadone46 = load i1* %AI
  %check_and47 = and i1 %check_cmp45, %loadone46
  %227 = load i32* %j, align 4, !llfi_index !142
  %228 = load i32* %j, align 4, !llfi_index !142
  %229 = load i32* %2, align 4, !llfi_index !143
  %230 = load i32* %2, align 4, !llfi_index !143
  %231 = mul nsw i32 %227, %229, !llfi_index !144
  %232 = mul nsw i32 %228, %230, !llfi_index !144
  %233 = load i32* %i, align 4, !llfi_index !145
  %234 = load i32* %i, align 4, !llfi_index !145
  %235 = add nsw i32 %231, %233, !llfi_index !146
  %236 = add nsw i32 %232, %234, !llfi_index !146
  %237 = sext i32 %235 to i64, !llfi_index !147
  %238 = sext i32 %236 to i64, !llfi_index !147
  %239 = load float** %1, align 8, !llfi_index !148
  %240 = load float** %1, align 8, !llfi_index !148
  %241 = getelementptr inbounds float* %239, i64 %237, !llfi_index !149
  %242 = getelementptr inbounds float* %240, i64 %238, !llfi_index !149
  %check_cmp48 = icmp eq float* %241, %242
  %check_and49 = and i1 %check_cmp48, %check_and47
  store i1 %check_and49, i1* %AI
  store float %225, float* %241, align 4, !llfi_index !150
  br label %243, !llfi_index !151

; <label>:243                                     ; preds = %204
  %244 = load i32* %j, align 4, !llfi_index !152
  %245 = load i32* %j, align 4, !llfi_index !152
  %246 = add nsw i32 %244, 1, !llfi_index !153
  %247 = add nsw i32 %245, 1, !llfi_index !153
  %check_cmp50 = icmp eq i32 %246, %247
  %loadone51 = load i1* %AI
  %check_and52 = and i1 %check_cmp50, %loadone51
  store i1 %check_and52, i1* %AI
  store i32 %246, i32* %j, align 4, !llfi_index !154
  br label %123, !llfi_index !155

; <label>:248                                     ; preds = %123
  br label %249, !llfi_index !156

; <label>:249                                     ; preds = %248
  %250 = load i32* %i, align 4, !llfi_index !157
  %251 = load i32* %i, align 4, !llfi_index !157
  %252 = add nsw i32 %250, 1, !llfi_index !158
  %253 = add nsw i32 %251, 1, !llfi_index !158
  %check_cmp53 = icmp eq i32 %252, %253
  %loadone54 = load i1* %AI
  %check_and55 = and i1 %check_cmp53, %loadone54
  store i1 %check_and55, i1* %AI
  br i1 %check_and55, label %254, label %checkBb

checkBb:                                          ; preds = %249
  call void @check_flag()
  br label %254

; <label>:254                                     ; preds = %checkBb, %249
  store i32 %252, i32* %i, align 4, !llfi_index !159
  br label %3, !llfi_index !160

; <label>:255                                     ; preds = %3
  ret void, !llfi_index !161
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !162
  %2 = alloca i32, align 4, !llfi_index !163
  %3 = alloca i8**, align 8, !llfi_index !164
  %matrix_dim = alloca i32, align 4, !llfi_index !165
  %opt = alloca i32, align 4, !llfi_index !166
  %option_index = alloca i32, align 4, !llfi_index !167
  %ret = alloca i32, align 4, !llfi_index !168
  %input_file = alloca i8*, align 8, !llfi_index !169
  %m = alloca float*, align 8, !llfi_index !170
  %mm = alloca float*, align 8, !llfi_index !171
  %sw = alloca %struct.__stopwatch_t, align 8, !llfi_index !172
  store i32 0, i32* %1, !llfi_index !173
  store i32 %argc, i32* %2, align 4, !llfi_index !174
  store i8** %argv, i8*** %3, align 8, !llfi_index !175
  store i32 32, i32* %matrix_dim, align 4, !llfi_index !176
  store i32 0, i32* %option_index, align 4, !llfi_index !177
  store i8* null, i8** %input_file, align 8, !llfi_index !178
  br label %4, !llfi_index !179

; <label>:4                                       ; preds = %41, %0
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = load i32* %2, align 4, !llfi_index !180
  %6 = load i32* %2, align 4, !llfi_index !180
  %check_cmp = icmp eq i32 %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %7 = load i8*** %3, align 8, !llfi_index !181
  %8 = load i8*** %3, align 8, !llfi_index !181
  %check_cmp1 = icmp eq i8** %7, %8
  %check_and2 = and i1 %check_cmp1, %check_and
  %9 = call i32 @getopt_long(i32 %5, i8** %7, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), %struct.option* getelementptr inbounds ([4 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options to [4 x %struct.option]*), i32 0, i32 0), i32* %option_index) #5, !llfi_index !182
  store i32 %9, i32* %opt, align 4, !llfi_index !183
  %10 = icmp ne i32 %9, -1, !llfi_index !184
  %11 = icmp ne i32 %9, -1, !llfi_index !184
  %check_cmp3 = icmp eq i1 %10, %11
  %check_and4 = and i1 %check_cmp3, %check_and2
  store i1 %check_and4, i1* %AI
  br i1 %10, label %12, label %42, !llfi_index !185

; <label>:12                                      ; preds = %4
  %13 = load i32* %opt, align 4, !llfi_index !186
  %14 = load i32* %opt, align 4, !llfi_index !186
  %check_cmp5 = icmp eq i32 %13, %14
  %loadone6 = load i1* %AI
  %check_and7 = and i1 %check_cmp5, %loadone6
  store i1 %check_and7, i1* %AI
  switch i32 %13, label %31 [
    i32 105, label %15
    i32 118, label %18
    i32 115, label %19
    i32 63, label %23
    i32 58, label %27
  ], !llfi_index !187

; <label>:15                                      ; preds = %12
  %16 = load i8** @optarg, align 8, !llfi_index !188
  %17 = load i8** @optarg, align 8, !llfi_index !188
  %check_cmp8 = icmp eq i8* %16, %17
  %loadone9 = load i1* %AI
  %check_and10 = and i1 %check_cmp8, %loadone9
  store i1 %check_and10, i1* %AI
  store i8* %16, i8** %input_file, align 8, !llfi_index !189
  br label %41, !llfi_index !190

; <label>:18                                      ; preds = %12
  store i32 1, i32* @do_verify, align 4, !llfi_index !191
  br label %41, !llfi_index !192

; <label>:19                                      ; preds = %12
  %20 = load i8** @optarg, align 8, !llfi_index !193
  %21 = load i8** @optarg, align 8, !llfi_index !193
  %check_cmp11 = icmp eq i8* %20, %21
  %loadone12 = load i1* %AI
  %check_and13 = and i1 %check_cmp11, %loadone12
  store i1 %check_and13, i1* %AI
  %22 = call i32 @atoi(i8* %20) #7, !llfi_index !194
  store i32 %22, i32* %matrix_dim, align 4, !llfi_index !195
  br label %41, !llfi_index !196

; <label>:23                                      ; preds = %12
  %24 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !197
  %25 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !197
  %check_cmp14 = icmp eq %struct._IO_FILE* %24, %25
  %loadone15 = load i1* %AI
  %check_and16 = and i1 %check_cmp14, %loadone15
  store i1 %check_and16, i1* %AI
  %26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0)), !llfi_index !198
  br label %41, !llfi_index !199

; <label>:27                                      ; preds = %12
  %28 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !200
  %29 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !200
  %check_cmp17 = icmp eq %struct._IO_FILE* %28, %29
  %loadone18 = load i1* %AI
  %check_and19 = and i1 %check_cmp17, %loadone18
  store i1 %check_and19, i1* %AI
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([18 x i8]* @.str2, i32 0, i32 0)), !llfi_index !201
  br label %41, !llfi_index !202

; <label>:31                                      ; preds = %12
  %32 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !203
  %33 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !203
  %check_cmp20 = icmp eq %struct._IO_FILE* %32, %33
  %loadone21 = load i1* %AI
  %check_and22 = and i1 %check_cmp20, %loadone21
  %34 = load i8*** %3, align 8, !llfi_index !204
  %35 = load i8*** %3, align 8, !llfi_index !204
  %36 = getelementptr inbounds i8** %34, i64 0, !llfi_index !205
  %37 = getelementptr inbounds i8** %35, i64 0, !llfi_index !205
  %38 = load i8** %36, align 8, !llfi_index !206
  %39 = load i8** %37, align 8, !llfi_index !206
  %check_cmp23 = icmp eq i8* %38, %39
  %check_and24 = and i1 %check_cmp23, %check_and22
  store i1 %check_and24, i1* %AI
  %40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([47 x i8]* @.str3, i32 0, i32 0), i8* %38), !llfi_index !207
  call void @exit(i32 1) #8, !llfi_index !208
  unreachable, !llfi_index !209

; <label>:41                                      ; preds = %27, %23, %19, %18, %15
  br label %4, !llfi_index !210

; <label>:42                                      ; preds = %4
  %43 = load i32* @optind, align 4, !llfi_index !211
  %44 = load i32* @optind, align 4, !llfi_index !211
  %45 = load i32* %2, align 4, !llfi_index !212
  %46 = load i32* %2, align 4, !llfi_index !212
  %47 = icmp slt i32 %43, %45, !llfi_index !213
  %48 = icmp slt i32 %44, %46, !llfi_index !213
  %check_cmp25 = icmp eq i1 %47, %48
  %loadone26 = load i1* %AI
  %check_and27 = and i1 %check_cmp25, %loadone26
  store i1 %check_and27, i1* %AI
  br i1 %47, label %54, label %49, !llfi_index !214

; <label>:49                                      ; preds = %42
  %50 = load i32* @optind, align 4, !llfi_index !215
  %51 = load i32* @optind, align 4, !llfi_index !215
  %52 = icmp eq i32 %50, 1, !llfi_index !216
  %53 = icmp eq i32 %51, 1, !llfi_index !216
  %check_cmp28 = icmp eq i1 %52, %53
  %loadone29 = load i1* %AI
  %check_and30 = and i1 %check_cmp28, %loadone29
  store i1 %check_and30, i1* %AI
  br i1 %52, label %54, label %64, !llfi_index !217

; <label>:54                                      ; preds = %49, %42
  %55 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !218
  %56 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !218
  %check_cmp31 = icmp eq %struct._IO_FILE* %55, %56
  %loadone32 = load i1* %AI
  %check_and33 = and i1 %check_cmp31, %loadone32
  %57 = load i8*** %3, align 8, !llfi_index !219
  %58 = load i8*** %3, align 8, !llfi_index !219
  %59 = getelementptr inbounds i8** %57, i64 0, !llfi_index !220
  %60 = getelementptr inbounds i8** %58, i64 0, !llfi_index !220
  %61 = load i8** %59, align 8, !llfi_index !221
  %62 = load i8** %60, align 8, !llfi_index !221
  %check_cmp34 = icmp eq i8* %61, %62
  %check_and35 = and i1 %check_cmp34, %check_and33
  store i1 %check_and35, i1* %AI
  %63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([67 x i8]* @.str4, i32 0, i32 0), i8* %61), !llfi_index !222
  call void @exit(i32 1) #8, !llfi_index !223
  unreachable, !llfi_index !224

; <label>:64                                      ; preds = %49
  %65 = load i8** %input_file, align 8, !llfi_index !225
  %66 = load i8** %input_file, align 8, !llfi_index !225
  %67 = icmp ne i8* %65, null, !llfi_index !226
  %68 = icmp ne i8* %66, null, !llfi_index !226
  %check_cmp36 = icmp eq i1 %67, %68
  %loadone37 = load i1* %AI
  %check_and38 = and i1 %check_cmp36, %loadone37
  store i1 %check_and38, i1* %AI
  br i1 %67, label %69, label %84, !llfi_index !227

; <label>:69                                      ; preds = %64
  %70 = load i8** %input_file, align 8, !llfi_index !228
  %71 = load i8** %input_file, align 8, !llfi_index !228
  %check_cmp39 = icmp eq i8* %70, %71
  %loadone40 = load i1* %AI
  %check_and41 = and i1 %check_cmp39, %loadone40
  %72 = call i32 @create_matrix_from_file(float** %m, i8* %70, i32* %matrix_dim), !llfi_index !229
  store i32 %72, i32* %ret, align 4, !llfi_index !230
  %73 = load i32* %ret, align 4, !llfi_index !231
  %74 = load i32* %ret, align 4, !llfi_index !231
  %75 = icmp ne i32 %73, 0, !llfi_index !232
  %76 = icmp ne i32 %74, 0, !llfi_index !232
  %check_cmp42 = icmp eq i1 %75, %76
  %check_and43 = and i1 %check_cmp42, %check_and41
  store i1 %check_and43, i1* %AI
  br i1 %75, label %77, label %83, !llfi_index !233

; <label>:77                                      ; preds = %69
  store float* null, float** %m, align 8, !llfi_index !234
  %78 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !235
  %79 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !235
  %check_cmp44 = icmp eq %struct._IO_FILE* %78, %79
  %loadone45 = load i1* %AI
  %check_and46 = and i1 %check_cmp44, %loadone45
  %80 = load i8** %input_file, align 8, !llfi_index !236
  %81 = load i8** %input_file, align 8, !llfi_index !236
  %check_cmp47 = icmp eq i8* %80, %81
  %check_and48 = and i1 %check_cmp47, %check_and46
  store i1 %check_and48, i1* %AI
  %82 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([34 x i8]* @.str5, i32 0, i32 0), i8* %80), !llfi_index !237
  call void @exit(i32 1) #8, !llfi_index !238
  unreachable, !llfi_index !239

; <label>:83                                      ; preds = %69
  br label %107, !llfi_index !240

; <label>:84                                      ; preds = %64
  %85 = load i32* %matrix_dim, align 4, !llfi_index !241
  %86 = load i32* %matrix_dim, align 4, !llfi_index !241
  %87 = icmp ne i32 %85, 0, !llfi_index !242
  %88 = icmp ne i32 %86, 0, !llfi_index !242
  %check_cmp49 = icmp eq i1 %87, %88
  %loadone50 = load i1* %AI
  %check_and51 = and i1 %check_cmp49, %loadone50
  store i1 %check_and51, i1* %AI
  br i1 %87, label %89, label %104, !llfi_index !243

; <label>:89                                      ; preds = %84
  %90 = load i32* %matrix_dim, align 4, !llfi_index !244
  %91 = load i32* %matrix_dim, align 4, !llfi_index !244
  %check_cmp52 = icmp eq i32 %90, %91
  %loadone53 = load i1* %AI
  %check_and54 = and i1 %check_cmp52, %loadone53
  %92 = call i32 @create_matrix(float** %m, i32 %90), !llfi_index !245
  store i32 %92, i32* %ret, align 4, !llfi_index !246
  %93 = load i32* %ret, align 4, !llfi_index !247
  %94 = load i32* %ret, align 4, !llfi_index !247
  %95 = icmp ne i32 %93, 0, !llfi_index !248
  %96 = icmp ne i32 %94, 0, !llfi_index !248
  %check_cmp55 = icmp eq i1 %95, %96
  %check_and56 = and i1 %check_cmp55, %check_and54
  store i1 %check_and56, i1* %AI
  br i1 %95, label %97, label %103, !llfi_index !249

; <label>:97                                      ; preds = %89
  store float* null, float** %m, align 8, !llfi_index !250
  %98 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !251
  %99 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !251
  %check_cmp57 = icmp eq %struct._IO_FILE* %98, %99
  %loadone58 = load i1* %AI
  %check_and59 = and i1 %check_cmp57, %loadone58
  %100 = load i32* %matrix_dim, align 4, !llfi_index !252
  %101 = load i32* %matrix_dim, align 4, !llfi_index !252
  %check_cmp60 = icmp eq i32 %100, %101
  %check_and61 = and i1 %check_cmp60, %check_and59
  store i1 %check_and61, i1* %AI
  %102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([40 x i8]* @.str6, i32 0, i32 0), i32 %100), !llfi_index !253
  call void @exit(i32 1) #8, !llfi_index !254
  unreachable, !llfi_index !255

; <label>:103                                     ; preds = %89
  br label %106, !llfi_index !256

; <label>:104                                     ; preds = %84
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str7, i32 0, i32 0)), !llfi_index !257
  call void @exit(i32 1) #8, !llfi_index !258
  unreachable, !llfi_index !259

; <label>:106                                     ; preds = %103
  br label %107, !llfi_index !260

; <label>:107                                     ; preds = %106, %83
  %108 = load i32* @do_verify, align 4, !llfi_index !261
  %109 = load i32* @do_verify, align 4, !llfi_index !261
  %110 = icmp ne i32 %108, 0, !llfi_index !262
  %111 = icmp ne i32 %109, 0, !llfi_index !262
  %check_cmp62 = icmp eq i1 %110, %111
  %loadone63 = load i1* %AI
  %check_and64 = and i1 %check_cmp62, %loadone63
  store i1 %check_and64, i1* %AI
  br i1 %110, label %112, label %117, !llfi_index !263

; <label>:112                                     ; preds = %107
  %113 = load float** %m, align 8, !llfi_index !264
  %114 = load float** %m, align 8, !llfi_index !264
  %check_cmp65 = icmp eq float* %113, %114
  %loadone66 = load i1* %AI
  %check_and67 = and i1 %check_cmp65, %loadone66
  %115 = load i32* %matrix_dim, align 4, !llfi_index !265
  %116 = load i32* %matrix_dim, align 4, !llfi_index !265
  %check_cmp68 = icmp eq i32 %115, %116
  %check_and69 = and i1 %check_cmp68, %check_and67
  store i1 %check_and69, i1* %AI
  call void @matrix_duplicate(float* %113, float** %mm, i32 %115), !llfi_index !266
  br label %117, !llfi_index !267

; <label>:117                                     ; preds = %112, %107
  call void @stopwatch_start(%struct.__stopwatch_t* %sw), !llfi_index !268
  %118 = load float** %m, align 8, !llfi_index !269
  %119 = load float** %m, align 8, !llfi_index !269
  %check_cmp70 = icmp eq float* %118, %119
  %loadone71 = load i1* %AI
  %check_and72 = and i1 %check_cmp70, %loadone71
  %120 = load i32* %matrix_dim, align 4, !llfi_index !270
  %121 = load i32* %matrix_dim, align 4, !llfi_index !270
  %check_cmp73 = icmp eq i32 %120, %121
  %check_and74 = and i1 %check_cmp73, %check_and72
  call void @lud_omp(float* %118, i32 %120), !llfi_index !271
  call void @stopwatch_stop(%struct.__stopwatch_t* %sw), !llfi_index !272
  %122 = load i32* @do_verify, align 4, !llfi_index !273
  %123 = load i32* @do_verify, align 4, !llfi_index !273
  %124 = icmp ne i32 %122, 0, !llfi_index !274
  %125 = icmp ne i32 %123, 0, !llfi_index !274
  %check_cmp75 = icmp eq i1 %124, %125
  %check_and76 = and i1 %check_cmp75, %check_and74
  store i1 %check_and76, i1* %AI
  br i1 %124, label %126, label %142, !llfi_index !275

; <label>:126                                     ; preds = %117
  %127 = load float** %m, align 8, !llfi_index !276
  %128 = load float** %m, align 8, !llfi_index !276
  %check_cmp77 = icmp eq float* %127, %128
  %loadone78 = load i1* %AI
  %check_and79 = and i1 %check_cmp77, %loadone78
  %129 = load i32* %matrix_dim, align 4, !llfi_index !277
  %130 = load i32* %matrix_dim, align 4, !llfi_index !277
  %check_cmp80 = icmp eq i32 %129, %130
  %check_and81 = and i1 %check_cmp80, %check_and79
  call void @print_matrix(float* %127, i32 %129), !llfi_index !278
  %131 = load float** %mm, align 8, !llfi_index !279
  %132 = load float** %mm, align 8, !llfi_index !279
  %check_cmp82 = icmp eq float* %131, %132
  %check_and83 = and i1 %check_cmp82, %check_and81
  %133 = load float** %m, align 8, !llfi_index !280
  %134 = load float** %m, align 8, !llfi_index !280
  %check_cmp84 = icmp eq float* %133, %134
  %check_and85 = and i1 %check_cmp84, %check_and83
  %135 = load i32* %matrix_dim, align 4, !llfi_index !281
  %136 = load i32* %matrix_dim, align 4, !llfi_index !281
  %check_cmp86 = icmp eq i32 %135, %136
  %check_and87 = and i1 %check_cmp86, %check_and85
  %137 = call i32 @lud_verify(float* %131, float* %133, i32 %135), !llfi_index !282
  %138 = load float** %mm, align 8, !llfi_index !283
  %139 = load float** %mm, align 8, !llfi_index !283
  %140 = bitcast float* %138 to i8*, !llfi_index !284
  %141 = bitcast float* %139 to i8*, !llfi_index !284
  %check_cmp88 = icmp eq i8* %140, %141
  %check_and89 = and i1 %check_cmp88, %check_and87
  store i1 %check_and89, i1* %AI
  call void @free(i8* %140) #5, !llfi_index !285
  br label %142, !llfi_index !286

; <label>:142                                     ; preds = %126, %117
  %143 = load float** %m, align 8, !llfi_index !287
  %144 = load float** %m, align 8, !llfi_index !287
  %145 = bitcast float* %143 to i8*, !llfi_index !288
  %146 = bitcast float* %144 to i8*, !llfi_index !288
  %check_cmp90 = icmp eq i8* %145, %146
  %loadone91 = load i1* %AI
  %check_and92 = and i1 %check_cmp90, %loadone91
  store i1 %check_and92, i1* %AI
  br i1 %check_and92, label %147, label %checkBb

checkBb:                                          ; preds = %142
  call void @check_flag()
  br label %147

; <label>:147                                     ; preds = %checkBb, %142
  call void @free(i8* %145) #5, !llfi_index !289
  ret i32 0, !llfi_index !290
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @stopwatch_start(%struct.__stopwatch_t* %sw) #0 {
  %1 = alloca %struct.__stopwatch_t*, align 8, !llfi_index !291
  store %struct.__stopwatch_t* %sw, %struct.__stopwatch_t** %1, align 8, !llfi_index !292
  %2 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !293
  %3 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !293
  %AI = alloca i1
  store i1 true, i1* %AI
  %4 = icmp eq %struct.__stopwatch_t* %2, null, !llfi_index !294
  %5 = icmp eq %struct.__stopwatch_t* %3, null, !llfi_index !294
  %check_cmp = icmp eq i1 %4, %5
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %4, label %6, label %7, !llfi_index !295

; <label>:6                                       ; preds = %0
  br label %26, !llfi_index !296

; <label>:7                                       ; preds = %0
  %8 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !297
  %9 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !297
  %10 = getelementptr inbounds %struct.__stopwatch_t* %8, i32 0, i32 0, !llfi_index !298
  %11 = getelementptr inbounds %struct.__stopwatch_t* %9, i32 0, i32 0, !llfi_index !298
  %12 = bitcast %struct.timeval* %10 to i8*, !llfi_index !299
  %13 = bitcast %struct.timeval* %11 to i8*, !llfi_index !299
  %check_cmp1 = icmp eq i8* %12, %13
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false), !llfi_index !300
  %14 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !301
  %15 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !301
  %16 = getelementptr inbounds %struct.__stopwatch_t* %14, i32 0, i32 1, !llfi_index !302
  %17 = getelementptr inbounds %struct.__stopwatch_t* %15, i32 0, i32 1, !llfi_index !302
  %18 = bitcast %struct.timeval* %16 to i8*, !llfi_index !303
  %19 = bitcast %struct.timeval* %17 to i8*, !llfi_index !303
  %check_cmp4 = icmp eq i8* %18, %19
  %check_and5 = and i1 %check_cmp4, %check_and3
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 8, i1 false), !llfi_index !304
  %20 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !305
  %21 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !305
  %22 = getelementptr inbounds %struct.__stopwatch_t* %20, i32 0, i32 0, !llfi_index !306
  %23 = getelementptr inbounds %struct.__stopwatch_t* %21, i32 0, i32 0, !llfi_index !306
  %check_cmp6 = icmp eq %struct.timeval* %22, %23
  %check_and7 = and i1 %check_cmp6, %check_and5
  store i1 %check_and7, i1* %AI
  br i1 %check_and7, label %24, label %checkBb

checkBb:                                          ; preds = %7
  call void @check_flag()
  br label %24

; <label>:24                                      ; preds = %checkBb, %7
  %25 = call i32 @gettimeofday(%struct.timeval* %22, %struct.timezone* null) #5, !llfi_index !307
  br label %26, !llfi_index !308

; <label>:26                                      ; preds = %24, %6
  ret void, !llfi_index !309
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define void @stopwatch_stop(%struct.__stopwatch_t* %sw) #0 {
  %1 = alloca %struct.__stopwatch_t*, align 8, !llfi_index !310
  store %struct.__stopwatch_t* %sw, %struct.__stopwatch_t** %1, align 8, !llfi_index !311
  %2 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !312
  %3 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !312
  %AI = alloca i1
  store i1 true, i1* %AI
  %4 = icmp eq %struct.__stopwatch_t* %2, null, !llfi_index !313
  %5 = icmp eq %struct.__stopwatch_t* %3, null, !llfi_index !313
  %check_cmp = icmp eq i1 %4, %5
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %4, label %6, label %7, !llfi_index !314

; <label>:6                                       ; preds = %0
  br label %14, !llfi_index !315

; <label>:7                                       ; preds = %0
  %8 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !316
  %9 = load %struct.__stopwatch_t** %1, align 8, !llfi_index !316
  %10 = getelementptr inbounds %struct.__stopwatch_t* %8, i32 0, i32 1, !llfi_index !317
  %11 = getelementptr inbounds %struct.__stopwatch_t* %9, i32 0, i32 1, !llfi_index !317
  %check_cmp1 = icmp eq %struct.timeval* %10, %11
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  br i1 %check_and3, label %12, label %checkBb

checkBb:                                          ; preds = %7
  call void @check_flag()
  br label %12

; <label>:12                                      ; preds = %checkBb, %7
  %13 = call i32 @gettimeofday(%struct.timeval* %10, %struct.timezone* null) #5, !llfi_index !318
  br label %14, !llfi_index !319

; <label>:14                                      ; preds = %12, %6
  ret void, !llfi_index !320
}

; Function Attrs: nounwind uwtable
define double @get_interval_by_sec(%struct.__stopwatch_t* %sw) #0 {
  %1 = alloca double, align 8, !llfi_index !321
  %2 = alloca %struct.__stopwatch_t*, align 8, !llfi_index !322
  store %struct.__stopwatch_t* %sw, %struct.__stopwatch_t** %2, align 8, !llfi_index !323
  %3 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !324
  %4 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !324
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = icmp eq %struct.__stopwatch_t* %3, null, !llfi_index !325
  %6 = icmp eq %struct.__stopwatch_t* %4, null, !llfi_index !325
  %check_cmp = icmp eq i1 %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %5, label %7, label %8, !llfi_index !326

; <label>:7                                       ; preds = %0
  store double 0.000000e+00, double* %1, !llfi_index !327
  br label %53, !llfi_index !328

; <label>:8                                       ; preds = %0
  %9 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !329
  %10 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !329
  %11 = getelementptr inbounds %struct.__stopwatch_t* %9, i32 0, i32 1, !llfi_index !330
  %12 = getelementptr inbounds %struct.__stopwatch_t* %10, i32 0, i32 1, !llfi_index !330
  %13 = getelementptr inbounds %struct.timeval* %11, i32 0, i32 0, !llfi_index !331
  %14 = getelementptr inbounds %struct.timeval* %12, i32 0, i32 0, !llfi_index !331
  %15 = load i64* %13, align 8, !llfi_index !332
  %16 = load i64* %14, align 8, !llfi_index !332
  %17 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !333
  %18 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !333
  %19 = getelementptr inbounds %struct.__stopwatch_t* %17, i32 0, i32 0, !llfi_index !334
  %20 = getelementptr inbounds %struct.__stopwatch_t* %18, i32 0, i32 0, !llfi_index !334
  %21 = getelementptr inbounds %struct.timeval* %19, i32 0, i32 0, !llfi_index !335
  %22 = getelementptr inbounds %struct.timeval* %20, i32 0, i32 0, !llfi_index !335
  %23 = load i64* %21, align 8, !llfi_index !336
  %24 = load i64* %22, align 8, !llfi_index !336
  %25 = sub nsw i64 %15, %23, !llfi_index !337
  %26 = sub nsw i64 %16, %24, !llfi_index !337
  %27 = sitofp i64 %25 to double, !llfi_index !338
  %28 = sitofp i64 %26 to double, !llfi_index !338
  %29 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !339
  %30 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !339
  %31 = getelementptr inbounds %struct.__stopwatch_t* %29, i32 0, i32 1, !llfi_index !340
  %32 = getelementptr inbounds %struct.__stopwatch_t* %30, i32 0, i32 1, !llfi_index !340
  %33 = getelementptr inbounds %struct.timeval* %31, i32 0, i32 1, !llfi_index !341
  %34 = getelementptr inbounds %struct.timeval* %32, i32 0, i32 1, !llfi_index !341
  %35 = load i64* %33, align 8, !llfi_index !342
  %36 = load i64* %34, align 8, !llfi_index !342
  %37 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !343
  %38 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !343
  %39 = getelementptr inbounds %struct.__stopwatch_t* %37, i32 0, i32 0, !llfi_index !344
  %40 = getelementptr inbounds %struct.__stopwatch_t* %38, i32 0, i32 0, !llfi_index !344
  %41 = getelementptr inbounds %struct.timeval* %39, i32 0, i32 1, !llfi_index !345
  %42 = getelementptr inbounds %struct.timeval* %40, i32 0, i32 1, !llfi_index !345
  %43 = load i64* %41, align 8, !llfi_index !346
  %44 = load i64* %42, align 8, !llfi_index !346
  %45 = sub nsw i64 %35, %43, !llfi_index !347
  %46 = sub nsw i64 %36, %44, !llfi_index !347
  %47 = sitofp i64 %45 to double, !llfi_index !348
  %48 = sitofp i64 %46 to double, !llfi_index !348
  %49 = fdiv double %47, 1.000000e+06, !llfi_index !349
  %50 = fdiv double %48, 1.000000e+06, !llfi_index !349
  %51 = fadd double %27, %49, !llfi_index !350
  %52 = fadd double %28, %50, !llfi_index !350
  %check_cmp1 = fcmp ueq double %51, %52
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  store double %51, double* %1, !llfi_index !351
  br label %53, !llfi_index !352

; <label>:53                                      ; preds = %8, %7
  %54 = load double* %1, !llfi_index !353
  %55 = load double* %1, !llfi_index !353
  %check_cmp4 = fcmp ueq double %54, %55
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  store i1 %check_and6, i1* %AI
  br i1 %check_and6, label %56, label %checkBb

checkBb:                                          ; preds = %53
  call void @check_flag()
  br label %56

; <label>:56                                      ; preds = %checkBb, %53
  ret double %54, !llfi_index !354
}

; Function Attrs: nounwind uwtable
define i32 @get_interval_by_usec(%struct.__stopwatch_t* %sw) #0 {
  %1 = alloca i32, align 4, !llfi_index !355
  %2 = alloca %struct.__stopwatch_t*, align 8, !llfi_index !356
  store %struct.__stopwatch_t* %sw, %struct.__stopwatch_t** %2, align 8, !llfi_index !357
  %3 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !358
  %4 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !358
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = icmp eq %struct.__stopwatch_t* %3, null, !llfi_index !359
  %6 = icmp eq %struct.__stopwatch_t* %4, null, !llfi_index !359
  %check_cmp = icmp eq i1 %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %5, label %7, label %8, !llfi_index !360

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, !llfi_index !361
  br label %51, !llfi_index !362

; <label>:8                                       ; preds = %0
  %9 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !363
  %10 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !363
  %11 = getelementptr inbounds %struct.__stopwatch_t* %9, i32 0, i32 1, !llfi_index !364
  %12 = getelementptr inbounds %struct.__stopwatch_t* %10, i32 0, i32 1, !llfi_index !364
  %13 = getelementptr inbounds %struct.timeval* %11, i32 0, i32 0, !llfi_index !365
  %14 = getelementptr inbounds %struct.timeval* %12, i32 0, i32 0, !llfi_index !365
  %15 = load i64* %13, align 8, !llfi_index !366
  %16 = load i64* %14, align 8, !llfi_index !366
  %17 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !367
  %18 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !367
  %19 = getelementptr inbounds %struct.__stopwatch_t* %17, i32 0, i32 0, !llfi_index !368
  %20 = getelementptr inbounds %struct.__stopwatch_t* %18, i32 0, i32 0, !llfi_index !368
  %21 = getelementptr inbounds %struct.timeval* %19, i32 0, i32 0, !llfi_index !369
  %22 = getelementptr inbounds %struct.timeval* %20, i32 0, i32 0, !llfi_index !369
  %23 = load i64* %21, align 8, !llfi_index !370
  %24 = load i64* %22, align 8, !llfi_index !370
  %25 = sub nsw i64 %15, %23, !llfi_index !371
  %26 = sub nsw i64 %16, %24, !llfi_index !371
  %27 = mul nsw i64 %25, 1000000, !llfi_index !372
  %28 = mul nsw i64 %26, 1000000, !llfi_index !372
  %29 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !373
  %30 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !373
  %31 = getelementptr inbounds %struct.__stopwatch_t* %29, i32 0, i32 1, !llfi_index !374
  %32 = getelementptr inbounds %struct.__stopwatch_t* %30, i32 0, i32 1, !llfi_index !374
  %33 = getelementptr inbounds %struct.timeval* %31, i32 0, i32 1, !llfi_index !375
  %34 = getelementptr inbounds %struct.timeval* %32, i32 0, i32 1, !llfi_index !375
  %35 = load i64* %33, align 8, !llfi_index !376
  %36 = load i64* %34, align 8, !llfi_index !376
  %37 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !377
  %38 = load %struct.__stopwatch_t** %2, align 8, !llfi_index !377
  %39 = getelementptr inbounds %struct.__stopwatch_t* %37, i32 0, i32 0, !llfi_index !378
  %40 = getelementptr inbounds %struct.__stopwatch_t* %38, i32 0, i32 0, !llfi_index !378
  %41 = getelementptr inbounds %struct.timeval* %39, i32 0, i32 1, !llfi_index !379
  %42 = getelementptr inbounds %struct.timeval* %40, i32 0, i32 1, !llfi_index !379
  %43 = load i64* %41, align 8, !llfi_index !380
  %44 = load i64* %42, align 8, !llfi_index !380
  %45 = sub nsw i64 %35, %43, !llfi_index !381
  %46 = sub nsw i64 %36, %44, !llfi_index !381
  %47 = add nsw i64 %27, %45, !llfi_index !382
  %48 = add nsw i64 %28, %46, !llfi_index !382
  %49 = trunc i64 %47 to i32, !llfi_index !383
  %50 = trunc i64 %48 to i32, !llfi_index !383
  %check_cmp1 = icmp eq i32 %49, %50
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  store i32 %49, i32* %1, !llfi_index !384
  br label %51, !llfi_index !385

; <label>:51                                      ; preds = %8, %7
  %52 = load i32* %1, !llfi_index !386
  %53 = load i32* %1, !llfi_index !386
  %check_cmp4 = icmp eq i32 %52, %53
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  store i1 %check_and6, i1* %AI
  br i1 %check_and6, label %54, label %checkBb

checkBb:                                          ; preds = %51
  call void @check_flag()
  br label %54

; <label>:54                                      ; preds = %checkBb, %51
  ret i32 %52, !llfi_index !387
}

; Function Attrs: nounwind uwtable
define i32 @create_matrix_from_file(float** %mp, i8* %filename, i32* %size_p) #0 {
  %1 = alloca i32, align 4, !llfi_index !388
  %2 = alloca float**, align 8, !llfi_index !389
  %3 = alloca i8*, align 8, !llfi_index !390
  %4 = alloca i32*, align 8, !llfi_index !391
  %i = alloca i32, align 4, !llfi_index !392
  %j = alloca i32, align 4, !llfi_index !393
  %size = alloca i32, align 4, !llfi_index !394
  %m = alloca float*, align 8, !llfi_index !395
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !396
  store float** %mp, float*** %2, align 8, !llfi_index !397
  store i8* %filename, i8** %3, align 8, !llfi_index !398
  store i32* %size_p, i32** %4, align 8, !llfi_index !399
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !llfi_index !400
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = load i8** %3, align 8, !llfi_index !401
  %6 = load i8** %3, align 8, !llfi_index !401
  %check_cmp = icmp eq i8* %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %7 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0)), !llfi_index !402
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8, !llfi_index !403
  %8 = load %struct._IO_FILE** %fp, align 8, !llfi_index !404
  %9 = load %struct._IO_FILE** %fp, align 8, !llfi_index !404
  %10 = icmp eq %struct._IO_FILE* %8, null, !llfi_index !405
  %11 = icmp eq %struct._IO_FILE* %9, null, !llfi_index !405
  %check_cmp1 = icmp eq i1 %10, %11
  %check_and2 = and i1 %check_cmp1, %check_and
  store i1 %check_and2, i1* %AI
  br i1 %10, label %12, label %13, !llfi_index !406

; <label>:12                                      ; preds = %0
  store i32 1, i32* %1, !llfi_index !407
  br label %101, !llfi_index !408

; <label>:13                                      ; preds = %0
  %14 = load %struct._IO_FILE** %fp, align 8, !llfi_index !409
  %15 = load %struct._IO_FILE** %fp, align 8, !llfi_index !409
  %check_cmp3 = icmp eq %struct._IO_FILE* %14, %15
  %loadone4 = load i1* %AI
  %check_and5 = and i1 %check_cmp3, %loadone4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8]* @.str112, i32 0, i32 0), i32* %size), !llfi_index !410
  %17 = load i32* %size, align 4, !llfi_index !411
  %18 = load i32* %size, align 4, !llfi_index !411
  %19 = sext i32 %17 to i64, !llfi_index !412
  %20 = sext i32 %18 to i64, !llfi_index !412
  %21 = mul i64 4, %19, !llfi_index !413
  %22 = mul i64 4, %20, !llfi_index !413
  %23 = load i32* %size, align 4, !llfi_index !414
  %24 = load i32* %size, align 4, !llfi_index !414
  %25 = sext i32 %23 to i64, !llfi_index !415
  %26 = sext i32 %24 to i64, !llfi_index !415
  %27 = mul i64 %21, %25, !llfi_index !416
  %28 = mul i64 %22, %26, !llfi_index !416
  %check_cmp6 = icmp eq i64 %27, %28
  %check_and7 = and i1 %check_cmp6, %check_and5
  %29 = call noalias i8* @malloc(i64 %27) #5, !llfi_index !417
  %30 = bitcast i8* %29 to float*, !llfi_index !418
  %31 = bitcast i8* %29 to float*, !llfi_index !418
  %check_cmp8 = icmp eq float* %30, %31
  %check_and9 = and i1 %check_cmp8, %check_and7
  store float* %30, float** %m, align 8, !llfi_index !419
  %32 = load float** %m, align 8, !llfi_index !420
  %33 = load float** %m, align 8, !llfi_index !420
  %34 = icmp eq float* %32, null, !llfi_index !421
  %35 = icmp eq float* %33, null, !llfi_index !421
  %check_cmp10 = icmp eq i1 %34, %35
  %check_and11 = and i1 %check_cmp10, %check_and9
  store i1 %check_and11, i1* %AI
  br i1 %34, label %36, label %40, !llfi_index !422

; <label>:36                                      ; preds = %13
  %37 = load %struct._IO_FILE** %fp, align 8, !llfi_index !423
  %38 = load %struct._IO_FILE** %fp, align 8, !llfi_index !423
  %check_cmp12 = icmp eq %struct._IO_FILE* %37, %38
  %loadone13 = load i1* %AI
  %check_and14 = and i1 %check_cmp12, %loadone13
  store i1 %check_and14, i1* %AI
  %39 = call i32 @fclose(%struct._IO_FILE* %37), !llfi_index !424
  store i32 1, i32* %1, !llfi_index !425
  br label %101, !llfi_index !426

; <label>:40                                      ; preds = %13
  store i32 0, i32* %i, align 4, !llfi_index !427
  br label %41, !llfi_index !428

; <label>:41                                      ; preds = %84, %40
  %42 = load i32* %i, align 4, !llfi_index !429
  %43 = load i32* %i, align 4, !llfi_index !429
  %44 = load i32* %size, align 4, !llfi_index !430
  %45 = load i32* %size, align 4, !llfi_index !430
  %46 = icmp slt i32 %42, %44, !llfi_index !431
  %47 = icmp slt i32 %43, %45, !llfi_index !431
  %check_cmp15 = icmp eq i1 %46, %47
  %loadone16 = load i1* %AI
  %check_and17 = and i1 %check_cmp15, %loadone16
  store i1 %check_and17, i1* %AI
  br i1 %46, label %48, label %89, !llfi_index !432

; <label>:48                                      ; preds = %41
  store i32 0, i32* %j, align 4, !llfi_index !433
  br label %49, !llfi_index !434

; <label>:49                                      ; preds = %78, %48
  %50 = load i32* %j, align 4, !llfi_index !435
  %51 = load i32* %j, align 4, !llfi_index !435
  %52 = load i32* %size, align 4, !llfi_index !436
  %53 = load i32* %size, align 4, !llfi_index !436
  %54 = icmp slt i32 %50, %52, !llfi_index !437
  %55 = icmp slt i32 %51, %53, !llfi_index !437
  %check_cmp18 = icmp eq i1 %54, %55
  %loadone19 = load i1* %AI
  %check_and20 = and i1 %check_cmp18, %loadone19
  store i1 %check_and20, i1* %AI
  br i1 %54, label %56, label %83, !llfi_index !438

; <label>:56                                      ; preds = %49
  %57 = load %struct._IO_FILE** %fp, align 8, !llfi_index !439
  %58 = load %struct._IO_FILE** %fp, align 8, !llfi_index !439
  %check_cmp21 = icmp eq %struct._IO_FILE* %57, %58
  %loadone22 = load i1* %AI
  %check_and23 = and i1 %check_cmp21, %loadone22
  %59 = load float** %m, align 8, !llfi_index !440
  %60 = load float** %m, align 8, !llfi_index !440
  %61 = load i32* %i, align 4, !llfi_index !441
  %62 = load i32* %i, align 4, !llfi_index !441
  %63 = load i32* %size, align 4, !llfi_index !442
  %64 = load i32* %size, align 4, !llfi_index !442
  %65 = mul nsw i32 %61, %63, !llfi_index !443
  %66 = mul nsw i32 %62, %64, !llfi_index !443
  %67 = sext i32 %65 to i64, !llfi_index !444
  %68 = sext i32 %66 to i64, !llfi_index !444
  %69 = getelementptr inbounds float* %59, i64 %67, !llfi_index !445
  %70 = getelementptr inbounds float* %60, i64 %68, !llfi_index !445
  %71 = load i32* %j, align 4, !llfi_index !446
  %72 = load i32* %j, align 4, !llfi_index !446
  %73 = sext i32 %71 to i64, !llfi_index !447
  %74 = sext i32 %72 to i64, !llfi_index !447
  %75 = getelementptr inbounds float* %69, i64 %73, !llfi_index !448
  %76 = getelementptr inbounds float* %70, i64 %74, !llfi_index !448
  %check_cmp24 = icmp eq float* %75, %76
  %check_and25 = and i1 %check_cmp24, %check_and23
  store i1 %check_and25, i1* %AI
  %77 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([4 x i8]* @.str213, i32 0, i32 0), float* %75), !llfi_index !449
  br label %78, !llfi_index !450

; <label>:78                                      ; preds = %56
  %79 = load i32* %j, align 4, !llfi_index !451
  %80 = load i32* %j, align 4, !llfi_index !451
  %81 = add nsw i32 %79, 1, !llfi_index !452
  %82 = add nsw i32 %80, 1, !llfi_index !452
  %check_cmp26 = icmp eq i32 %81, %82
  %loadone27 = load i1* %AI
  %check_and28 = and i1 %check_cmp26, %loadone27
  store i1 %check_and28, i1* %AI
  store i32 %81, i32* %j, align 4, !llfi_index !453
  br label %49, !llfi_index !454

; <label>:83                                      ; preds = %49
  br label %84, !llfi_index !455

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4, !llfi_index !456
  %86 = load i32* %i, align 4, !llfi_index !456
  %87 = add nsw i32 %85, 1, !llfi_index !457
  %88 = add nsw i32 %86, 1, !llfi_index !457
  %check_cmp29 = icmp eq i32 %87, %88
  %loadone30 = load i1* %AI
  %check_and31 = and i1 %check_cmp29, %loadone30
  store i1 %check_and31, i1* %AI
  store i32 %87, i32* %i, align 4, !llfi_index !458
  br label %41, !llfi_index !459

; <label>:89                                      ; preds = %41
  %90 = load %struct._IO_FILE** %fp, align 8, !llfi_index !460
  %91 = load %struct._IO_FILE** %fp, align 8, !llfi_index !460
  %check_cmp32 = icmp eq %struct._IO_FILE* %90, %91
  %loadone33 = load i1* %AI
  %check_and34 = and i1 %check_cmp32, %loadone33
  %92 = call i32 @fclose(%struct._IO_FILE* %90), !llfi_index !461
  %93 = load i32* %size, align 4, !llfi_index !462
  %94 = load i32* %size, align 4, !llfi_index !462
  %check_cmp35 = icmp eq i32 %93, %94
  %check_and36 = and i1 %check_cmp35, %check_and34
  %95 = load i32** %4, align 8, !llfi_index !463
  %96 = load i32** %4, align 8, !llfi_index !463
  %check_cmp37 = icmp eq i32* %95, %96
  %check_and38 = and i1 %check_cmp37, %check_and36
  store i32 %93, i32* %95, align 4, !llfi_index !464
  %97 = load float** %m, align 8, !llfi_index !465
  %98 = load float** %m, align 8, !llfi_index !465
  %check_cmp39 = icmp eq float* %97, %98
  %check_and40 = and i1 %check_cmp39, %check_and38
  %99 = load float*** %2, align 8, !llfi_index !466
  %100 = load float*** %2, align 8, !llfi_index !466
  %check_cmp41 = icmp eq float** %99, %100
  %check_and42 = and i1 %check_cmp41, %check_and40
  store i1 %check_and42, i1* %AI
  store float* %97, float** %99, align 8, !llfi_index !467
  store i32 0, i32* %1, !llfi_index !468
  br label %101, !llfi_index !469

; <label>:101                                     ; preds = %89, %36, %12
  %102 = load i32* %1, !llfi_index !470
  %103 = load i32* %1, !llfi_index !470
  %check_cmp43 = icmp eq i32 %102, %103
  %loadone44 = load i1* %AI
  %check_and45 = and i1 %check_cmp43, %loadone44
  store i1 %check_and45, i1* %AI
  br i1 %check_and45, label %104, label %checkBb

checkBb:                                          ; preds = %101
  call void @check_flag()
  br label %104

; <label>:104                                     ; preds = %checkBb, %101
  ret i32 %102, !llfi_index !471
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @create_matrix_from_random(float** %mp, i32 %size) #0 {
  %1 = alloca i32, align 4, !llfi_index !472
  %2 = alloca float**, align 8, !llfi_index !473
  %3 = alloca i32, align 4, !llfi_index !474
  %l = alloca float*, align 8, !llfi_index !475
  %u = alloca float*, align 8, !llfi_index !476
  %m = alloca float*, align 8, !llfi_index !477
  %i = alloca i32, align 4, !llfi_index !478
  %j = alloca i32, align 4, !llfi_index !479
  %k = alloca i32, align 4, !llfi_index !480
  store float** %mp, float*** %2, align 8, !llfi_index !481
  store i32 %size, i32* %3, align 4, !llfi_index !482
  %4 = call i64 @time(i64* null) #5, !llfi_index !483
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = trunc i64 %4 to i32, !llfi_index !484
  %6 = trunc i64 %4 to i32, !llfi_index !484
  %check_cmp = icmp eq i32 %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  call void @srand(i32 %5) #5, !llfi_index !485
  %7 = load i32* %3, align 4, !llfi_index !486
  %8 = load i32* %3, align 4, !llfi_index !486
  %9 = load i32* %3, align 4, !llfi_index !487
  %10 = load i32* %3, align 4, !llfi_index !487
  %11 = mul nsw i32 %7, %9, !llfi_index !488
  %12 = mul nsw i32 %8, %10, !llfi_index !488
  %13 = sext i32 %11 to i64, !llfi_index !489
  %14 = sext i32 %12 to i64, !llfi_index !489
  %15 = mul i64 %13, 4, !llfi_index !490
  %16 = mul i64 %14, 4, !llfi_index !490
  %check_cmp1 = icmp eq i64 %15, %16
  %check_and2 = and i1 %check_cmp1, %check_and
  %17 = call noalias i8* @malloc(i64 %15) #5, !llfi_index !491
  %18 = bitcast i8* %17 to float*, !llfi_index !492
  %19 = bitcast i8* %17 to float*, !llfi_index !492
  %check_cmp3 = icmp eq float* %18, %19
  %check_and4 = and i1 %check_cmp3, %check_and2
  store float* %18, float** %l, align 8, !llfi_index !493
  %20 = load float** %l, align 8, !llfi_index !494
  %21 = load float** %l, align 8, !llfi_index !494
  %22 = icmp eq float* %20, null, !llfi_index !495
  %23 = icmp eq float* %21, null, !llfi_index !495
  %check_cmp5 = icmp eq i1 %22, %23
  %check_and6 = and i1 %check_cmp5, %check_and4
  store i1 %check_and6, i1* %AI
  br i1 %22, label %24, label %25, !llfi_index !496

; <label>:24                                      ; preds = %0
  store i32 1, i32* %1, !llfi_index !497
  br label %342, !llfi_index !498

; <label>:25                                      ; preds = %0
  %26 = load i32* %3, align 4, !llfi_index !499
  %27 = load i32* %3, align 4, !llfi_index !499
  %28 = load i32* %3, align 4, !llfi_index !500
  %29 = load i32* %3, align 4, !llfi_index !500
  %30 = mul nsw i32 %26, %28, !llfi_index !501
  %31 = mul nsw i32 %27, %29, !llfi_index !501
  %32 = sext i32 %30 to i64, !llfi_index !502
  %33 = sext i32 %31 to i64, !llfi_index !502
  %34 = mul i64 %32, 4, !llfi_index !503
  %35 = mul i64 %33, 4, !llfi_index !503
  %check_cmp7 = icmp eq i64 %34, %35
  %loadone8 = load i1* %AI
  %check_and9 = and i1 %check_cmp7, %loadone8
  %36 = call noalias i8* @malloc(i64 %34) #5, !llfi_index !504
  %37 = bitcast i8* %36 to float*, !llfi_index !505
  %38 = bitcast i8* %36 to float*, !llfi_index !505
  %check_cmp10 = icmp eq float* %37, %38
  %check_and11 = and i1 %check_cmp10, %check_and9
  store float* %37, float** %u, align 8, !llfi_index !506
  %39 = load float** %u, align 8, !llfi_index !507
  %40 = load float** %u, align 8, !llfi_index !507
  %41 = icmp eq float* %39, null, !llfi_index !508
  %42 = icmp eq float* %40, null, !llfi_index !508
  %check_cmp12 = icmp eq i1 %41, %42
  %check_and13 = and i1 %check_cmp12, %check_and11
  store i1 %check_and13, i1* %AI
  br i1 %41, label %43, label %48, !llfi_index !509

; <label>:43                                      ; preds = %25
  %44 = load float** %l, align 8, !llfi_index !510
  %45 = load float** %l, align 8, !llfi_index !510
  %46 = bitcast float* %44 to i8*, !llfi_index !511
  %47 = bitcast float* %45 to i8*, !llfi_index !511
  %check_cmp14 = icmp eq i8* %46, %47
  %loadone15 = load i1* %AI
  %check_and16 = and i1 %check_cmp14, %loadone15
  store i1 %check_and16, i1* %AI
  call void @free(i8* %46) #5, !llfi_index !512
  store i32 1, i32* %1, !llfi_index !513
  br label %342, !llfi_index !514

; <label>:48                                      ; preds = %25
  store i32 0, i32* %i, align 4, !llfi_index !515
  br label %49, !llfi_index !516

; <label>:49                                      ; preds = %142, %48
  %50 = load i32* %i, align 4, !llfi_index !517
  %51 = load i32* %i, align 4, !llfi_index !517
  %52 = load i32* %3, align 4, !llfi_index !518
  %53 = load i32* %3, align 4, !llfi_index !518
  %54 = icmp slt i32 %50, %52, !llfi_index !519
  %55 = icmp slt i32 %51, %53, !llfi_index !519
  %check_cmp17 = icmp eq i1 %54, %55
  %loadone18 = load i1* %AI
  %check_and19 = and i1 %check_cmp17, %loadone18
  store i1 %check_and19, i1* %AI
  br i1 %54, label %56, label %147, !llfi_index !520

; <label>:56                                      ; preds = %49
  store i32 0, i32* %j, align 4, !llfi_index !521
  br label %57, !llfi_index !522

; <label>:57                                      ; preds = %136, %56
  %58 = load i32* %j, align 4, !llfi_index !523
  %59 = load i32* %j, align 4, !llfi_index !523
  %60 = load i32* %3, align 4, !llfi_index !524
  %61 = load i32* %3, align 4, !llfi_index !524
  %62 = icmp slt i32 %58, %60, !llfi_index !525
  %63 = icmp slt i32 %59, %61, !llfi_index !525
  %check_cmp20 = icmp eq i1 %62, %63
  %loadone21 = load i1* %AI
  %check_and22 = and i1 %check_cmp20, %loadone21
  store i1 %check_and22, i1* %AI
  br i1 %62, label %64, label %141, !llfi_index !526

; <label>:64                                      ; preds = %57
  %65 = load i32* %i, align 4, !llfi_index !527
  %66 = load i32* %i, align 4, !llfi_index !527
  %67 = load i32* %j, align 4, !llfi_index !528
  %68 = load i32* %j, align 4, !llfi_index !528
  %69 = icmp sgt i32 %65, %67, !llfi_index !529
  %70 = icmp sgt i32 %66, %68, !llfi_index !529
  %check_cmp23 = icmp eq i1 %69, %70
  %loadone24 = load i1* %AI
  %check_and25 = and i1 %check_cmp23, %loadone24
  store i1 %check_and25, i1* %AI
  br i1 %69, label %71, label %93, !llfi_index !530

; <label>:71                                      ; preds = %64
  %72 = call i32 @rand() #5, !llfi_index !531
  %73 = sitofp i32 %72 to float, !llfi_index !532
  %74 = sitofp i32 %72 to float, !llfi_index !532
  %75 = fdiv float %73, 0x41E0000000000000, !llfi_index !533
  %76 = fdiv float %74, 0x41E0000000000000, !llfi_index !533
  %check_cmp26 = fcmp ueq float %75, %76
  %loadone27 = load i1* %AI
  %check_and28 = and i1 %check_cmp26, %loadone27
  %77 = load i32* %i, align 4, !llfi_index !534
  %78 = load i32* %i, align 4, !llfi_index !534
  %79 = load i32* %3, align 4, !llfi_index !535
  %80 = load i32* %3, align 4, !llfi_index !535
  %81 = mul nsw i32 %77, %79, !llfi_index !536
  %82 = mul nsw i32 %78, %80, !llfi_index !536
  %83 = load i32* %j, align 4, !llfi_index !537
  %84 = load i32* %j, align 4, !llfi_index !537
  %85 = add nsw i32 %81, %83, !llfi_index !538
  %86 = add nsw i32 %82, %84, !llfi_index !538
  %87 = sext i32 %85 to i64, !llfi_index !539
  %88 = sext i32 %86 to i64, !llfi_index !539
  %89 = load float** %l, align 8, !llfi_index !540
  %90 = load float** %l, align 8, !llfi_index !540
  %91 = getelementptr inbounds float* %89, i64 %87, !llfi_index !541
  %92 = getelementptr inbounds float* %90, i64 %88, !llfi_index !541
  %check_cmp29 = icmp eq float* %91, %92
  %check_and30 = and i1 %check_cmp29, %check_and28
  store i1 %check_and30, i1* %AI
  store float %75, float* %91, align 4, !llfi_index !542
  br label %135, !llfi_index !543

; <label>:93                                      ; preds = %64
  %94 = load i32* %i, align 4, !llfi_index !544
  %95 = load i32* %i, align 4, !llfi_index !544
  %96 = load i32* %j, align 4, !llfi_index !545
  %97 = load i32* %j, align 4, !llfi_index !545
  %98 = icmp eq i32 %94, %96, !llfi_index !546
  %99 = icmp eq i32 %95, %97, !llfi_index !546
  %check_cmp31 = icmp eq i1 %98, %99
  %loadone32 = load i1* %AI
  %check_and33 = and i1 %check_cmp31, %loadone32
  store i1 %check_and33, i1* %AI
  br i1 %98, label %100, label %117, !llfi_index !547

; <label>:100                                     ; preds = %93
  %101 = load i32* %i, align 4, !llfi_index !548
  %102 = load i32* %i, align 4, !llfi_index !548
  %103 = load i32* %3, align 4, !llfi_index !549
  %104 = load i32* %3, align 4, !llfi_index !549
  %105 = mul nsw i32 %101, %103, !llfi_index !550
  %106 = mul nsw i32 %102, %104, !llfi_index !550
  %107 = load i32* %j, align 4, !llfi_index !551
  %108 = load i32* %j, align 4, !llfi_index !551
  %109 = add nsw i32 %105, %107, !llfi_index !552
  %110 = add nsw i32 %106, %108, !llfi_index !552
  %111 = sext i32 %109 to i64, !llfi_index !553
  %112 = sext i32 %110 to i64, !llfi_index !553
  %113 = load float** %l, align 8, !llfi_index !554
  %114 = load float** %l, align 8, !llfi_index !554
  %115 = getelementptr inbounds float* %113, i64 %111, !llfi_index !555
  %116 = getelementptr inbounds float* %114, i64 %112, !llfi_index !555
  %check_cmp34 = icmp eq float* %115, %116
  %loadone35 = load i1* %AI
  %check_and36 = and i1 %check_cmp34, %loadone35
  store i1 %check_and36, i1* %AI
  store float 1.000000e+00, float* %115, align 4, !llfi_index !556
  br label %134, !llfi_index !557

; <label>:117                                     ; preds = %93
  %118 = load i32* %i, align 4, !llfi_index !558
  %119 = load i32* %i, align 4, !llfi_index !558
  %120 = load i32* %3, align 4, !llfi_index !559
  %121 = load i32* %3, align 4, !llfi_index !559
  %122 = mul nsw i32 %118, %120, !llfi_index !560
  %123 = mul nsw i32 %119, %121, !llfi_index !560
  %124 = load i32* %j, align 4, !llfi_index !561
  %125 = load i32* %j, align 4, !llfi_index !561
  %126 = add nsw i32 %122, %124, !llfi_index !562
  %127 = add nsw i32 %123, %125, !llfi_index !562
  %128 = sext i32 %126 to i64, !llfi_index !563
  %129 = sext i32 %127 to i64, !llfi_index !563
  %130 = load float** %l, align 8, !llfi_index !564
  %131 = load float** %l, align 8, !llfi_index !564
  %132 = getelementptr inbounds float* %130, i64 %128, !llfi_index !565
  %133 = getelementptr inbounds float* %131, i64 %129, !llfi_index !565
  %check_cmp37 = icmp eq float* %132, %133
  %loadone38 = load i1* %AI
  %check_and39 = and i1 %check_cmp37, %loadone38
  store i1 %check_and39, i1* %AI
  store float 0.000000e+00, float* %132, align 4, !llfi_index !566
  br label %134, !llfi_index !567

; <label>:134                                     ; preds = %117, %100
  br label %135, !llfi_index !568

; <label>:135                                     ; preds = %134, %71
  br label %136, !llfi_index !569

; <label>:136                                     ; preds = %135
  %137 = load i32* %j, align 4, !llfi_index !570
  %138 = load i32* %j, align 4, !llfi_index !570
  %139 = add nsw i32 %137, 1, !llfi_index !571
  %140 = add nsw i32 %138, 1, !llfi_index !571
  %check_cmp40 = icmp eq i32 %139, %140
  %loadone41 = load i1* %AI
  %check_and42 = and i1 %check_cmp40, %loadone41
  store i1 %check_and42, i1* %AI
  store i32 %139, i32* %j, align 4, !llfi_index !572
  br label %57, !llfi_index !573

; <label>:141                                     ; preds = %57
  br label %142, !llfi_index !574

; <label>:142                                     ; preds = %141
  %143 = load i32* %i, align 4, !llfi_index !575
  %144 = load i32* %i, align 4, !llfi_index !575
  %145 = add nsw i32 %143, 1, !llfi_index !576
  %146 = add nsw i32 %144, 1, !llfi_index !576
  %check_cmp43 = icmp eq i32 %145, %146
  %loadone44 = load i1* %AI
  %check_and45 = and i1 %check_cmp43, %loadone44
  store i1 %check_and45, i1* %AI
  store i32 %145, i32* %i, align 4, !llfi_index !577
  br label %49, !llfi_index !578

; <label>:147                                     ; preds = %49
  store i32 0, i32* %j, align 4, !llfi_index !579
  br label %148, !llfi_index !580

; <label>:148                                     ; preds = %216, %147
  %149 = load i32* %j, align 4, !llfi_index !581
  %150 = load i32* %j, align 4, !llfi_index !581
  %151 = load i32* %3, align 4, !llfi_index !582
  %152 = load i32* %3, align 4, !llfi_index !582
  %153 = icmp slt i32 %149, %151, !llfi_index !583
  %154 = icmp slt i32 %150, %152, !llfi_index !583
  %check_cmp46 = icmp eq i1 %153, %154
  %loadone47 = load i1* %AI
  %check_and48 = and i1 %check_cmp46, %loadone47
  store i1 %check_and48, i1* %AI
  br i1 %153, label %155, label %221, !llfi_index !584

; <label>:155                                     ; preds = %148
  store i32 0, i32* %i, align 4, !llfi_index !585
  br label %156, !llfi_index !586

; <label>:156                                     ; preds = %210, %155
  %157 = load i32* %i, align 4, !llfi_index !587
  %158 = load i32* %i, align 4, !llfi_index !587
  %159 = load i32* %3, align 4, !llfi_index !588
  %160 = load i32* %3, align 4, !llfi_index !588
  %161 = icmp slt i32 %157, %159, !llfi_index !589
  %162 = icmp slt i32 %158, %160, !llfi_index !589
  %check_cmp49 = icmp eq i1 %161, %162
  %loadone50 = load i1* %AI
  %check_and51 = and i1 %check_cmp49, %loadone50
  store i1 %check_and51, i1* %AI
  br i1 %161, label %163, label %215, !llfi_index !590

; <label>:163                                     ; preds = %156
  %164 = load i32* %i, align 4, !llfi_index !591
  %165 = load i32* %i, align 4, !llfi_index !591
  %166 = load i32* %j, align 4, !llfi_index !592
  %167 = load i32* %j, align 4, !llfi_index !592
  %168 = icmp sgt i32 %164, %166, !llfi_index !593
  %169 = icmp sgt i32 %165, %167, !llfi_index !593
  %check_cmp52 = icmp eq i1 %168, %169
  %loadone53 = load i1* %AI
  %check_and54 = and i1 %check_cmp52, %loadone53
  store i1 %check_and54, i1* %AI
  br i1 %168, label %170, label %187, !llfi_index !594

; <label>:170                                     ; preds = %163
  %171 = load i32* %j, align 4, !llfi_index !595
  %172 = load i32* %j, align 4, !llfi_index !595
  %173 = load i32* %3, align 4, !llfi_index !596
  %174 = load i32* %3, align 4, !llfi_index !596
  %175 = mul nsw i32 %171, %173, !llfi_index !597
  %176 = mul nsw i32 %172, %174, !llfi_index !597
  %177 = load i32* %i, align 4, !llfi_index !598
  %178 = load i32* %i, align 4, !llfi_index !598
  %179 = add nsw i32 %175, %177, !llfi_index !599
  %180 = add nsw i32 %176, %178, !llfi_index !599
  %181 = sext i32 %179 to i64, !llfi_index !600
  %182 = sext i32 %180 to i64, !llfi_index !600
  %183 = load float** %u, align 8, !llfi_index !601
  %184 = load float** %u, align 8, !llfi_index !601
  %185 = getelementptr inbounds float* %183, i64 %181, !llfi_index !602
  %186 = getelementptr inbounds float* %184, i64 %182, !llfi_index !602
  %check_cmp55 = icmp eq float* %185, %186
  %loadone56 = load i1* %AI
  %check_and57 = and i1 %check_cmp55, %loadone56
  store i1 %check_and57, i1* %AI
  store float 0.000000e+00, float* %185, align 4, !llfi_index !603
  br label %209, !llfi_index !604

; <label>:187                                     ; preds = %163
  %188 = call i32 @rand() #5, !llfi_index !605
  %189 = sitofp i32 %188 to float, !llfi_index !606
  %190 = sitofp i32 %188 to float, !llfi_index !606
  %191 = fdiv float %189, 0x41E0000000000000, !llfi_index !607
  %192 = fdiv float %190, 0x41E0000000000000, !llfi_index !607
  %check_cmp58 = fcmp ueq float %191, %192
  %loadone59 = load i1* %AI
  %check_and60 = and i1 %check_cmp58, %loadone59
  %193 = load i32* %j, align 4, !llfi_index !608
  %194 = load i32* %j, align 4, !llfi_index !608
  %195 = load i32* %3, align 4, !llfi_index !609
  %196 = load i32* %3, align 4, !llfi_index !609
  %197 = mul nsw i32 %193, %195, !llfi_index !610
  %198 = mul nsw i32 %194, %196, !llfi_index !610
  %199 = load i32* %i, align 4, !llfi_index !611
  %200 = load i32* %i, align 4, !llfi_index !611
  %201 = add nsw i32 %197, %199, !llfi_index !612
  %202 = add nsw i32 %198, %200, !llfi_index !612
  %203 = sext i32 %201 to i64, !llfi_index !613
  %204 = sext i32 %202 to i64, !llfi_index !613
  %205 = load float** %u, align 8, !llfi_index !614
  %206 = load float** %u, align 8, !llfi_index !614
  %207 = getelementptr inbounds float* %205, i64 %203, !llfi_index !615
  %208 = getelementptr inbounds float* %206, i64 %204, !llfi_index !615
  %check_cmp61 = icmp eq float* %207, %208
  %check_and62 = and i1 %check_cmp61, %check_and60
  store i1 %check_and62, i1* %AI
  store float %191, float* %207, align 4, !llfi_index !616
  br label %209, !llfi_index !617

; <label>:209                                     ; preds = %187, %170
  br label %210, !llfi_index !618

; <label>:210                                     ; preds = %209
  %211 = load i32* %i, align 4, !llfi_index !619
  %212 = load i32* %i, align 4, !llfi_index !619
  %213 = add nsw i32 %211, 1, !llfi_index !620
  %214 = add nsw i32 %212, 1, !llfi_index !620
  %check_cmp63 = icmp eq i32 %213, %214
  %loadone64 = load i1* %AI
  %check_and65 = and i1 %check_cmp63, %loadone64
  store i1 %check_and65, i1* %AI
  store i32 %213, i32* %i, align 4, !llfi_index !621
  br label %156, !llfi_index !622

; <label>:215                                     ; preds = %156
  br label %216, !llfi_index !623

; <label>:216                                     ; preds = %215
  %217 = load i32* %j, align 4, !llfi_index !624
  %218 = load i32* %j, align 4, !llfi_index !624
  %219 = add nsw i32 %217, 1, !llfi_index !625
  %220 = add nsw i32 %218, 1, !llfi_index !625
  %check_cmp66 = icmp eq i32 %219, %220
  %loadone67 = load i1* %AI
  %check_and68 = and i1 %check_cmp66, %loadone67
  store i1 %check_and68, i1* %AI
  store i32 %219, i32* %j, align 4, !llfi_index !626
  br label %148, !llfi_index !627

; <label>:221                                     ; preds = %148
  store i32 0, i32* %i, align 4, !llfi_index !628
  br label %222, !llfi_index !629

; <label>:222                                     ; preds = %324, %221
  %223 = load i32* %i, align 4, !llfi_index !630
  %224 = load i32* %i, align 4, !llfi_index !630
  %225 = load i32* %3, align 4, !llfi_index !631
  %226 = load i32* %3, align 4, !llfi_index !631
  %227 = icmp slt i32 %223, %225, !llfi_index !632
  %228 = icmp slt i32 %224, %226, !llfi_index !632
  %check_cmp69 = icmp eq i1 %227, %228
  %loadone70 = load i1* %AI
  %check_and71 = and i1 %check_cmp69, %loadone70
  store i1 %check_and71, i1* %AI
  br i1 %227, label %229, label %329, !llfi_index !633

; <label>:229                                     ; preds = %222
  store i32 0, i32* %j, align 4, !llfi_index !634
  br label %230, !llfi_index !635

; <label>:230                                     ; preds = %318, %229
  %231 = load i32* %j, align 4, !llfi_index !636
  %232 = load i32* %j, align 4, !llfi_index !636
  %233 = load i32* %3, align 4, !llfi_index !637
  %234 = load i32* %3, align 4, !llfi_index !637
  %235 = icmp slt i32 %231, %233, !llfi_index !638
  %236 = icmp slt i32 %232, %234, !llfi_index !638
  %check_cmp72 = icmp eq i1 %235, %236
  %loadone73 = load i1* %AI
  %check_and74 = and i1 %check_cmp72, %loadone73
  store i1 %check_and74, i1* %AI
  br i1 %235, label %237, label %323, !llfi_index !639

; <label>:237                                     ; preds = %230
  store i32 0, i32* %k, align 4, !llfi_index !640
  br label %238, !llfi_index !641

; <label>:238                                     ; preds = %312, %237
  %239 = load i32* %k, align 4, !llfi_index !642
  %240 = load i32* %k, align 4, !llfi_index !642
  %241 = load i32* %i, align 4, !llfi_index !643
  %242 = load i32* %i, align 4, !llfi_index !643
  %243 = load i32* %j, align 4, !llfi_index !644
  %244 = load i32* %j, align 4, !llfi_index !644
  %245 = icmp slt i32 %241, %243, !llfi_index !645
  %246 = icmp slt i32 %242, %244, !llfi_index !645
  %check_cmp75 = icmp eq i1 %245, %246
  %loadone76 = load i1* %AI
  %check_and77 = and i1 %check_cmp75, %loadone76
  store i1 %check_and77, i1* %AI
  br i1 %245, label %247, label %250, !llfi_index !646

; <label>:247                                     ; preds = %238
  %248 = load i32* %i, align 4, !llfi_index !647
  %249 = load i32* %i, align 4, !llfi_index !647
  %check_cmp78 = icmp eq i32 %248, %249
  %loadone79 = load i1* %AI
  %check_and80 = and i1 %check_cmp78, %loadone79
  store i1 %check_and80, i1* %AI
  br label %253, !llfi_index !648

; <label>:250                                     ; preds = %238
  %251 = load i32* %j, align 4, !llfi_index !649
  %252 = load i32* %j, align 4, !llfi_index !649
  %check_cmp81 = icmp eq i32 %251, %252
  %loadone82 = load i1* %AI
  %check_and83 = and i1 %check_cmp81, %loadone82
  store i1 %check_and83, i1* %AI
  br label %253, !llfi_index !650

; <label>:253                                     ; preds = %250, %247
  %254 = phi i32 [ %248, %247 ], [ %251, %250 ], !llfi_index !651
  %255 = icmp sle i32 %239, %254, !llfi_index !652
  %256 = icmp sle i32 %240, %254, !llfi_index !652
  %check_cmp84 = icmp eq i1 %255, %256
  %loadone85 = load i1* %AI
  %check_and86 = and i1 %check_cmp84, %loadone85
  store i1 %check_and86, i1* %AI
  br i1 %255, label %257, label %317, !llfi_index !653

; <label>:257                                     ; preds = %253
  %258 = load i32* %i, align 4, !llfi_index !654
  %259 = load i32* %i, align 4, !llfi_index !654
  %260 = load i32* %3, align 4, !llfi_index !655
  %261 = load i32* %3, align 4, !llfi_index !655
  %262 = mul nsw i32 %258, %260, !llfi_index !656
  %263 = mul nsw i32 %259, %261, !llfi_index !656
  %264 = load i32* %k, align 4, !llfi_index !657
  %265 = load i32* %k, align 4, !llfi_index !657
  %266 = add nsw i32 %262, %264, !llfi_index !658
  %267 = add nsw i32 %263, %265, !llfi_index !658
  %268 = sext i32 %266 to i64, !llfi_index !659
  %269 = sext i32 %267 to i64, !llfi_index !659
  %270 = load float** %l, align 8, !llfi_index !660
  %271 = load float** %l, align 8, !llfi_index !660
  %272 = getelementptr inbounds float* %270, i64 %268, !llfi_index !661
  %273 = getelementptr inbounds float* %271, i64 %269, !llfi_index !661
  %274 = load float* %272, align 4, !llfi_index !662
  %275 = load float* %273, align 4, !llfi_index !662
  %276 = load i32* %j, align 4, !llfi_index !663
  %277 = load i32* %j, align 4, !llfi_index !663
  %278 = load i32* %3, align 4, !llfi_index !664
  %279 = load i32* %3, align 4, !llfi_index !664
  %280 = mul nsw i32 %276, %278, !llfi_index !665
  %281 = mul nsw i32 %277, %279, !llfi_index !665
  %282 = load i32* %k, align 4, !llfi_index !666
  %283 = load i32* %k, align 4, !llfi_index !666
  %284 = add nsw i32 %280, %282, !llfi_index !667
  %285 = add nsw i32 %281, %283, !llfi_index !667
  %286 = sext i32 %284 to i64, !llfi_index !668
  %287 = sext i32 %285 to i64, !llfi_index !668
  %288 = load float** %u, align 8, !llfi_index !669
  %289 = load float** %u, align 8, !llfi_index !669
  %290 = getelementptr inbounds float* %288, i64 %286, !llfi_index !670
  %291 = getelementptr inbounds float* %289, i64 %287, !llfi_index !670
  %292 = load float* %290, align 4, !llfi_index !671
  %293 = load float* %291, align 4, !llfi_index !671
  %294 = fmul float %274, %292, !llfi_index !672
  %295 = fmul float %275, %293, !llfi_index !672
  %check_cmp87 = fcmp ueq float %294, %295
  %loadone88 = load i1* %AI
  %check_and89 = and i1 %check_cmp87, %loadone88
  %296 = load i32* %i, align 4, !llfi_index !673
  %297 = load i32* %i, align 4, !llfi_index !673
  %298 = load i32* %3, align 4, !llfi_index !674
  %299 = load i32* %3, align 4, !llfi_index !674
  %300 = mul nsw i32 %296, %298, !llfi_index !675
  %301 = mul nsw i32 %297, %299, !llfi_index !675
  %302 = load i32* %j, align 4, !llfi_index !676
  %303 = load i32* %j, align 4, !llfi_index !676
  %304 = add nsw i32 %300, %302, !llfi_index !677
  %305 = add nsw i32 %301, %303, !llfi_index !677
  %306 = sext i32 %304 to i64, !llfi_index !678
  %307 = sext i32 %305 to i64, !llfi_index !678
  %308 = load float** %m, align 8, !llfi_index !679
  %309 = load float** %m, align 8, !llfi_index !679
  %310 = getelementptr inbounds float* %308, i64 %306, !llfi_index !680
  %311 = getelementptr inbounds float* %309, i64 %307, !llfi_index !680
  %check_cmp90 = icmp eq float* %310, %311
  %check_and91 = and i1 %check_cmp90, %check_and89
  store i1 %check_and91, i1* %AI
  store float %294, float* %310, align 4, !llfi_index !681
  br label %312, !llfi_index !682

; <label>:312                                     ; preds = %257
  %313 = load i32* %k, align 4, !llfi_index !683
  %314 = load i32* %k, align 4, !llfi_index !683
  %315 = add nsw i32 %313, 1, !llfi_index !684
  %316 = add nsw i32 %314, 1, !llfi_index !684
  %check_cmp92 = icmp eq i32 %315, %316
  %loadone93 = load i1* %AI
  %check_and94 = and i1 %check_cmp92, %loadone93
  store i1 %check_and94, i1* %AI
  store i32 %315, i32* %k, align 4, !llfi_index !685
  br label %238, !llfi_index !686

; <label>:317                                     ; preds = %253
  br label %318, !llfi_index !687

; <label>:318                                     ; preds = %317
  %319 = load i32* %j, align 4, !llfi_index !688
  %320 = load i32* %j, align 4, !llfi_index !688
  %321 = add nsw i32 %319, 1, !llfi_index !689
  %322 = add nsw i32 %320, 1, !llfi_index !689
  %check_cmp95 = icmp eq i32 %321, %322
  %loadone96 = load i1* %AI
  %check_and97 = and i1 %check_cmp95, %loadone96
  store i1 %check_and97, i1* %AI
  store i32 %321, i32* %j, align 4, !llfi_index !690
  br label %230, !llfi_index !691

; <label>:323                                     ; preds = %230
  br label %324, !llfi_index !692

; <label>:324                                     ; preds = %323
  %325 = load i32* %i, align 4, !llfi_index !693
  %326 = load i32* %i, align 4, !llfi_index !693
  %327 = add nsw i32 %325, 1, !llfi_index !694
  %328 = add nsw i32 %326, 1, !llfi_index !694
  %check_cmp98 = icmp eq i32 %327, %328
  %loadone99 = load i1* %AI
  %check_and100 = and i1 %check_cmp98, %loadone99
  store i1 %check_and100, i1* %AI
  store i32 %327, i32* %i, align 4, !llfi_index !695
  br label %222, !llfi_index !696

; <label>:329                                     ; preds = %222
  %330 = load float** %l, align 8, !llfi_index !697
  %331 = load float** %l, align 8, !llfi_index !697
  %332 = bitcast float* %330 to i8*, !llfi_index !698
  %333 = bitcast float* %331 to i8*, !llfi_index !698
  %check_cmp101 = icmp eq i8* %332, %333
  %loadone102 = load i1* %AI
  %check_and103 = and i1 %check_cmp101, %loadone102
  call void @free(i8* %332) #5, !llfi_index !699
  %334 = load float** %u, align 8, !llfi_index !700
  %335 = load float** %u, align 8, !llfi_index !700
  %336 = bitcast float* %334 to i8*, !llfi_index !701
  %337 = bitcast float* %335 to i8*, !llfi_index !701
  %check_cmp104 = icmp eq i8* %336, %337
  %check_and105 = and i1 %check_cmp104, %check_and103
  call void @free(i8* %336) #5, !llfi_index !702
  %338 = load float** %m, align 8, !llfi_index !703
  %339 = load float** %m, align 8, !llfi_index !703
  %check_cmp106 = icmp eq float* %338, %339
  %check_and107 = and i1 %check_cmp106, %check_and105
  %340 = load float*** %2, align 8, !llfi_index !704
  %341 = load float*** %2, align 8, !llfi_index !704
  %check_cmp108 = icmp eq float** %340, %341
  %check_and109 = and i1 %check_cmp108, %check_and107
  store i1 %check_and109, i1* %AI
  store float* %338, float** %340, align 8, !llfi_index !705
  store i32 0, i32* %1, !llfi_index !706
  br label %342, !llfi_index !707

; <label>:342                                     ; preds = %329, %43, %24
  %343 = load i32* %1, !llfi_index !708
  %344 = load i32* %1, !llfi_index !708
  %check_cmp110 = icmp eq i32 %343, %344
  %loadone111 = load i1* %AI
  %check_and112 = and i1 %check_cmp110, %loadone111
  store i1 %check_and112, i1* %AI
  br i1 %check_and112, label %345, label %checkBb

checkBb:                                          ; preds = %342
  call void @check_flag()
  br label %345

; <label>:345                                     ; preds = %checkBb, %342
  ret i32 %343, !llfi_index !709
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define void @matrix_multiply(float* %inputa, float* %inputb, float* %output, i32 %size) #0 {
  %1 = alloca float*, align 8, !llfi_index !710
  %2 = alloca float*, align 8, !llfi_index !711
  %3 = alloca float*, align 8, !llfi_index !712
  %4 = alloca i32, align 4, !llfi_index !713
  %i = alloca i32, align 4, !llfi_index !714
  %j = alloca i32, align 4, !llfi_index !715
  %k = alloca i32, align 4, !llfi_index !716
  store float* %inputa, float** %1, align 8, !llfi_index !717
  store float* %inputb, float** %2, align 8, !llfi_index !718
  store float* %output, float** %3, align 8, !llfi_index !719
  store i32 %size, i32* %4, align 4, !llfi_index !720
  store i32 0, i32* %i, align 4, !llfi_index !721
  br label %5, !llfi_index !722

; <label>:5                                       ; preds = %100, %0
  %6 = load i32* %i, align 4, !llfi_index !723
  %7 = load i32* %i, align 4, !llfi_index !723
  %8 = load i32* %4, align 4, !llfi_index !724
  %9 = load i32* %4, align 4, !llfi_index !724
  %AI = alloca i1
  store i1 true, i1* %AI
  %10 = icmp slt i32 %6, %8, !llfi_index !725
  %11 = icmp slt i32 %7, %9, !llfi_index !725
  %check_cmp = icmp eq i1 %10, %11
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %10, label %12, label %101, !llfi_index !726

; <label>:12                                      ; preds = %5
  store i32 0, i32* %k, align 4, !llfi_index !727
  br label %13, !llfi_index !728

; <label>:13                                      ; preds = %89, %12
  %14 = load i32* %k, align 4, !llfi_index !729
  %15 = load i32* %k, align 4, !llfi_index !729
  %16 = load i32* %4, align 4, !llfi_index !730
  %17 = load i32* %4, align 4, !llfi_index !730
  %18 = icmp slt i32 %14, %16, !llfi_index !731
  %19 = icmp slt i32 %15, %17, !llfi_index !731
  %check_cmp1 = icmp eq i1 %18, %19
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  br i1 %18, label %20, label %94, !llfi_index !732

; <label>:20                                      ; preds = %13
  store i32 0, i32* %j, align 4, !llfi_index !733
  br label %21, !llfi_index !734

; <label>:21                                      ; preds = %83, %20
  %22 = load i32* %j, align 4, !llfi_index !735
  %23 = load i32* %j, align 4, !llfi_index !735
  %24 = load i32* %4, align 4, !llfi_index !736
  %25 = load i32* %4, align 4, !llfi_index !736
  %26 = icmp slt i32 %22, %24, !llfi_index !737
  %27 = icmp slt i32 %23, %25, !llfi_index !737
  %check_cmp4 = icmp eq i1 %26, %27
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  store i1 %check_and6, i1* %AI
  br i1 %26, label %28, label %88, !llfi_index !738

; <label>:28                                      ; preds = %21
  %29 = load i32* %i, align 4, !llfi_index !739
  %30 = load i32* %i, align 4, !llfi_index !739
  %31 = load i32* %4, align 4, !llfi_index !740
  %32 = load i32* %4, align 4, !llfi_index !740
  %33 = mul nsw i32 %29, %31, !llfi_index !741
  %34 = mul nsw i32 %30, %32, !llfi_index !741
  %35 = load i32* %k, align 4, !llfi_index !742
  %36 = load i32* %k, align 4, !llfi_index !742
  %37 = add nsw i32 %33, %35, !llfi_index !743
  %38 = add nsw i32 %34, %36, !llfi_index !743
  %39 = sext i32 %37 to i64, !llfi_index !744
  %40 = sext i32 %38 to i64, !llfi_index !744
  %41 = load float** %1, align 8, !llfi_index !745
  %42 = load float** %1, align 8, !llfi_index !745
  %43 = getelementptr inbounds float* %41, i64 %39, !llfi_index !746
  %44 = getelementptr inbounds float* %42, i64 %40, !llfi_index !746
  %45 = load float* %43, align 4, !llfi_index !747
  %46 = load float* %44, align 4, !llfi_index !747
  %47 = load i32* %k, align 4, !llfi_index !748
  %48 = load i32* %k, align 4, !llfi_index !748
  %49 = load i32* %4, align 4, !llfi_index !749
  %50 = load i32* %4, align 4, !llfi_index !749
  %51 = mul nsw i32 %47, %49, !llfi_index !750
  %52 = mul nsw i32 %48, %50, !llfi_index !750
  %53 = load i32* %j, align 4, !llfi_index !751
  %54 = load i32* %j, align 4, !llfi_index !751
  %55 = add nsw i32 %51, %53, !llfi_index !752
  %56 = add nsw i32 %52, %54, !llfi_index !752
  %57 = sext i32 %55 to i64, !llfi_index !753
  %58 = sext i32 %56 to i64, !llfi_index !753
  %59 = load float** %2, align 8, !llfi_index !754
  %60 = load float** %2, align 8, !llfi_index !754
  %61 = getelementptr inbounds float* %59, i64 %57, !llfi_index !755
  %62 = getelementptr inbounds float* %60, i64 %58, !llfi_index !755
  %63 = load float* %61, align 4, !llfi_index !756
  %64 = load float* %62, align 4, !llfi_index !756
  %65 = fmul float %45, %63, !llfi_index !757
  %66 = fmul float %46, %64, !llfi_index !757
  %check_cmp7 = fcmp ueq float %65, %66
  %loadone8 = load i1* %AI
  %check_and9 = and i1 %check_cmp7, %loadone8
  %67 = load i32* %i, align 4, !llfi_index !758
  %68 = load i32* %i, align 4, !llfi_index !758
  %69 = load i32* %4, align 4, !llfi_index !759
  %70 = load i32* %4, align 4, !llfi_index !759
  %71 = mul nsw i32 %67, %69, !llfi_index !760
  %72 = mul nsw i32 %68, %70, !llfi_index !760
  %73 = load i32* %j, align 4, !llfi_index !761
  %74 = load i32* %j, align 4, !llfi_index !761
  %75 = add nsw i32 %71, %73, !llfi_index !762
  %76 = add nsw i32 %72, %74, !llfi_index !762
  %77 = sext i32 %75 to i64, !llfi_index !763
  %78 = sext i32 %76 to i64, !llfi_index !763
  %79 = load float** %3, align 8, !llfi_index !764
  %80 = load float** %3, align 8, !llfi_index !764
  %81 = getelementptr inbounds float* %79, i64 %77, !llfi_index !765
  %82 = getelementptr inbounds float* %80, i64 %78, !llfi_index !765
  %check_cmp10 = icmp eq float* %81, %82
  %check_and11 = and i1 %check_cmp10, %check_and9
  store i1 %check_and11, i1* %AI
  store float %65, float* %81, align 4, !llfi_index !766
  br label %83, !llfi_index !767

; <label>:83                                      ; preds = %28
  %84 = load i32* %j, align 4, !llfi_index !768
  %85 = load i32* %j, align 4, !llfi_index !768
  %86 = add nsw i32 %84, 1, !llfi_index !769
  %87 = add nsw i32 %85, 1, !llfi_index !769
  %check_cmp12 = icmp eq i32 %86, %87
  %loadone13 = load i1* %AI
  %check_and14 = and i1 %check_cmp12, %loadone13
  store i1 %check_and14, i1* %AI
  store i32 %86, i32* %j, align 4, !llfi_index !770
  br label %21, !llfi_index !771

; <label>:88                                      ; preds = %21
  br label %89, !llfi_index !772

; <label>:89                                      ; preds = %88
  %90 = load i32* %k, align 4, !llfi_index !773
  %91 = load i32* %k, align 4, !llfi_index !773
  %92 = add nsw i32 %90, 1, !llfi_index !774
  %93 = add nsw i32 %91, 1, !llfi_index !774
  %check_cmp15 = icmp eq i32 %92, %93
  %loadone16 = load i1* %AI
  %check_and17 = and i1 %check_cmp15, %loadone16
  store i1 %check_and17, i1* %AI
  store i32 %92, i32* %k, align 4, !llfi_index !775
  br label %13, !llfi_index !776

; <label>:94                                      ; preds = %13
  br label %95, !llfi_index !777

; <label>:95                                      ; preds = %94
  %96 = load i32* %i, align 4, !llfi_index !778
  %97 = load i32* %i, align 4, !llfi_index !778
  %98 = add nsw i32 %96, 1, !llfi_index !779
  %99 = add nsw i32 %97, 1, !llfi_index !779
  %check_cmp18 = icmp eq i32 %98, %99
  %loadone19 = load i1* %AI
  %check_and20 = and i1 %check_cmp18, %loadone19
  store i1 %check_and20, i1* %AI
  br i1 %check_and20, label %100, label %checkBb

checkBb:                                          ; preds = %95
  call void @check_flag()
  br label %100

; <label>:100                                     ; preds = %checkBb, %95
  store i32 %98, i32* %i, align 4, !llfi_index !780
  br label %5, !llfi_index !781

; <label>:101                                     ; preds = %5
  ret void, !llfi_index !782
}

; Function Attrs: nounwind uwtable
define i32 @lud_verify(float* %m, float* %lu, i32 %matrix_dim) #0 {
  %1 = alloca i32, align 4, !llfi_index !783
  %2 = alloca float*, align 8, !llfi_index !784
  %3 = alloca float*, align 8, !llfi_index !785
  %4 = alloca i32, align 4, !llfi_index !786
  %i = alloca i32, align 4, !llfi_index !787
  %j = alloca i32, align 4, !llfi_index !788
  %k = alloca i32, align 4, !llfi_index !789
  %tmp = alloca float*, align 8, !llfi_index !790
  %sum = alloca float, align 4, !llfi_index !791
  %l = alloca float, align 4, !llfi_index !792
  %u = alloca float, align 4, !llfi_index !793
  store float* %m, float** %2, align 8, !llfi_index !794
  store float* %lu, float** %3, align 8, !llfi_index !795
  store i32 %matrix_dim, i32* %4, align 4, !llfi_index !796
  %5 = load i32* %4, align 4, !llfi_index !797
  %6 = load i32* %4, align 4, !llfi_index !797
  %7 = load i32* %4, align 4, !llfi_index !798
  %8 = load i32* %4, align 4, !llfi_index !798
  %9 = mul nsw i32 %5, %7, !llfi_index !799
  %10 = mul nsw i32 %6, %8, !llfi_index !799
  %11 = sext i32 %9 to i64, !llfi_index !800
  %12 = sext i32 %10 to i64, !llfi_index !800
  %AI = alloca i1
  store i1 true, i1* %AI
  %13 = mul i64 %11, 4, !llfi_index !801
  %14 = mul i64 %12, 4, !llfi_index !801
  %check_cmp = icmp eq i64 %13, %14
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %15 = call noalias i8* @malloc(i64 %13) #5, !llfi_index !802
  %16 = bitcast i8* %15 to float*, !llfi_index !803
  %17 = bitcast i8* %15 to float*, !llfi_index !803
  %check_cmp1 = icmp eq float* %16, %17
  %check_and2 = and i1 %check_cmp1, %check_and
  store i1 %check_and2, i1* %AI
  store float* %16, float** %tmp, align 8, !llfi_index !804
  store i32 0, i32* %i, align 4, !llfi_index !805
  br label %18, !llfi_index !806

; <label>:18                                      ; preds = %139, %0
  %19 = load i32* %i, align 4, !llfi_index !807
  %20 = load i32* %i, align 4, !llfi_index !807
  %21 = load i32* %4, align 4, !llfi_index !808
  %22 = load i32* %4, align 4, !llfi_index !808
  %23 = icmp slt i32 %19, %21, !llfi_index !809
  %24 = icmp slt i32 %20, %22, !llfi_index !809
  %check_cmp3 = icmp eq i1 %23, %24
  %loadone4 = load i1* %AI
  %check_and5 = and i1 %check_cmp3, %loadone4
  store i1 %check_and5, i1* %AI
  br i1 %23, label %25, label %144, !llfi_index !810

; <label>:25                                      ; preds = %18
  store i32 0, i32* %j, align 4, !llfi_index !811
  br label %26, !llfi_index !812

; <label>:26                                      ; preds = %133, %25
  %27 = load i32* %j, align 4, !llfi_index !813
  %28 = load i32* %j, align 4, !llfi_index !813
  %29 = load i32* %4, align 4, !llfi_index !814
  %30 = load i32* %4, align 4, !llfi_index !814
  %31 = icmp slt i32 %27, %29, !llfi_index !815
  %32 = icmp slt i32 %28, %30, !llfi_index !815
  %check_cmp6 = icmp eq i1 %31, %32
  %loadone7 = load i1* %AI
  %check_and8 = and i1 %check_cmp6, %loadone7
  store i1 %check_and8, i1* %AI
  br i1 %31, label %33, label %138, !llfi_index !816

; <label>:33                                      ; preds = %26
  store float 0.000000e+00, float* %sum, align 4, !llfi_index !817
  store i32 0, i32* %k, align 4, !llfi_index !818
  br label %34, !llfi_index !819

; <label>:34                                      ; preds = %109, %33
  %35 = load i32* %k, align 4, !llfi_index !820
  %36 = load i32* %k, align 4, !llfi_index !820
  %37 = load i32* %i, align 4, !llfi_index !821
  %38 = load i32* %i, align 4, !llfi_index !821
  %39 = load i32* %j, align 4, !llfi_index !822
  %40 = load i32* %j, align 4, !llfi_index !822
  %41 = icmp slt i32 %37, %39, !llfi_index !823
  %42 = icmp slt i32 %38, %40, !llfi_index !823
  %check_cmp9 = icmp eq i1 %41, %42
  %loadone10 = load i1* %AI
  %check_and11 = and i1 %check_cmp9, %loadone10
  store i1 %check_and11, i1* %AI
  br i1 %41, label %43, label %46, !llfi_index !824

; <label>:43                                      ; preds = %34
  %44 = load i32* %i, align 4, !llfi_index !825
  %45 = load i32* %i, align 4, !llfi_index !825
  %check_cmp12 = icmp eq i32 %44, %45
  %loadone13 = load i1* %AI
  %check_and14 = and i1 %check_cmp12, %loadone13
  store i1 %check_and14, i1* %AI
  br label %49, !llfi_index !826

; <label>:46                                      ; preds = %34
  %47 = load i32* %j, align 4, !llfi_index !827
  %48 = load i32* %j, align 4, !llfi_index !827
  %check_cmp15 = icmp eq i32 %47, %48
  %loadone16 = load i1* %AI
  %check_and17 = and i1 %check_cmp15, %loadone16
  store i1 %check_and17, i1* %AI
  br label %49, !llfi_index !828

; <label>:49                                      ; preds = %46, %43
  %50 = phi i32 [ %44, %43 ], [ %47, %46 ], !llfi_index !829
  %51 = icmp sle i32 %35, %50, !llfi_index !830
  %52 = icmp sle i32 %36, %50, !llfi_index !830
  %check_cmp18 = icmp eq i1 %51, %52
  %loadone19 = load i1* %AI
  %check_and20 = and i1 %check_cmp18, %loadone19
  store i1 %check_and20, i1* %AI
  br i1 %51, label %53, label %114, !llfi_index !831

; <label>:53                                      ; preds = %49
  %54 = load i32* %i, align 4, !llfi_index !832
  %55 = load i32* %i, align 4, !llfi_index !832
  %56 = load i32* %k, align 4, !llfi_index !833
  %57 = load i32* %k, align 4, !llfi_index !833
  %58 = icmp eq i32 %54, %56, !llfi_index !834
  %59 = icmp eq i32 %55, %57, !llfi_index !834
  %check_cmp21 = icmp eq i1 %58, %59
  %loadone22 = load i1* %AI
  %check_and23 = and i1 %check_cmp21, %loadone22
  store i1 %check_and23, i1* %AI
  br i1 %58, label %60, label %61, !llfi_index !835

; <label>:60                                      ; preds = %53
  store float 1.000000e+00, float* %l, align 4, !llfi_index !836
  br label %80, !llfi_index !837

; <label>:61                                      ; preds = %53
  %62 = load i32* %i, align 4, !llfi_index !838
  %63 = load i32* %i, align 4, !llfi_index !838
  %64 = load i32* %4, align 4, !llfi_index !839
  %65 = load i32* %4, align 4, !llfi_index !839
  %66 = mul nsw i32 %62, %64, !llfi_index !840
  %67 = mul nsw i32 %63, %65, !llfi_index !840
  %68 = load i32* %k, align 4, !llfi_index !841
  %69 = load i32* %k, align 4, !llfi_index !841
  %70 = add nsw i32 %66, %68, !llfi_index !842
  %71 = add nsw i32 %67, %69, !llfi_index !842
  %72 = sext i32 %70 to i64, !llfi_index !843
  %73 = sext i32 %71 to i64, !llfi_index !843
  %74 = load float** %3, align 8, !llfi_index !844
  %75 = load float** %3, align 8, !llfi_index !844
  %76 = getelementptr inbounds float* %74, i64 %72, !llfi_index !845
  %77 = getelementptr inbounds float* %75, i64 %73, !llfi_index !845
  %78 = load float* %76, align 4, !llfi_index !846
  %79 = load float* %77, align 4, !llfi_index !846
  %check_cmp24 = fcmp ueq float %78, %79
  %loadone25 = load i1* %AI
  %check_and26 = and i1 %check_cmp24, %loadone25
  store i1 %check_and26, i1* %AI
  store float %78, float* %l, align 4, !llfi_index !847
  br label %80, !llfi_index !848

; <label>:80                                      ; preds = %61, %60
  %81 = load i32* %k, align 4, !llfi_index !849
  %82 = load i32* %k, align 4, !llfi_index !849
  %83 = load i32* %4, align 4, !llfi_index !850
  %84 = load i32* %4, align 4, !llfi_index !850
  %85 = mul nsw i32 %81, %83, !llfi_index !851
  %86 = mul nsw i32 %82, %84, !llfi_index !851
  %87 = load i32* %j, align 4, !llfi_index !852
  %88 = load i32* %j, align 4, !llfi_index !852
  %89 = add nsw i32 %85, %87, !llfi_index !853
  %90 = add nsw i32 %86, %88, !llfi_index !853
  %91 = sext i32 %89 to i64, !llfi_index !854
  %92 = sext i32 %90 to i64, !llfi_index !854
  %93 = load float** %3, align 8, !llfi_index !855
  %94 = load float** %3, align 8, !llfi_index !855
  %95 = getelementptr inbounds float* %93, i64 %91, !llfi_index !856
  %96 = getelementptr inbounds float* %94, i64 %92, !llfi_index !856
  %97 = load float* %95, align 4, !llfi_index !857
  %98 = load float* %96, align 4, !llfi_index !857
  %check_cmp27 = fcmp ueq float %97, %98
  %loadone28 = load i1* %AI
  %check_and29 = and i1 %check_cmp27, %loadone28
  store float %97, float* %u, align 4, !llfi_index !858
  %99 = load float* %l, align 4, !llfi_index !859
  %100 = load float* %l, align 4, !llfi_index !859
  %101 = load float* %u, align 4, !llfi_index !860
  %102 = load float* %u, align 4, !llfi_index !860
  %103 = fmul float %99, %101, !llfi_index !861
  %104 = fmul float %100, %102, !llfi_index !861
  %105 = load float* %sum, align 4, !llfi_index !862
  %106 = load float* %sum, align 4, !llfi_index !862
  %107 = fadd float %105, %103, !llfi_index !863
  %108 = fadd float %106, %104, !llfi_index !863
  %check_cmp30 = fcmp ueq float %107, %108
  %check_and31 = and i1 %check_cmp30, %check_and29
  store i1 %check_and31, i1* %AI
  store float %107, float* %sum, align 4, !llfi_index !864
  br label %109, !llfi_index !865

; <label>:109                                     ; preds = %80
  %110 = load i32* %k, align 4, !llfi_index !866
  %111 = load i32* %k, align 4, !llfi_index !866
  %112 = add nsw i32 %110, 1, !llfi_index !867
  %113 = add nsw i32 %111, 1, !llfi_index !867
  %check_cmp32 = icmp eq i32 %112, %113
  %loadone33 = load i1* %AI
  %check_and34 = and i1 %check_cmp32, %loadone33
  store i1 %check_and34, i1* %AI
  store i32 %112, i32* %k, align 4, !llfi_index !868
  br label %34, !llfi_index !869

; <label>:114                                     ; preds = %49
  %115 = load float* %sum, align 4, !llfi_index !870
  %116 = load float* %sum, align 4, !llfi_index !870
  %check_cmp35 = fcmp ueq float %115, %116
  %loadone36 = load i1* %AI
  %check_and37 = and i1 %check_cmp35, %loadone36
  %117 = load i32* %i, align 4, !llfi_index !871
  %118 = load i32* %i, align 4, !llfi_index !871
  %119 = load i32* %4, align 4, !llfi_index !872
  %120 = load i32* %4, align 4, !llfi_index !872
  %121 = mul nsw i32 %117, %119, !llfi_index !873
  %122 = mul nsw i32 %118, %120, !llfi_index !873
  %123 = load i32* %j, align 4, !llfi_index !874
  %124 = load i32* %j, align 4, !llfi_index !874
  %125 = add nsw i32 %121, %123, !llfi_index !875
  %126 = add nsw i32 %122, %124, !llfi_index !875
  %127 = sext i32 %125 to i64, !llfi_index !876
  %128 = sext i32 %126 to i64, !llfi_index !876
  %129 = load float** %tmp, align 8, !llfi_index !877
  %130 = load float** %tmp, align 8, !llfi_index !877
  %131 = getelementptr inbounds float* %129, i64 %127, !llfi_index !878
  %132 = getelementptr inbounds float* %130, i64 %128, !llfi_index !878
  %check_cmp38 = icmp eq float* %131, %132
  %check_and39 = and i1 %check_cmp38, %check_and37
  store i1 %check_and39, i1* %AI
  store float %115, float* %131, align 4, !llfi_index !879
  br label %133, !llfi_index !880

; <label>:133                                     ; preds = %114
  %134 = load i32* %j, align 4, !llfi_index !881
  %135 = load i32* %j, align 4, !llfi_index !881
  %136 = add nsw i32 %134, 1, !llfi_index !882
  %137 = add nsw i32 %135, 1, !llfi_index !882
  %check_cmp40 = icmp eq i32 %136, %137
  %loadone41 = load i1* %AI
  %check_and42 = and i1 %check_cmp40, %loadone41
  store i1 %check_and42, i1* %AI
  store i32 %136, i32* %j, align 4, !llfi_index !883
  br label %26, !llfi_index !884

; <label>:138                                     ; preds = %26
  br label %139, !llfi_index !885

; <label>:139                                     ; preds = %138
  %140 = load i32* %i, align 4, !llfi_index !886
  %141 = load i32* %i, align 4, !llfi_index !886
  %142 = add nsw i32 %140, 1, !llfi_index !887
  %143 = add nsw i32 %141, 1, !llfi_index !887
  %check_cmp43 = icmp eq i32 %142, %143
  %loadone44 = load i1* %AI
  %check_and45 = and i1 %check_cmp43, %loadone44
  store i1 %check_and45, i1* %AI
  store i32 %142, i32* %i, align 4, !llfi_index !888
  br label %18, !llfi_index !889

; <label>:144                                     ; preds = %18
  store i32 0, i32* %i, align 4, !llfi_index !890
  br label %145, !llfi_index !891

; <label>:145                                     ; preds = %257, %144
  %146 = load i32* %i, align 4, !llfi_index !892
  %147 = load i32* %i, align 4, !llfi_index !892
  %148 = load i32* %4, align 4, !llfi_index !893
  %149 = load i32* %4, align 4, !llfi_index !893
  %150 = icmp slt i32 %146, %148, !llfi_index !894
  %151 = icmp slt i32 %147, %149, !llfi_index !894
  %check_cmp46 = icmp eq i1 %150, %151
  %loadone47 = load i1* %AI
  %check_and48 = and i1 %check_cmp46, %loadone47
  store i1 %check_and48, i1* %AI
  br i1 %150, label %152, label %262, !llfi_index !895

; <label>:152                                     ; preds = %145
  store i32 0, i32* %j, align 4, !llfi_index !896
  br label %153, !llfi_index !897

; <label>:153                                     ; preds = %251, %152
  %154 = load i32* %j, align 4, !llfi_index !898
  %155 = load i32* %j, align 4, !llfi_index !898
  %156 = load i32* %4, align 4, !llfi_index !899
  %157 = load i32* %4, align 4, !llfi_index !899
  %158 = icmp slt i32 %154, %156, !llfi_index !900
  %159 = icmp slt i32 %155, %157, !llfi_index !900
  %check_cmp49 = icmp eq i1 %158, %159
  %loadone50 = load i1* %AI
  %check_and51 = and i1 %check_cmp49, %loadone50
  store i1 %check_and51, i1* %AI
  br i1 %158, label %160, label %256, !llfi_index !901

; <label>:160                                     ; preds = %153
  %161 = load i32* %i, align 4, !llfi_index !902
  %162 = load i32* %i, align 4, !llfi_index !902
  %163 = load i32* %4, align 4, !llfi_index !903
  %164 = load i32* %4, align 4, !llfi_index !903
  %165 = mul nsw i32 %161, %163, !llfi_index !904
  %166 = mul nsw i32 %162, %164, !llfi_index !904
  %167 = load i32* %j, align 4, !llfi_index !905
  %168 = load i32* %j, align 4, !llfi_index !905
  %169 = add nsw i32 %165, %167, !llfi_index !906
  %170 = add nsw i32 %166, %168, !llfi_index !906
  %171 = sext i32 %169 to i64, !llfi_index !907
  %172 = sext i32 %170 to i64, !llfi_index !907
  %173 = load float** %2, align 8, !llfi_index !908
  %174 = load float** %2, align 8, !llfi_index !908
  %175 = getelementptr inbounds float* %173, i64 %171, !llfi_index !909
  %176 = getelementptr inbounds float* %174, i64 %172, !llfi_index !909
  %177 = load float* %175, align 4, !llfi_index !910
  %178 = load float* %176, align 4, !llfi_index !910
  %179 = load i32* %i, align 4, !llfi_index !911
  %180 = load i32* %i, align 4, !llfi_index !911
  %181 = load i32* %4, align 4, !llfi_index !912
  %182 = load i32* %4, align 4, !llfi_index !912
  %183 = mul nsw i32 %179, %181, !llfi_index !913
  %184 = mul nsw i32 %180, %182, !llfi_index !913
  %185 = load i32* %j, align 4, !llfi_index !914
  %186 = load i32* %j, align 4, !llfi_index !914
  %187 = add nsw i32 %183, %185, !llfi_index !915
  %188 = add nsw i32 %184, %186, !llfi_index !915
  %189 = sext i32 %187 to i64, !llfi_index !916
  %190 = sext i32 %188 to i64, !llfi_index !916
  %191 = load float** %tmp, align 8, !llfi_index !917
  %192 = load float** %tmp, align 8, !llfi_index !917
  %193 = getelementptr inbounds float* %191, i64 %189, !llfi_index !918
  %194 = getelementptr inbounds float* %192, i64 %190, !llfi_index !918
  %195 = load float* %193, align 4, !llfi_index !919
  %196 = load float* %194, align 4, !llfi_index !919
  %197 = fsub float %177, %195, !llfi_index !920
  %198 = fsub float %178, %196, !llfi_index !920
  %199 = fpext float %197 to double, !llfi_index !921
  %200 = fpext float %198 to double, !llfi_index !921
  %check_cmp52 = fcmp ueq double %199, %200
  %loadone53 = load i1* %AI
  %check_and54 = and i1 %check_cmp52, %loadone53
  %201 = call double @fabs(double %199) #9, !llfi_index !922
  %202 = fcmp ogt double %201, 1.000000e-04, !llfi_index !923
  %203 = fcmp ogt double %201, 1.000000e-04, !llfi_index !923
  %check_cmp55 = icmp eq i1 %202, %203
  %check_and56 = and i1 %check_cmp55, %check_and54
  store i1 %check_and56, i1* %AI
  br i1 %202, label %204, label %250, !llfi_index !924

; <label>:204                                     ; preds = %160
  %205 = load i32* %i, align 4, !llfi_index !925
  %206 = load i32* %i, align 4, !llfi_index !925
  %check_cmp57 = icmp eq i32 %205, %206
  %loadone58 = load i1* %AI
  %check_and59 = and i1 %check_cmp57, %loadone58
  %207 = load i32* %j, align 4, !llfi_index !926
  %208 = load i32* %j, align 4, !llfi_index !926
  %check_cmp60 = icmp eq i32 %207, %208
  %check_and61 = and i1 %check_cmp60, %check_and59
  %209 = load i32* %i, align 4, !llfi_index !927
  %210 = load i32* %i, align 4, !llfi_index !927
  %211 = load i32* %4, align 4, !llfi_index !928
  %212 = load i32* %4, align 4, !llfi_index !928
  %213 = mul nsw i32 %209, %211, !llfi_index !929
  %214 = mul nsw i32 %210, %212, !llfi_index !929
  %215 = load i32* %j, align 4, !llfi_index !930
  %216 = load i32* %j, align 4, !llfi_index !930
  %217 = add nsw i32 %213, %215, !llfi_index !931
  %218 = add nsw i32 %214, %216, !llfi_index !931
  %219 = sext i32 %217 to i64, !llfi_index !932
  %220 = sext i32 %218 to i64, !llfi_index !932
  %221 = load float** %2, align 8, !llfi_index !933
  %222 = load float** %2, align 8, !llfi_index !933
  %223 = getelementptr inbounds float* %221, i64 %219, !llfi_index !934
  %224 = getelementptr inbounds float* %222, i64 %220, !llfi_index !934
  %225 = load float* %223, align 4, !llfi_index !935
  %226 = load float* %224, align 4, !llfi_index !935
  %227 = fpext float %225 to double, !llfi_index !936
  %228 = fpext float %226 to double, !llfi_index !936
  %check_cmp62 = fcmp ueq double %227, %228
  %check_and63 = and i1 %check_cmp62, %check_and61
  %229 = load i32* %i, align 4, !llfi_index !937
  %230 = load i32* %i, align 4, !llfi_index !937
  %231 = load i32* %4, align 4, !llfi_index !938
  %232 = load i32* %4, align 4, !llfi_index !938
  %233 = mul nsw i32 %229, %231, !llfi_index !939
  %234 = mul nsw i32 %230, %232, !llfi_index !939
  %235 = load i32* %j, align 4, !llfi_index !940
  %236 = load i32* %j, align 4, !llfi_index !940
  %237 = add nsw i32 %233, %235, !llfi_index !941
  %238 = add nsw i32 %234, %236, !llfi_index !941
  %239 = sext i32 %237 to i64, !llfi_index !942
  %240 = sext i32 %238 to i64, !llfi_index !942
  %241 = load float** %tmp, align 8, !llfi_index !943
  %242 = load float** %tmp, align 8, !llfi_index !943
  %243 = getelementptr inbounds float* %241, i64 %239, !llfi_index !944
  %244 = getelementptr inbounds float* %242, i64 %240, !llfi_index !944
  %245 = load float* %243, align 4, !llfi_index !945
  %246 = load float* %244, align 4, !llfi_index !945
  %247 = fpext float %245 to double, !llfi_index !946
  %248 = fpext float %246 to double, !llfi_index !946
  %check_cmp64 = fcmp ueq double %247, %248
  %check_and65 = and i1 %check_cmp64, %check_and63
  store i1 %check_and65, i1* %AI
  %249 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str314, i32 0, i32 0), i32 %205, i32 %207, double %227, double %247), !llfi_index !947
  br label %250, !llfi_index !948

; <label>:250                                     ; preds = %204, %160
  br label %251, !llfi_index !949

; <label>:251                                     ; preds = %250
  %252 = load i32* %j, align 4, !llfi_index !950
  %253 = load i32* %j, align 4, !llfi_index !950
  %254 = add nsw i32 %252, 1, !llfi_index !951
  %255 = add nsw i32 %253, 1, !llfi_index !951
  %check_cmp66 = icmp eq i32 %254, %255
  %loadone67 = load i1* %AI
  %check_and68 = and i1 %check_cmp66, %loadone67
  store i1 %check_and68, i1* %AI
  store i32 %254, i32* %j, align 4, !llfi_index !952
  br label %153, !llfi_index !953

; <label>:256                                     ; preds = %153
  br label %257, !llfi_index !954

; <label>:257                                     ; preds = %256
  %258 = load i32* %i, align 4, !llfi_index !955
  %259 = load i32* %i, align 4, !llfi_index !955
  %260 = add nsw i32 %258, 1, !llfi_index !956
  %261 = add nsw i32 %259, 1, !llfi_index !956
  %check_cmp69 = icmp eq i32 %260, %261
  %loadone70 = load i1* %AI
  %check_and71 = and i1 %check_cmp69, %loadone70
  store i1 %check_and71, i1* %AI
  store i32 %260, i32* %i, align 4, !llfi_index !957
  br label %145, !llfi_index !958

; <label>:262                                     ; preds = %145
  %263 = load float** %tmp, align 8, !llfi_index !959
  %264 = load float** %tmp, align 8, !llfi_index !959
  %265 = bitcast float* %263 to i8*, !llfi_index !960
  %266 = bitcast float* %264 to i8*, !llfi_index !960
  %check_cmp72 = icmp eq i8* %265, %266
  %loadone73 = load i1* %AI
  %check_and74 = and i1 %check_cmp72, %loadone73
  call void @free(i8* %265) #5, !llfi_index !961
  %267 = load i32* %1, !llfi_index !962
  %268 = load i32* %1, !llfi_index !962
  %check_cmp75 = icmp eq i32 %267, %268
  %check_and76 = and i1 %check_cmp75, %check_and74
  store i1 %check_and76, i1* %AI
  br i1 %check_and76, label %269, label %checkBb

checkBb:                                          ; preds = %262
  call void @check_flag()
  br label %269

; <label>:269                                     ; preds = %checkBb, %262
  ret i32 %267, !llfi_index !963
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: nounwind uwtable
define void @matrix_duplicate(float* %src, float** %dst, i32 %matrix_dim) #0 {
  %1 = alloca float*, align 8, !llfi_index !964
  %2 = alloca float**, align 8, !llfi_index !965
  %3 = alloca i32, align 4, !llfi_index !966
  %s = alloca i32, align 4, !llfi_index !967
  %p = alloca float*, align 8, !llfi_index !968
  store float* %src, float** %1, align 8, !llfi_index !969
  store float** %dst, float*** %2, align 8, !llfi_index !970
  store i32 %matrix_dim, i32* %3, align 4, !llfi_index !971
  %4 = load i32* %3, align 4, !llfi_index !972
  %5 = load i32* %3, align 4, !llfi_index !972
  %6 = load i32* %3, align 4, !llfi_index !973
  %7 = load i32* %3, align 4, !llfi_index !973
  %8 = mul nsw i32 %4, %6, !llfi_index !974
  %9 = mul nsw i32 %5, %7, !llfi_index !974
  %10 = sext i32 %8 to i64, !llfi_index !975
  %11 = sext i32 %9 to i64, !llfi_index !975
  %12 = mul i64 %10, 4, !llfi_index !976
  %13 = mul i64 %11, 4, !llfi_index !976
  %AI = alloca i1
  store i1 true, i1* %AI
  %14 = trunc i64 %12 to i32, !llfi_index !977
  %15 = trunc i64 %13 to i32, !llfi_index !977
  %check_cmp = icmp eq i32 %14, %15
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i32 %14, i32* %s, align 4, !llfi_index !978
  %16 = load i32* %s, align 4, !llfi_index !979
  %17 = load i32* %s, align 4, !llfi_index !979
  %18 = sext i32 %16 to i64, !llfi_index !980
  %19 = sext i32 %17 to i64, !llfi_index !980
  %check_cmp1 = icmp eq i64 %18, %19
  %check_and2 = and i1 %check_cmp1, %check_and
  %20 = call noalias i8* @malloc(i64 %18) #5, !llfi_index !981
  %21 = bitcast i8* %20 to float*, !llfi_index !982
  %22 = bitcast i8* %20 to float*, !llfi_index !982
  %check_cmp3 = icmp eq float* %21, %22
  %check_and4 = and i1 %check_cmp3, %check_and2
  store float* %21, float** %p, align 8, !llfi_index !983
  %23 = load float** %p, align 8, !llfi_index !984
  %24 = load float** %p, align 8, !llfi_index !984
  %25 = bitcast float* %23 to i8*, !llfi_index !985
  %26 = bitcast float* %24 to i8*, !llfi_index !985
  %check_cmp5 = icmp eq i8* %25, %26
  %check_and6 = and i1 %check_cmp5, %check_and4
  %27 = load float** %1, align 8, !llfi_index !986
  %28 = load float** %1, align 8, !llfi_index !986
  %29 = bitcast float* %27 to i8*, !llfi_index !987
  %30 = bitcast float* %28 to i8*, !llfi_index !987
  %check_cmp7 = icmp eq i8* %29, %30
  %check_and8 = and i1 %check_cmp7, %check_and6
  %31 = load i32* %s, align 4, !llfi_index !988
  %32 = load i32* %s, align 4, !llfi_index !988
  %33 = sext i32 %31 to i64, !llfi_index !989
  %34 = sext i32 %32 to i64, !llfi_index !989
  %check_cmp9 = icmp eq i64 %33, %34
  %check_and10 = and i1 %check_cmp9, %check_and8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %29, i64 %33, i32 4, i1 false), !llfi_index !990
  %35 = load float** %p, align 8, !llfi_index !991
  %36 = load float** %p, align 8, !llfi_index !991
  %check_cmp11 = icmp eq float* %35, %36
  %check_and12 = and i1 %check_cmp11, %check_and10
  %37 = load float*** %2, align 8, !llfi_index !992
  %38 = load float*** %2, align 8, !llfi_index !992
  %check_cmp13 = icmp eq float** %37, %38
  %check_and14 = and i1 %check_cmp13, %check_and12
  store i1 %check_and14, i1* %AI
  br i1 %check_and14, label %39, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %39

; <label>:39                                      ; preds = %checkBb, %0
  store float* %35, float** %37, align 8, !llfi_index !993
  ret void, !llfi_index !994
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @print_matrix(float* %m, i32 %matrix_dim) #0 {
  %1 = alloca float*, align 8, !llfi_index !995
  %2 = alloca i32, align 4, !llfi_index !996
  %i = alloca i32, align 4, !llfi_index !997
  %j = alloca i32, align 4, !llfi_index !998
  store float* %m, float** %1, align 8, !llfi_index !999
  store i32 %matrix_dim, i32* %2, align 4, !llfi_index !1000
  store i32 0, i32* %i, align 4, !llfi_index !1001
  br label %3, !llfi_index !1002

; <label>:3                                       ; preds = %52, %0
  %4 = load i32* %i, align 4, !llfi_index !1003
  %5 = load i32* %i, align 4, !llfi_index !1003
  %6 = load i32* %2, align 4, !llfi_index !1004
  %7 = load i32* %2, align 4, !llfi_index !1004
  %AI = alloca i1
  store i1 true, i1* %AI
  %8 = icmp slt i32 %4, %6, !llfi_index !1005
  %9 = icmp slt i32 %5, %7, !llfi_index !1005
  %check_cmp = icmp eq i1 %8, %9
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %8, label %10, label %53, !llfi_index !1006

; <label>:10                                      ; preds = %3
  store i32 0, i32* %j, align 4, !llfi_index !1007
  br label %11, !llfi_index !1008

; <label>:11                                      ; preds = %40, %10
  %12 = load i32* %j, align 4, !llfi_index !1009
  %13 = load i32* %j, align 4, !llfi_index !1009
  %14 = load i32* %2, align 4, !llfi_index !1010
  %15 = load i32* %2, align 4, !llfi_index !1010
  %16 = icmp slt i32 %12, %14, !llfi_index !1011
  %17 = icmp slt i32 %13, %15, !llfi_index !1011
  %check_cmp1 = icmp eq i1 %16, %17
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  br i1 %16, label %18, label %45, !llfi_index !1012

; <label>:18                                      ; preds = %11
  %19 = load i32* %i, align 4, !llfi_index !1013
  %20 = load i32* %i, align 4, !llfi_index !1013
  %21 = load i32* %2, align 4, !llfi_index !1014
  %22 = load i32* %2, align 4, !llfi_index !1014
  %23 = mul nsw i32 %19, %21, !llfi_index !1015
  %24 = mul nsw i32 %20, %22, !llfi_index !1015
  %25 = load i32* %j, align 4, !llfi_index !1016
  %26 = load i32* %j, align 4, !llfi_index !1016
  %27 = add nsw i32 %23, %25, !llfi_index !1017
  %28 = add nsw i32 %24, %26, !llfi_index !1017
  %29 = sext i32 %27 to i64, !llfi_index !1018
  %30 = sext i32 %28 to i64, !llfi_index !1018
  %31 = load float** %1, align 8, !llfi_index !1019
  %32 = load float** %1, align 8, !llfi_index !1019
  %33 = getelementptr inbounds float* %31, i64 %29, !llfi_index !1020
  %34 = getelementptr inbounds float* %32, i64 %30, !llfi_index !1020
  %35 = load float* %33, align 4, !llfi_index !1021
  %36 = load float* %34, align 4, !llfi_index !1021
  %37 = fpext float %35 to double, !llfi_index !1022
  %38 = fpext float %36 to double, !llfi_index !1022
  %check_cmp4 = fcmp ueq double %37, %38
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  store i1 %check_and6, i1* %AI
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str213, i32 0, i32 0), double %37), !llfi_index !1023
  br label %40, !llfi_index !1024

; <label>:40                                      ; preds = %18
  %41 = load i32* %j, align 4, !llfi_index !1025
  %42 = load i32* %j, align 4, !llfi_index !1025
  %43 = add nsw i32 %41, 1, !llfi_index !1026
  %44 = add nsw i32 %42, 1, !llfi_index !1026
  %check_cmp7 = icmp eq i32 %43, %44
  %loadone8 = load i1* %AI
  %check_and9 = and i1 %check_cmp7, %loadone8
  store i1 %check_and9, i1* %AI
  store i32 %43, i32* %j, align 4, !llfi_index !1027
  br label %11, !llfi_index !1028

; <label>:45                                      ; preds = %11
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str415, i32 0, i32 0)), !llfi_index !1029
  br label %47, !llfi_index !1030

; <label>:47                                      ; preds = %45
  %48 = load i32* %i, align 4, !llfi_index !1031
  %49 = load i32* %i, align 4, !llfi_index !1031
  %50 = add nsw i32 %48, 1, !llfi_index !1032
  %51 = add nsw i32 %49, 1, !llfi_index !1032
  %check_cmp10 = icmp eq i32 %50, %51
  %loadone11 = load i1* %AI
  %check_and12 = and i1 %check_cmp10, %loadone11
  store i1 %check_and12, i1* %AI
  br i1 %check_and12, label %52, label %checkBb

checkBb:                                          ; preds = %47
  call void @check_flag()
  br label %52

; <label>:52                                      ; preds = %checkBb, %47
  store i32 %50, i32* %i, align 4, !llfi_index !1033
  br label %3, !llfi_index !1034

; <label>:53                                      ; preds = %3
  ret void, !llfi_index !1035
}

; Function Attrs: nounwind uwtable
define i32 @create_matrix(float** %mp, i32 %size) #0 {
  %1 = alloca i32, align 4, !llfi_index !1036
  %2 = alloca float**, align 8, !llfi_index !1037
  %3 = alloca i32, align 4, !llfi_index !1038
  %m = alloca float*, align 8, !llfi_index !1039
  %i = alloca i32, align 4, !llfi_index !1040
  %j = alloca i32, align 4, !llfi_index !1041
  %lamda = alloca float, align 4, !llfi_index !1042
  %4 = alloca i8*, !llfi_index !1043
  %coe_i = alloca float, align 4, !llfi_index !1044
  %5 = alloca i32, !llfi_index !1045
  store float** %mp, float*** %2, align 8, !llfi_index !1046
  store i32 %size, i32* %3, align 4, !llfi_index !1047
  store float 0xBF50624DE0000000, float* %lamda, align 4, !llfi_index !1048
  %6 = load i32* %3, align 4, !llfi_index !1049
  %7 = load i32* %3, align 4, !llfi_index !1049
  %8 = mul nsw i32 2, %6, !llfi_index !1050
  %9 = mul nsw i32 2, %7, !llfi_index !1050
  %10 = sub nsw i32 %8, 1, !llfi_index !1051
  %11 = sub nsw i32 %9, 1, !llfi_index !1051
  %AI = alloca i1
  store i1 true, i1* %AI
  %12 = zext i32 %10 to i64, !llfi_index !1052
  %13 = zext i32 %11 to i64, !llfi_index !1052
  %check_cmp = icmp eq i64 %12, %13
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  %14 = call i8* @llvm.stacksave(), !llfi_index !1053
  store i8* %14, i8** %4, !llfi_index !1054
  %15 = alloca float, i64 %12, align 16, !llfi_index !1055
  store float 0.000000e+00, float* %coe_i, align 4, !llfi_index !1056
  store i32 0, i32* %i, align 4, !llfi_index !1057
  br label %16, !llfi_index !1058

; <label>:16                                      ; preds = %71, %0
  %17 = load i32* %i, align 4, !llfi_index !1059
  %18 = load i32* %i, align 4, !llfi_index !1059
  %19 = load i32* %3, align 4, !llfi_index !1060
  %20 = load i32* %3, align 4, !llfi_index !1060
  %21 = icmp slt i32 %17, %19, !llfi_index !1061
  %22 = icmp slt i32 %18, %20, !llfi_index !1061
  %check_cmp1 = icmp eq i1 %21, %22
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  store i1 %check_and3, i1* %AI
  br i1 %21, label %23, label %76, !llfi_index !1062

; <label>:23                                      ; preds = %16
  %24 = load float* %lamda, align 4, !llfi_index !1063
  %25 = load float* %lamda, align 4, !llfi_index !1063
  %26 = load i32* %i, align 4, !llfi_index !1064
  %27 = load i32* %i, align 4, !llfi_index !1064
  %28 = sitofp i32 %26 to float, !llfi_index !1065
  %29 = sitofp i32 %27 to float, !llfi_index !1065
  %30 = fmul float %24, %28, !llfi_index !1066
  %31 = fmul float %25, %29, !llfi_index !1066
  %32 = fpext float %30 to double, !llfi_index !1067
  %33 = fpext float %31 to double, !llfi_index !1067
  %check_cmp4 = fcmp ueq double %32, %33
  %loadone5 = load i1* %AI
  %check_and6 = and i1 %check_cmp4, %loadone5
  %34 = call double @exp(double %32) #5, !llfi_index !1068
  %35 = fmul double 1.000000e+01, %34, !llfi_index !1069
  %36 = fmul double 1.000000e+01, %34, !llfi_index !1069
  %37 = fptrunc double %35 to float, !llfi_index !1070
  %38 = fptrunc double %36 to float, !llfi_index !1070
  %check_cmp7 = fcmp ueq float %37, %38
  %check_and8 = and i1 %check_cmp7, %check_and6
  store float %37, float* %coe_i, align 4, !llfi_index !1071
  %39 = load i32* %3, align 4, !llfi_index !1072
  %40 = load i32* %3, align 4, !llfi_index !1072
  %41 = sub nsw i32 %39, 1, !llfi_index !1073
  %42 = sub nsw i32 %40, 1, !llfi_index !1073
  %43 = load i32* %i, align 4, !llfi_index !1074
  %44 = load i32* %i, align 4, !llfi_index !1074
  %45 = add nsw i32 %41, %43, !llfi_index !1075
  %46 = add nsw i32 %42, %44, !llfi_index !1075
  %check_cmp9 = icmp eq i32 %45, %46
  %check_and10 = and i1 %check_cmp9, %check_and8
  store i32 %45, i32* %j, align 4, !llfi_index !1076
  %47 = load float* %coe_i, align 4, !llfi_index !1077
  %48 = load float* %coe_i, align 4, !llfi_index !1077
  %check_cmp11 = fcmp ueq float %47, %48
  %check_and12 = and i1 %check_cmp11, %check_and10
  %49 = load i32* %j, align 4, !llfi_index !1078
  %50 = load i32* %j, align 4, !llfi_index !1078
  %51 = sext i32 %49 to i64, !llfi_index !1079
  %52 = sext i32 %50 to i64, !llfi_index !1079
  %53 = getelementptr inbounds float* %15, i64 %51, !llfi_index !1080
  %54 = getelementptr inbounds float* %15, i64 %52, !llfi_index !1080
  %check_cmp13 = icmp eq float* %53, %54
  %check_and14 = and i1 %check_cmp13, %check_and12
  store float %47, float* %53, align 4, !llfi_index !1081
  %55 = load i32* %3, align 4, !llfi_index !1082
  %56 = load i32* %3, align 4, !llfi_index !1082
  %57 = sub nsw i32 %55, 1, !llfi_index !1083
  %58 = sub nsw i32 %56, 1, !llfi_index !1083
  %59 = load i32* %i, align 4, !llfi_index !1084
  %60 = load i32* %i, align 4, !llfi_index !1084
  %61 = sub nsw i32 %57, %59, !llfi_index !1085
  %62 = sub nsw i32 %58, %60, !llfi_index !1085
  %check_cmp15 = icmp eq i32 %61, %62
  %check_and16 = and i1 %check_cmp15, %check_and14
  store i32 %61, i32* %j, align 4, !llfi_index !1086
  %63 = load float* %coe_i, align 4, !llfi_index !1087
  %64 = load float* %coe_i, align 4, !llfi_index !1087
  %check_cmp17 = fcmp ueq float %63, %64
  %check_and18 = and i1 %check_cmp17, %check_and16
  %65 = load i32* %j, align 4, !llfi_index !1088
  %66 = load i32* %j, align 4, !llfi_index !1088
  %67 = sext i32 %65 to i64, !llfi_index !1089
  %68 = sext i32 %66 to i64, !llfi_index !1089
  %69 = getelementptr inbounds float* %15, i64 %67, !llfi_index !1090
  %70 = getelementptr inbounds float* %15, i64 %68, !llfi_index !1090
  %check_cmp19 = icmp eq float* %69, %70
  %check_and20 = and i1 %check_cmp19, %check_and18
  store i1 %check_and20, i1* %AI
  store float %63, float* %69, align 4, !llfi_index !1091
  br label %71, !llfi_index !1092

; <label>:71                                      ; preds = %23
  %72 = load i32* %i, align 4, !llfi_index !1093
  %73 = load i32* %i, align 4, !llfi_index !1093
  %74 = add nsw i32 %72, 1, !llfi_index !1094
  %75 = add nsw i32 %73, 1, !llfi_index !1094
  %check_cmp21 = icmp eq i32 %74, %75
  %loadone22 = load i1* %AI
  %check_and23 = and i1 %check_cmp21, %loadone22
  store i1 %check_and23, i1* %AI
  store i32 %74, i32* %i, align 4, !llfi_index !1095
  br label %16, !llfi_index !1096

; <label>:76                                      ; preds = %16
  %77 = load i32* %3, align 4, !llfi_index !1097
  %78 = load i32* %3, align 4, !llfi_index !1097
  %79 = sext i32 %77 to i64, !llfi_index !1098
  %80 = sext i32 %78 to i64, !llfi_index !1098
  %81 = mul i64 4, %79, !llfi_index !1099
  %82 = mul i64 4, %80, !llfi_index !1099
  %83 = load i32* %3, align 4, !llfi_index !1100
  %84 = load i32* %3, align 4, !llfi_index !1100
  %85 = sext i32 %83 to i64, !llfi_index !1101
  %86 = sext i32 %84 to i64, !llfi_index !1101
  %87 = mul i64 %81, %85, !llfi_index !1102
  %88 = mul i64 %82, %86, !llfi_index !1102
  %check_cmp24 = icmp eq i64 %87, %88
  %loadone25 = load i1* %AI
  %check_and26 = and i1 %check_cmp24, %loadone25
  %89 = call noalias i8* @malloc(i64 %87) #5, !llfi_index !1103
  %90 = bitcast i8* %89 to float*, !llfi_index !1104
  %91 = bitcast i8* %89 to float*, !llfi_index !1104
  %check_cmp27 = icmp eq float* %90, %91
  %check_and28 = and i1 %check_cmp27, %check_and26
  store float* %90, float** %m, align 8, !llfi_index !1105
  %92 = load float** %m, align 8, !llfi_index !1106
  %93 = load float** %m, align 8, !llfi_index !1106
  %94 = icmp eq float* %92, null, !llfi_index !1107
  %95 = icmp eq float* %93, null, !llfi_index !1107
  %check_cmp29 = icmp eq i1 %94, %95
  %check_and30 = and i1 %check_cmp29, %check_and28
  store i1 %check_and30, i1* %AI
  br i1 %94, label %96, label %97, !llfi_index !1108

; <label>:96                                      ; preds = %76
  store i32 1, i32* %1, !llfi_index !1109
  store i32 1, i32* %5, !llfi_index !1110
  br label %164, !llfi_index !1111

; <label>:97                                      ; preds = %76
  store i32 0, i32* %i, align 4, !llfi_index !1112
  br label %98, !llfi_index !1113

; <label>:98                                      ; preds = %154, %97
  %99 = load i32* %i, align 4, !llfi_index !1114
  %100 = load i32* %i, align 4, !llfi_index !1114
  %101 = load i32* %3, align 4, !llfi_index !1115
  %102 = load i32* %3, align 4, !llfi_index !1115
  %103 = icmp slt i32 %99, %101, !llfi_index !1116
  %104 = icmp slt i32 %100, %102, !llfi_index !1116
  %check_cmp31 = icmp eq i1 %103, %104
  %loadone32 = load i1* %AI
  %check_and33 = and i1 %check_cmp31, %loadone32
  store i1 %check_and33, i1* %AI
  br i1 %103, label %105, label %159, !llfi_index !1117

; <label>:105                                     ; preds = %98
  store i32 0, i32* %j, align 4, !llfi_index !1118
  br label %106, !llfi_index !1119

; <label>:106                                     ; preds = %148, %105
  %107 = load i32* %j, align 4, !llfi_index !1120
  %108 = load i32* %j, align 4, !llfi_index !1120
  %109 = load i32* %3, align 4, !llfi_index !1121
  %110 = load i32* %3, align 4, !llfi_index !1121
  %111 = icmp slt i32 %107, %109, !llfi_index !1122
  %112 = icmp slt i32 %108, %110, !llfi_index !1122
  %check_cmp34 = icmp eq i1 %111, %112
  %loadone35 = load i1* %AI
  %check_and36 = and i1 %check_cmp34, %loadone35
  store i1 %check_and36, i1* %AI
  br i1 %111, label %113, label %153, !llfi_index !1123

; <label>:113                                     ; preds = %106
  %114 = load i32* %3, align 4, !llfi_index !1124
  %115 = load i32* %3, align 4, !llfi_index !1124
  %116 = sub nsw i32 %114, 1, !llfi_index !1125
  %117 = sub nsw i32 %115, 1, !llfi_index !1125
  %118 = load i32* %i, align 4, !llfi_index !1126
  %119 = load i32* %i, align 4, !llfi_index !1126
  %120 = sub nsw i32 %116, %118, !llfi_index !1127
  %121 = sub nsw i32 %117, %119, !llfi_index !1127
  %122 = load i32* %j, align 4, !llfi_index !1128
  %123 = load i32* %j, align 4, !llfi_index !1128
  %124 = add nsw i32 %120, %122, !llfi_index !1129
  %125 = add nsw i32 %121, %123, !llfi_index !1129
  %126 = sext i32 %124 to i64, !llfi_index !1130
  %127 = sext i32 %125 to i64, !llfi_index !1130
  %128 = getelementptr inbounds float* %15, i64 %126, !llfi_index !1131
  %129 = getelementptr inbounds float* %15, i64 %127, !llfi_index !1131
  %130 = load float* %128, align 4, !llfi_index !1132
  %131 = load float* %129, align 4, !llfi_index !1132
  %check_cmp37 = fcmp ueq float %130, %131
  %loadone38 = load i1* %AI
  %check_and39 = and i1 %check_cmp37, %loadone38
  %132 = load i32* %i, align 4, !llfi_index !1133
  %133 = load i32* %i, align 4, !llfi_index !1133
  %134 = load i32* %3, align 4, !llfi_index !1134
  %135 = load i32* %3, align 4, !llfi_index !1134
  %136 = mul nsw i32 %132, %134, !llfi_index !1135
  %137 = mul nsw i32 %133, %135, !llfi_index !1135
  %138 = load i32* %j, align 4, !llfi_index !1136
  %139 = load i32* %j, align 4, !llfi_index !1136
  %140 = add nsw i32 %136, %138, !llfi_index !1137
  %141 = add nsw i32 %137, %139, !llfi_index !1137
  %142 = sext i32 %140 to i64, !llfi_index !1138
  %143 = sext i32 %141 to i64, !llfi_index !1138
  %144 = load float** %m, align 8, !llfi_index !1139
  %145 = load float** %m, align 8, !llfi_index !1139
  %146 = getelementptr inbounds float* %144, i64 %142, !llfi_index !1140
  %147 = getelementptr inbounds float* %145, i64 %143, !llfi_index !1140
  %check_cmp40 = icmp eq float* %146, %147
  %check_and41 = and i1 %check_cmp40, %check_and39
  store i1 %check_and41, i1* %AI
  store float %130, float* %146, align 4, !llfi_index !1141
  br label %148, !llfi_index !1142

; <label>:148                                     ; preds = %113
  %149 = load i32* %j, align 4, !llfi_index !1143
  %150 = load i32* %j, align 4, !llfi_index !1143
  %151 = add nsw i32 %149, 1, !llfi_index !1144
  %152 = add nsw i32 %150, 1, !llfi_index !1144
  %check_cmp42 = icmp eq i32 %151, %152
  %loadone43 = load i1* %AI
  %check_and44 = and i1 %check_cmp42, %loadone43
  store i1 %check_and44, i1* %AI
  store i32 %151, i32* %j, align 4, !llfi_index !1145
  br label %106, !llfi_index !1146

; <label>:153                                     ; preds = %106
  br label %154, !llfi_index !1147

; <label>:154                                     ; preds = %153
  %155 = load i32* %i, align 4, !llfi_index !1148
  %156 = load i32* %i, align 4, !llfi_index !1148
  %157 = add nsw i32 %155, 1, !llfi_index !1149
  %158 = add nsw i32 %156, 1, !llfi_index !1149
  %check_cmp45 = icmp eq i32 %157, %158
  %loadone46 = load i1* %AI
  %check_and47 = and i1 %check_cmp45, %loadone46
  store i1 %check_and47, i1* %AI
  store i32 %157, i32* %i, align 4, !llfi_index !1150
  br label %98, !llfi_index !1151

; <label>:159                                     ; preds = %98
  %160 = load float** %m, align 8, !llfi_index !1152
  %161 = load float** %m, align 8, !llfi_index !1152
  %check_cmp48 = icmp eq float* %160, %161
  %loadone49 = load i1* %AI
  %check_and50 = and i1 %check_cmp48, %loadone49
  %162 = load float*** %2, align 8, !llfi_index !1153
  %163 = load float*** %2, align 8, !llfi_index !1153
  %check_cmp51 = icmp eq float** %162, %163
  %check_and52 = and i1 %check_cmp51, %check_and50
  store i1 %check_and52, i1* %AI
  store float* %160, float** %162, align 8, !llfi_index !1154
  store i32 0, i32* %1, !llfi_index !1155
  store i32 1, i32* %5, !llfi_index !1156
  br label %164, !llfi_index !1157

; <label>:164                                     ; preds = %159, %96
  %165 = load i8** %4, !llfi_index !1158
  %166 = load i8** %4, !llfi_index !1158
  %check_cmp53 = icmp eq i8* %165, %166
  %loadone54 = load i1* %AI
  %check_and55 = and i1 %check_cmp53, %loadone54
  call void @llvm.stackrestore(i8* %165), !llfi_index !1159
  %167 = load i32* %1, !llfi_index !1160
  %168 = load i32* %1, !llfi_index !1160
  %check_cmp56 = icmp eq i32 %167, %168
  %check_and57 = and i1 %check_cmp56, %check_and55
  store i1 %check_and57, i1* %AI
  br i1 %check_and57, label %169, label %checkBb

checkBb:                                          ; preds = %164
  call void @check_flag()
  br label %169

; <label>:169                                     ; preds = %checkBb, %164
  ret i32 %167, !llfi_index !1161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str12, i32 0, i32 0))
  call void @exit(i32 99) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0}

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
!533 = metadata !{i64 533}
!534 = metadata !{i64 534}
!535 = metadata !{i64 535}
!536 = metadata !{i64 536}
!537 = metadata !{i64 537}
!538 = metadata !{i64 538}
!539 = metadata !{i64 539}
!540 = metadata !{i64 540}
!541 = metadata !{i64 541}
!542 = metadata !{i64 542}
!543 = metadata !{i64 543}
!544 = metadata !{i64 544}
!545 = metadata !{i64 545}
!546 = metadata !{i64 546}
!547 = metadata !{i64 547}
!548 = metadata !{i64 548}
!549 = metadata !{i64 549}
!550 = metadata !{i64 550}
!551 = metadata !{i64 551}
!552 = metadata !{i64 552}
!553 = metadata !{i64 553}
!554 = metadata !{i64 554}
!555 = metadata !{i64 555}
!556 = metadata !{i64 556}
!557 = metadata !{i64 557}
!558 = metadata !{i64 558}
!559 = metadata !{i64 559}
!560 = metadata !{i64 560}
!561 = metadata !{i64 561}
!562 = metadata !{i64 562}
!563 = metadata !{i64 563}
!564 = metadata !{i64 564}
!565 = metadata !{i64 565}
!566 = metadata !{i64 566}
!567 = metadata !{i64 567}
!568 = metadata !{i64 568}
!569 = metadata !{i64 569}
!570 = metadata !{i64 570}
!571 = metadata !{i64 571}
!572 = metadata !{i64 572}
!573 = metadata !{i64 573}
!574 = metadata !{i64 574}
!575 = metadata !{i64 575}
!576 = metadata !{i64 576}
!577 = metadata !{i64 577}
!578 = metadata !{i64 578}
!579 = metadata !{i64 579}
!580 = metadata !{i64 580}
!581 = metadata !{i64 581}
!582 = metadata !{i64 582}
!583 = metadata !{i64 583}
!584 = metadata !{i64 584}
!585 = metadata !{i64 585}
!586 = metadata !{i64 586}
!587 = metadata !{i64 587}
!588 = metadata !{i64 588}
!589 = metadata !{i64 589}
!590 = metadata !{i64 590}
!591 = metadata !{i64 591}
!592 = metadata !{i64 592}
!593 = metadata !{i64 593}
!594 = metadata !{i64 594}
!595 = metadata !{i64 595}
!596 = metadata !{i64 596}
!597 = metadata !{i64 597}
!598 = metadata !{i64 598}
!599 = metadata !{i64 599}
!600 = metadata !{i64 600}
!601 = metadata !{i64 601}
!602 = metadata !{i64 602}
!603 = metadata !{i64 603}
!604 = metadata !{i64 604}
!605 = metadata !{i64 605}
!606 = metadata !{i64 606}
!607 = metadata !{i64 607}
!608 = metadata !{i64 608}
!609 = metadata !{i64 609}
!610 = metadata !{i64 610}
!611 = metadata !{i64 611}
!612 = metadata !{i64 612}
!613 = metadata !{i64 613}
!614 = metadata !{i64 614}
!615 = metadata !{i64 615}
!616 = metadata !{i64 616}
!617 = metadata !{i64 617}
!618 = metadata !{i64 618}
!619 = metadata !{i64 619}
!620 = metadata !{i64 620}
!621 = metadata !{i64 621}
!622 = metadata !{i64 622}
!623 = metadata !{i64 623}
!624 = metadata !{i64 624}
!625 = metadata !{i64 625}
!626 = metadata !{i64 626}
!627 = metadata !{i64 627}
!628 = metadata !{i64 628}
!629 = metadata !{i64 629}
!630 = metadata !{i64 630}
!631 = metadata !{i64 631}
!632 = metadata !{i64 632}
!633 = metadata !{i64 633}
!634 = metadata !{i64 634}
!635 = metadata !{i64 635}
!636 = metadata !{i64 636}
!637 = metadata !{i64 637}
!638 = metadata !{i64 638}
!639 = metadata !{i64 639}
!640 = metadata !{i64 640}
!641 = metadata !{i64 641}
!642 = metadata !{i64 642}
!643 = metadata !{i64 643}
!644 = metadata !{i64 644}
!645 = metadata !{i64 645}
!646 = metadata !{i64 646}
!647 = metadata !{i64 647}
!648 = metadata !{i64 648}
!649 = metadata !{i64 649}
!650 = metadata !{i64 650}
!651 = metadata !{i64 651}
!652 = metadata !{i64 652}
!653 = metadata !{i64 653}
!654 = metadata !{i64 654}
!655 = metadata !{i64 655}
!656 = metadata !{i64 656}
!657 = metadata !{i64 657}
!658 = metadata !{i64 658}
!659 = metadata !{i64 659}
!660 = metadata !{i64 660}
!661 = metadata !{i64 661}
!662 = metadata !{i64 662}
!663 = metadata !{i64 663}
!664 = metadata !{i64 664}
!665 = metadata !{i64 665}
!666 = metadata !{i64 666}
!667 = metadata !{i64 667}
!668 = metadata !{i64 668}
!669 = metadata !{i64 669}
!670 = metadata !{i64 670}
!671 = metadata !{i64 671}
!672 = metadata !{i64 672}
!673 = metadata !{i64 673}
!674 = metadata !{i64 674}
!675 = metadata !{i64 675}
!676 = metadata !{i64 676}
!677 = metadata !{i64 677}
!678 = metadata !{i64 678}
!679 = metadata !{i64 679}
!680 = metadata !{i64 680}
!681 = metadata !{i64 681}
!682 = metadata !{i64 682}
!683 = metadata !{i64 683}
!684 = metadata !{i64 684}
!685 = metadata !{i64 685}
!686 = metadata !{i64 686}
!687 = metadata !{i64 687}
!688 = metadata !{i64 688}
!689 = metadata !{i64 689}
!690 = metadata !{i64 690}
!691 = metadata !{i64 691}
!692 = metadata !{i64 692}
!693 = metadata !{i64 693}
!694 = metadata !{i64 694}
!695 = metadata !{i64 695}
!696 = metadata !{i64 696}
!697 = metadata !{i64 697}
!698 = metadata !{i64 698}
!699 = metadata !{i64 699}
!700 = metadata !{i64 700}
!701 = metadata !{i64 701}
!702 = metadata !{i64 702}
!703 = metadata !{i64 703}
!704 = metadata !{i64 704}
!705 = metadata !{i64 705}
!706 = metadata !{i64 706}
!707 = metadata !{i64 707}
!708 = metadata !{i64 708}
!709 = metadata !{i64 709}
!710 = metadata !{i64 710}
!711 = metadata !{i64 711}
!712 = metadata !{i64 712}
!713 = metadata !{i64 713}
!714 = metadata !{i64 714}
!715 = metadata !{i64 715}
!716 = metadata !{i64 716}
!717 = metadata !{i64 717}
!718 = metadata !{i64 718}
!719 = metadata !{i64 719}
!720 = metadata !{i64 720}
!721 = metadata !{i64 721}
!722 = metadata !{i64 722}
!723 = metadata !{i64 723}
!724 = metadata !{i64 724}
!725 = metadata !{i64 725}
!726 = metadata !{i64 726}
!727 = metadata !{i64 727}
!728 = metadata !{i64 728}
!729 = metadata !{i64 729}
!730 = metadata !{i64 730}
!731 = metadata !{i64 731}
!732 = metadata !{i64 732}
!733 = metadata !{i64 733}
!734 = metadata !{i64 734}
!735 = metadata !{i64 735}
!736 = metadata !{i64 736}
!737 = metadata !{i64 737}
!738 = metadata !{i64 738}
!739 = metadata !{i64 739}
!740 = metadata !{i64 740}
!741 = metadata !{i64 741}
!742 = metadata !{i64 742}
!743 = metadata !{i64 743}
!744 = metadata !{i64 744}
!745 = metadata !{i64 745}
!746 = metadata !{i64 746}
!747 = metadata !{i64 747}
!748 = metadata !{i64 748}
!749 = metadata !{i64 749}
!750 = metadata !{i64 750}
!751 = metadata !{i64 751}
!752 = metadata !{i64 752}
!753 = metadata !{i64 753}
!754 = metadata !{i64 754}
!755 = metadata !{i64 755}
!756 = metadata !{i64 756}
!757 = metadata !{i64 757}
!758 = metadata !{i64 758}
!759 = metadata !{i64 759}
!760 = metadata !{i64 760}
!761 = metadata !{i64 761}
!762 = metadata !{i64 762}
!763 = metadata !{i64 763}
!764 = metadata !{i64 764}
!765 = metadata !{i64 765}
!766 = metadata !{i64 766}
!767 = metadata !{i64 767}
!768 = metadata !{i64 768}
!769 = metadata !{i64 769}
!770 = metadata !{i64 770}
!771 = metadata !{i64 771}
!772 = metadata !{i64 772}
!773 = metadata !{i64 773}
!774 = metadata !{i64 774}
!775 = metadata !{i64 775}
!776 = metadata !{i64 776}
!777 = metadata !{i64 777}
!778 = metadata !{i64 778}
!779 = metadata !{i64 779}
!780 = metadata !{i64 780}
!781 = metadata !{i64 781}
!782 = metadata !{i64 782}
!783 = metadata !{i64 783}
!784 = metadata !{i64 784}
!785 = metadata !{i64 785}
!786 = metadata !{i64 786}
!787 = metadata !{i64 787}
!788 = metadata !{i64 788}
!789 = metadata !{i64 789}
!790 = metadata !{i64 790}
!791 = metadata !{i64 791}
!792 = metadata !{i64 792}
!793 = metadata !{i64 793}
!794 = metadata !{i64 794}
!795 = metadata !{i64 795}
!796 = metadata !{i64 796}
!797 = metadata !{i64 797}
!798 = metadata !{i64 798}
!799 = metadata !{i64 799}
!800 = metadata !{i64 800}
!801 = metadata !{i64 801}
!802 = metadata !{i64 802}
!803 = metadata !{i64 803}
!804 = metadata !{i64 804}
!805 = metadata !{i64 805}
!806 = metadata !{i64 806}
!807 = metadata !{i64 807}
!808 = metadata !{i64 808}
!809 = metadata !{i64 809}
!810 = metadata !{i64 810}
!811 = metadata !{i64 811}
!812 = metadata !{i64 812}
!813 = metadata !{i64 813}
!814 = metadata !{i64 814}
!815 = metadata !{i64 815}
!816 = metadata !{i64 816}
!817 = metadata !{i64 817}
!818 = metadata !{i64 818}
!819 = metadata !{i64 819}
!820 = metadata !{i64 820}
!821 = metadata !{i64 821}
!822 = metadata !{i64 822}
!823 = metadata !{i64 823}
!824 = metadata !{i64 824}
!825 = metadata !{i64 825}
!826 = metadata !{i64 826}
!827 = metadata !{i64 827}
!828 = metadata !{i64 828}
!829 = metadata !{i64 829}
!830 = metadata !{i64 830}
!831 = metadata !{i64 831}
!832 = metadata !{i64 832}
!833 = metadata !{i64 833}
!834 = metadata !{i64 834}
!835 = metadata !{i64 835}
!836 = metadata !{i64 836}
!837 = metadata !{i64 837}
!838 = metadata !{i64 838}
!839 = metadata !{i64 839}
!840 = metadata !{i64 840}
!841 = metadata !{i64 841}
!842 = metadata !{i64 842}
!843 = metadata !{i64 843}
!844 = metadata !{i64 844}
!845 = metadata !{i64 845}
!846 = metadata !{i64 846}
!847 = metadata !{i64 847}
!848 = metadata !{i64 848}
!849 = metadata !{i64 849}
!850 = metadata !{i64 850}
!851 = metadata !{i64 851}
!852 = metadata !{i64 852}
!853 = metadata !{i64 853}
!854 = metadata !{i64 854}
!855 = metadata !{i64 855}
!856 = metadata !{i64 856}
!857 = metadata !{i64 857}
!858 = metadata !{i64 858}
!859 = metadata !{i64 859}
!860 = metadata !{i64 860}
!861 = metadata !{i64 861}
!862 = metadata !{i64 862}
!863 = metadata !{i64 863}
!864 = metadata !{i64 864}
!865 = metadata !{i64 865}
!866 = metadata !{i64 866}
!867 = metadata !{i64 867}
!868 = metadata !{i64 868}
!869 = metadata !{i64 869}
!870 = metadata !{i64 870}
!871 = metadata !{i64 871}
!872 = metadata !{i64 872}
!873 = metadata !{i64 873}
!874 = metadata !{i64 874}
!875 = metadata !{i64 875}
!876 = metadata !{i64 876}
!877 = metadata !{i64 877}
!878 = metadata !{i64 878}
!879 = metadata !{i64 879}
!880 = metadata !{i64 880}
!881 = metadata !{i64 881}
!882 = metadata !{i64 882}
!883 = metadata !{i64 883}
!884 = metadata !{i64 884}
!885 = metadata !{i64 885}
!886 = metadata !{i64 886}
!887 = metadata !{i64 887}
!888 = metadata !{i64 888}
!889 = metadata !{i64 889}
!890 = metadata !{i64 890}
!891 = metadata !{i64 891}
!892 = metadata !{i64 892}
!893 = metadata !{i64 893}
!894 = metadata !{i64 894}
!895 = metadata !{i64 895}
!896 = metadata !{i64 896}
!897 = metadata !{i64 897}
!898 = metadata !{i64 898}
!899 = metadata !{i64 899}
!900 = metadata !{i64 900}
!901 = metadata !{i64 901}
!902 = metadata !{i64 902}
!903 = metadata !{i64 903}
!904 = metadata !{i64 904}
!905 = metadata !{i64 905}
!906 = metadata !{i64 906}
!907 = metadata !{i64 907}
!908 = metadata !{i64 908}
!909 = metadata !{i64 909}
!910 = metadata !{i64 910}
!911 = metadata !{i64 911}
!912 = metadata !{i64 912}
!913 = metadata !{i64 913}
!914 = metadata !{i64 914}
!915 = metadata !{i64 915}
!916 = metadata !{i64 916}
!917 = metadata !{i64 917}
!918 = metadata !{i64 918}
!919 = metadata !{i64 919}
!920 = metadata !{i64 920}
!921 = metadata !{i64 921}
!922 = metadata !{i64 922}
!923 = metadata !{i64 923}
!924 = metadata !{i64 924}
!925 = metadata !{i64 925}
!926 = metadata !{i64 926}
!927 = metadata !{i64 927}
!928 = metadata !{i64 928}
!929 = metadata !{i64 929}
!930 = metadata !{i64 930}
!931 = metadata !{i64 931}
!932 = metadata !{i64 932}
!933 = metadata !{i64 933}
!934 = metadata !{i64 934}
!935 = metadata !{i64 935}
!936 = metadata !{i64 936}
!937 = metadata !{i64 937}
!938 = metadata !{i64 938}
!939 = metadata !{i64 939}
!940 = metadata !{i64 940}
!941 = metadata !{i64 941}
!942 = metadata !{i64 942}
!943 = metadata !{i64 943}
!944 = metadata !{i64 944}
!945 = metadata !{i64 945}
!946 = metadata !{i64 946}
!947 = metadata !{i64 947}
!948 = metadata !{i64 948}
!949 = metadata !{i64 949}
!950 = metadata !{i64 950}
!951 = metadata !{i64 951}
!952 = metadata !{i64 952}
!953 = metadata !{i64 953}
!954 = metadata !{i64 954}
!955 = metadata !{i64 955}
!956 = metadata !{i64 956}
!957 = metadata !{i64 957}
!958 = metadata !{i64 958}
!959 = metadata !{i64 959}
!960 = metadata !{i64 960}
!961 = metadata !{i64 961}
!962 = metadata !{i64 962}
!963 = metadata !{i64 963}
!964 = metadata !{i64 964}
!965 = metadata !{i64 965}
!966 = metadata !{i64 966}
!967 = metadata !{i64 967}
!968 = metadata !{i64 968}
!969 = metadata !{i64 969}
!970 = metadata !{i64 970}
!971 = metadata !{i64 971}
!972 = metadata !{i64 972}
!973 = metadata !{i64 973}
!974 = metadata !{i64 974}
!975 = metadata !{i64 975}
!976 = metadata !{i64 976}
!977 = metadata !{i64 977}
!978 = metadata !{i64 978}
!979 = metadata !{i64 979}
!980 = metadata !{i64 980}
!981 = metadata !{i64 981}
!982 = metadata !{i64 982}
!983 = metadata !{i64 983}
!984 = metadata !{i64 984}
!985 = metadata !{i64 985}
!986 = metadata !{i64 986}
!987 = metadata !{i64 987}
!988 = metadata !{i64 988}
!989 = metadata !{i64 989}
!990 = metadata !{i64 990}
!991 = metadata !{i64 991}
!992 = metadata !{i64 992}
!993 = metadata !{i64 993}
!994 = metadata !{i64 994}
!995 = metadata !{i64 995}
!996 = metadata !{i64 996}
!997 = metadata !{i64 997}
!998 = metadata !{i64 998}
!999 = metadata !{i64 999}
!1000 = metadata !{i64 1000}
!1001 = metadata !{i64 1001}
!1002 = metadata !{i64 1002}
!1003 = metadata !{i64 1003}
!1004 = metadata !{i64 1004}
!1005 = metadata !{i64 1005}
!1006 = metadata !{i64 1006}
!1007 = metadata !{i64 1007}
!1008 = metadata !{i64 1008}
!1009 = metadata !{i64 1009}
!1010 = metadata !{i64 1010}
!1011 = metadata !{i64 1011}
!1012 = metadata !{i64 1012}
!1013 = metadata !{i64 1013}
!1014 = metadata !{i64 1014}
!1015 = metadata !{i64 1015}
!1016 = metadata !{i64 1016}
!1017 = metadata !{i64 1017}
!1018 = metadata !{i64 1018}
!1019 = metadata !{i64 1019}
!1020 = metadata !{i64 1020}
!1021 = metadata !{i64 1021}
!1022 = metadata !{i64 1022}
!1023 = metadata !{i64 1023}
!1024 = metadata !{i64 1024}
!1025 = metadata !{i64 1025}
!1026 = metadata !{i64 1026}
!1027 = metadata !{i64 1027}
!1028 = metadata !{i64 1028}
!1029 = metadata !{i64 1029}
!1030 = metadata !{i64 1030}
!1031 = metadata !{i64 1031}
!1032 = metadata !{i64 1032}
!1033 = metadata !{i64 1033}
!1034 = metadata !{i64 1034}
!1035 = metadata !{i64 1035}
!1036 = metadata !{i64 1036}
!1037 = metadata !{i64 1037}
!1038 = metadata !{i64 1038}
!1039 = metadata !{i64 1039}
!1040 = metadata !{i64 1040}
!1041 = metadata !{i64 1041}
!1042 = metadata !{i64 1042}
!1043 = metadata !{i64 1043}
!1044 = metadata !{i64 1044}
!1045 = metadata !{i64 1045}
!1046 = metadata !{i64 1046}
!1047 = metadata !{i64 1047}
!1048 = metadata !{i64 1048}
!1049 = metadata !{i64 1049}
!1050 = metadata !{i64 1050}
!1051 = metadata !{i64 1051}
!1052 = metadata !{i64 1052}
!1053 = metadata !{i64 1053}
!1054 = metadata !{i64 1054}
!1055 = metadata !{i64 1055}
!1056 = metadata !{i64 1056}
!1057 = metadata !{i64 1057}
!1058 = metadata !{i64 1058}
!1059 = metadata !{i64 1059}
!1060 = metadata !{i64 1060}
!1061 = metadata !{i64 1061}
!1062 = metadata !{i64 1062}
!1063 = metadata !{i64 1063}
!1064 = metadata !{i64 1064}
!1065 = metadata !{i64 1065}
!1066 = metadata !{i64 1066}
!1067 = metadata !{i64 1067}
!1068 = metadata !{i64 1068}
!1069 = metadata !{i64 1069}
!1070 = metadata !{i64 1070}
!1071 = metadata !{i64 1071}
!1072 = metadata !{i64 1072}
!1073 = metadata !{i64 1073}
!1074 = metadata !{i64 1074}
!1075 = metadata !{i64 1075}
!1076 = metadata !{i64 1076}
!1077 = metadata !{i64 1077}
!1078 = metadata !{i64 1078}
!1079 = metadata !{i64 1079}
!1080 = metadata !{i64 1080}
!1081 = metadata !{i64 1081}
!1082 = metadata !{i64 1082}
!1083 = metadata !{i64 1083}
!1084 = metadata !{i64 1084}
!1085 = metadata !{i64 1085}
!1086 = metadata !{i64 1086}
!1087 = metadata !{i64 1087}
!1088 = metadata !{i64 1088}
!1089 = metadata !{i64 1089}
!1090 = metadata !{i64 1090}
!1091 = metadata !{i64 1091}
!1092 = metadata !{i64 1092}
!1093 = metadata !{i64 1093}
!1094 = metadata !{i64 1094}
!1095 = metadata !{i64 1095}
!1096 = metadata !{i64 1096}
!1097 = metadata !{i64 1097}
!1098 = metadata !{i64 1098}
!1099 = metadata !{i64 1099}
!1100 = metadata !{i64 1100}
!1101 = metadata !{i64 1101}
!1102 = metadata !{i64 1102}
!1103 = metadata !{i64 1103}
!1104 = metadata !{i64 1104}
!1105 = metadata !{i64 1105}
!1106 = metadata !{i64 1106}
!1107 = metadata !{i64 1107}
!1108 = metadata !{i64 1108}
!1109 = metadata !{i64 1109}
!1110 = metadata !{i64 1110}
!1111 = metadata !{i64 1111}
!1112 = metadata !{i64 1112}
!1113 = metadata !{i64 1113}
!1114 = metadata !{i64 1114}
!1115 = metadata !{i64 1115}
!1116 = metadata !{i64 1116}
!1117 = metadata !{i64 1117}
!1118 = metadata !{i64 1118}
!1119 = metadata !{i64 1119}
!1120 = metadata !{i64 1120}
!1121 = metadata !{i64 1121}
!1122 = metadata !{i64 1122}
!1123 = metadata !{i64 1123}
!1124 = metadata !{i64 1124}
!1125 = metadata !{i64 1125}
!1126 = metadata !{i64 1126}
!1127 = metadata !{i64 1127}
!1128 = metadata !{i64 1128}
!1129 = metadata !{i64 1129}
!1130 = metadata !{i64 1130}
!1131 = metadata !{i64 1131}
!1132 = metadata !{i64 1132}
!1133 = metadata !{i64 1133}
!1134 = metadata !{i64 1134}
!1135 = metadata !{i64 1135}
!1136 = metadata !{i64 1136}
!1137 = metadata !{i64 1137}
!1138 = metadata !{i64 1138}
!1139 = metadata !{i64 1139}
!1140 = metadata !{i64 1140}
!1141 = metadata !{i64 1141}
!1142 = metadata !{i64 1142}
!1143 = metadata !{i64 1143}
!1144 = metadata !{i64 1144}
!1145 = metadata !{i64 1145}
!1146 = metadata !{i64 1146}
!1147 = metadata !{i64 1147}
!1148 = metadata !{i64 1148}
!1149 = metadata !{i64 1149}
!1150 = metadata !{i64 1150}
!1151 = metadata !{i64 1151}
!1152 = metadata !{i64 1152}
!1153 = metadata !{i64 1153}
!1154 = metadata !{i64 1154}
!1155 = metadata !{i64 1155}
!1156 = metadata !{i64 1156}
!1157 = metadata !{i64 1157}
!1158 = metadata !{i64 1158}
!1159 = metadata !{i64 1159}
!1160 = metadata !{i64 1160}
!1161 = metadata !{i64 1161}
