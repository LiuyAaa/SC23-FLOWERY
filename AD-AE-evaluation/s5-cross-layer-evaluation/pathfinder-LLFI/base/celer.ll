; ModuleID = 'celer.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rows = global i32 0, align 4
@cols = global i32 0, align 4
@data = global i32* null, align 8
@wall = global i32** null, align 8
@result = global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Usage: pathfiner width num_of_steps\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"**********************SDC DETECTED!**********************\0A\00", align 1

; Function Attrs: uwtable
define void @_Z4initiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i8**, align 8, !llfi_index !2
  %n = alloca i32, align 4, !llfi_index !3
  %i = alloca i32, align 4, !llfi_index !4
  %j = alloca i32, align 4, !llfi_index !5
  %j1 = alloca i32, align 4, !llfi_index !6
  %i2 = alloca i32, align 4, !llfi_index !7
  %j3 = alloca i32, align 4, !llfi_index !8
  store i32 %argc, i32* %1, align 4, !llfi_index !9
  store i8** %argv, i8*** %2, align 8, !llfi_index !10
  %3 = load i32* %1, align 4, !llfi_index !11
  %4 = load i32* %1, align 4, !llfi_index !11
  %AI = alloca i1
  store i1 true, i1* %AI
  %5 = icmp eq i32 %3, 3, !llfi_index !12
  %6 = icmp eq i32 %4, 3, !llfi_index !12
  %check_cmp = icmp eq i1 %5, %6
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  store i1 %check_and, i1* %AI
  br i1 %5, label %7, label %22, !llfi_index !13

; <label>:7                                       ; preds = %0
  %8 = load i8*** %2, align 8, !llfi_index !14
  %9 = load i8*** %2, align 8, !llfi_index !14
  %10 = getelementptr inbounds i8** %8, i64 1, !llfi_index !15
  %11 = getelementptr inbounds i8** %9, i64 1, !llfi_index !15
  %12 = load i8** %10, align 8, !llfi_index !16
  %13 = load i8** %11, align 8, !llfi_index !16
  %check_cmp1 = icmp eq i8* %12, %13
  %loadone2 = load i1* %AI
  %check_and3 = and i1 %check_cmp1, %loadone2
  %14 = call i32 @atoi(i8* %12) #8, !llfi_index !17
  store i32 %14, i32* @cols, align 4, !llfi_index !18
  %15 = load i8*** %2, align 8, !llfi_index !19
  %16 = load i8*** %2, align 8, !llfi_index !19
  %17 = getelementptr inbounds i8** %15, i64 2, !llfi_index !20
  %18 = getelementptr inbounds i8** %16, i64 2, !llfi_index !20
  %19 = load i8** %17, align 8, !llfi_index !21
  %20 = load i8** %18, align 8, !llfi_index !21
  %check_cmp4 = icmp eq i8* %19, %20
  %check_and5 = and i1 %check_cmp4, %check_and3
  store i1 %check_and5, i1* %AI
  %21 = call i32 @atoi(i8* %19) #8, !llfi_index !22
  store i32 %21, i32* @rows, align 4, !llfi_index !23
  br label %24, !llfi_index !24

; <label>:22                                      ; preds = %0
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0)), !llfi_index !25
  call void @exit(i32 0) #9, !llfi_index !26
  unreachable, !llfi_index !27

; <label>:24                                      ; preds = %7
  %25 = load i32* @rows, align 4, !llfi_index !28
  %26 = load i32* @rows, align 4, !llfi_index !28
  %27 = load i32* @cols, align 4, !llfi_index !29
  %28 = load i32* @cols, align 4, !llfi_index !29
  %29 = mul nsw i32 %25, %27, !llfi_index !30
  %30 = mul nsw i32 %26, %28, !llfi_index !30
  %31 = sext i32 %29 to i64, !llfi_index !31
  %32 = sext i32 %30 to i64, !llfi_index !31
  %check_cmp6 = icmp eq i64 %31, %32
  %loadone7 = load i1* %AI
  %check_and8 = and i1 %check_cmp6, %loadone7
  %33 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %31, i64 4), !llfi_index !32
  %34 = extractvalue { i64, i1 } %33, 1, !llfi_index !33
  %35 = extractvalue { i64, i1 } %33, 0, !llfi_index !34
  %36 = select i1 %34, i64 -1, i64 %35, !llfi_index !35
  %37 = call noalias i8* @_Znam(i64 %36) #10, !llfi_index !36
  %38 = bitcast i8* %37 to i32*, !llfi_index !37
  %39 = bitcast i8* %37 to i32*, !llfi_index !37
  %check_cmp9 = icmp eq i32* %38, %39
  %check_and10 = and i1 %check_cmp9, %check_and8
  store i32* %38, i32** @data, align 8, !llfi_index !38
  %40 = load i32* @rows, align 4, !llfi_index !39
  %41 = load i32* @rows, align 4, !llfi_index !39
  %42 = sext i32 %40 to i64, !llfi_index !40
  %43 = sext i32 %41 to i64, !llfi_index !40
  %check_cmp11 = icmp eq i64 %42, %43
  %check_and12 = and i1 %check_cmp11, %check_and10
  %44 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %42, i64 8), !llfi_index !41
  %45 = extractvalue { i64, i1 } %44, 1, !llfi_index !42
  %46 = extractvalue { i64, i1 } %44, 0, !llfi_index !43
  %47 = select i1 %45, i64 -1, i64 %46, !llfi_index !44
  %48 = call noalias i8* @_Znam(i64 %47) #10, !llfi_index !45
  %49 = bitcast i8* %48 to i32**, !llfi_index !46
  %50 = bitcast i8* %48 to i32**, !llfi_index !46
  %check_cmp13 = icmp eq i32** %49, %50
  %check_and14 = and i1 %check_cmp13, %check_and12
  store i1 %check_and14, i1* %AI
  store i32** %49, i32*** @wall, align 8, !llfi_index !47
  store i32 0, i32* %n, align 4, !llfi_index !48
  br label %51, !llfi_index !49

; <label>:51                                      ; preds = %79, %24
  %52 = load i32* %n, align 4, !llfi_index !50
  %53 = load i32* %n, align 4, !llfi_index !50
  %54 = load i32* @rows, align 4, !llfi_index !51
  %55 = load i32* @rows, align 4, !llfi_index !51
  %56 = icmp slt i32 %52, %54, !llfi_index !52
  %57 = icmp slt i32 %53, %55, !llfi_index !52
  %check_cmp15 = icmp eq i1 %56, %57
  %loadone16 = load i1* %AI
  %check_and17 = and i1 %check_cmp15, %loadone16
  store i1 %check_and17, i1* %AI
  br i1 %56, label %58, label %84, !llfi_index !53

; <label>:58                                      ; preds = %51
  %59 = load i32** @data, align 8, !llfi_index !54
  %60 = load i32** @data, align 8, !llfi_index !54
  %61 = load i32* @cols, align 4, !llfi_index !55
  %62 = load i32* @cols, align 4, !llfi_index !55
  %63 = load i32* %n, align 4, !llfi_index !56
  %64 = load i32* %n, align 4, !llfi_index !56
  %65 = mul nsw i32 %61, %63, !llfi_index !57
  %66 = mul nsw i32 %62, %64, !llfi_index !57
  %67 = sext i32 %65 to i64, !llfi_index !58
  %68 = sext i32 %66 to i64, !llfi_index !58
  %69 = getelementptr inbounds i32* %59, i64 %67, !llfi_index !59
  %70 = getelementptr inbounds i32* %60, i64 %68, !llfi_index !59
  %check_cmp18 = icmp eq i32* %69, %70
  %loadone19 = load i1* %AI
  %check_and20 = and i1 %check_cmp18, %loadone19
  %71 = load i32* %n, align 4, !llfi_index !60
  %72 = load i32* %n, align 4, !llfi_index !60
  %73 = sext i32 %71 to i64, !llfi_index !61
  %74 = sext i32 %72 to i64, !llfi_index !61
  %75 = load i32*** @wall, align 8, !llfi_index !62
  %76 = load i32*** @wall, align 8, !llfi_index !62
  %77 = getelementptr inbounds i32** %75, i64 %73, !llfi_index !63
  %78 = getelementptr inbounds i32** %76, i64 %74, !llfi_index !63
  %check_cmp21 = icmp eq i32** %77, %78
  %check_and22 = and i1 %check_cmp21, %check_and20
  store i1 %check_and22, i1* %AI
  store i32* %69, i32** %77, align 8, !llfi_index !64
  br label %79, !llfi_index !65

; <label>:79                                      ; preds = %58
  %80 = load i32* %n, align 4, !llfi_index !66
  %81 = load i32* %n, align 4, !llfi_index !66
  %82 = add nsw i32 %80, 1, !llfi_index !67
  %83 = add nsw i32 %81, 1, !llfi_index !67
  %check_cmp23 = icmp eq i32 %82, %83
  %loadone24 = load i1* %AI
  %check_and25 = and i1 %check_cmp23, %loadone24
  store i1 %check_and25, i1* %AI
  store i32 %82, i32* %n, align 4, !llfi_index !68
  br label %51, !llfi_index !69

; <label>:84                                      ; preds = %51
  %85 = load i32* @cols, align 4, !llfi_index !70
  %86 = load i32* @cols, align 4, !llfi_index !70
  %87 = sext i32 %85 to i64, !llfi_index !71
  %88 = sext i32 %86 to i64, !llfi_index !71
  %check_cmp26 = icmp eq i64 %87, %88
  %loadone27 = load i1* %AI
  %check_and28 = and i1 %check_cmp26, %loadone27
  %89 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %87, i64 4), !llfi_index !72
  %90 = extractvalue { i64, i1 } %89, 1, !llfi_index !73
  %91 = extractvalue { i64, i1 } %89, 0, !llfi_index !74
  %92 = select i1 %90, i64 -1, i64 %91, !llfi_index !75
  %93 = call noalias i8* @_Znam(i64 %92) #10, !llfi_index !76
  %94 = bitcast i8* %93 to i32*, !llfi_index !77
  %95 = bitcast i8* %93 to i32*, !llfi_index !77
  %check_cmp29 = icmp eq i32* %94, %95
  %check_and30 = and i1 %check_cmp29, %check_and28
  store i1 %check_and30, i1* %AI
  store i32* %94, i32** @result, align 8, !llfi_index !78
  store i32 0, i32* %i, align 4, !llfi_index !79
  br label %96, !llfi_index !80

; <label>:96                                      ; preds = %134, %84
  %97 = load i32* %i, align 4, !llfi_index !81
  %98 = load i32* %i, align 4, !llfi_index !81
  %99 = load i32* @rows, align 4, !llfi_index !82
  %100 = load i32* @rows, align 4, !llfi_index !82
  %101 = icmp slt i32 %97, %99, !llfi_index !83
  %102 = icmp slt i32 %98, %100, !llfi_index !83
  %check_cmp31 = icmp eq i1 %101, %102
  %loadone32 = load i1* %AI
  %check_and33 = and i1 %check_cmp31, %loadone32
  store i1 %check_and33, i1* %AI
  br i1 %101, label %103, label %139, !llfi_index !84

; <label>:103                                     ; preds = %96
  store i32 0, i32* %j, align 4, !llfi_index !85
  br label %104, !llfi_index !86

; <label>:104                                     ; preds = %128, %103
  %105 = load i32* %j, align 4, !llfi_index !87
  %106 = load i32* %j, align 4, !llfi_index !87
  %107 = load i32* @cols, align 4, !llfi_index !88
  %108 = load i32* @cols, align 4, !llfi_index !88
  %109 = icmp slt i32 %105, %107, !llfi_index !89
  %110 = icmp slt i32 %106, %108, !llfi_index !89
  %check_cmp34 = icmp eq i1 %109, %110
  %loadone35 = load i1* %AI
  %check_and36 = and i1 %check_cmp34, %loadone35
  store i1 %check_and36, i1* %AI
  br i1 %109, label %111, label %133, !llfi_index !90

; <label>:111                                     ; preds = %104
  %112 = load i32* %j, align 4, !llfi_index !91
  %113 = load i32* %j, align 4, !llfi_index !91
  %114 = sext i32 %112 to i64, !llfi_index !92
  %115 = sext i32 %113 to i64, !llfi_index !92
  %116 = load i32* %i, align 4, !llfi_index !93
  %117 = load i32* %i, align 4, !llfi_index !93
  %118 = sext i32 %116 to i64, !llfi_index !94
  %119 = sext i32 %117 to i64, !llfi_index !94
  %120 = load i32*** @wall, align 8, !llfi_index !95
  %121 = load i32*** @wall, align 8, !llfi_index !95
  %122 = getelementptr inbounds i32** %120, i64 %118, !llfi_index !96
  %123 = getelementptr inbounds i32** %121, i64 %119, !llfi_index !96
  %124 = load i32** %122, align 8, !llfi_index !97
  %125 = load i32** %123, align 8, !llfi_index !97
  %126 = getelementptr inbounds i32* %124, i64 %114, !llfi_index !98
  %127 = getelementptr inbounds i32* %125, i64 %115, !llfi_index !98
  %check_cmp37 = icmp eq i32* %126, %127
  %loadone38 = load i1* %AI
  %check_and39 = and i1 %check_cmp37, %loadone38
  store i1 %check_and39, i1* %AI
  store i32 7, i32* %126, align 4, !llfi_index !99
  br label %128, !llfi_index !100

; <label>:128                                     ; preds = %111
  %129 = load i32* %j, align 4, !llfi_index !101
  %130 = load i32* %j, align 4, !llfi_index !101
  %131 = add nsw i32 %129, 1, !llfi_index !102
  %132 = add nsw i32 %130, 1, !llfi_index !102
  %check_cmp40 = icmp eq i32 %131, %132
  %loadone41 = load i1* %AI
  %check_and42 = and i1 %check_cmp40, %loadone41
  store i1 %check_and42, i1* %AI
  store i32 %131, i32* %j, align 4, !llfi_index !103
  br label %104, !llfi_index !104

; <label>:133                                     ; preds = %104
  br label %134, !llfi_index !105

; <label>:134                                     ; preds = %133
  %135 = load i32* %i, align 4, !llfi_index !106
  %136 = load i32* %i, align 4, !llfi_index !106
  %137 = add nsw i32 %135, 1, !llfi_index !107
  %138 = add nsw i32 %136, 1, !llfi_index !107
  %check_cmp43 = icmp eq i32 %137, %138
  %loadone44 = load i1* %AI
  %check_and45 = and i1 %check_cmp43, %loadone44
  store i1 %check_and45, i1* %AI
  store i32 %137, i32* %i, align 4, !llfi_index !108
  br label %96, !llfi_index !109

; <label>:139                                     ; preds = %96
  store i32 0, i32* %j1, align 4, !llfi_index !110
  br label %140, !llfi_index !111

; <label>:140                                     ; preds = %170, %139
  %141 = load i32* %j1, align 4, !llfi_index !112
  %142 = load i32* %j1, align 4, !llfi_index !112
  %143 = load i32* @cols, align 4, !llfi_index !113
  %144 = load i32* @cols, align 4, !llfi_index !113
  %145 = icmp slt i32 %141, %143, !llfi_index !114
  %146 = icmp slt i32 %142, %144, !llfi_index !114
  %check_cmp46 = icmp eq i1 %145, %146
  %loadone47 = load i1* %AI
  %check_and48 = and i1 %check_cmp46, %loadone47
  store i1 %check_and48, i1* %AI
  br i1 %145, label %147, label %175, !llfi_index !115

; <label>:147                                     ; preds = %140
  %148 = load i32* %j1, align 4, !llfi_index !116
  %149 = load i32* %j1, align 4, !llfi_index !116
  %150 = sext i32 %148 to i64, !llfi_index !117
  %151 = sext i32 %149 to i64, !llfi_index !117
  %152 = load i32*** @wall, align 8, !llfi_index !118
  %153 = load i32*** @wall, align 8, !llfi_index !118
  %154 = getelementptr inbounds i32** %152, i64 0, !llfi_index !119
  %155 = getelementptr inbounds i32** %153, i64 0, !llfi_index !119
  %156 = load i32** %154, align 8, !llfi_index !120
  %157 = load i32** %155, align 8, !llfi_index !120
  %158 = getelementptr inbounds i32* %156, i64 %150, !llfi_index !121
  %159 = getelementptr inbounds i32* %157, i64 %151, !llfi_index !121
  %160 = load i32* %158, align 4, !llfi_index !122
  %161 = load i32* %159, align 4, !llfi_index !122
  %check_cmp49 = icmp eq i32 %160, %161
  %loadone50 = load i1* %AI
  %check_and51 = and i1 %check_cmp49, %loadone50
  %162 = load i32* %j1, align 4, !llfi_index !123
  %163 = load i32* %j1, align 4, !llfi_index !123
  %164 = sext i32 %162 to i64, !llfi_index !124
  %165 = sext i32 %163 to i64, !llfi_index !124
  %166 = load i32** @result, align 8, !llfi_index !125
  %167 = load i32** @result, align 8, !llfi_index !125
  %168 = getelementptr inbounds i32* %166, i64 %164, !llfi_index !126
  %169 = getelementptr inbounds i32* %167, i64 %165, !llfi_index !126
  %check_cmp52 = icmp eq i32* %168, %169
  %check_and53 = and i1 %check_cmp52, %check_and51
  store i1 %check_and53, i1* %AI
  store i32 %160, i32* %168, align 4, !llfi_index !127
  br label %170, !llfi_index !128

; <label>:170                                     ; preds = %147
  %171 = load i32* %j1, align 4, !llfi_index !129
  %172 = load i32* %j1, align 4, !llfi_index !129
  %173 = add nsw i32 %171, 1, !llfi_index !130
  %174 = add nsw i32 %172, 1, !llfi_index !130
  %check_cmp54 = icmp eq i32 %173, %174
  %loadone55 = load i1* %AI
  %check_and56 = and i1 %check_cmp54, %loadone55
  store i1 %check_and56, i1* %AI
  store i32 %173, i32* %j1, align 4, !llfi_index !131
  br label %140, !llfi_index !132

; <label>:175                                     ; preds = %140
  store i32 0, i32* %i2, align 4, !llfi_index !133
  br label %176, !llfi_index !134

; <label>:176                                     ; preds = %223, %175
  %177 = load i32* %i2, align 4, !llfi_index !135
  %178 = load i32* %i2, align 4, !llfi_index !135
  %179 = load i32* @rows, align 4, !llfi_index !136
  %180 = load i32* @rows, align 4, !llfi_index !136
  %181 = icmp slt i32 %177, %179, !llfi_index !137
  %182 = icmp slt i32 %178, %180, !llfi_index !137
  %check_cmp57 = icmp eq i1 %181, %182
  %loadone58 = load i1* %AI
  %check_and59 = and i1 %check_cmp57, %loadone58
  store i1 %check_and59, i1* %AI
  br i1 %181, label %183, label %224, !llfi_index !138

; <label>:183                                     ; preds = %176
  store i32 0, i32* %j3, align 4, !llfi_index !139
  br label %184, !llfi_index !140

; <label>:184                                     ; preds = %211, %183
  %185 = load i32* %j3, align 4, !llfi_index !141
  %186 = load i32* %j3, align 4, !llfi_index !141
  %187 = load i32* @cols, align 4, !llfi_index !142
  %188 = load i32* @cols, align 4, !llfi_index !142
  %189 = icmp slt i32 %185, %187, !llfi_index !143
  %190 = icmp slt i32 %186, %188, !llfi_index !143
  %check_cmp60 = icmp eq i1 %189, %190
  %loadone61 = load i1* %AI
  %check_and62 = and i1 %check_cmp60, %loadone61
  store i1 %check_and62, i1* %AI
  br i1 %189, label %191, label %216, !llfi_index !144

; <label>:191                                     ; preds = %184
  %192 = load i32* %j3, align 4, !llfi_index !145
  %193 = load i32* %j3, align 4, !llfi_index !145
  %194 = sext i32 %192 to i64, !llfi_index !146
  %195 = sext i32 %193 to i64, !llfi_index !146
  %196 = load i32* %i2, align 4, !llfi_index !147
  %197 = load i32* %i2, align 4, !llfi_index !147
  %198 = sext i32 %196 to i64, !llfi_index !148
  %199 = sext i32 %197 to i64, !llfi_index !148
  %200 = load i32*** @wall, align 8, !llfi_index !149
  %201 = load i32*** @wall, align 8, !llfi_index !149
  %202 = getelementptr inbounds i32** %200, i64 %198, !llfi_index !150
  %203 = getelementptr inbounds i32** %201, i64 %199, !llfi_index !150
  %204 = load i32** %202, align 8, !llfi_index !151
  %205 = load i32** %203, align 8, !llfi_index !151
  %206 = getelementptr inbounds i32* %204, i64 %194, !llfi_index !152
  %207 = getelementptr inbounds i32* %205, i64 %195, !llfi_index !152
  %208 = load i32* %206, align 4, !llfi_index !153
  %209 = load i32* %207, align 4, !llfi_index !153
  %check_cmp63 = icmp eq i32 %208, %209
  %loadone64 = load i1* %AI
  %check_and65 = and i1 %check_cmp63, %loadone64
  store i1 %check_and65, i1* %AI
  %210 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %208), !llfi_index !154
  br label %211, !llfi_index !155

; <label>:211                                     ; preds = %191
  %212 = load i32* %j3, align 4, !llfi_index !156
  %213 = load i32* %j3, align 4, !llfi_index !156
  %214 = add nsw i32 %212, 1, !llfi_index !157
  %215 = add nsw i32 %213, 1, !llfi_index !157
  %check_cmp66 = icmp eq i32 %214, %215
  %loadone67 = load i1* %AI
  %check_and68 = and i1 %check_cmp66, %loadone67
  store i1 %check_and68, i1* %AI
  store i32 %214, i32* %j3, align 4, !llfi_index !158
  br label %184, !llfi_index !159

; <label>:216                                     ; preds = %184
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !160
  br label %218, !llfi_index !161

; <label>:218                                     ; preds = %216
  %219 = load i32* %i2, align 4, !llfi_index !162
  %220 = load i32* %i2, align 4, !llfi_index !162
  %221 = add nsw i32 %219, 1, !llfi_index !163
  %222 = add nsw i32 %220, 1, !llfi_index !163
  %check_cmp69 = icmp eq i32 %221, %222
  %loadone70 = load i1* %AI
  %check_and71 = and i1 %check_cmp69, %loadone70
  store i1 %check_and71, i1* %AI
  br i1 %check_and71, label %223, label %checkBb

checkBb:                                          ; preds = %218
  call void @check_flag()
  br label %223

; <label>:223                                     ; preds = %checkBb, %218
  store i32 %221, i32* %i2, align 4, !llfi_index !164
  br label %176, !llfi_index !165

; <label>:224                                     ; preds = %176
  ret void, !llfi_index !166
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

; Function Attrs: uwtable
define void @_Z5fatalPc(i8* %s) #0 {
  %1 = alloca i8*, align 8, !llfi_index !167
  store i8* %s, i8** %1, align 8, !llfi_index !168
  %AI = alloca i1
  store i1 true, i1* %AI
  %2 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !169
  %3 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !169
  %check_cmp = icmp eq %struct._IO_FILE* %2, %3
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %4 = load i8** %1, align 8, !llfi_index !170
  %5 = load i8** %1, align 8, !llfi_index !170
  %check_cmp1 = icmp eq i8* %4, %5
  %check_and2 = and i1 %check_cmp1, %check_and
  store i1 %check_and2, i1* %AI
  br i1 %check_and2, label %6, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %6

; <label>:6                                       ; preds = %checkBb, %0
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i8* %4), !llfi_index !171
  ret void, !llfi_index !172
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !173
  %2 = alloca i32, align 4, !llfi_index !174
  %3 = alloca i8**, align 8, !llfi_index !175
  store i32 0, i32* %1, !llfi_index !176
  store i32 %argc, i32* %2, align 4, !llfi_index !177
  store i8** %argv, i8*** %3, align 8, !llfi_index !178
  %AI = alloca i1
  store i1 true, i1* %AI
  %4 = load i32* %2, align 4, !llfi_index !179
  %5 = load i32* %2, align 4, !llfi_index !179
  %check_cmp = icmp eq i32 %4, %5
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %6 = load i8*** %3, align 8, !llfi_index !180
  %7 = load i8*** %3, align 8, !llfi_index !180
  %check_cmp1 = icmp eq i8** %6, %7
  %check_and2 = and i1 %check_cmp1, %check_and
  store i1 %check_and2, i1* %AI
  br i1 %check_and2, label %8, label %checkBb

checkBb:                                          ; preds = %0
  call void @check_flag()
  br label %8

; <label>:8                                       ; preds = %checkBb, %0
  call void @_Z3runiPPc(i32 %4, i8** %6), !llfi_index !181
  ret i32 0, !llfi_index !182
}

; Function Attrs: uwtable
define void @_Z3runiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !183
  %2 = alloca i8**, align 8, !llfi_index !184
  %cycles = alloca i64, align 8, !llfi_index !185
  %src = alloca i32*, align 8, !llfi_index !186
  %dst = alloca i32*, align 8, !llfi_index !187
  %temp = alloca i32*, align 8, !llfi_index !188
  %min = alloca i32, align 4, !llfi_index !189
  %t = alloca i32, align 4, !llfi_index !190
  %n = alloca i32, align 4, !llfi_index !191
  %i = alloca i32, align 4, !llfi_index !192
  %i1 = alloca i32, align 4, !llfi_index !193
  store i32 %argc, i32* %1, align 4, !llfi_index !194
  store i8** %argv, i8*** %2, align 8, !llfi_index !195
  %AI = alloca i1
  store i1 true, i1* %AI
  %3 = load i32* %1, align 4, !llfi_index !196
  %4 = load i32* %1, align 4, !llfi_index !196
  %check_cmp = icmp eq i32 %3, %4
  %loadone = load i1* %AI
  %check_and = and i1 %check_cmp, %loadone
  %5 = load i8*** %2, align 8, !llfi_index !197
  %6 = load i8*** %2, align 8, !llfi_index !197
  %check_cmp1 = icmp eq i8** %5, %6
  %check_and2 = and i1 %check_cmp1, %check_and
  call void @_Z4initiPPc(i32 %3, i8** %5), !llfi_index !198
  %7 = load i32** @result, align 8, !llfi_index !199
  %8 = load i32** @result, align 8, !llfi_index !199
  %check_cmp3 = icmp eq i32* %7, %8
  %check_and4 = and i1 %check_cmp3, %check_and2
  store i32* %7, i32** %dst, align 8, !llfi_index !200
  %9 = load i32* @cols, align 4, !llfi_index !201
  %10 = load i32* @cols, align 4, !llfi_index !201
  %11 = sext i32 %9 to i64, !llfi_index !202
  %12 = sext i32 %10 to i64, !llfi_index !202
  %check_cmp5 = icmp eq i64 %11, %12
  %check_and6 = and i1 %check_cmp5, %check_and4
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 4), !llfi_index !203
  %14 = extractvalue { i64, i1 } %13, 1, !llfi_index !204
  %15 = extractvalue { i64, i1 } %13, 0, !llfi_index !205
  %16 = select i1 %14, i64 -1, i64 %15, !llfi_index !206
  %17 = call noalias i8* @_Znam(i64 %16) #10, !llfi_index !207
  %18 = bitcast i8* %17 to i32*, !llfi_index !208
  %19 = bitcast i8* %17 to i32*, !llfi_index !208
  %check_cmp7 = icmp eq i32* %18, %19
  %check_and8 = and i1 %check_cmp7, %check_and6
  store i1 %check_and8, i1* %AI
  store i32* %18, i32** %src, align 8, !llfi_index !209
  store i32 0, i32* %t, align 4, !llfi_index !210
  br label %20, !llfi_index !211

; <label>:20                                      ; preds = %176, %0
  %21 = load i32* %t, align 4, !llfi_index !212
  %22 = load i32* %t, align 4, !llfi_index !212
  %23 = load i32* @rows, align 4, !llfi_index !213
  %24 = load i32* @rows, align 4, !llfi_index !213
  %25 = sub nsw i32 %23, 1, !llfi_index !214
  %26 = sub nsw i32 %24, 1, !llfi_index !214
  %27 = icmp slt i32 %21, %25, !llfi_index !215
  %28 = icmp slt i32 %22, %26, !llfi_index !215
  %check_cmp9 = icmp eq i1 %27, %28
  %loadone10 = load i1* %AI
  %check_and11 = and i1 %check_cmp9, %loadone10
  store i1 %check_and11, i1* %AI
  br i1 %27, label %29, label %181, !llfi_index !216

; <label>:29                                      ; preds = %20
  %30 = load i32** %src, align 8, !llfi_index !217
  %31 = load i32** %src, align 8, !llfi_index !217
  %check_cmp12 = icmp eq i32* %30, %31
  %loadone13 = load i1* %AI
  %check_and14 = and i1 %check_cmp12, %loadone13
  store i32* %30, i32** %temp, align 8, !llfi_index !218
  %32 = load i32** %dst, align 8, !llfi_index !219
  %33 = load i32** %dst, align 8, !llfi_index !219
  %check_cmp15 = icmp eq i32* %32, %33
  %check_and16 = and i1 %check_cmp15, %check_and14
  store i32* %32, i32** %src, align 8, !llfi_index !220
  %34 = load i32** %temp, align 8, !llfi_index !221
  %35 = load i32** %temp, align 8, !llfi_index !221
  %check_cmp17 = icmp eq i32* %34, %35
  %check_and18 = and i1 %check_cmp17, %check_and16
  store i1 %check_and18, i1* %AI
  store i32* %34, i32** %dst, align 8, !llfi_index !222
  store i32 0, i32* %n, align 4, !llfi_index !223
  br label %36, !llfi_index !224

; <label>:36                                      ; preds = %170, %29
  %37 = load i32* %n, align 4, !llfi_index !225
  %38 = load i32* %n, align 4, !llfi_index !225
  %39 = load i32* @cols, align 4, !llfi_index !226
  %40 = load i32* @cols, align 4, !llfi_index !226
  %41 = icmp slt i32 %37, %39, !llfi_index !227
  %42 = icmp slt i32 %38, %40, !llfi_index !227
  %check_cmp19 = icmp eq i1 %41, %42
  %loadone20 = load i1* %AI
  %check_and21 = and i1 %check_cmp19, %loadone20
  store i1 %check_and21, i1* %AI
  br i1 %41, label %43, label %175, !llfi_index !228

; <label>:43                                      ; preds = %36
  %44 = load i32* %n, align 4, !llfi_index !229
  %45 = load i32* %n, align 4, !llfi_index !229
  %46 = sext i32 %44 to i64, !llfi_index !230
  %47 = sext i32 %45 to i64, !llfi_index !230
  %48 = load i32** %src, align 8, !llfi_index !231
  %49 = load i32** %src, align 8, !llfi_index !231
  %50 = getelementptr inbounds i32* %48, i64 %46, !llfi_index !232
  %51 = getelementptr inbounds i32* %49, i64 %47, !llfi_index !232
  %52 = load i32* %50, align 4, !llfi_index !233
  %53 = load i32* %51, align 4, !llfi_index !233
  %check_cmp22 = icmp eq i32 %52, %53
  %loadone23 = load i1* %AI
  %check_and24 = and i1 %check_cmp22, %loadone23
  store i32 %52, i32* %min, align 4, !llfi_index !234
  %54 = load i32* %n, align 4, !llfi_index !235
  %55 = load i32* %n, align 4, !llfi_index !235
  %56 = icmp sgt i32 %54, 0, !llfi_index !236
  %57 = icmp sgt i32 %55, 0, !llfi_index !236
  %check_cmp25 = icmp eq i1 %56, %57
  %check_and26 = and i1 %check_cmp25, %check_and24
  store i1 %check_and26, i1* %AI
  br i1 %56, label %58, label %93, !llfi_index !237

; <label>:58                                      ; preds = %43
  %59 = load i32* %min, align 4, !llfi_index !238
  %60 = load i32* %min, align 4, !llfi_index !238
  %61 = load i32* %n, align 4, !llfi_index !239
  %62 = load i32* %n, align 4, !llfi_index !239
  %63 = sub nsw i32 %61, 1, !llfi_index !240
  %64 = sub nsw i32 %62, 1, !llfi_index !240
  %65 = sext i32 %63 to i64, !llfi_index !241
  %66 = sext i32 %64 to i64, !llfi_index !241
  %67 = load i32** %src, align 8, !llfi_index !242
  %68 = load i32** %src, align 8, !llfi_index !242
  %69 = getelementptr inbounds i32* %67, i64 %65, !llfi_index !243
  %70 = getelementptr inbounds i32* %68, i64 %66, !llfi_index !243
  %71 = load i32* %69, align 4, !llfi_index !244
  %72 = load i32* %70, align 4, !llfi_index !244
  %73 = icmp sle i32 %59, %71, !llfi_index !245
  %74 = icmp sle i32 %60, %72, !llfi_index !245
  %check_cmp27 = icmp eq i1 %73, %74
  %loadone28 = load i1* %AI
  %check_and29 = and i1 %check_cmp27, %loadone28
  store i1 %check_and29, i1* %AI
  br i1 %73, label %75, label %78, !llfi_index !246

; <label>:75                                      ; preds = %58
  %76 = load i32* %min, align 4, !llfi_index !247
  %77 = load i32* %min, align 4, !llfi_index !247
  %check_cmp30 = icmp eq i32 %76, %77
  %loadone31 = load i1* %AI
  %check_and32 = and i1 %check_cmp30, %loadone31
  store i1 %check_and32, i1* %AI
  br label %91, !llfi_index !248

; <label>:78                                      ; preds = %58
  %79 = load i32* %n, align 4, !llfi_index !249
  %80 = load i32* %n, align 4, !llfi_index !249
  %81 = sub nsw i32 %79, 1, !llfi_index !250
  %82 = sub nsw i32 %80, 1, !llfi_index !250
  %83 = sext i32 %81 to i64, !llfi_index !251
  %84 = sext i32 %82 to i64, !llfi_index !251
  %85 = load i32** %src, align 8, !llfi_index !252
  %86 = load i32** %src, align 8, !llfi_index !252
  %87 = getelementptr inbounds i32* %85, i64 %83, !llfi_index !253
  %88 = getelementptr inbounds i32* %86, i64 %84, !llfi_index !253
  %89 = load i32* %87, align 4, !llfi_index !254
  %90 = load i32* %88, align 4, !llfi_index !254
  %check_cmp33 = icmp eq i32 %89, %90
  %loadone34 = load i1* %AI
  %check_and35 = and i1 %check_cmp33, %loadone34
  store i1 %check_and35, i1* %AI
  br label %91, !llfi_index !255

; <label>:91                                      ; preds = %78, %75
  %92 = phi i32 [ %76, %75 ], [ %89, %78 ], !llfi_index !256
  store i32 %92, i32* %min, align 4, !llfi_index !257
  br label %93, !llfi_index !258

; <label>:93                                      ; preds = %91, %43
  %94 = load i32* %n, align 4, !llfi_index !259
  %95 = load i32* %n, align 4, !llfi_index !259
  %96 = load i32* @cols, align 4, !llfi_index !260
  %97 = load i32* @cols, align 4, !llfi_index !260
  %98 = sub nsw i32 %96, 1, !llfi_index !261
  %99 = sub nsw i32 %97, 1, !llfi_index !261
  %100 = icmp slt i32 %94, %98, !llfi_index !262
  %101 = icmp slt i32 %95, %99, !llfi_index !262
  %check_cmp36 = icmp eq i1 %100, %101
  %loadone37 = load i1* %AI
  %check_and38 = and i1 %check_cmp36, %loadone37
  store i1 %check_and38, i1* %AI
  br i1 %100, label %102, label %137, !llfi_index !263

; <label>:102                                     ; preds = %93
  %103 = load i32* %min, align 4, !llfi_index !264
  %104 = load i32* %min, align 4, !llfi_index !264
  %105 = load i32* %n, align 4, !llfi_index !265
  %106 = load i32* %n, align 4, !llfi_index !265
  %107 = add nsw i32 %105, 1, !llfi_index !266
  %108 = add nsw i32 %106, 1, !llfi_index !266
  %109 = sext i32 %107 to i64, !llfi_index !267
  %110 = sext i32 %108 to i64, !llfi_index !267
  %111 = load i32** %src, align 8, !llfi_index !268
  %112 = load i32** %src, align 8, !llfi_index !268
  %113 = getelementptr inbounds i32* %111, i64 %109, !llfi_index !269
  %114 = getelementptr inbounds i32* %112, i64 %110, !llfi_index !269
  %115 = load i32* %113, align 4, !llfi_index !270
  %116 = load i32* %114, align 4, !llfi_index !270
  %117 = icmp sle i32 %103, %115, !llfi_index !271
  %118 = icmp sle i32 %104, %116, !llfi_index !271
  %check_cmp39 = icmp eq i1 %117, %118
  %loadone40 = load i1* %AI
  %check_and41 = and i1 %check_cmp39, %loadone40
  store i1 %check_and41, i1* %AI
  br i1 %117, label %119, label %122, !llfi_index !272

; <label>:119                                     ; preds = %102
  %120 = load i32* %min, align 4, !llfi_index !273
  %121 = load i32* %min, align 4, !llfi_index !273
  %check_cmp42 = icmp eq i32 %120, %121
  %loadone43 = load i1* %AI
  %check_and44 = and i1 %check_cmp42, %loadone43
  store i1 %check_and44, i1* %AI
  br label %135, !llfi_index !274

; <label>:122                                     ; preds = %102
  %123 = load i32* %n, align 4, !llfi_index !275
  %124 = load i32* %n, align 4, !llfi_index !275
  %125 = add nsw i32 %123, 1, !llfi_index !276
  %126 = add nsw i32 %124, 1, !llfi_index !276
  %127 = sext i32 %125 to i64, !llfi_index !277
  %128 = sext i32 %126 to i64, !llfi_index !277
  %129 = load i32** %src, align 8, !llfi_index !278
  %130 = load i32** %src, align 8, !llfi_index !278
  %131 = getelementptr inbounds i32* %129, i64 %127, !llfi_index !279
  %132 = getelementptr inbounds i32* %130, i64 %128, !llfi_index !279
  %133 = load i32* %131, align 4, !llfi_index !280
  %134 = load i32* %132, align 4, !llfi_index !280
  %check_cmp45 = icmp eq i32 %133, %134
  %loadone46 = load i1* %AI
  %check_and47 = and i1 %check_cmp45, %loadone46
  store i1 %check_and47, i1* %AI
  br label %135, !llfi_index !281

; <label>:135                                     ; preds = %122, %119
  %136 = phi i32 [ %120, %119 ], [ %133, %122 ], !llfi_index !282
  store i32 %136, i32* %min, align 4, !llfi_index !283
  br label %137, !llfi_index !284

; <label>:137                                     ; preds = %135, %93
  %138 = load i32* %n, align 4, !llfi_index !285
  %139 = load i32* %n, align 4, !llfi_index !285
  %140 = sext i32 %138 to i64, !llfi_index !286
  %141 = sext i32 %139 to i64, !llfi_index !286
  %142 = load i32* %t, align 4, !llfi_index !287
  %143 = load i32* %t, align 4, !llfi_index !287
  %144 = add nsw i32 %142, 1, !llfi_index !288
  %145 = add nsw i32 %143, 1, !llfi_index !288
  %146 = sext i32 %144 to i64, !llfi_index !289
  %147 = sext i32 %145 to i64, !llfi_index !289
  %148 = load i32*** @wall, align 8, !llfi_index !290
  %149 = load i32*** @wall, align 8, !llfi_index !290
  %150 = getelementptr inbounds i32** %148, i64 %146, !llfi_index !291
  %151 = getelementptr inbounds i32** %149, i64 %147, !llfi_index !291
  %152 = load i32** %150, align 8, !llfi_index !292
  %153 = load i32** %151, align 8, !llfi_index !292
  %154 = getelementptr inbounds i32* %152, i64 %140, !llfi_index !293
  %155 = getelementptr inbounds i32* %153, i64 %141, !llfi_index !293
  %156 = load i32* %154, align 4, !llfi_index !294
  %157 = load i32* %155, align 4, !llfi_index !294
  %158 = load i32* %min, align 4, !llfi_index !295
  %159 = load i32* %min, align 4, !llfi_index !295
  %160 = add nsw i32 %156, %158, !llfi_index !296
  %161 = add nsw i32 %157, %159, !llfi_index !296
  %check_cmp48 = icmp eq i32 %160, %161
  %loadone49 = load i1* %AI
  %check_and50 = and i1 %check_cmp48, %loadone49
  %162 = load i32* %n, align 4, !llfi_index !297
  %163 = load i32* %n, align 4, !llfi_index !297
  %164 = sext i32 %162 to i64, !llfi_index !298
  %165 = sext i32 %163 to i64, !llfi_index !298
  %166 = load i32** %dst, align 8, !llfi_index !299
  %167 = load i32** %dst, align 8, !llfi_index !299
  %168 = getelementptr inbounds i32* %166, i64 %164, !llfi_index !300
  %169 = getelementptr inbounds i32* %167, i64 %165, !llfi_index !300
  %check_cmp51 = icmp eq i32* %168, %169
  %check_and52 = and i1 %check_cmp51, %check_and50
  store i1 %check_and52, i1* %AI
  store i32 %160, i32* %168, align 4, !llfi_index !301
  br label %170, !llfi_index !302

; <label>:170                                     ; preds = %137
  %171 = load i32* %n, align 4, !llfi_index !303
  %172 = load i32* %n, align 4, !llfi_index !303
  %173 = add nsw i32 %171, 1, !llfi_index !304
  %174 = add nsw i32 %172, 1, !llfi_index !304
  %check_cmp53 = icmp eq i32 %173, %174
  %loadone54 = load i1* %AI
  %check_and55 = and i1 %check_cmp53, %loadone54
  store i1 %check_and55, i1* %AI
  store i32 %173, i32* %n, align 4, !llfi_index !305
  br label %36, !llfi_index !306

; <label>:175                                     ; preds = %36
  br label %176, !llfi_index !307

; <label>:176                                     ; preds = %175
  %177 = load i32* %t, align 4, !llfi_index !308
  %178 = load i32* %t, align 4, !llfi_index !308
  %179 = add nsw i32 %177, 1, !llfi_index !309
  %180 = add nsw i32 %178, 1, !llfi_index !309
  %check_cmp56 = icmp eq i32 %179, %180
  %loadone57 = load i1* %AI
  %check_and58 = and i1 %check_cmp56, %loadone57
  store i1 %check_and58, i1* %AI
  store i32 %179, i32* %t, align 4, !llfi_index !310
  br label %20, !llfi_index !311

; <label>:181                                     ; preds = %20
  store i32 0, i32* %i, align 4, !llfi_index !312
  br label %182, !llfi_index !313

; <label>:182                                     ; preds = %201, %181
  %183 = load i32* %i, align 4, !llfi_index !314
  %184 = load i32* %i, align 4, !llfi_index !314
  %185 = load i32* @cols, align 4, !llfi_index !315
  %186 = load i32* @cols, align 4, !llfi_index !315
  %187 = icmp slt i32 %183, %185, !llfi_index !316
  %188 = icmp slt i32 %184, %186, !llfi_index !316
  %check_cmp59 = icmp eq i1 %187, %188
  %loadone60 = load i1* %AI
  %check_and61 = and i1 %check_cmp59, %loadone60
  store i1 %check_and61, i1* %AI
  br i1 %187, label %189, label %206, !llfi_index !317

; <label>:189                                     ; preds = %182
  %190 = load i32* %i, align 4, !llfi_index !318
  %191 = load i32* %i, align 4, !llfi_index !318
  %192 = sext i32 %190 to i64, !llfi_index !319
  %193 = sext i32 %191 to i64, !llfi_index !319
  %194 = load i32** @data, align 8, !llfi_index !320
  %195 = load i32** @data, align 8, !llfi_index !320
  %196 = getelementptr inbounds i32* %194, i64 %192, !llfi_index !321
  %197 = getelementptr inbounds i32* %195, i64 %193, !llfi_index !321
  %198 = load i32* %196, align 4, !llfi_index !322
  %199 = load i32* %197, align 4, !llfi_index !322
  %check_cmp62 = icmp eq i32 %198, %199
  %loadone63 = load i1* %AI
  %check_and64 = and i1 %check_cmp62, %loadone63
  store i1 %check_and64, i1* %AI
  %200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %198), !llfi_index !323
  br label %201, !llfi_index !324

; <label>:201                                     ; preds = %189
  %202 = load i32* %i, align 4, !llfi_index !325
  %203 = load i32* %i, align 4, !llfi_index !325
  %204 = add nsw i32 %202, 1, !llfi_index !326
  %205 = add nsw i32 %203, 1, !llfi_index !326
  %check_cmp65 = icmp eq i32 %204, %205
  %loadone66 = load i1* %AI
  %check_and67 = and i1 %check_cmp65, %loadone66
  store i1 %check_and67, i1* %AI
  store i32 %204, i32* %i, align 4, !llfi_index !327
  br label %182, !llfi_index !328

; <label>:206                                     ; preds = %182
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !329
  store i32 0, i32* %i1, align 4, !llfi_index !330
  br label %208, !llfi_index !331

; <label>:208                                     ; preds = %227, %206
  %209 = load i32* %i1, align 4, !llfi_index !332
  %210 = load i32* %i1, align 4, !llfi_index !332
  %211 = load i32* @cols, align 4, !llfi_index !333
  %212 = load i32* @cols, align 4, !llfi_index !333
  %213 = icmp slt i32 %209, %211, !llfi_index !334
  %214 = icmp slt i32 %210, %212, !llfi_index !334
  %check_cmp68 = icmp eq i1 %213, %214
  %loadone69 = load i1* %AI
  %check_and70 = and i1 %check_cmp68, %loadone69
  store i1 %check_and70, i1* %AI
  br i1 %213, label %215, label %232, !llfi_index !335

; <label>:215                                     ; preds = %208
  %216 = load i32* %i1, align 4, !llfi_index !336
  %217 = load i32* %i1, align 4, !llfi_index !336
  %218 = sext i32 %216 to i64, !llfi_index !337
  %219 = sext i32 %217 to i64, !llfi_index !337
  %220 = load i32** %dst, align 8, !llfi_index !338
  %221 = load i32** %dst, align 8, !llfi_index !338
  %222 = getelementptr inbounds i32* %220, i64 %218, !llfi_index !339
  %223 = getelementptr inbounds i32* %221, i64 %219, !llfi_index !339
  %224 = load i32* %222, align 4, !llfi_index !340
  %225 = load i32* %223, align 4, !llfi_index !340
  %check_cmp71 = icmp eq i32 %224, %225
  %loadone72 = load i1* %AI
  %check_and73 = and i1 %check_cmp71, %loadone72
  store i1 %check_and73, i1* %AI
  %226 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %224), !llfi_index !341
  br label %227, !llfi_index !342

; <label>:227                                     ; preds = %215
  %228 = load i32* %i1, align 4, !llfi_index !343
  %229 = load i32* %i1, align 4, !llfi_index !343
  %230 = add nsw i32 %228, 1, !llfi_index !344
  %231 = add nsw i32 %229, 1, !llfi_index !344
  %check_cmp74 = icmp eq i32 %230, %231
  %loadone75 = load i1* %AI
  %check_and76 = and i1 %check_cmp74, %loadone75
  store i1 %check_and76, i1* %AI
  store i32 %230, i32* %i1, align 4, !llfi_index !345
  br label %208, !llfi_index !346

; <label>:232                                     ; preds = %208
  %233 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !347
  %234 = load i32** @data, align 8, !llfi_index !348
  %235 = load i32** @data, align 8, !llfi_index !348
  %236 = icmp eq i32* %234, null, !llfi_index !349
  %237 = icmp eq i32* %235, null, !llfi_index !349
  %check_cmp77 = icmp eq i1 %236, %237
  %loadone78 = load i1* %AI
  %check_and79 = and i1 %check_cmp77, %loadone78
  store i1 %check_and79, i1* %AI
  br i1 %236, label %241, label %238, !llfi_index !350

; <label>:238                                     ; preds = %232
  %239 = bitcast i32* %234 to i8*, !llfi_index !351
  %240 = bitcast i32* %235 to i8*, !llfi_index !351
  %check_cmp80 = icmp eq i8* %239, %240
  %loadone81 = load i1* %AI
  %check_and82 = and i1 %check_cmp80, %loadone81
  store i1 %check_and82, i1* %AI
  call void @_ZdaPv(i8* %239) #11, !llfi_index !352
  br label %241, !llfi_index !353

; <label>:241                                     ; preds = %238, %232
  %242 = load i32*** @wall, align 8, !llfi_index !354
  %243 = load i32*** @wall, align 8, !llfi_index !354
  %244 = icmp eq i32** %242, null, !llfi_index !355
  %245 = icmp eq i32** %243, null, !llfi_index !355
  %check_cmp83 = icmp eq i1 %244, %245
  %loadone84 = load i1* %AI
  %check_and85 = and i1 %check_cmp83, %loadone84
  store i1 %check_and85, i1* %AI
  br i1 %244, label %249, label %246, !llfi_index !356

; <label>:246                                     ; preds = %241
  %247 = bitcast i32** %242 to i8*, !llfi_index !357
  %248 = bitcast i32** %243 to i8*, !llfi_index !357
  %check_cmp86 = icmp eq i8* %247, %248
  %loadone87 = load i1* %AI
  %check_and88 = and i1 %check_cmp86, %loadone87
  store i1 %check_and88, i1* %AI
  call void @_ZdaPv(i8* %247) #11, !llfi_index !358
  br label %249, !llfi_index !359

; <label>:249                                     ; preds = %246, %241
  %250 = load i32** %dst, align 8, !llfi_index !360
  %251 = load i32** %dst, align 8, !llfi_index !360
  %252 = icmp eq i32* %250, null, !llfi_index !361
  %253 = icmp eq i32* %251, null, !llfi_index !361
  %check_cmp89 = icmp eq i1 %252, %253
  %loadone90 = load i1* %AI
  %check_and91 = and i1 %check_cmp89, %loadone90
  store i1 %check_and91, i1* %AI
  br i1 %252, label %257, label %254, !llfi_index !362

; <label>:254                                     ; preds = %249
  %255 = bitcast i32* %250 to i8*, !llfi_index !363
  %256 = bitcast i32* %251 to i8*, !llfi_index !363
  %check_cmp92 = icmp eq i8* %255, %256
  %loadone93 = load i1* %AI
  %check_and94 = and i1 %check_cmp92, %loadone93
  store i1 %check_and94, i1* %AI
  call void @_ZdaPv(i8* %255) #11, !llfi_index !364
  br label %257, !llfi_index !365

; <label>:257                                     ; preds = %254, %249
  %258 = load i32** %src, align 8, !llfi_index !366
  %259 = load i32** %src, align 8, !llfi_index !366
  %260 = icmp eq i32* %258, null, !llfi_index !367
  %261 = icmp eq i32* %259, null, !llfi_index !367
  %check_cmp95 = icmp eq i1 %260, %261
  %loadone96 = load i1* %AI
  %check_and97 = and i1 %check_cmp95, %loadone96
  store i1 %check_and97, i1* %AI
  br i1 %260, label %265, label %262, !llfi_index !368

; <label>:262                                     ; preds = %257
  %263 = bitcast i32* %258 to i8*, !llfi_index !369
  %264 = bitcast i32* %259 to i8*, !llfi_index !369
  call void @_ZdaPv(i8* %263) #11, !llfi_index !370
  br label %265, !llfi_index !371

; <label>:265                                     ; preds = %262, %257
  ret void, !llfi_index !372
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #7 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 99) #9
  unreachable
                                                  ; No predecessors!
  ret void
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }

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
