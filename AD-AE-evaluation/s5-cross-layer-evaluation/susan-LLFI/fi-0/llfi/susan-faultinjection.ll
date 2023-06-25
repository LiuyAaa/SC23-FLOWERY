; ModuleID = '/home/foo/SC23/AD-AE-evaluation/s5-cross-layer-evaluation/susan-LLFI/fi-0/llfi/susan-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"-s : Smoothing mode (default)\0A\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"-e : Edges mode\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"-c : Corners mode\0A\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"See source code for more information about setting the thresholds\0A\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\0A\00", align 1
@.str6 = private unnamed_addr constant [107 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\0A\00", align 1
@.str7 = private unnamed_addr constant [49 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\0A\00", align 1
@.str8 = private unnamed_addr constant [79 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\0A\00", align 1
@.str9 = private unnamed_addr constant [111 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\0A\00", align 1
@.str10 = private unnamed_addr constant [108 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\0A\00", align 1
@.str11 = private unnamed_addr constant [91 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\0A\00", align 1
@.str12 = private unnamed_addr constant [77 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str26 = private unnamed_addr constant [61 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\0A\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"as a float: see top \22defines\22 section.\0A\00", align 1
@.str28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str29 = private unnamed_addr constant [26 x i8] c"No argument following -d\0A\00", align 1
@.str30 = private unnamed_addr constant [26 x i8] c"No argument following -t\0A\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"Omit susan edges.\0A\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"Omit susan corners.\0A\00", align 1
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@sdiv_namestr = internal constant [5 x i8] c"sdiv\00"
@sitofp_namestr = internal constant [7 x i8] c"sitofp\00"
@fpext_namestr = internal constant [6 x i8] c"fpext\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fptrunc_namestr = internal constant [8 x i8] c"fptrunc\00"
@fptoui_namestr = internal constant [7 x i8] c"fptoui\00"
@fptosi_namestr = internal constant [7 x i8] c"fptosi\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"

; Function Attrs: nounwind uwtable
define i32 @usage() #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str, i32 0, i32 0)), !llfi_index !2
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0)), !llfi_index !3
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0)), !llfi_index !4
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)), !llfi_index !5
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str4, i32 0, i32 0)), !llfi_index !6
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str5, i32 0, i32 0)), !llfi_index !7
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([107 x i8]* @.str6, i32 0, i32 0)), !llfi_index !8
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str7, i32 0, i32 0)), !llfi_index !9
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([79 x i8]* @.str8, i32 0, i32 0)), !llfi_index !10
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([111 x i8]* @.str9, i32 0, i32 0)), !llfi_index !11
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([108 x i8]* @.str10, i32 0, i32 0)), !llfi_index !12
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([91 x i8]* @.str11, i32 0, i32 0)), !llfi_index !13
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str12, i32 0, i32 0)), !llfi_index !14
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !15
  unreachable, !llfi_index !16
                                                  ; No predecessors!
  %16 = load i32* %1, !llfi_index !17
  %fi = call i32 @injectFault2(i64 17, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i32 %fi, !llfi_index !19
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @getint(%struct._IO_FILE* %fd) #0 {
  %1 = alloca i32, align 4, !llfi_index !20
  %2 = alloca %struct._IO_FILE*, align 8, !llfi_index !21
  %c = alloca i32, align 4, !llfi_index !22
  %i = alloca i32, align 4, !llfi_index !23
  %dummy = alloca [10000 x i8], align 16, !llfi_index !24
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %2, align 8, !llfi_index !25
  %3 = load %struct._IO_FILE** %2, align 8, !llfi_index !26
  %fi4 = call %struct._IO_FILE* @injectFault1(i64 25, %struct._IO_FILE* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %4 = call i32 @_IO_getc(%struct._IO_FILE* %fi4), !llfi_index !27
  store i32 %4, i32* %c, align 4, !llfi_index !28
  br label %5, !llfi_index !29

; <label>:5                                       ; preds = %25, %0
  %6 = load i32* %c, align 4, !llfi_index !30
  %fi5 = call i32 @injectFault2(i64 29, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %7 = icmp eq i32 %fi5, 35, !llfi_index !31
  %fi6 = call i1 @injectFault0(i64 30, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi6, label %8, label %12, !llfi_index !32

; <label>:8                                       ; preds = %5
  %9 = getelementptr [10000 x i8]* %dummy, i32 0, i32 0, !llfi_index !33
  %fi7 = call i8* @injectFault3(i64 32, i8* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = load %struct._IO_FILE** %2, align 8, !llfi_index !34
  %fi8 = call %struct._IO_FILE* @injectFault1(i64 33, %struct._IO_FILE* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = call i8* @fgets(i8* %fi7, i32 9000, %struct._IO_FILE* %fi8), !llfi_index !35
  br label %12, !llfi_index !36

; <label>:12                                      ; preds = %8, %5
  %13 = load i32* %c, align 4, !llfi_index !37
  %fi9 = call i32 @injectFault2(i64 36, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = icmp eq i32 %fi9, -1, !llfi_index !38
  %fi10 = call i1 @injectFault0(i64 37, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi10, label %15, label %18, !llfi_index !39

; <label>:15                                      ; preds = %12
  %16 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !40
  %fi11 = call %struct._IO_FILE* @injectFault1(i64 39, %struct._IO_FILE* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi11, i8* getelementptr inbounds ([26 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0)), !llfi_index !41
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !42
  unreachable, !llfi_index !43

; <label>:18                                      ; preds = %12
  %19 = load i32* %c, align 4, !llfi_index !44
  %fi13 = call i32 @injectFault2(i64 43, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = icmp sge i32 %fi13, 48, !llfi_index !45
  %fi14 = call i1 @injectFault0(i64 44, i1 %20, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi14, label %21, label %25, !llfi_index !46

; <label>:21                                      ; preds = %18
  %22 = load i32* %c, align 4, !llfi_index !47
  %fi15 = call i32 @injectFault2(i64 46, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = icmp sle i32 %fi15, 57, !llfi_index !48
  %fi16 = call i1 @injectFault0(i64 47, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi16, label %24, label %25, !llfi_index !49

; <label>:24                                      ; preds = %21
  br label %28, !llfi_index !50

; <label>:25                                      ; preds = %21, %18
  %26 = load %struct._IO_FILE** %2, align 8, !llfi_index !51
  %fi = call %struct._IO_FILE* @injectFault1(i64 50, %struct._IO_FILE* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = call i32 @_IO_getc(%struct._IO_FILE* %fi), !llfi_index !52
  store i32 %27, i32* %c, align 4, !llfi_index !53
  br label %5, !llfi_index !54

; <label>:28                                      ; preds = %24
  store i32 0, i32* %i, align 4, !llfi_index !55
  br label %29, !llfi_index !56

; <label>:29                                      ; preds = %48, %28
  %30 = load i32* %i, align 4, !llfi_index !57
  %fi1 = call i32 @injectFault2(i64 56, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %31 = mul nsw i32 %fi1, 10, !llfi_index !58
  %fi2 = call i32 @injectFault2(i64 57, i32 %31, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i32* %c, align 4, !llfi_index !59
  %fi3 = call i32 @injectFault2(i64 58, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = sub nsw i32 %fi3, 48, !llfi_index !60
  %fi12 = call i32 @injectFault2(i64 59, i32 %33, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = add nsw i32 %fi2, %fi12, !llfi_index !61
  %fi17 = call i32 @injectFault2(i64 60, i32 %34, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi17, i32* %i, align 4, !llfi_index !62
  %35 = load %struct._IO_FILE** %2, align 8, !llfi_index !63
  %fi18 = call %struct._IO_FILE* @injectFault1(i64 62, %struct._IO_FILE* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = call i32 @_IO_getc(%struct._IO_FILE* %fi18), !llfi_index !64
  store i32 %36, i32* %c, align 4, !llfi_index !65
  %37 = load i32* %c, align 4, !llfi_index !66
  %fi19 = call i32 @injectFault2(i64 65, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %38 = icmp eq i32 %fi19, -1, !llfi_index !67
  %fi20 = call i1 @injectFault0(i64 66, i1 %38, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi20, label %39, label %41, !llfi_index !68

; <label>:39                                      ; preds = %29
  %40 = load i32* %i, align 4, !llfi_index !69
  %fi21 = call i32 @injectFault2(i64 68, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi21, i32* %1, !llfi_index !70
  br label %51, !llfi_index !71

; <label>:41                                      ; preds = %29
  %42 = load i32* %c, align 4, !llfi_index !72
  %fi22 = call i32 @injectFault2(i64 71, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %43 = icmp slt i32 %fi22, 48, !llfi_index !73
  %fi23 = call i1 @injectFault0(i64 72, i1 %43, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi23, label %47, label %44, !llfi_index !74

; <label>:44                                      ; preds = %41
  %45 = load i32* %c, align 4, !llfi_index !75
  %fi24 = call i32 @injectFault2(i64 74, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = icmp sgt i32 %fi24, 57, !llfi_index !76
  %fi25 = call i1 @injectFault0(i64 75, i1 %46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi25, label %47, label %48, !llfi_index !77

; <label>:47                                      ; preds = %44, %41
  br label %49, !llfi_index !78

; <label>:48                                      ; preds = %44
  br label %29, !llfi_index !79

; <label>:49                                      ; preds = %47
  %50 = load i32* %i, align 4, !llfi_index !80
  %fi26 = call i32 @injectFault2(i64 79, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi26, i32* %1, !llfi_index !81
  br label %51, !llfi_index !82

; <label>:51                                      ; preds = %49, %39
  %52 = load i32* %1, !llfi_index !83
  %fi27 = call i32 @injectFault2(i64 82, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i32 %fi27, !llfi_index !84
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @get_image(i8* %filename, i8** %in, i32* %x_size, i32* %y_size) #0 {
  %1 = alloca i8*, align 8, !llfi_index !85
  %2 = alloca i8**, align 8, !llfi_index !86
  %3 = alloca i32*, align 8, !llfi_index !87
  %4 = alloca i32*, align 8, !llfi_index !88
  %fd = alloca %struct._IO_FILE*, align 8, !llfi_index !89
  %header = alloca [100 x i8], align 16, !llfi_index !90
  %tmp = alloca i32, align 4, !llfi_index !91
  store i8* %filename, i8** %1, align 8, !llfi_index !92
  store i8** %in, i8*** %2, align 8, !llfi_index !93
  store i32* %x_size, i32** %3, align 8, !llfi_index !94
  store i32* %y_size, i32** %4, align 8, !llfi_index !95
  %5 = load i8** %1, align 8, !llfi_index !96
  %fi6 = call i8* @injectFault3(i64 95, i8* %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %6 = call %struct._IO_FILE* @fopen(i8* %fi6, i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0)), !llfi_index !97
  store %struct._IO_FILE* %6, %struct._IO_FILE** %fd, align 8, !llfi_index !98
  %7 = icmp eq %struct._IO_FILE* %6, null, !llfi_index !99
  %fi1 = call i1 @injectFault0(i64 98, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi1, label %8, label %12, !llfi_index !100

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !101
  %fi2 = call %struct._IO_FILE* @injectFault1(i64 100, %struct._IO_FILE* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = load i8** %1, align 8, !llfi_index !102
  %fi3 = call i8* @injectFault3(i64 101, i8* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi2, i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %fi3), !llfi_index !103
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !104
  unreachable, !llfi_index !105

; <label>:12                                      ; preds = %0
  %13 = load %struct._IO_FILE** %fd, align 8, !llfi_index !106
  %fi4 = call %struct._IO_FILE* @injectFault1(i64 105, %struct._IO_FILE* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = call i32 @fgetc(%struct._IO_FILE* %fi4), !llfi_index !107
  %15 = trunc i32 %14 to i8, !llfi_index !108
  %fi5 = call i8 @injectFault4(i64 107, i8 %15, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %16 = getelementptr [100 x i8]* %header, i32 0, i64 0, !llfi_index !109
  %fi7 = call i8* @injectFault3(i64 108, i8* %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi5, i8* %fi7, align 1, !llfi_index !110
  %17 = load %struct._IO_FILE** %fd, align 8, !llfi_index !111
  %fi8 = call %struct._IO_FILE* @injectFault1(i64 110, %struct._IO_FILE* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = call i32 @fgetc(%struct._IO_FILE* %fi8), !llfi_index !112
  %19 = trunc i32 %18 to i8, !llfi_index !113
  %fi9 = call i8 @injectFault4(i64 112, i8 %19, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = getelementptr [100 x i8]* %header, i32 0, i64 1, !llfi_index !114
  %fi10 = call i8* @injectFault3(i64 113, i8* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi9, i8* %fi10, align 1, !llfi_index !115
  %21 = getelementptr [100 x i8]* %header, i32 0, i64 0, !llfi_index !116
  %fi11 = call i8* @injectFault3(i64 115, i8* %21, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %22 = load i8* %fi11, align 1, !llfi_index !117
  %fi12 = call i8 @injectFault4(i64 116, i8 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = sext i8 %fi12 to i32, !llfi_index !118
  %fi13 = call i32 @injectFault2(i64 117, i32 %23, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %24 = icmp eq i32 %fi13, 80, !llfi_index !119
  %fi14 = call i1 @injectFault0(i64 118, i1 %24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi14, label %25, label %30, !llfi_index !120

; <label>:25                                      ; preds = %12
  %26 = getelementptr [100 x i8]* %header, i32 0, i64 1, !llfi_index !121
  %fi15 = call i8* @injectFault3(i64 120, i8* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = load i8* %fi15, align 1, !llfi_index !122
  %fi16 = call i8 @injectFault4(i64 121, i8 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = sext i8 %fi16 to i32, !llfi_index !123
  %fi17 = call i32 @injectFault2(i64 122, i32 %28, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %29 = icmp eq i32 %fi17, 53, !llfi_index !124
  %fi18 = call i1 @injectFault0(i64 123, i1 %29, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi18, label %34, label %30, !llfi_index !125

; <label>:30                                      ; preds = %25, %12
  %31 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !126
  %fi19 = call %struct._IO_FILE* @injectFault1(i64 125, %struct._IO_FILE* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i8** %1, align 8, !llfi_index !127
  %fi20 = call i8* @injectFault3(i64 126, i8* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi19, i8* getelementptr inbounds ([43 x i8]* @.str17, i32 0, i32 0), i8* %fi20), !llfi_index !128
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !129
  unreachable, !llfi_index !130

; <label>:34                                      ; preds = %25
  %35 = load %struct._IO_FILE** %fd, align 8, !llfi_index !131
  %fi21 = call %struct._IO_FILE* @injectFault1(i64 130, %struct._IO_FILE* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = call i32 @getint(%struct._IO_FILE* %fi21), !llfi_index !132
  %37 = load i32** %3, align 8, !llfi_index !133
  %fi22 = call i32* @injectFault6(i64 132, i32* %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %36, i32* %fi22, align 4, !llfi_index !134
  %38 = load %struct._IO_FILE** %fd, align 8, !llfi_index !135
  %fi23 = call %struct._IO_FILE* @injectFault1(i64 134, %struct._IO_FILE* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %39 = call i32 @getint(%struct._IO_FILE* %fi23), !llfi_index !136
  %40 = load i32** %4, align 8, !llfi_index !137
  %fi24 = call i32* @injectFault6(i64 136, i32* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %39, i32* %fi24, align 4, !llfi_index !138
  %41 = load %struct._IO_FILE** %fd, align 8, !llfi_index !139
  %fi25 = call %struct._IO_FILE* @injectFault1(i64 138, %struct._IO_FILE* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %42 = call i32 @getint(%struct._IO_FILE* %fi25), !llfi_index !140
  store i32 %42, i32* %tmp, align 4, !llfi_index !141
  %43 = load i32** %3, align 8, !llfi_index !142
  %fi26 = call i32* @injectFault6(i64 141, i32* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %44 = load i32* %fi26, align 4, !llfi_index !143
  %fi27 = call i32 @injectFault2(i64 142, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %45 = load i32** %4, align 8, !llfi_index !144
  %fi28 = call i32* @injectFault6(i64 143, i32* %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = load i32* %fi28, align 4, !llfi_index !145
  %fi29 = call i32 @injectFault2(i64 144, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %47 = mul nsw i32 %fi27, %fi29, !llfi_index !146
  %fi30 = call i32 @injectFault2(i64 145, i32 %47, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %48 = sext i32 %fi30 to i64, !llfi_index !147
  %fi31 = call i64 @injectFault5(i64 146, i64 %48, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = call noalias i8* @malloc(i64 %fi31) #4, !llfi_index !148
  %50 = load i8*** %2, align 8, !llfi_index !149
  %fi32 = call i8** @injectFault7(i64 148, i8** %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %49, i8** %fi32, align 8, !llfi_index !150
  %51 = load i8*** %2, align 8, !llfi_index !151
  %fi33 = call i8** @injectFault7(i64 150, i8** %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %52 = load i8** %fi33, align 8, !llfi_index !152
  %fi34 = call i8* @injectFault3(i64 151, i8* %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %53 = load i32** %3, align 8, !llfi_index !153
  %fi35 = call i32* @injectFault6(i64 152, i32* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %54 = load i32* %fi35, align 4, !llfi_index !154
  %fi36 = call i32 @injectFault2(i64 153, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %55 = load i32** %4, align 8, !llfi_index !155
  %fi37 = call i32* @injectFault6(i64 154, i32* %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %56 = load i32* %fi37, align 4, !llfi_index !156
  %fi38 = call i32 @injectFault2(i64 155, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %57 = mul nsw i32 %fi36, %fi38, !llfi_index !157
  %fi39 = call i32 @injectFault2(i64 156, i32 %57, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %58 = sext i32 %fi39 to i64, !llfi_index !158
  %fi40 = call i64 @injectFault5(i64 157, i64 %58, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %59 = load %struct._IO_FILE** %fd, align 8, !llfi_index !159
  %fi41 = call %struct._IO_FILE* @injectFault1(i64 158, %struct._IO_FILE* %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = call i64 @fread(i8* %fi34, i64 1, i64 %fi40, %struct._IO_FILE* %fi41), !llfi_index !160
  %61 = icmp eq i64 %60, 0, !llfi_index !161
  %fi = call i1 @injectFault0(i64 160, i1 %61, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi, label %62, label %66, !llfi_index !162

; <label>:62                                      ; preds = %34
  %63 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !163
  %fi42 = call %struct._IO_FILE* @injectFault1(i64 162, %struct._IO_FILE* %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %64 = load i8** %1, align 8, !llfi_index !164
  %fi43 = call i8* @injectFault3(i64 163, i8* %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi42, i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i8* %fi43), !llfi_index !165
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !166
  unreachable, !llfi_index !167

; <label>:66                                      ; preds = %34
  %67 = load %struct._IO_FILE** %fd, align 8, !llfi_index !168
  %fi44 = call %struct._IO_FILE* @injectFault1(i64 167, %struct._IO_FILE* %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %68 = call i32 @fclose(%struct._IO_FILE* %fi44), !llfi_index !169
  ret void, !llfi_index !170
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @put_image(i8* %filename, i8* %in, i32 %x_size, i32 %y_size) #0 {
  %1 = alloca i32, align 4, !llfi_index !171
  %2 = alloca i8*, align 8, !llfi_index !172
  %3 = alloca i8*, align 8, !llfi_index !173
  %4 = alloca i32, align 4, !llfi_index !174
  %5 = alloca i32, align 4, !llfi_index !175
  %fd = alloca %struct._IO_FILE*, align 8, !llfi_index !176
  store i8* %filename, i8** %2, align 8, !llfi_index !177
  store i8* %in, i8** %3, align 8, !llfi_index !178
  store i32 %x_size, i32* %4, align 4, !llfi_index !179
  store i32 %y_size, i32* %5, align 4, !llfi_index !180
  %6 = load i8** %2, align 8, !llfi_index !181
  %fi13 = call i8* @injectFault3(i64 180, i8* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %7 = call %struct._IO_FILE* @fopen(i8* %fi13, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0)), !llfi_index !182
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fd, align 8, !llfi_index !183
  %8 = icmp eq %struct._IO_FILE* %7, null, !llfi_index !184
  %fi14 = call i1 @injectFault0(i64 183, i1 %8, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi14, label %9, label %13, !llfi_index !185

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !186
  %fi16 = call %struct._IO_FILE* @injectFault1(i64 185, %struct._IO_FILE* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = load i8** %2, align 8, !llfi_index !187
  %fi17 = call i8* @injectFault3(i64 186, i8* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi16, i8* getelementptr inbounds ([23 x i8]* @.str20, i32 0, i32 0), i8* %fi17), !llfi_index !188
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !189
  unreachable, !llfi_index !190

; <label>:13                                      ; preds = %0
  %14 = load %struct._IO_FILE** %fd, align 8, !llfi_index !191
  %fi18 = call %struct._IO_FILE* @injectFault1(i64 190, %struct._IO_FILE* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi18, i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0)), !llfi_index !192
  %16 = load %struct._IO_FILE** %fd, align 8, !llfi_index !193
  %fi19 = call %struct._IO_FILE* @injectFault1(i64 192, %struct._IO_FILE* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = load i32* %4, align 4, !llfi_index !194
  %fi15 = call i32 @injectFault2(i64 193, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = load i32* %5, align 4, !llfi_index !195
  %fi1 = call i32 @injectFault2(i64 194, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi19, i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i32 %fi15, i32 %fi1), !llfi_index !196
  %20 = load %struct._IO_FILE** %fd, align 8, !llfi_index !197
  %fi2 = call %struct._IO_FILE* @injectFault1(i64 196, %struct._IO_FILE* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi2, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0)), !llfi_index !198
  %22 = load i8** %3, align 8, !llfi_index !199
  %fi3 = call i8* @injectFault3(i64 198, i8* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = load i32* %4, align 4, !llfi_index !200
  %fi4 = call i32 @injectFault2(i64 199, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %24 = load i32* %5, align 4, !llfi_index !201
  %fi5 = call i32 @injectFault2(i64 200, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %25 = mul nsw i32 %fi4, %fi5, !llfi_index !202
  %fi6 = call i32 @injectFault2(i64 201, i32 %25, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = sext i32 %fi6 to i64, !llfi_index !203
  %fi7 = call i64 @injectFault5(i64 202, i64 %26, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = load %struct._IO_FILE** %fd, align 8, !llfi_index !204
  %fi8 = call %struct._IO_FILE* @injectFault1(i64 203, %struct._IO_FILE* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = call i64 @fwrite(i8* %fi3, i64 %fi7, i64 1, %struct._IO_FILE* %fi8), !llfi_index !205
  %29 = icmp ne i64 %28, 1, !llfi_index !206
  %fi = call i1 @injectFault0(i64 205, i1 %29, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi, label %30, label %34, !llfi_index !207

; <label>:30                                      ; preds = %13
  %31 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !208
  %fi9 = call %struct._IO_FILE* @injectFault1(i64 207, %struct._IO_FILE* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i8** %2, align 8, !llfi_index !209
  %fi10 = call i8* @injectFault3(i64 208, i8* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi9, i8* getelementptr inbounds ([23 x i8]* @.str24, i32 0, i32 0), i8* %fi10), !llfi_index !210
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !211
  unreachable, !llfi_index !212

; <label>:34                                      ; preds = %13
  %35 = load %struct._IO_FILE** %fd, align 8, !llfi_index !213
  %fi11 = call %struct._IO_FILE* @injectFault1(i64 212, %struct._IO_FILE* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = call i32 @fclose(%struct._IO_FILE* %fi11), !llfi_index !214
  %37 = load i32* %1, !llfi_index !215
  %fi12 = call i32 @injectFault2(i64 214, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i32 %fi12, !llfi_index !216
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @int_to_uchar(i32* %r, i8* %in, i32 %size) #0 {
  %1 = alloca i32, align 4, !llfi_index !217
  %2 = alloca i32*, align 8, !llfi_index !218
  %3 = alloca i8*, align 8, !llfi_index !219
  %4 = alloca i32, align 4, !llfi_index !220
  %i = alloca i32, align 4, !llfi_index !221
  %max_r = alloca i32, align 4, !llfi_index !222
  %min_r = alloca i32, align 4, !llfi_index !223
  store i32* %r, i32** %2, align 8, !llfi_index !224
  store i8* %in, i8** %3, align 8, !llfi_index !225
  store i32 %size, i32* %4, align 4, !llfi_index !226
  %5 = load i32** %2, align 8, !llfi_index !227
  %fi = call i32* @injectFault6(i64 226, i32* %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %6 = getelementptr i32* %fi, i64 0, !llfi_index !228
  %fi1 = call i32* @injectFault6(i64 227, i32* %6, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %7 = load i32* %fi1, align 4, !llfi_index !229
  %fi2 = call i32 @injectFault2(i64 228, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi2, i32* %max_r, align 4, !llfi_index !230
  %8 = load i32** %2, align 8, !llfi_index !231
  %fi3 = call i32* @injectFault6(i64 230, i32* %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %9 = getelementptr i32* %fi3, i64 0, !llfi_index !232
  %fi5 = call i32* @injectFault6(i64 231, i32* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = load i32* %fi5, align 4, !llfi_index !233
  %fi6 = call i32 @injectFault2(i64 232, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi6, i32* %min_r, align 4, !llfi_index !234
  store i32 0, i32* %i, align 4, !llfi_index !235
  br label %11, !llfi_index !236

; <label>:11                                      ; preds = %44, %0
  %12 = load i32* %i, align 4, !llfi_index !237
  %fi7 = call i32 @injectFault2(i64 236, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %13 = load i32* %4, align 4, !llfi_index !238
  %fi8 = call i32 @injectFault2(i64 237, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = icmp slt i32 %fi7, %fi8, !llfi_index !239
  %fi9 = call i1 @injectFault0(i64 238, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi9, label %15, label %47, !llfi_index !240

; <label>:15                                      ; preds = %11
  %16 = load i32* %i, align 4, !llfi_index !241
  %fi10 = call i32 @injectFault2(i64 240, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = sext i32 %fi10 to i64, !llfi_index !242
  %fi4 = call i64 @injectFault5(i64 241, i64 %17, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = load i32** %2, align 8, !llfi_index !243
  %fi12 = call i32* @injectFault6(i64 242, i32* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %19 = getelementptr i32* %fi12, i64 %fi4, !llfi_index !244
  %fi13 = call i32* @injectFault6(i64 243, i32* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = load i32* %fi13, align 4, !llfi_index !245
  %fi14 = call i32 @injectFault2(i64 244, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = load i32* %max_r, align 4, !llfi_index !246
  %fi15 = call i32 @injectFault2(i64 245, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %22 = icmp sgt i32 %fi14, %fi15, !llfi_index !247
  %fi16 = call i1 @injectFault0(i64 246, i1 %22, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi16, label %23, label %29, !llfi_index !248

; <label>:23                                      ; preds = %15
  %24 = load i32* %i, align 4, !llfi_index !249
  %fi17 = call i32 @injectFault2(i64 248, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %25 = sext i32 %fi17 to i64, !llfi_index !250
  %fi18 = call i64 @injectFault5(i64 249, i64 %25, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = load i32** %2, align 8, !llfi_index !251
  %fi19 = call i32* @injectFault6(i64 250, i32* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = getelementptr i32* %fi19, i64 %fi18, !llfi_index !252
  %fi20 = call i32* @injectFault6(i64 251, i32* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = load i32* %fi20, align 4, !llfi_index !253
  %fi21 = call i32 @injectFault2(i64 252, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi21, i32* %max_r, align 4, !llfi_index !254
  br label %29, !llfi_index !255

; <label>:29                                      ; preds = %23, %15
  %30 = load i32* %i, align 4, !llfi_index !256
  %fi22 = call i32 @injectFault2(i64 255, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %31 = sext i32 %fi22 to i64, !llfi_index !257
  %fi23 = call i64 @injectFault5(i64 256, i64 %31, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i32** %2, align 8, !llfi_index !258
  %fi24 = call i32* @injectFault6(i64 257, i32* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = getelementptr i32* %fi24, i64 %fi23, !llfi_index !259
  %fi11 = call i32* @injectFault6(i64 258, i32* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = load i32* %fi11, align 4, !llfi_index !260
  %fi28 = call i32 @injectFault2(i64 259, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %35 = load i32* %min_r, align 4, !llfi_index !261
  %fi29 = call i32 @injectFault2(i64 260, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = icmp slt i32 %fi28, %fi29, !llfi_index !262
  %fi30 = call i1 @injectFault0(i64 261, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi30, label %37, label %43, !llfi_index !263

; <label>:37                                      ; preds = %29
  %38 = load i32* %i, align 4, !llfi_index !264
  %fi31 = call i32 @injectFault2(i64 263, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %39 = sext i32 %fi31 to i64, !llfi_index !265
  %fi32 = call i64 @injectFault5(i64 264, i64 %39, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %40 = load i32** %2, align 8, !llfi_index !266
  %fi33 = call i32* @injectFault6(i64 265, i32* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = getelementptr i32* %fi33, i64 %fi32, !llfi_index !267
  %fi34 = call i32* @injectFault6(i64 266, i32* %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %42 = load i32* %fi34, align 4, !llfi_index !268
  %fi35 = call i32 @injectFault2(i64 267, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi35, i32* %min_r, align 4, !llfi_index !269
  br label %43, !llfi_index !270

; <label>:43                                      ; preds = %37, %29
  br label %44, !llfi_index !271

; <label>:44                                      ; preds = %43
  %45 = load i32* %i, align 4, !llfi_index !272
  %fi36 = call i32 @injectFault2(i64 271, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = add nsw i32 %fi36, 1, !llfi_index !273
  %fi37 = call i32 @injectFault2(i64 272, i32 %46, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi37, i32* %i, align 4, !llfi_index !274
  br label %11, !llfi_index !275

; <label>:47                                      ; preds = %11
  %48 = load i32* %min_r, align 4, !llfi_index !276
  %fi38 = call i32 @injectFault2(i64 275, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = load i32* %max_r, align 4, !llfi_index !277
  %fi39 = call i32 @injectFault2(i64 276, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %50 = sub nsw i32 %fi39, %fi38, !llfi_index !278
  %fi40 = call i32 @injectFault2(i64 277, i32 %50, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi40, i32* %max_r, align 4, !llfi_index !279
  store i32 0, i32* %i, align 4, !llfi_index !280
  br label %51, !llfi_index !281

; <label>:51                                      ; preds = %71, %47
  %52 = load i32* %i, align 4, !llfi_index !282
  %fi41 = call i32 @injectFault2(i64 281, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %53 = load i32* %4, align 4, !llfi_index !283
  %fi42 = call i32 @injectFault2(i64 282, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %54 = icmp slt i32 %fi41, %fi42, !llfi_index !284
  %fi43 = call i1 @injectFault0(i64 283, i1 %54, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi43, label %55, label %74, !llfi_index !285

; <label>:55                                      ; preds = %51
  %56 = load i32* %i, align 4, !llfi_index !286
  %fi44 = call i32 @injectFault2(i64 285, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %57 = sext i32 %fi44 to i64, !llfi_index !287
  %fi45 = call i64 @injectFault5(i64 286, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %58 = load i32** %2, align 8, !llfi_index !288
  %fi46 = call i32* @injectFault6(i64 287, i32* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %59 = getelementptr i32* %fi46, i64 %fi45, !llfi_index !289
  %fi47 = call i32* @injectFault6(i64 288, i32* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = load i32* %fi47, align 4, !llfi_index !290
  %fi48 = call i32 @injectFault2(i64 289, i32 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %61 = load i32* %min_r, align 4, !llfi_index !291
  %fi49 = call i32 @injectFault2(i64 290, i32 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %62 = sub nsw i32 %fi48, %fi49, !llfi_index !292
  %fi50 = call i32 @injectFault2(i64 291, i32 %62, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %63 = mul nsw i32 %fi50, 255, !llfi_index !293
  %fi51 = call i32 @injectFault2(i64 292, i32 %63, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %64 = load i32* %max_r, align 4, !llfi_index !294
  %fi52 = call i32 @injectFault2(i64 293, i32 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %65 = sdiv i32 %fi51, %fi52, !llfi_index !295
  %fi25 = call i32 @injectFault2(i64 294, i32 %65, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %66 = trunc i32 %fi25 to i8, !llfi_index !296
  %fi26 = call i8 @injectFault4(i64 295, i8 %66, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %67 = load i32* %i, align 4, !llfi_index !297
  %fi27 = call i32 @injectFault2(i64 296, i32 %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %68 = sext i32 %fi27 to i64, !llfi_index !298
  %fi53 = call i64 @injectFault5(i64 297, i64 %68, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %69 = load i8** %3, align 8, !llfi_index !299
  %fi54 = call i8* @injectFault3(i64 298, i8* %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %70 = getelementptr i8* %fi54, i64 %fi53, !llfi_index !300
  %fi55 = call i8* @injectFault3(i64 299, i8* %70, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi26, i8* %fi55, align 1, !llfi_index !301
  br label %71, !llfi_index !302

; <label>:71                                      ; preds = %55
  %72 = load i32* %i, align 4, !llfi_index !303
  %fi56 = call i32 @injectFault2(i64 302, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %73 = add nsw i32 %fi56, 1, !llfi_index !304
  %fi57 = call i32 @injectFault2(i64 303, i32 %73, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi57, i32* %i, align 4, !llfi_index !305
  br label %51, !llfi_index !306

; <label>:74                                      ; preds = %51
  %75 = load i32* %1, !llfi_index !307
  %fi58 = call i32 @injectFault2(i64 306, i32 %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i32 %fi58, !llfi_index !308
}

; Function Attrs: nounwind uwtable
define void @setup_brightness_lut(i8** %bp, i32 %thresh, i32 %form) #0 {
  %1 = alloca i8**, align 8, !llfi_index !309
  %2 = alloca i32, align 4, !llfi_index !310
  %3 = alloca i32, align 4, !llfi_index !311
  %k = alloca i32, align 4, !llfi_index !312
  %temp = alloca float, align 4, !llfi_index !313
  store i8** %bp, i8*** %1, align 8, !llfi_index !314
  store i32 %thresh, i32* %2, align 4, !llfi_index !315
  store i32 %form, i32* %3, align 4, !llfi_index !316
  %4 = call noalias i8* @malloc(i64 516) #4, !llfi_index !317
  %5 = load i8*** %1, align 8, !llfi_index !318
  %fi = call i8** @injectFault7(i64 317, i8** %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %4, i8** %fi, align 8, !llfi_index !319
  %6 = load i8*** %1, align 8, !llfi_index !320
  %fi1 = call i8** @injectFault7(i64 319, i8** %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %7 = load i8** %fi1, align 8, !llfi_index !321
  %fi2 = call i8* @injectFault3(i64 320, i8* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %8 = getelementptr i8* %fi2, i64 258, !llfi_index !322
  %fi3 = call i8* @injectFault3(i64 321, i8* %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %9 = load i8*** %1, align 8, !llfi_index !323
  %fi5 = call i8** @injectFault7(i64 322, i8** %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi3, i8** %fi5, align 8, !llfi_index !324
  store i32 -256, i32* %k, align 4, !llfi_index !325
  br label %10, !llfi_index !326

; <label>:10                                      ; preds = %44, %0
  %11 = load i32* %k, align 4, !llfi_index !327
  %fi6 = call i32 @injectFault2(i64 326, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %12 = icmp slt i32 %fi6, 257, !llfi_index !328
  %fi7 = call i1 @injectFault0(i64 327, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi7, label %13, label %47, !llfi_index !329

; <label>:13                                      ; preds = %10
  %14 = load i32* %k, align 4, !llfi_index !330
  %fi8 = call i32 @injectFault2(i64 329, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = sitofp i32 %fi8 to float, !llfi_index !331
  %fi9 = call float @injectFault8(i64 330, float %15, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %16 = load i32* %2, align 4, !llfi_index !332
  %fi10 = call i32 @injectFault2(i64 331, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = sitofp i32 %fi10 to float, !llfi_index !333
  %fi4 = call float @injectFault8(i64 332, float %17, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = fdiv float %fi9, %fi4, !llfi_index !334
  %fi12 = call float @injectFault8(i64 333, float %18, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi12, float* %temp, align 4, !llfi_index !335
  %19 = load float* %temp, align 4, !llfi_index !336
  %fi13 = call float @injectFault8(i64 335, float %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = load float* %temp, align 4, !llfi_index !337
  %fi14 = call float @injectFault8(i64 336, float %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = fmul float %fi13, %fi14, !llfi_index !338
  %fi15 = call float @injectFault8(i64 337, float %21, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi15, float* %temp, align 4, !llfi_index !339
  %22 = load i32* %3, align 4, !llfi_index !340
  %fi16 = call i32 @injectFault2(i64 339, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = icmp eq i32 %fi16, 6, !llfi_index !341
  %fi17 = call i1 @injectFault0(i64 340, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi17, label %24, label %30, !llfi_index !342

; <label>:24                                      ; preds = %13
  %25 = load float* %temp, align 4, !llfi_index !343
  %fi18 = call float @injectFault8(i64 342, float %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = load float* %temp, align 4, !llfi_index !344
  %fi19 = call float @injectFault8(i64 343, float %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = fmul float %fi18, %fi19, !llfi_index !345
  %fi20 = call float @injectFault8(i64 344, float %27, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = load float* %temp, align 4, !llfi_index !346
  %fi21 = call float @injectFault8(i64 345, float %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %29 = fmul float %fi20, %fi21, !llfi_index !347
  %fi22 = call float @injectFault8(i64 346, float %29, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi22, float* %temp, align 4, !llfi_index !348
  br label %30, !llfi_index !349

; <label>:30                                      ; preds = %24, %13
  %31 = load float* %temp, align 4, !llfi_index !350
  %fi23 = call float @injectFault8(i64 349, float %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = fsub float -0.000000e+00, %fi23, !llfi_index !351
  %fi24 = call float @injectFault8(i64 350, float %32, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = fpext float %fi24 to double, !llfi_index !352
  %fi11 = call double @injectFault9(i64 351, double %33, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = call double @exp(double %fi11) #4, !llfi_index !353
  %35 = fmul double 1.000000e+02, %34, !llfi_index !354
  %fi25 = call double @injectFault9(i64 353, double %35, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = fptrunc double %fi25 to float, !llfi_index !355
  %fi26 = call float @injectFault8(i64 354, float %36, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi26, float* %temp, align 4, !llfi_index !356
  %37 = load float* %temp, align 4, !llfi_index !357
  %fi27 = call float @injectFault8(i64 356, float %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %38 = fptoui float %fi27 to i8, !llfi_index !358
  %fi28 = call i8 @injectFault4(i64 357, i8 %38, i32 36, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptoui_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %39 = load i8*** %1, align 8, !llfi_index !359
  %fi29 = call i8** @injectFault7(i64 358, i8** %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %40 = load i8** %fi29, align 8, !llfi_index !360
  %fi30 = call i8* @injectFault3(i64 359, i8* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = load i32* %k, align 4, !llfi_index !361
  %fi31 = call i32 @injectFault2(i64 360, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %42 = sext i32 %fi31 to i64, !llfi_index !362
  %fi32 = call i64 @injectFault5(i64 361, i64 %42, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %43 = getelementptr i8* %fi30, i64 %fi32, !llfi_index !363
  %fi33 = call i8* @injectFault3(i64 362, i8* %43, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi28, i8* %fi33, align 1, !llfi_index !364
  br label %44, !llfi_index !365

; <label>:44                                      ; preds = %30
  %45 = load i32* %k, align 4, !llfi_index !366
  %fi34 = call i32 @injectFault2(i64 365, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = add nsw i32 %fi34, 1, !llfi_index !367
  %fi35 = call i32 @injectFault2(i64 366, i32 %46, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi35, i32* %k, align 4, !llfi_index !368
  br label %10, !llfi_index !369

; <label>:47                                      ; preds = %10
  ret void, !llfi_index !370
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define zeroext i8 @median(i8* %in, i32 %i, i32 %j, i32 %x_size) #0 {
  %1 = alloca i8*, align 8, !llfi_index !371
  %2 = alloca i32, align 4, !llfi_index !372
  %3 = alloca i32, align 4, !llfi_index !373
  %4 = alloca i32, align 4, !llfi_index !374
  %p = alloca [8 x i32], align 16, !llfi_index !375
  %k = alloca i32, align 4, !llfi_index !376
  %l = alloca i32, align 4, !llfi_index !377
  %tmp = alloca i32, align 4, !llfi_index !378
  store i8* %in, i8** %1, align 8, !llfi_index !379
  store i32 %i, i32* %2, align 4, !llfi_index !380
  store i32 %j, i32* %3, align 4, !llfi_index !381
  store i32 %x_size, i32* %4, align 4, !llfi_index !382
  %5 = load i32* %2, align 4, !llfi_index !383
  %fi87 = call i32 @injectFault2(i64 382, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %6 = sub nsw i32 %fi87, 1, !llfi_index !384
  %fi88 = call i32 @injectFault2(i64 383, i32 %6, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %7 = load i32* %4, align 4, !llfi_index !385
  %fi89 = call i32 @injectFault2(i64 384, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %8 = mul nsw i32 %fi88, %fi89, !llfi_index !386
  %fi = call i32 @injectFault2(i64 385, i32 %8, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %9 = load i32* %3, align 4, !llfi_index !387
  %fi1 = call i32 @injectFault2(i64 386, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = add nsw i32 %fi, %fi1, !llfi_index !388
  %fi2 = call i32 @injectFault2(i64 387, i32 %10, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = sub nsw i32 %fi2, 1, !llfi_index !389
  %fi3 = call i32 @injectFault2(i64 388, i32 %11, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %12 = sext i32 %fi3 to i64, !llfi_index !390
  %fi4 = call i64 @injectFault5(i64 389, i64 %12, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %13 = load i8** %1, align 8, !llfi_index !391
  %fi5 = call i8* @injectFault3(i64 390, i8* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = getelementptr i8* %fi5, i64 %fi4, !llfi_index !392
  %fi6 = call i8* @injectFault3(i64 391, i8* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = load i8* %fi6, align 1, !llfi_index !393
  %fi7 = call i8 @injectFault4(i64 392, i8 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %16 = zext i8 %fi7 to i32, !llfi_index !394
  %fi8 = call i32 @injectFault2(i64 393, i32 %16, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = getelementptr [8 x i32]* %p, i32 0, i64 0, !llfi_index !395
  %fi10 = call i32* @injectFault6(i64 394, i32* %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi8, i32* %fi10, align 4, !llfi_index !396
  %18 = load i32* %2, align 4, !llfi_index !397
  %fi11 = call i32 @injectFault2(i64 396, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %19 = sub nsw i32 %fi11, 1, !llfi_index !398
  %fi12 = call i32 @injectFault2(i64 397, i32 %19, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = load i32* %4, align 4, !llfi_index !399
  %fi13 = call i32 @injectFault2(i64 398, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = mul nsw i32 %fi12, %fi13, !llfi_index !400
  %fi14 = call i32 @injectFault2(i64 399, i32 %21, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %22 = load i32* %3, align 4, !llfi_index !401
  %fi15 = call i32 @injectFault2(i64 400, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = add nsw i32 %fi14, %fi15, !llfi_index !402
  %fi16 = call i32 @injectFault2(i64 401, i32 %23, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %24 = sext i32 %fi16 to i64, !llfi_index !403
  %fi17 = call i64 @injectFault5(i64 402, i64 %24, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %25 = load i8** %1, align 8, !llfi_index !404
  %fi18 = call i8* @injectFault3(i64 403, i8* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = getelementptr i8* %fi18, i64 %fi17, !llfi_index !405
  %fi19 = call i8* @injectFault3(i64 404, i8* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = load i8* %fi19, align 1, !llfi_index !406
  %fi20 = call i8 @injectFault4(i64 405, i8 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = zext i8 %fi20 to i32, !llfi_index !407
  %fi21 = call i32 @injectFault2(i64 406, i32 %28, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %29 = getelementptr [8 x i32]* %p, i32 0, i64 1, !llfi_index !408
  %fi22 = call i32* @injectFault6(i64 407, i32* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi21, i32* %fi22, align 4, !llfi_index !409
  %30 = load i32* %2, align 4, !llfi_index !410
  %fi23 = call i32 @injectFault2(i64 409, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %31 = sub nsw i32 %fi23, 1, !llfi_index !411
  %fi24 = call i32 @injectFault2(i64 410, i32 %31, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i32* %4, align 4, !llfi_index !412
  %fi25 = call i32 @injectFault2(i64 411, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = mul nsw i32 %fi24, %fi25, !llfi_index !413
  %fi9 = call i32 @injectFault2(i64 412, i32 %33, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = load i32* %3, align 4, !llfi_index !414
  %fi28 = call i32 @injectFault2(i64 413, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %35 = add nsw i32 %fi9, %fi28, !llfi_index !415
  %fi29 = call i32 @injectFault2(i64 414, i32 %35, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = add nsw i32 %fi29, 1, !llfi_index !416
  %fi30 = call i32 @injectFault2(i64 415, i32 %36, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %37 = sext i32 %fi30 to i64, !llfi_index !417
  %fi31 = call i64 @injectFault5(i64 416, i64 %37, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %38 = load i8** %1, align 8, !llfi_index !418
  %fi32 = call i8* @injectFault3(i64 417, i8* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %39 = getelementptr i8* %fi32, i64 %fi31, !llfi_index !419
  %fi33 = call i8* @injectFault3(i64 418, i8* %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %40 = load i8* %fi33, align 1, !llfi_index !420
  %fi34 = call i8 @injectFault4(i64 419, i8 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = zext i8 %fi34 to i32, !llfi_index !421
  %fi35 = call i32 @injectFault2(i64 420, i32 %41, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %42 = getelementptr [8 x i32]* %p, i32 0, i64 2, !llfi_index !422
  %fi36 = call i32* @injectFault6(i64 421, i32* %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi35, i32* %fi36, align 4, !llfi_index !423
  %43 = load i32* %2, align 4, !llfi_index !424
  %fi37 = call i32 @injectFault2(i64 423, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %44 = load i32* %4, align 4, !llfi_index !425
  %fi38 = call i32 @injectFault2(i64 424, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %45 = mul nsw i32 %fi37, %fi38, !llfi_index !426
  %fi39 = call i32 @injectFault2(i64 425, i32 %45, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = load i32* %3, align 4, !llfi_index !427
  %fi40 = call i32 @injectFault2(i64 426, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %47 = add nsw i32 %fi39, %fi40, !llfi_index !428
  %fi41 = call i32 @injectFault2(i64 427, i32 %47, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %48 = sub nsw i32 %fi41, 1, !llfi_index !429
  %fi42 = call i32 @injectFault2(i64 428, i32 %48, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = sext i32 %fi42 to i64, !llfi_index !430
  %fi43 = call i64 @injectFault5(i64 429, i64 %49, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %50 = load i8** %1, align 8, !llfi_index !431
  %fi44 = call i8* @injectFault3(i64 430, i8* %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %51 = getelementptr i8* %fi44, i64 %fi43, !llfi_index !432
  %fi45 = call i8* @injectFault3(i64 431, i8* %51, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %52 = load i8* %fi45, align 1, !llfi_index !433
  %fi46 = call i8 @injectFault4(i64 432, i8 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %53 = zext i8 %fi46 to i32, !llfi_index !434
  %fi47 = call i32 @injectFault2(i64 433, i32 %53, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %54 = getelementptr [8 x i32]* %p, i32 0, i64 3, !llfi_index !435
  %fi48 = call i32* @injectFault6(i64 434, i32* %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi47, i32* %fi48, align 4, !llfi_index !436
  %55 = load i32* %2, align 4, !llfi_index !437
  %fi49 = call i32 @injectFault2(i64 436, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %56 = load i32* %4, align 4, !llfi_index !438
  %fi50 = call i32 @injectFault2(i64 437, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %57 = mul nsw i32 %fi49, %fi50, !llfi_index !439
  %fi51 = call i32 @injectFault2(i64 438, i32 %57, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %58 = load i32* %3, align 4, !llfi_index !440
  %fi52 = call i32 @injectFault2(i64 439, i32 %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %59 = add nsw i32 %fi51, %fi52, !llfi_index !441
  %fi53 = call i32 @injectFault2(i64 440, i32 %59, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = add nsw i32 %fi53, 1, !llfi_index !442
  %fi54 = call i32 @injectFault2(i64 441, i32 %60, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %61 = sext i32 %fi54 to i64, !llfi_index !443
  %fi55 = call i64 @injectFault5(i64 442, i64 %61, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %62 = load i8** %1, align 8, !llfi_index !444
  %fi56 = call i8* @injectFault3(i64 443, i8* %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %63 = getelementptr i8* %fi56, i64 %fi55, !llfi_index !445
  %fi57 = call i8* @injectFault3(i64 444, i8* %63, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %64 = load i8* %fi57, align 1, !llfi_index !446
  %fi58 = call i8 @injectFault4(i64 445, i8 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %65 = zext i8 %fi58 to i32, !llfi_index !447
  %fi26 = call i32 @injectFault2(i64 446, i32 %65, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %66 = getelementptr [8 x i32]* %p, i32 0, i64 4, !llfi_index !448
  %fi27 = call i32* @injectFault6(i64 447, i32* %66, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi26, i32* %fi27, align 4, !llfi_index !449
  %67 = load i32* %2, align 4, !llfi_index !450
  %fi64 = call i32 @injectFault2(i64 449, i32 %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %68 = add nsw i32 %fi64, 1, !llfi_index !451
  %fi65 = call i32 @injectFault2(i64 450, i32 %68, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %69 = load i32* %4, align 4, !llfi_index !452
  %fi66 = call i32 @injectFault2(i64 451, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %70 = mul nsw i32 %fi65, %fi66, !llfi_index !453
  %fi67 = call i32 @injectFault2(i64 452, i32 %70, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %71 = load i32* %3, align 4, !llfi_index !454
  %fi68 = call i32 @injectFault2(i64 453, i32 %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %72 = add nsw i32 %fi67, %fi68, !llfi_index !455
  %fi69 = call i32 @injectFault2(i64 454, i32 %72, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %73 = sub nsw i32 %fi69, 1, !llfi_index !456
  %fi70 = call i32 @injectFault2(i64 455, i32 %73, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %74 = sext i32 %fi70 to i64, !llfi_index !457
  %fi71 = call i64 @injectFault5(i64 456, i64 %74, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %75 = load i8** %1, align 8, !llfi_index !458
  %fi72 = call i8* @injectFault3(i64 457, i8* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %76 = getelementptr i8* %fi72, i64 %fi71, !llfi_index !459
  %fi73 = call i8* @injectFault3(i64 458, i8* %76, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %77 = load i8* %fi73, align 1, !llfi_index !460
  %fi74 = call i8 @injectFault4(i64 459, i8 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %78 = zext i8 %fi74 to i32, !llfi_index !461
  %fi75 = call i32 @injectFault2(i64 460, i32 %78, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %79 = getelementptr [8 x i32]* %p, i32 0, i64 5, !llfi_index !462
  %fi76 = call i32* @injectFault6(i64 461, i32* %79, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi75, i32* %fi76, align 4, !llfi_index !463
  %80 = load i32* %2, align 4, !llfi_index !464
  %fi77 = call i32 @injectFault2(i64 463, i32 %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %81 = add nsw i32 %fi77, 1, !llfi_index !465
  %fi78 = call i32 @injectFault2(i64 464, i32 %81, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %82 = load i32* %4, align 4, !llfi_index !466
  %fi79 = call i32 @injectFault2(i64 465, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %83 = mul nsw i32 %fi78, %fi79, !llfi_index !467
  %fi80 = call i32 @injectFault2(i64 466, i32 %83, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %84 = load i32* %3, align 4, !llfi_index !468
  %fi81 = call i32 @injectFault2(i64 467, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %85 = add nsw i32 %fi80, %fi81, !llfi_index !469
  %fi82 = call i32 @injectFault2(i64 468, i32 %85, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %86 = sext i32 %fi82 to i64, !llfi_index !470
  %fi83 = call i64 @injectFault5(i64 469, i64 %86, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %87 = load i8** %1, align 8, !llfi_index !471
  %fi84 = call i8* @injectFault3(i64 470, i8* %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %88 = getelementptr i8* %fi84, i64 %fi83, !llfi_index !472
  %fi85 = call i8* @injectFault3(i64 471, i8* %88, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %89 = load i8* %fi85, align 1, !llfi_index !473
  %fi86 = call i8 @injectFault4(i64 472, i8 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %90 = zext i8 %fi86 to i32, !llfi_index !474
  %fi90 = call i32 @injectFault2(i64 473, i32 %90, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %91 = getelementptr [8 x i32]* %p, i32 0, i64 6, !llfi_index !475
  %fi91 = call i32* @injectFault6(i64 474, i32* %91, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi90, i32* %fi91, align 4, !llfi_index !476
  %92 = load i32* %2, align 4, !llfi_index !477
  %fi92 = call i32 @injectFault2(i64 476, i32 %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %93 = add nsw i32 %fi92, 1, !llfi_index !478
  %fi93 = call i32 @injectFault2(i64 477, i32 %93, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %94 = load i32* %4, align 4, !llfi_index !479
  %fi94 = call i32 @injectFault2(i64 478, i32 %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %95 = mul nsw i32 %fi93, %fi94, !llfi_index !480
  %fi95 = call i32 @injectFault2(i64 479, i32 %95, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %96 = load i32* %3, align 4, !llfi_index !481
  %fi96 = call i32 @injectFault2(i64 480, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %97 = add nsw i32 %fi95, %fi96, !llfi_index !482
  %fi97 = call i32 @injectFault2(i64 481, i32 %97, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %98 = add nsw i32 %fi97, 1, !llfi_index !483
  %fi98 = call i32 @injectFault2(i64 482, i32 %98, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %99 = sext i32 %fi98 to i64, !llfi_index !484
  %fi99 = call i64 @injectFault5(i64 483, i64 %99, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %100 = load i8** %1, align 8, !llfi_index !485
  %fi100 = call i8* @injectFault3(i64 484, i8* %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %101 = getelementptr i8* %fi100, i64 %fi99, !llfi_index !486
  %fi101 = call i8* @injectFault3(i64 485, i8* %101, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %102 = load i8* %fi101, align 1, !llfi_index !487
  %fi102 = call i8 @injectFault4(i64 486, i8 %102, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %103 = zext i8 %fi102 to i32, !llfi_index !488
  %fi103 = call i32 @injectFault2(i64 487, i32 %103, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %104 = getelementptr [8 x i32]* %p, i32 0, i64 7, !llfi_index !489
  %fi104 = call i32* @injectFault6(i64 488, i32* %104, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi103, i32* %fi104, align 4, !llfi_index !490
  store i32 0, i32* %k, align 4, !llfi_index !491
  br label %105, !llfi_index !492

; <label>:105                                     ; preds = %148, %0
  %106 = load i32* %k, align 4, !llfi_index !493
  %fi105 = call i32 @injectFault2(i64 492, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %107 = icmp slt i32 %fi105, 7, !llfi_index !494
  %fi106 = call i1 @injectFault0(i64 493, i1 %107, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi106, label %108, label %151, !llfi_index !495

; <label>:108                                     ; preds = %105
  store i32 0, i32* %l, align 4, !llfi_index !496
  br label %109, !llfi_index !497

; <label>:109                                     ; preds = %144, %108
  %110 = load i32* %l, align 4, !llfi_index !498
  %fi107 = call i32 @injectFault2(i64 497, i32 %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %111 = load i32* %k, align 4, !llfi_index !499
  %fi108 = call i32 @injectFault2(i64 498, i32 %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %112 = sub nsw i32 7, %fi108, !llfi_index !500
  %fi109 = call i32 @injectFault2(i64 499, i32 %112, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %113 = icmp slt i32 %fi107, %fi109, !llfi_index !501
  %fi110 = call i1 @injectFault0(i64 500, i1 %113, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi110, label %114, label %147, !llfi_index !502

; <label>:114                                     ; preds = %109
  %115 = load i32* %l, align 4, !llfi_index !503
  %fi111 = call i32 @injectFault2(i64 502, i32 %115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %116 = sext i32 %fi111 to i64, !llfi_index !504
  %fi112 = call i64 @injectFault5(i64 503, i64 %116, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %117 = getelementptr [8 x i32]* %p, i32 0, i64 %fi112, !llfi_index !505
  %fi113 = call i32* @injectFault6(i64 504, i32* %117, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %118 = load i32* %fi113, align 4, !llfi_index !506
  %fi114 = call i32 @injectFault2(i64 505, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %119 = load i32* %l, align 4, !llfi_index !507
  %fi115 = call i32 @injectFault2(i64 506, i32 %119, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %120 = add nsw i32 %fi115, 1, !llfi_index !508
  %fi116 = call i32 @injectFault2(i64 507, i32 %120, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %121 = sext i32 %fi116 to i64, !llfi_index !509
  %fi117 = call i64 @injectFault5(i64 508, i64 %121, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %122 = getelementptr [8 x i32]* %p, i32 0, i64 %fi117, !llfi_index !510
  %fi118 = call i32* @injectFault6(i64 509, i32* %122, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %123 = load i32* %fi118, align 4, !llfi_index !511
  %fi119 = call i32 @injectFault2(i64 510, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %124 = icmp sgt i32 %fi114, %fi119, !llfi_index !512
  %fi120 = call i1 @injectFault0(i64 511, i1 %124, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi120, label %125, label %143, !llfi_index !513

; <label>:125                                     ; preds = %114
  %126 = load i32* %l, align 4, !llfi_index !514
  %fi121 = call i32 @injectFault2(i64 513, i32 %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %127 = sext i32 %fi121 to i64, !llfi_index !515
  %fi122 = call i64 @injectFault5(i64 514, i64 %127, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %128 = getelementptr [8 x i32]* %p, i32 0, i64 %fi122, !llfi_index !516
  %fi123 = call i32* @injectFault6(i64 515, i32* %128, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %129 = load i32* %fi123, align 4, !llfi_index !517
  %fi59 = call i32 @injectFault2(i64 516, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi59, i32* %tmp, align 4, !llfi_index !518
  %130 = load i32* %l, align 4, !llfi_index !519
  %fi60 = call i32 @injectFault2(i64 518, i32 %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %131 = add nsw i32 %fi60, 1, !llfi_index !520
  %fi61 = call i32 @injectFault2(i64 519, i32 %131, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %132 = sext i32 %fi61 to i64, !llfi_index !521
  %fi62 = call i64 @injectFault5(i64 520, i64 %132, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %133 = getelementptr [8 x i32]* %p, i32 0, i64 %fi62, !llfi_index !522
  %fi63 = call i32* @injectFault6(i64 521, i32* %133, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %134 = load i32* %fi63, align 4, !llfi_index !523
  %fi124 = call i32 @injectFault2(i64 522, i32 %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %135 = load i32* %l, align 4, !llfi_index !524
  %fi125 = call i32 @injectFault2(i64 523, i32 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %136 = sext i32 %fi125 to i64, !llfi_index !525
  %fi126 = call i64 @injectFault5(i64 524, i64 %136, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %137 = getelementptr [8 x i32]* %p, i32 0, i64 %fi126, !llfi_index !526
  %fi127 = call i32* @injectFault6(i64 525, i32* %137, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi124, i32* %fi127, align 4, !llfi_index !527
  %138 = load i32* %tmp, align 4, !llfi_index !528
  %fi128 = call i32 @injectFault2(i64 527, i32 %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %139 = load i32* %l, align 4, !llfi_index !529
  %fi129 = call i32 @injectFault2(i64 528, i32 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %140 = add nsw i32 %fi129, 1, !llfi_index !530
  %fi130 = call i32 @injectFault2(i64 529, i32 %140, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %141 = sext i32 %fi130 to i64, !llfi_index !531
  %fi131 = call i64 @injectFault5(i64 530, i64 %141, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %142 = getelementptr [8 x i32]* %p, i32 0, i64 %fi131, !llfi_index !532
  %fi132 = call i32* @injectFault6(i64 531, i32* %142, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi128, i32* %fi132, align 4, !llfi_index !533
  br label %143, !llfi_index !534

; <label>:143                                     ; preds = %125, %114
  br label %144, !llfi_index !535

; <label>:144                                     ; preds = %143
  %145 = load i32* %l, align 4, !llfi_index !536
  %fi133 = call i32 @injectFault2(i64 535, i32 %145, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %146 = add nsw i32 %fi133, 1, !llfi_index !537
  %fi134 = call i32 @injectFault2(i64 536, i32 %146, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi134, i32* %l, align 4, !llfi_index !538
  br label %109, !llfi_index !539

; <label>:147                                     ; preds = %109
  br label %148, !llfi_index !540

; <label>:148                                     ; preds = %147
  %149 = load i32* %k, align 4, !llfi_index !541
  %fi135 = call i32 @injectFault2(i64 540, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %150 = add nsw i32 %fi135, 1, !llfi_index !542
  %fi136 = call i32 @injectFault2(i64 541, i32 %150, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi136, i32* %k, align 4, !llfi_index !543
  br label %105, !llfi_index !544

; <label>:151                                     ; preds = %105
  %152 = getelementptr [8 x i32]* %p, i32 0, i64 3, !llfi_index !545
  %fi137 = call i32* @injectFault6(i64 544, i32* %152, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %153 = load i32* %fi137, align 4, !llfi_index !546
  %fi138 = call i32 @injectFault2(i64 545, i32 %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %154 = getelementptr [8 x i32]* %p, i32 0, i64 4, !llfi_index !547
  %fi139 = call i32* @injectFault6(i64 546, i32* %154, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %155 = load i32* %fi139, align 4, !llfi_index !548
  %fi140 = call i32 @injectFault2(i64 547, i32 %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %156 = add nsw i32 %fi138, %fi140, !llfi_index !549
  %fi141 = call i32 @injectFault2(i64 548, i32 %156, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %157 = sdiv i32 %fi141, 2, !llfi_index !550
  %fi142 = call i32 @injectFault2(i64 549, i32 %157, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %158 = trunc i32 %fi142 to i8, !llfi_index !551
  %fi143 = call i8 @injectFault4(i64 550, i8 %158, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i8 %fi143, !llfi_index !552
}

; Function Attrs: nounwind uwtable
define i32 @enlarge(i8** %in, i8* %tmp_image, i32* %x_size, i32* %y_size, i32 %border) #0 {
  %1 = alloca i32, align 4, !llfi_index !553
  %2 = alloca i8**, align 8, !llfi_index !554
  %3 = alloca i8*, align 8, !llfi_index !555
  %4 = alloca i32*, align 8, !llfi_index !556
  %5 = alloca i32*, align 8, !llfi_index !557
  %6 = alloca i32, align 4, !llfi_index !558
  %i = alloca i32, align 4, !llfi_index !559
  %j = alloca i32, align 4, !llfi_index !560
  store i8** %in, i8*** %2, align 8, !llfi_index !561
  store i8* %tmp_image, i8** %3, align 8, !llfi_index !562
  store i32* %x_size, i32** %4, align 8, !llfi_index !563
  store i32* %y_size, i32** %5, align 8, !llfi_index !564
  store i32 %border, i32* %6, align 4, !llfi_index !565
  store i32 0, i32* %i, align 4, !llfi_index !566
  br label %7, !llfi_index !567

; <label>:7                                       ; preds = %39, %0
  %8 = load i32* %i, align 4, !llfi_index !568
  %fi13 = call i32 @injectFault2(i64 567, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %9 = load i32** %5, align 8, !llfi_index !569
  %fi15 = call i32* @injectFault6(i64 568, i32* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = load i32* %fi15, align 4, !llfi_index !570
  %fi16 = call i32 @injectFault2(i64 569, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = icmp slt i32 %fi13, %fi16, !llfi_index !571
  %fi17 = call i1 @injectFault0(i64 570, i1 %11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi17, label %12, label %42, !llfi_index !572

; <label>:12                                      ; preds = %7
  %13 = load i8** %3, align 8, !llfi_index !573
  %fi18 = call i8* @injectFault3(i64 572, i8* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = load i32* %i, align 4, !llfi_index !574
  %fi19 = call i32 @injectFault2(i64 573, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = load i32* %6, align 4, !llfi_index !575
  %fi20 = call i32 @injectFault2(i64 574, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %16 = add nsw i32 %fi19, %fi20, !llfi_index !576
  %fi21 = call i32 @injectFault2(i64 575, i32 %16, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %17 = load i32** %4, align 8, !llfi_index !577
  %fi14 = call i32* @injectFault6(i64 576, i32* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = load i32* %fi14, align 4, !llfi_index !578
  %fi23 = call i32 @injectFault2(i64 577, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %19 = load i32* %6, align 4, !llfi_index !579
  %fi24 = call i32 @injectFault2(i64 578, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = mul nsw i32 2, %fi24, !llfi_index !580
  %fi25 = call i32 @injectFault2(i64 579, i32 %20, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = add nsw i32 %fi23, %fi25, !llfi_index !581
  %fi26 = call i32 @injectFault2(i64 580, i32 %21, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %22 = mul nsw i32 %fi21, %fi26, !llfi_index !582
  %fi27 = call i32 @injectFault2(i64 581, i32 %22, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = sext i32 %fi27 to i64, !llfi_index !583
  %fi28 = call i64 @injectFault5(i64 582, i64 %23, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %24 = getelementptr i8* %fi18, i64 %fi28, !llfi_index !584
  %fi29 = call i8* @injectFault3(i64 583, i8* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %25 = load i32* %6, align 4, !llfi_index !585
  %fi30 = call i32 @injectFault2(i64 584, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = sext i32 %fi30 to i64, !llfi_index !586
  %fi31 = call i64 @injectFault5(i64 585, i64 %26, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = getelementptr i8* %fi29, i64 %fi31, !llfi_index !587
  %fi32 = call i8* @injectFault3(i64 586, i8* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = load i8*** %2, align 8, !llfi_index !588
  %fi33 = call i8** @injectFault7(i64 587, i8** %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %29 = load i8** %fi33, align 8, !llfi_index !589
  %fi34 = call i8* @injectFault3(i64 588, i8* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %30 = load i32* %i, align 4, !llfi_index !590
  %fi35 = call i32 @injectFault2(i64 589, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %31 = load i32** %4, align 8, !llfi_index !591
  %fi36 = call i32* @injectFault6(i64 590, i32* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = load i32* %fi36, align 4, !llfi_index !592
  %fi37 = call i32 @injectFault2(i64 591, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = mul nsw i32 %fi35, %fi37, !llfi_index !593
  %fi22 = call i32 @injectFault2(i64 592, i32 %33, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = sext i32 %fi22 to i64, !llfi_index !594
  %fi41 = call i64 @injectFault5(i64 593, i64 %34, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %35 = getelementptr i8* %fi34, i64 %fi41, !llfi_index !595
  %fi42 = call i8* @injectFault3(i64 594, i8* %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %36 = load i32** %4, align 8, !llfi_index !596
  %fi43 = call i32* @injectFault6(i64 595, i32* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %37 = load i32* %fi43, align 4, !llfi_index !597
  %fi44 = call i32 @injectFault2(i64 596, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %38 = sext i32 %fi44 to i64, !llfi_index !598
  %fi45 = call i64 @injectFault5(i64 597, i64 %38, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi32, i8* %fi42, i64 %fi45, i32 1, i1 false), !llfi_index !599
  br label %39, !llfi_index !600

; <label>:39                                      ; preds = %12
  %40 = load i32* %i, align 4, !llfi_index !601
  %fi46 = call i32 @injectFault2(i64 600, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = add nsw i32 %fi46, 1, !llfi_index !602
  %fi47 = call i32 @injectFault2(i64 601, i32 %41, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi47, i32* %i, align 4, !llfi_index !603
  br label %7, !llfi_index !604

; <label>:42                                      ; preds = %7
  store i32 0, i32* %i, align 4, !llfi_index !605
  br label %43, !llfi_index !606

; <label>:43                                      ; preds = %108, %42
  %44 = load i32* %i, align 4, !llfi_index !607
  %fi48 = call i32 @injectFault2(i64 606, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %45 = load i32* %6, align 4, !llfi_index !608
  %fi49 = call i32 @injectFault2(i64 607, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = icmp slt i32 %fi48, %fi49, !llfi_index !609
  %fi50 = call i1 @injectFault0(i64 608, i1 %46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi50, label %47, label %111, !llfi_index !610

; <label>:47                                      ; preds = %43
  %48 = load i8** %3, align 8, !llfi_index !611
  %fi51 = call i8* @injectFault3(i64 610, i8* %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = load i32* %6, align 4, !llfi_index !612
  %fi52 = call i32 @injectFault2(i64 611, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %50 = sub nsw i32 %fi52, 1, !llfi_index !613
  %fi53 = call i32 @injectFault2(i64 612, i32 %50, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %51 = load i32* %i, align 4, !llfi_index !614
  %fi54 = call i32 @injectFault2(i64 613, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %52 = sub nsw i32 %fi53, %fi54, !llfi_index !615
  %fi55 = call i32 @injectFault2(i64 614, i32 %52, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %53 = load i32** %4, align 8, !llfi_index !616
  %fi56 = call i32* @injectFault6(i64 615, i32* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %54 = load i32* %fi56, align 4, !llfi_index !617
  %fi57 = call i32 @injectFault2(i64 616, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %55 = load i32* %6, align 4, !llfi_index !618
  %fi58 = call i32 @injectFault2(i64 617, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %56 = mul nsw i32 2, %fi58, !llfi_index !619
  %fi59 = call i32 @injectFault2(i64 618, i32 %56, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %57 = add nsw i32 %fi57, %fi59, !llfi_index !620
  %fi60 = call i32 @injectFault2(i64 619, i32 %57, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %58 = mul nsw i32 %fi55, %fi60, !llfi_index !621
  %fi61 = call i32 @injectFault2(i64 620, i32 %58, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %59 = sext i32 %fi61 to i64, !llfi_index !622
  %fi62 = call i64 @injectFault5(i64 621, i64 %59, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = getelementptr i8* %fi51, i64 %fi62, !llfi_index !623
  %fi63 = call i8* @injectFault3(i64 622, i8* %60, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %61 = load i32* %6, align 4, !llfi_index !624
  %fi64 = call i32 @injectFault2(i64 623, i32 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %62 = sext i32 %fi64 to i64, !llfi_index !625
  %fi65 = call i64 @injectFault5(i64 624, i64 %62, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %63 = getelementptr i8* %fi63, i64 %fi65, !llfi_index !626
  %fi66 = call i8* @injectFault3(i64 625, i8* %63, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %64 = load i8*** %2, align 8, !llfi_index !627
  %fi67 = call i8** @injectFault7(i64 626, i8** %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %65 = load i8** %fi67, align 8, !llfi_index !628
  %fi38 = call i8* @injectFault3(i64 627, i8* %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %66 = load i32* %i, align 4, !llfi_index !629
  %fi39 = call i32 @injectFault2(i64 628, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %67 = load i32** %4, align 8, !llfi_index !630
  %fi40 = call i32* @injectFault6(i64 629, i32* %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %68 = load i32* %fi40, align 4, !llfi_index !631
  %fi74 = call i32 @injectFault2(i64 630, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %69 = mul nsw i32 %fi39, %fi74, !llfi_index !632
  %fi75 = call i32 @injectFault2(i64 631, i32 %69, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %70 = sext i32 %fi75 to i64, !llfi_index !633
  %fi76 = call i64 @injectFault5(i64 632, i64 %70, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %71 = getelementptr i8* %fi38, i64 %fi76, !llfi_index !634
  %fi77 = call i8* @injectFault3(i64 633, i8* %71, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %72 = load i32** %4, align 8, !llfi_index !635
  %fi78 = call i32* @injectFault6(i64 634, i32* %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %73 = load i32* %fi78, align 4, !llfi_index !636
  %fi79 = call i32 @injectFault2(i64 635, i32 %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %74 = sext i32 %fi79 to i64, !llfi_index !637
  %fi80 = call i64 @injectFault5(i64 636, i64 %74, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi66, i8* %fi77, i64 %fi80, i32 1, i1 false), !llfi_index !638
  %75 = load i8** %3, align 8, !llfi_index !639
  %fi81 = call i8* @injectFault3(i64 638, i8* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %76 = load i32** %5, align 8, !llfi_index !640
  %fi82 = call i32* @injectFault6(i64 639, i32* %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %77 = load i32* %fi82, align 4, !llfi_index !641
  %fi83 = call i32 @injectFault2(i64 640, i32 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %78 = load i32* %6, align 4, !llfi_index !642
  %fi84 = call i32 @injectFault2(i64 641, i32 %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %79 = add nsw i32 %fi83, %fi84, !llfi_index !643
  %fi85 = call i32 @injectFault2(i64 642, i32 %79, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %80 = load i32* %i, align 4, !llfi_index !644
  %fi86 = call i32 @injectFault2(i64 643, i32 %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %81 = add nsw i32 %fi85, %fi86, !llfi_index !645
  %fi87 = call i32 @injectFault2(i64 644, i32 %81, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %82 = load i32** %4, align 8, !llfi_index !646
  %fi88 = call i32* @injectFault6(i64 645, i32* %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %83 = load i32* %fi88, align 4, !llfi_index !647
  %fi89 = call i32 @injectFault2(i64 646, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %84 = load i32* %6, align 4, !llfi_index !648
  %fi90 = call i32 @injectFault2(i64 647, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %85 = mul nsw i32 2, %fi90, !llfi_index !649
  %fi91 = call i32 @injectFault2(i64 648, i32 %85, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %86 = add nsw i32 %fi89, %fi91, !llfi_index !650
  %fi92 = call i32 @injectFault2(i64 649, i32 %86, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %87 = mul nsw i32 %fi87, %fi92, !llfi_index !651
  %fi93 = call i32 @injectFault2(i64 650, i32 %87, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %88 = sext i32 %fi93 to i64, !llfi_index !652
  %fi94 = call i64 @injectFault5(i64 651, i64 %88, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %89 = getelementptr i8* %fi81, i64 %fi94, !llfi_index !653
  %fi95 = call i8* @injectFault3(i64 652, i8* %89, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %90 = load i32* %6, align 4, !llfi_index !654
  %fi96 = call i32 @injectFault2(i64 653, i32 %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %91 = sext i32 %fi96 to i64, !llfi_index !655
  %fi97 = call i64 @injectFault5(i64 654, i64 %91, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %92 = getelementptr i8* %fi95, i64 %fi97, !llfi_index !656
  %fi98 = call i8* @injectFault3(i64 655, i8* %92, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %93 = load i8*** %2, align 8, !llfi_index !657
  %fi99 = call i8** @injectFault7(i64 656, i8** %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %94 = load i8** %fi99, align 8, !llfi_index !658
  %fi100 = call i8* @injectFault3(i64 657, i8* %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %95 = load i32** %5, align 8, !llfi_index !659
  %fi101 = call i32* @injectFault6(i64 658, i32* %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %96 = load i32* %fi101, align 4, !llfi_index !660
  %fi102 = call i32 @injectFault2(i64 659, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %97 = load i32* %i, align 4, !llfi_index !661
  %fi103 = call i32 @injectFault2(i64 660, i32 %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %98 = sub nsw i32 %fi102, %fi103, !llfi_index !662
  %fi104 = call i32 @injectFault2(i64 661, i32 %98, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %99 = sub nsw i32 %fi104, 1, !llfi_index !663
  %fi105 = call i32 @injectFault2(i64 662, i32 %99, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %100 = load i32** %4, align 8, !llfi_index !664
  %fi106 = call i32* @injectFault6(i64 663, i32* %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %101 = load i32* %fi106, align 4, !llfi_index !665
  %fi107 = call i32 @injectFault2(i64 664, i32 %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %102 = mul nsw i32 %fi105, %fi107, !llfi_index !666
  %fi108 = call i32 @injectFault2(i64 665, i32 %102, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %103 = sext i32 %fi108 to i64, !llfi_index !667
  %fi109 = call i64 @injectFault5(i64 666, i64 %103, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %104 = getelementptr i8* %fi100, i64 %fi109, !llfi_index !668
  %fi110 = call i8* @injectFault3(i64 667, i8* %104, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %105 = load i32** %4, align 8, !llfi_index !669
  %fi111 = call i32* @injectFault6(i64 668, i32* %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %106 = load i32* %fi111, align 4, !llfi_index !670
  %fi112 = call i32 @injectFault2(i64 669, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %107 = sext i32 %fi112 to i64, !llfi_index !671
  %fi113 = call i64 @injectFault5(i64 670, i64 %107, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi98, i8* %fi110, i64 %fi113, i32 1, i1 false), !llfi_index !672
  br label %108, !llfi_index !673

; <label>:108                                     ; preds = %47
  %109 = load i32* %i, align 4, !llfi_index !674
  %fi114 = call i32 @injectFault2(i64 673, i32 %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %110 = add nsw i32 %fi114, 1, !llfi_index !675
  %fi115 = call i32 @injectFault2(i64 674, i32 %110, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi115, i32* %i, align 4, !llfi_index !676
  br label %43, !llfi_index !677

; <label>:111                                     ; preds = %43
  store i32 0, i32* %i, align 4, !llfi_index !678
  br label %112, !llfi_index !679

; <label>:112                                     ; preds = %196, %111
  %113 = load i32* %i, align 4, !llfi_index !680
  %fi116 = call i32 @injectFault2(i64 679, i32 %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %114 = load i32* %6, align 4, !llfi_index !681
  %fi117 = call i32 @injectFault2(i64 680, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %115 = icmp slt i32 %fi116, %fi117, !llfi_index !682
  %fi118 = call i1 @injectFault0(i64 681, i1 %115, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi118, label %116, label %199, !llfi_index !683

; <label>:116                                     ; preds = %112
  store i32 0, i32* %j, align 4, !llfi_index !684
  br label %117, !llfi_index !685

; <label>:117                                     ; preds = %192, %116
  %118 = load i32* %j, align 4, !llfi_index !686
  %fi119 = call i32 @injectFault2(i64 685, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %119 = load i32** %5, align 8, !llfi_index !687
  %fi120 = call i32* @injectFault6(i64 686, i32* %119, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %120 = load i32* %fi120, align 4, !llfi_index !688
  %fi121 = call i32 @injectFault2(i64 687, i32 %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %121 = load i32* %6, align 4, !llfi_index !689
  %fi122 = call i32 @injectFault2(i64 688, i32 %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %122 = mul nsw i32 2, %fi122, !llfi_index !690
  %fi123 = call i32 @injectFault2(i64 689, i32 %122, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %123 = add nsw i32 %fi121, %fi123, !llfi_index !691
  %fi124 = call i32 @injectFault2(i64 690, i32 %123, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %124 = icmp slt i32 %fi119, %fi124, !llfi_index !692
  %fi125 = call i1 @injectFault0(i64 691, i1 %124, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi125, label %125, label %195, !llfi_index !693

; <label>:125                                     ; preds = %117
  %126 = load i32* %j, align 4, !llfi_index !694
  %fi126 = call i32 @injectFault2(i64 693, i32 %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %127 = load i32** %4, align 8, !llfi_index !695
  %fi127 = call i32* @injectFault6(i64 694, i32* %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %128 = load i32* %fi127, align 4, !llfi_index !696
  %fi128 = call i32 @injectFault2(i64 695, i32 %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %129 = load i32* %6, align 4, !llfi_index !697
  %fi68 = call i32 @injectFault2(i64 696, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %130 = mul nsw i32 2, %fi68, !llfi_index !698
  %fi69 = call i32 @injectFault2(i64 697, i32 %130, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %131 = add nsw i32 %fi128, %fi69, !llfi_index !699
  %fi70 = call i32 @injectFault2(i64 698, i32 %131, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %132 = mul nsw i32 %fi126, %fi70, !llfi_index !700
  %fi71 = call i32 @injectFault2(i64 699, i32 %132, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %133 = load i32* %6, align 4, !llfi_index !701
  %fi72 = call i32 @injectFault2(i64 700, i32 %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %134 = add nsw i32 %fi71, %fi72, !llfi_index !702
  %fi73 = call i32 @injectFault2(i64 701, i32 %134, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %135 = load i32* %i, align 4, !llfi_index !703
  %fi129 = call i32 @injectFault2(i64 702, i32 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %136 = add nsw i32 %fi73, %fi129, !llfi_index !704
  %fi130 = call i32 @injectFault2(i64 703, i32 %136, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %137 = sext i32 %fi130 to i64, !llfi_index !705
  %fi131 = call i64 @injectFault5(i64 704, i64 %137, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %138 = load i8** %3, align 8, !llfi_index !706
  %fi132 = call i8* @injectFault3(i64 705, i8* %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %139 = getelementptr i8* %fi132, i64 %fi131, !llfi_index !707
  %fi133 = call i8* @injectFault3(i64 706, i8* %139, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %140 = load i8* %fi133, align 1, !llfi_index !708
  %fi134 = call i8 @injectFault4(i64 707, i8 %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %141 = load i32* %j, align 4, !llfi_index !709
  %fi135 = call i32 @injectFault2(i64 708, i32 %141, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %142 = load i32** %4, align 8, !llfi_index !710
  %fi136 = call i32* @injectFault6(i64 709, i32* %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %143 = load i32* %fi136, align 4, !llfi_index !711
  %fi137 = call i32 @injectFault2(i64 710, i32 %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %144 = load i32* %6, align 4, !llfi_index !712
  %fi138 = call i32 @injectFault2(i64 711, i32 %144, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %145 = mul nsw i32 2, %fi138, !llfi_index !713
  %fi139 = call i32 @injectFault2(i64 712, i32 %145, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %146 = add nsw i32 %fi137, %fi139, !llfi_index !714
  %fi140 = call i32 @injectFault2(i64 713, i32 %146, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %147 = mul nsw i32 %fi135, %fi140, !llfi_index !715
  %fi141 = call i32 @injectFault2(i64 714, i32 %147, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %148 = load i32* %6, align 4, !llfi_index !716
  %fi142 = call i32 @injectFault2(i64 715, i32 %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %149 = add nsw i32 %fi141, %fi142, !llfi_index !717
  %fi143 = call i32 @injectFault2(i64 716, i32 %149, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %150 = sub nsw i32 %fi143, 1, !llfi_index !718
  %fi144 = call i32 @injectFault2(i64 717, i32 %150, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %151 = load i32* %i, align 4, !llfi_index !719
  %fi145 = call i32 @injectFault2(i64 718, i32 %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %152 = sub nsw i32 %fi144, %fi145, !llfi_index !720
  %fi146 = call i32 @injectFault2(i64 719, i32 %152, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %153 = sext i32 %fi146 to i64, !llfi_index !721
  %fi147 = call i64 @injectFault5(i64 720, i64 %153, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %154 = load i8** %3, align 8, !llfi_index !722
  %fi148 = call i8* @injectFault3(i64 721, i8* %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %155 = getelementptr i8* %fi148, i64 %fi147, !llfi_index !723
  %fi149 = call i8* @injectFault3(i64 722, i8* %155, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi134, i8* %fi149, align 1, !llfi_index !724
  %156 = load i32* %j, align 4, !llfi_index !725
  %fi150 = call i32 @injectFault2(i64 724, i32 %156, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %157 = load i32** %4, align 8, !llfi_index !726
  %fi151 = call i32* @injectFault6(i64 725, i32* %157, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %158 = load i32* %fi151, align 4, !llfi_index !727
  %fi152 = call i32 @injectFault2(i64 726, i32 %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %159 = load i32* %6, align 4, !llfi_index !728
  %fi153 = call i32 @injectFault2(i64 727, i32 %159, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %160 = mul nsw i32 2, %fi153, !llfi_index !729
  %fi154 = call i32 @injectFault2(i64 728, i32 %160, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %161 = add nsw i32 %fi152, %fi154, !llfi_index !730
  %fi155 = call i32 @injectFault2(i64 729, i32 %161, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %162 = mul nsw i32 %fi150, %fi155, !llfi_index !731
  %fi156 = call i32 @injectFault2(i64 730, i32 %162, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %163 = load i32** %4, align 8, !llfi_index !732
  %fi157 = call i32* @injectFault6(i64 731, i32* %163, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %164 = load i32* %fi157, align 4, !llfi_index !733
  %fi158 = call i32 @injectFault2(i64 732, i32 %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %165 = add nsw i32 %fi156, %fi158, !llfi_index !734
  %fi159 = call i32 @injectFault2(i64 733, i32 %165, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %166 = load i32* %6, align 4, !llfi_index !735
  %fi160 = call i32 @injectFault2(i64 734, i32 %166, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %167 = add nsw i32 %fi159, %fi160, !llfi_index !736
  %fi161 = call i32 @injectFault2(i64 735, i32 %167, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %168 = sub nsw i32 %fi161, 1, !llfi_index !737
  %fi162 = call i32 @injectFault2(i64 736, i32 %168, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %169 = load i32* %i, align 4, !llfi_index !738
  %fi163 = call i32 @injectFault2(i64 737, i32 %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %170 = sub nsw i32 %fi162, %fi163, !llfi_index !739
  %fi164 = call i32 @injectFault2(i64 738, i32 %170, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %171 = sext i32 %fi164 to i64, !llfi_index !740
  %fi165 = call i64 @injectFault5(i64 739, i64 %171, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %172 = load i8** %3, align 8, !llfi_index !741
  %fi166 = call i8* @injectFault3(i64 740, i8* %172, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %173 = getelementptr i8* %fi166, i64 %fi165, !llfi_index !742
  %fi167 = call i8* @injectFault3(i64 741, i8* %173, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %174 = load i8* %fi167, align 1, !llfi_index !743
  %fi168 = call i8 @injectFault4(i64 742, i8 %174, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %175 = load i32* %j, align 4, !llfi_index !744
  %fi169 = call i32 @injectFault2(i64 743, i32 %175, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %176 = load i32** %4, align 8, !llfi_index !745
  %fi170 = call i32* @injectFault6(i64 744, i32* %176, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %177 = load i32* %fi170, align 4, !llfi_index !746
  %fi171 = call i32 @injectFault2(i64 745, i32 %177, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %178 = load i32* %6, align 4, !llfi_index !747
  %fi172 = call i32 @injectFault2(i64 746, i32 %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %179 = mul nsw i32 2, %fi172, !llfi_index !748
  %fi173 = call i32 @injectFault2(i64 747, i32 %179, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %180 = add nsw i32 %fi171, %fi173, !llfi_index !749
  %fi174 = call i32 @injectFault2(i64 748, i32 %180, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %181 = mul nsw i32 %fi169, %fi174, !llfi_index !750
  %fi175 = call i32 @injectFault2(i64 749, i32 %181, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %182 = load i32** %4, align 8, !llfi_index !751
  %fi176 = call i32* @injectFault6(i64 750, i32* %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %183 = load i32* %fi176, align 4, !llfi_index !752
  %fi177 = call i32 @injectFault2(i64 751, i32 %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %184 = add nsw i32 %fi175, %fi177, !llfi_index !753
  %fi178 = call i32 @injectFault2(i64 752, i32 %184, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %185 = load i32* %6, align 4, !llfi_index !754
  %fi179 = call i32 @injectFault2(i64 753, i32 %185, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %186 = add nsw i32 %fi178, %fi179, !llfi_index !755
  %fi180 = call i32 @injectFault2(i64 754, i32 %186, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %187 = load i32* %i, align 4, !llfi_index !756
  %fi181 = call i32 @injectFault2(i64 755, i32 %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %188 = add nsw i32 %fi180, %fi181, !llfi_index !757
  %fi182 = call i32 @injectFault2(i64 756, i32 %188, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %189 = sext i32 %fi182 to i64, !llfi_index !758
  %fi183 = call i64 @injectFault5(i64 757, i64 %189, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %190 = load i8** %3, align 8, !llfi_index !759
  %fi184 = call i8* @injectFault3(i64 758, i8* %190, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %191 = getelementptr i8* %fi184, i64 %fi183, !llfi_index !760
  %fi185 = call i8* @injectFault3(i64 759, i8* %191, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8 %fi168, i8* %fi185, align 1, !llfi_index !761
  br label %192, !llfi_index !762

; <label>:192                                     ; preds = %125
  %193 = load i32* %j, align 4, !llfi_index !763
  %fi186 = call i32 @injectFault2(i64 762, i32 %193, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %194 = add nsw i32 %fi186, 1, !llfi_index !764
  %fi187 = call i32 @injectFault2(i64 763, i32 %194, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi187, i32* %j, align 4, !llfi_index !765
  br label %117, !llfi_index !766

; <label>:195                                     ; preds = %117
  br label %196, !llfi_index !767

; <label>:196                                     ; preds = %195
  %197 = load i32* %i, align 4, !llfi_index !768
  %fi188 = call i32 @injectFault2(i64 767, i32 %197, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %198 = add nsw i32 %fi188, 1, !llfi_index !769
  %fi189 = call i32 @injectFault2(i64 768, i32 %198, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi189, i32* %i, align 4, !llfi_index !770
  br label %112, !llfi_index !771

; <label>:199                                     ; preds = %112
  %200 = load i32* %6, align 4, !llfi_index !772
  %fi = call i32 @injectFault2(i64 771, i32 %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %201 = mul nsw i32 2, %fi, !llfi_index !773
  %fi1 = call i32 @injectFault2(i64 772, i32 %201, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %202 = load i32** %4, align 8, !llfi_index !774
  %fi2 = call i32* @injectFault6(i64 773, i32* %202, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %203 = load i32* %fi2, align 4, !llfi_index !775
  %fi3 = call i32 @injectFault2(i64 774, i32 %203, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %204 = add nsw i32 %fi3, %fi1, !llfi_index !776
  %fi4 = call i32 @injectFault2(i64 775, i32 %204, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi4, i32* %fi2, align 4, !llfi_index !777
  %205 = load i32* %6, align 4, !llfi_index !778
  %fi5 = call i32 @injectFault2(i64 777, i32 %205, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %206 = mul nsw i32 2, %fi5, !llfi_index !779
  %fi6 = call i32 @injectFault2(i64 778, i32 %206, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %207 = load i32** %5, align 8, !llfi_index !780
  %fi7 = call i32* @injectFault6(i64 779, i32* %207, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %208 = load i32* %fi7, align 4, !llfi_index !781
  %fi8 = call i32 @injectFault2(i64 780, i32 %208, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %209 = add nsw i32 %fi8, %fi6, !llfi_index !782
  %fi9 = call i32 @injectFault2(i64 781, i32 %209, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi9, i32* %fi7, align 4, !llfi_index !783
  %210 = load i8** %3, align 8, !llfi_index !784
  %fi10 = call i8* @injectFault3(i64 783, i8* %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %211 = load i8*** %2, align 8, !llfi_index !785
  %fi11 = call i8** @injectFault7(i64 784, i8** %211, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi10, i8** %fi11, align 8, !llfi_index !786
  %212 = load i32* %1, !llfi_index !787
  %fi12 = call i32 @injectFault2(i64 786, i32 %212, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  ret i32 %fi12, !llfi_index !788
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @susan_smoothing(i32 %three_by_three, i8* %in, double, i32 %x_size, i32 %y_size, i8* %bp) #0 {
  %2 = alloca i32, align 4, !llfi_index !789
  %3 = alloca i8*, align 8, !llfi_index !790
  %4 = alloca float, align 4, !llfi_index !791
  %5 = alloca i32, align 4, !llfi_index !792
  %6 = alloca i32, align 4, !llfi_index !793
  %7 = alloca i8*, align 8, !llfi_index !794
  %temp = alloca float, align 4, !llfi_index !795
  %n_max = alloca i32, align 4, !llfi_index !796
  %increment = alloca i32, align 4, !llfi_index !797
  %mask_size = alloca i32, align 4, !llfi_index !798
  %i = alloca i32, align 4, !llfi_index !799
  %j = alloca i32, align 4, !llfi_index !800
  %x = alloca i32, align 4, !llfi_index !801
  %y = alloca i32, align 4, !llfi_index !802
  %area = alloca i32, align 4, !llfi_index !803
  %brightness = alloca i32, align 4, !llfi_index !804
  %tmp = alloca i32, align 4, !llfi_index !805
  %centre = alloca i32, align 4, !llfi_index !806
  %ip = alloca i8*, align 8, !llfi_index !807
  %dp = alloca i8*, align 8, !llfi_index !808
  %dpt = alloca i8*, align 8, !llfi_index !809
  %cp = alloca i8*, align 8, !llfi_index !810
  %out = alloca i8*, align 8, !llfi_index !811
  %tmp_image = alloca i8*, align 8, !llfi_index !812
  %total = alloca i32, align 4, !llfi_index !813
  store i32 %three_by_three, i32* %2, align 4, !llfi_index !814
  store i8* %in, i8** %3, align 8, !llfi_index !815
  %dt = fptrunc double %0 to float, !llfi_index !816
  %fi = call float @injectFault8(i64 815, float %dt, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi, float* %4, align 4, !llfi_index !817
  store i32 %x_size, i32* %5, align 4, !llfi_index !818
  store i32 %y_size, i32* %6, align 4, !llfi_index !819
  store i8* %bp, i8** %7, align 8, !llfi_index !820
  %8 = load i8** %3, align 8, !llfi_index !821
  %fi1 = call i8* @injectFault3(i64 820, i8* %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi1, i8** %out, align 8, !llfi_index !822
  %9 = load i32* %2, align 4, !llfi_index !823
  %fi2 = call i32 @injectFault2(i64 822, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = icmp eq i32 %fi2, 0, !llfi_index !824
  %fi3 = call i1 @injectFault0(i64 823, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi3, label %11, label %17, !llfi_index !825

; <label>:11                                      ; preds = %1
  %12 = load float* %4, align 4, !llfi_index !826
  %fi4 = call float @injectFault8(i64 825, float %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %13 = fpext float %fi4 to double, !llfi_index !827
  %fi5 = call double @injectFault9(i64 826, double %13, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = fmul double 1.500000e+00, %fi5, !llfi_index !828
  %fi6 = call double @injectFault9(i64 827, double %14, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = fptosi double %fi6 to i32, !llfi_index !829
  %fi7 = call i32 @injectFault2(i64 828, i32 %15, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %16 = add nsw i32 %fi7, 1, !llfi_index !830
  %fi8 = call i32 @injectFault2(i64 829, i32 %16, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi8, i32* %mask_size, align 4, !llfi_index !831
  br label %18, !llfi_index !832

; <label>:17                                      ; preds = %1
  store i32 1, i32* %mask_size, align 4, !llfi_index !833
  br label %18, !llfi_index !834

; <label>:18                                      ; preds = %17, %11
  store i32 0, i32* %total, align 4, !llfi_index !835
  %19 = load float* %4, align 4, !llfi_index !836
  %fi10 = call float @injectFault8(i64 835, float %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = fcmp ogt float %fi10, 1.500000e+01, !llfi_index !837
  %fi11 = call i1 @injectFault0(i64 836, i1 %20, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi11, label %21, label %30, !llfi_index !838

; <label>:21                                      ; preds = %18
  %22 = load i32* %total, align 4, !llfi_index !839
  %fi12 = call i32 @injectFault2(i64 838, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = icmp eq i32 %fi12, 0, !llfi_index !840
  %fi13 = call i1 @injectFault0(i64 839, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi13, label %24, label %30, !llfi_index !841

; <label>:24                                      ; preds = %21
  %25 = load float* %4, align 4, !llfi_index !842
  %fi14 = call float @injectFault8(i64 841, float %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %26 = fpext float %fi14 to double, !llfi_index !843
  %fi15 = call double @injectFault9(i64 842, double %26, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str25, i32 0, i32 0), double %fi15), !llfi_index !844
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str26, i32 0, i32 0)), !llfi_index !845
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str27, i32 0, i32 0)), !llfi_index !846
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !847
  unreachable, !llfi_index !848

; <label>:30                                      ; preds = %21, %18
  %31 = load i32* %mask_size, align 4, !llfi_index !849
  %fi16 = call i32 @injectFault2(i64 848, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %32 = mul nsw i32 2, %fi16, !llfi_index !850
  %fi17 = call i32 @injectFault2(i64 849, i32 %32, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %33 = add nsw i32 %fi17, 1, !llfi_index !851
  %fi9 = call i32 @injectFault2(i64 850, i32 %33, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %34 = load i32* %5, align 4, !llfi_index !852
  %fi21 = call i32 @injectFault2(i64 851, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %35 = icmp sgt i32 %fi9, %fi21, !llfi_index !853
  %fi22 = call i1 @injectFault0(i64 852, i1 %35, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi22, label %42, label %36, !llfi_index !854

; <label>:36                                      ; preds = %30
  %37 = load i32* %mask_size, align 4, !llfi_index !855
  %fi23 = call i32 @injectFault2(i64 854, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %38 = mul nsw i32 2, %fi23, !llfi_index !856
  %fi24 = call i32 @injectFault2(i64 855, i32 %38, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %39 = add nsw i32 %fi24, 1, !llfi_index !857
  %fi25 = call i32 @injectFault2(i64 856, i32 %39, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %40 = load i32* %6, align 4, !llfi_index !858
  %fi26 = call i32 @injectFault2(i64 857, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = icmp sgt i32 %fi25, %fi26, !llfi_index !859
  %fi27 = call i1 @injectFault0(i64 858, i1 %41, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi27, label %42, label %47, !llfi_index !860

; <label>:42                                      ; preds = %36, %30
  %43 = load i32* %mask_size, align 4, !llfi_index !861
  %fi28 = call i32 @injectFault2(i64 860, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %44 = load i32* %5, align 4, !llfi_index !862
  %fi29 = call i32 @injectFault2(i64 861, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %45 = load i32* %6, align 4, !llfi_index !863
  %fi30 = call i32 @injectFault2(i64 862, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str28, i32 0, i32 0), i32 %fi28, i32 %fi29, i32 %fi30), !llfi_index !864
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !865
  unreachable, !llfi_index !866

; <label>:47                                      ; preds = %36
  %48 = load i32* %5, align 4, !llfi_index !867
  %fi31 = call i32 @injectFault2(i64 866, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = load i32* %mask_size, align 4, !llfi_index !868
  %fi32 = call i32 @injectFault2(i64 867, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %50 = mul nsw i32 %fi32, 2, !llfi_index !869
  %fi33 = call i32 @injectFault2(i64 868, i32 %50, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %51 = add nsw i32 %fi31, %fi33, !llfi_index !870
  %fi34 = call i32 @injectFault2(i64 869, i32 %51, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %52 = load i32* %6, align 4, !llfi_index !871
  %fi35 = call i32 @injectFault2(i64 870, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %53 = load i32* %mask_size, align 4, !llfi_index !872
  %fi36 = call i32 @injectFault2(i64 871, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %54 = mul nsw i32 %fi36, 2, !llfi_index !873
  %fi37 = call i32 @injectFault2(i64 872, i32 %54, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %55 = add nsw i32 %fi35, %fi37, !llfi_index !874
  %fi38 = call i32 @injectFault2(i64 873, i32 %55, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %56 = mul nsw i32 %fi34, %fi38, !llfi_index !875
  %fi39 = call i32 @injectFault2(i64 874, i32 %56, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %57 = sext i32 %fi39 to i64, !llfi_index !876
  %fi40 = call i64 @injectFault5(i64 875, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %58 = call noalias i8* @malloc(i64 %fi40) #4, !llfi_index !877
  store i8* %58, i8** %tmp_image, align 8, !llfi_index !878
  %59 = load i8** %tmp_image, align 8, !llfi_index !879
  %fi41 = call i8* @injectFault3(i64 878, i8* %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = load i32* %mask_size, align 4, !llfi_index !880
  %fi42 = call i32 @injectFault2(i64 879, i32 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %61 = call i32 @enlarge(i8** %3, i8* %fi41, i32* %5, i32* %6, i32 %fi42), !llfi_index !881
  %62 = load i32* %2, align 4, !llfi_index !882
  %fi43 = call i32 @injectFault2(i64 881, i32 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %63 = icmp eq i32 %fi43, 0, !llfi_index !883
  %fi44 = call i1 @injectFault0(i64 882, i1 %63, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi44, label %64, label %248, !llfi_index !884

; <label>:64                                      ; preds = %47
  %65 = load i32* %mask_size, align 4, !llfi_index !885
  %fi18 = call i32 @injectFault2(i64 884, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %66 = mul nsw i32 %fi18, 2, !llfi_index !886
  %fi19 = call i32 @injectFault2(i64 885, i32 %66, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %67 = add nsw i32 %fi19, 1, !llfi_index !887
  %fi20 = call i32 @injectFault2(i64 886, i32 %67, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi20, i32* %n_max, align 4, !llfi_index !888
  %68 = load i32* %5, align 4, !llfi_index !889
  %fi49 = call i32 @injectFault2(i64 888, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %69 = load i32* %n_max, align 4, !llfi_index !890
  %fi50 = call i32 @injectFault2(i64 889, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %70 = sub nsw i32 %fi49, %fi50, !llfi_index !891
  %fi51 = call i32 @injectFault2(i64 890, i32 %70, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi51, i32* %increment, align 4, !llfi_index !892
  %71 = load i32* %n_max, align 4, !llfi_index !893
  %fi52 = call i32 @injectFault2(i64 892, i32 %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %72 = load i32* %n_max, align 4, !llfi_index !894
  %fi53 = call i32 @injectFault2(i64 893, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %73 = mul nsw i32 %fi52, %fi53, !llfi_index !895
  %fi54 = call i32 @injectFault2(i64 894, i32 %73, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %74 = sext i32 %fi54 to i64, !llfi_index !896
  %fi55 = call i64 @injectFault5(i64 895, i64 %74, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %75 = call noalias i8* @malloc(i64 %fi55) #4, !llfi_index !897
  store i8* %75, i8** %dp, align 8, !llfi_index !898
  %76 = load i8** %dp, align 8, !llfi_index !899
  %fi56 = call i8* @injectFault3(i64 898, i8* %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi56, i8** %dpt, align 8, !llfi_index !900
  %77 = load float* %4, align 4, !llfi_index !901
  %fi57 = call float @injectFault8(i64 900, float %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %78 = load float* %4, align 4, !llfi_index !902
  %fi58 = call float @injectFault8(i64 901, float %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %79 = fmul float %fi57, %fi58, !llfi_index !903
  %fi59 = call float @injectFault8(i64 902, float %79, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %80 = fsub float -0.000000e+00, %fi59, !llfi_index !904
  %fi60 = call float @injectFault8(i64 903, float %80, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi60, float* %temp, align 4, !llfi_index !905
  %81 = load i32* %mask_size, align 4, !llfi_index !906
  %fi61 = call i32 @injectFault2(i64 905, i32 %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %82 = sub nsw i32 0, %fi61, !llfi_index !907
  %fi62 = call i32 @injectFault2(i64 906, i32 %82, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi62, i32* %i, align 4, !llfi_index !908
  br label %83, !llfi_index !909

; <label>:83                                      ; preds = %117, %64
  %84 = load i32* %i, align 4, !llfi_index !910
  %fi63 = call i32 @injectFault2(i64 909, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %85 = load i32* %mask_size, align 4, !llfi_index !911
  %fi64 = call i32 @injectFault2(i64 910, i32 %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %86 = icmp sle i32 %fi63, %fi64, !llfi_index !912
  %fi65 = call i1 @injectFault0(i64 911, i1 %86, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi65, label %87, label %120, !llfi_index !913

; <label>:87                                      ; preds = %83
  %88 = load i32* %mask_size, align 4, !llfi_index !914
  %fi66 = call i32 @injectFault2(i64 913, i32 %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %89 = sub nsw i32 0, %fi66, !llfi_index !915
  %fi67 = call i32 @injectFault2(i64 914, i32 %89, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi67, i32* %j, align 4, !llfi_index !916
  br label %90, !llfi_index !917

; <label>:90                                      ; preds = %113, %87
  %91 = load i32* %j, align 4, !llfi_index !918
  %fi68 = call i32 @injectFault2(i64 917, i32 %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %92 = load i32* %mask_size, align 4, !llfi_index !919
  %fi69 = call i32 @injectFault2(i64 918, i32 %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %93 = icmp sle i32 %fi68, %fi69, !llfi_index !920
  %fi70 = call i1 @injectFault0(i64 919, i1 %93, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi70, label %94, label %116, !llfi_index !921

; <label>:94                                      ; preds = %90
  %95 = load i32* %i, align 4, !llfi_index !922
  %fi71 = call i32 @injectFault2(i64 921, i32 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %96 = load i32* %i, align 4, !llfi_index !923
  %fi72 = call i32 @injectFault2(i64 922, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %97 = mul nsw i32 %fi71, %fi72, !llfi_index !924
  %fi73 = call i32 @injectFault2(i64 923, i32 %97, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %98 = load i32* %j, align 4, !llfi_index !925
  %fi74 = call i32 @injectFault2(i64 924, i32 %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %99 = load i32* %j, align 4, !llfi_index !926
  %fi75 = call i32 @injectFault2(i64 925, i32 %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %100 = mul nsw i32 %fi74, %fi75, !llfi_index !927
  %fi77 = call i32 @injectFault2(i64 926, i32 %100, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %101 = add nsw i32 %fi73, %fi77, !llfi_index !928
  %fi78 = call i32 @injectFault2(i64 927, i32 %101, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %102 = sitofp i32 %fi78 to float, !llfi_index !929
  %fi76 = call float @injectFault8(i64 928, float %102, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %103 = load float* %temp, align 4, !llfi_index !930
  %fi79 = call float @injectFault8(i64 929, float %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %104 = fdiv float %fi76, %fi79, !llfi_index !931
  %fi80 = call float @injectFault8(i64 930, float %104, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %105 = fpext float %fi80 to double, !llfi_index !932
  %fi81 = call double @injectFault9(i64 931, double %105, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %106 = call double @exp(double %fi81) #4, !llfi_index !933
  %107 = fmul double 1.000000e+02, %106, !llfi_index !934
  %fi82 = call double @injectFault9(i64 933, double %107, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %108 = fptosi double %fi82 to i32, !llfi_index !935
  %fi83 = call i32 @injectFault2(i64 934, i32 %108, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi83, i32* %x, align 4, !llfi_index !936
  %109 = load i32* %x, align 4, !llfi_index !937
  %fi84 = call i32 @injectFault2(i64 936, i32 %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %110 = trunc i32 %fi84 to i8, !llfi_index !938
  %fi85 = call i8 @injectFault4(i64 937, i8 %110, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %111 = load i8** %dpt, align 8, !llfi_index !939
  %fi86 = call i8* @injectFault3(i64 938, i8* %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %112 = getelementptr i8* %fi86, i32 1, !llfi_index !940
  %fi87 = call i8* @injectFault3(i64 939, i8* %112, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi87, i8** %dpt, align 8, !llfi_index !941
  store i8 %fi85, i8* %fi86, align 1, !llfi_index !942
  br label %113, !llfi_index !943

; <label>:113                                     ; preds = %94
  %114 = load i32* %j, align 4, !llfi_index !944
  %fi88 = call i32 @injectFault2(i64 943, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %115 = add nsw i32 %fi88, 1, !llfi_index !945
  %fi89 = call i32 @injectFault2(i64 944, i32 %115, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi89, i32* %j, align 4, !llfi_index !946
  br label %90, !llfi_index !947

; <label>:116                                     ; preds = %90
  br label %117, !llfi_index !948

; <label>:117                                     ; preds = %116
  %118 = load i32* %i, align 4, !llfi_index !949
  %fi90 = call i32 @injectFault2(i64 948, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %119 = add nsw i32 %fi90, 1, !llfi_index !950
  %fi91 = call i32 @injectFault2(i64 949, i32 %119, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi91, i32* %i, align 4, !llfi_index !951
  br label %83, !llfi_index !952

; <label>:120                                     ; preds = %83
  %121 = load i32* %mask_size, align 4, !llfi_index !953
  %fi92 = call i32 @injectFault2(i64 952, i32 %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi92, i32* %i, align 4, !llfi_index !954
  br label %122, !llfi_index !955

; <label>:122                                     ; preds = %244, %120
  %123 = load i32* %i, align 4, !llfi_index !956
  %fi93 = call i32 @injectFault2(i64 955, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %124 = load i32* %6, align 4, !llfi_index !957
  %fi94 = call i32 @injectFault2(i64 956, i32 %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %125 = load i32* %mask_size, align 4, !llfi_index !958
  %fi95 = call i32 @injectFault2(i64 957, i32 %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %126 = sub nsw i32 %fi94, %fi95, !llfi_index !959
  %fi96 = call i32 @injectFault2(i64 958, i32 %126, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %127 = icmp slt i32 %fi93, %fi96, !llfi_index !960
  %fi97 = call i1 @injectFault0(i64 959, i1 %127, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi97, label %128, label %247, !llfi_index !961

; <label>:128                                     ; preds = %122
  %129 = load i32* %mask_size, align 4, !llfi_index !962
  %fi45 = call i32 @injectFault2(i64 961, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi45, i32* %j, align 4, !llfi_index !963
  br label %130, !llfi_index !964

; <label>:130                                     ; preds = %240, %128
  %131 = load i32* %j, align 4, !llfi_index !965
  %fi46 = call i32 @injectFault2(i64 964, i32 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %132 = load i32* %5, align 4, !llfi_index !966
  %fi47 = call i32 @injectFault2(i64 965, i32 %132, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %133 = load i32* %mask_size, align 4, !llfi_index !967
  %fi48 = call i32 @injectFault2(i64 966, i32 %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %134 = sub nsw i32 %fi47, %fi48, !llfi_index !968
  %fi106 = call i32 @injectFault2(i64 967, i32 %134, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %135 = icmp slt i32 %fi46, %fi106, !llfi_index !969
  %fi107 = call i1 @injectFault0(i64 968, i1 %135, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi107, label %136, label %243, !llfi_index !970

; <label>:136                                     ; preds = %130
  store i32 0, i32* %area, align 4, !llfi_index !971
  store i32 0, i32* %total, align 4, !llfi_index !972
  %137 = load i8** %dp, align 8, !llfi_index !973
  %fi108 = call i8* @injectFault3(i64 972, i8* %137, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi108, i8** %dpt, align 8, !llfi_index !974
  %138 = load i8** %3, align 8, !llfi_index !975
  %fi109 = call i8* @injectFault3(i64 974, i8* %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %139 = load i32* %i, align 4, !llfi_index !976
  %fi110 = call i32 @injectFault2(i64 975, i32 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %140 = load i32* %mask_size, align 4, !llfi_index !977
  %fi111 = call i32 @injectFault2(i64 976, i32 %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %141 = sub nsw i32 %fi110, %fi111, !llfi_index !978
  %fi112 = call i32 @injectFault2(i64 977, i32 %141, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %142 = load i32* %5, align 4, !llfi_index !979
  %fi113 = call i32 @injectFault2(i64 978, i32 %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %143 = mul nsw i32 %fi112, %fi113, !llfi_index !980
  %fi114 = call i32 @injectFault2(i64 979, i32 %143, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %144 = sext i32 %fi114 to i64, !llfi_index !981
  %fi115 = call i64 @injectFault5(i64 980, i64 %144, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %145 = getelementptr i8* %fi109, i64 %fi115, !llfi_index !982
  %fi116 = call i8* @injectFault3(i64 981, i8* %145, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %146 = load i32* %j, align 4, !llfi_index !983
  %fi117 = call i32 @injectFault2(i64 982, i32 %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %147 = sext i32 %fi117 to i64, !llfi_index !984
  %fi118 = call i64 @injectFault5(i64 983, i64 %147, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %148 = getelementptr i8* %fi116, i64 %fi118, !llfi_index !985
  %fi119 = call i8* @injectFault3(i64 984, i8* %148, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %149 = load i32* %mask_size, align 4, !llfi_index !986
  %fi120 = call i32 @injectFault2(i64 985, i32 %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %150 = sext i32 %fi120 to i64, !llfi_index !987
  %fi121 = call i64 @injectFault5(i64 986, i64 %150, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %151 = sub i64 0, %fi121, !llfi_index !988
  %fi122 = call i64 @injectFault5(i64 987, i64 %151, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %152 = getelementptr i8* %fi119, i64 %fi122, !llfi_index !989
  %fi123 = call i8* @injectFault3(i64 988, i8* %152, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi123, i8** %ip, align 8, !llfi_index !990
  %153 = load i32* %i, align 4, !llfi_index !991
  %fi124 = call i32 @injectFault2(i64 990, i32 %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %154 = load i32* %5, align 4, !llfi_index !992
  %fi125 = call i32 @injectFault2(i64 991, i32 %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %155 = mul nsw i32 %fi124, %fi125, !llfi_index !993
  %fi126 = call i32 @injectFault2(i64 992, i32 %155, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %156 = load i32* %j, align 4, !llfi_index !994
  %fi127 = call i32 @injectFault2(i64 993, i32 %156, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %157 = add nsw i32 %fi126, %fi127, !llfi_index !995
  %fi128 = call i32 @injectFault2(i64 994, i32 %157, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %158 = sext i32 %fi128 to i64, !llfi_index !996
  %fi129 = call i64 @injectFault5(i64 995, i64 %158, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %159 = load i8** %3, align 8, !llfi_index !997
  %fi130 = call i8* @injectFault3(i64 996, i8* %159, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %160 = getelementptr i8* %fi130, i64 %fi129, !llfi_index !998
  %fi131 = call i8* @injectFault3(i64 997, i8* %160, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %161 = load i8* %fi131, align 1, !llfi_index !999
  %fi132 = call i8 @injectFault4(i64 998, i8 %161, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %162 = zext i8 %fi132 to i32, !llfi_index !1000
  %fi133 = call i32 @injectFault2(i64 999, i32 %162, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi133, i32* %centre, align 4, !llfi_index !1001
  %163 = load i8** %7, align 8, !llfi_index !1002
  %fi134 = call i8* @injectFault3(i64 1001, i8* %163, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %164 = load i32* %centre, align 4, !llfi_index !1003
  %fi135 = call i32 @injectFault2(i64 1002, i32 %164, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %165 = sext i32 %fi135 to i64, !llfi_index !1004
  %fi136 = call i64 @injectFault5(i64 1003, i64 %165, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %166 = getelementptr i8* %fi134, i64 %fi136, !llfi_index !1005
  %fi137 = call i8* @injectFault3(i64 1004, i8* %166, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi137, i8** %cp, align 8, !llfi_index !1006
  %167 = load i32* %mask_size, align 4, !llfi_index !1007
  %fi138 = call i32 @injectFault2(i64 1006, i32 %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %168 = sub nsw i32 0, %fi138, !llfi_index !1008
  %fi139 = call i32 @injectFault2(i64 1007, i32 %168, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi139, i32* %y, align 4, !llfi_index !1009
  br label %169, !llfi_index !1010

; <label>:169                                     ; preds = %213, %136
  %170 = load i32* %y, align 4, !llfi_index !1011
  %fi140 = call i32 @injectFault2(i64 1010, i32 %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %171 = load i32* %mask_size, align 4, !llfi_index !1012
  %fi141 = call i32 @injectFault2(i64 1011, i32 %171, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %172 = icmp sle i32 %fi140, %fi141, !llfi_index !1013
  %fi142 = call i1 @injectFault0(i64 1012, i1 %172, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi142, label %173, label %216, !llfi_index !1014

; <label>:173                                     ; preds = %169
  %174 = load i32* %mask_size, align 4, !llfi_index !1015
  %fi143 = call i32 @injectFault2(i64 1014, i32 %174, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %175 = sub nsw i32 0, %fi143, !llfi_index !1016
  %fi144 = call i32 @injectFault2(i64 1015, i32 %175, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi144, i32* %x, align 4, !llfi_index !1017
  br label %176, !llfi_index !1018

; <label>:176                                     ; preds = %205, %173
  %177 = load i32* %x, align 4, !llfi_index !1019
  %fi145 = call i32 @injectFault2(i64 1018, i32 %177, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %178 = load i32* %mask_size, align 4, !llfi_index !1020
  %fi146 = call i32 @injectFault2(i64 1019, i32 %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %179 = icmp sle i32 %fi145, %fi146, !llfi_index !1021
  %fi147 = call i1 @injectFault0(i64 1020, i1 %179, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi147, label %180, label %208, !llfi_index !1022

; <label>:180                                     ; preds = %176
  %181 = load i8** %ip, align 8, !llfi_index !1023
  %fi148 = call i8* @injectFault3(i64 1022, i8* %181, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %182 = getelementptr i8* %fi148, i32 1, !llfi_index !1024
  %fi149 = call i8* @injectFault3(i64 1023, i8* %182, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi149, i8** %ip, align 8, !llfi_index !1025
  %183 = load i8* %fi148, align 1, !llfi_index !1026
  %fi150 = call i8 @injectFault4(i64 1025, i8 %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %184 = zext i8 %fi150 to i32, !llfi_index !1027
  %fi151 = call i32 @injectFault2(i64 1026, i32 %184, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi151, i32* %brightness, align 4, !llfi_index !1028
  %185 = load i8** %dpt, align 8, !llfi_index !1029
  %fi152 = call i8* @injectFault3(i64 1028, i8* %185, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %186 = getelementptr i8* %fi152, i32 1, !llfi_index !1030
  %fi153 = call i8* @injectFault3(i64 1029, i8* %186, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi153, i8** %dpt, align 8, !llfi_index !1031
  %187 = load i8* %fi152, align 1, !llfi_index !1032
  %fi154 = call i8 @injectFault4(i64 1031, i8 %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %188 = zext i8 %fi154 to i32, !llfi_index !1033
  %fi155 = call i32 @injectFault2(i64 1032, i32 %188, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %189 = load i8** %cp, align 8, !llfi_index !1034
  %fi156 = call i8* @injectFault3(i64 1033, i8* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %190 = load i32* %brightness, align 4, !llfi_index !1035
  %fi157 = call i32 @injectFault2(i64 1034, i32 %190, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %191 = sext i32 %fi157 to i64, !llfi_index !1036
  %fi158 = call i64 @injectFault5(i64 1035, i64 %191, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %192 = sub i64 0, %fi158, !llfi_index !1037
  %fi159 = call i64 @injectFault5(i64 1036, i64 %192, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %193 = getelementptr i8* %fi156, i64 %fi159, !llfi_index !1038
  %fi160 = call i8* @injectFault3(i64 1037, i8* %193, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %194 = load i8* %fi160, align 1, !llfi_index !1039
  %fi161 = call i8 @injectFault4(i64 1038, i8 %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %195 = zext i8 %fi161 to i32, !llfi_index !1040
  %fi162 = call i32 @injectFault2(i64 1039, i32 %195, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %196 = mul nsw i32 %fi155, %fi162, !llfi_index !1041
  %fi163 = call i32 @injectFault2(i64 1040, i32 %196, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi163, i32* %tmp, align 4, !llfi_index !1042
  %197 = load i32* %tmp, align 4, !llfi_index !1043
  %fi164 = call i32 @injectFault2(i64 1042, i32 %197, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %198 = load i32* %area, align 4, !llfi_index !1044
  %fi165 = call i32 @injectFault2(i64 1043, i32 %198, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %199 = add nsw i32 %fi165, %fi164, !llfi_index !1045
  %fi166 = call i32 @injectFault2(i64 1044, i32 %199, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi166, i32* %area, align 4, !llfi_index !1046
  %200 = load i32* %tmp, align 4, !llfi_index !1047
  %fi167 = call i32 @injectFault2(i64 1046, i32 %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %201 = load i32* %brightness, align 4, !llfi_index !1048
  %fi168 = call i32 @injectFault2(i64 1047, i32 %201, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %202 = mul nsw i32 %fi167, %fi168, !llfi_index !1049
  %fi169 = call i32 @injectFault2(i64 1048, i32 %202, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %203 = load i32* %total, align 4, !llfi_index !1050
  %fi170 = call i32 @injectFault2(i64 1049, i32 %203, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %204 = add nsw i32 %fi170, %fi169, !llfi_index !1051
  %fi171 = call i32 @injectFault2(i64 1050, i32 %204, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi171, i32* %total, align 4, !llfi_index !1052
  br label %205, !llfi_index !1053

; <label>:205                                     ; preds = %180
  %206 = load i32* %x, align 4, !llfi_index !1054
  %fi172 = call i32 @injectFault2(i64 1053, i32 %206, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %207 = add nsw i32 %fi172, 1, !llfi_index !1055
  %fi173 = call i32 @injectFault2(i64 1054, i32 %207, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi173, i32* %x, align 4, !llfi_index !1056
  br label %176, !llfi_index !1057

; <label>:208                                     ; preds = %176
  %209 = load i32* %increment, align 4, !llfi_index !1058
  %fi174 = call i32 @injectFault2(i64 1057, i32 %209, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %210 = load i8** %ip, align 8, !llfi_index !1059
  %fi175 = call i8* @injectFault3(i64 1058, i8* %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %211 = sext i32 %fi174 to i64, !llfi_index !1060
  %fi176 = call i64 @injectFault5(i64 1059, i64 %211, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %212 = getelementptr i8* %fi175, i64 %fi176, !llfi_index !1061
  %fi177 = call i8* @injectFault3(i64 1060, i8* %212, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi177, i8** %ip, align 8, !llfi_index !1062
  br label %213, !llfi_index !1063

; <label>:213                                     ; preds = %208
  %214 = load i32* %y, align 4, !llfi_index !1064
  %fi178 = call i32 @injectFault2(i64 1063, i32 %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %215 = add nsw i32 %fi178, 1, !llfi_index !1065
  %fi179 = call i32 @injectFault2(i64 1064, i32 %215, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi179, i32* %y, align 4, !llfi_index !1066
  br label %169, !llfi_index !1067

; <label>:216                                     ; preds = %169
  %217 = load i32* %area, align 4, !llfi_index !1068
  %fi180 = call i32 @injectFault2(i64 1067, i32 %217, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %218 = sub nsw i32 %fi180, 10000, !llfi_index !1069
  %fi181 = call i32 @injectFault2(i64 1068, i32 %218, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi181, i32* %tmp, align 4, !llfi_index !1070
  %219 = load i32* %tmp, align 4, !llfi_index !1071
  %fi182 = call i32 @injectFault2(i64 1070, i32 %219, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %220 = icmp eq i32 %fi182, 0, !llfi_index !1072
  %fi183 = call i1 @injectFault0(i64 1071, i1 %220, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi183, label %221, label %229, !llfi_index !1073

; <label>:221                                     ; preds = %216
  %222 = load i8** %3, align 8, !llfi_index !1074
  %fi184 = call i8* @injectFault3(i64 1073, i8* %222, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %223 = load i32* %i, align 4, !llfi_index !1075
  %fi185 = call i32 @injectFault2(i64 1074, i32 %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %224 = load i32* %j, align 4, !llfi_index !1076
  %fi186 = call i32 @injectFault2(i64 1075, i32 %224, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %225 = load i32* %5, align 4, !llfi_index !1077
  %fi187 = call i32 @injectFault2(i64 1076, i32 %225, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %226 = call zeroext i8 @median(i8* %fi184, i32 %fi185, i32 %fi186, i32 %fi187), !llfi_index !1078
  %227 = load i8** %out, align 8, !llfi_index !1079
  %fi188 = call i8* @injectFault3(i64 1078, i8* %227, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %228 = getelementptr i8* %fi188, i32 1, !llfi_index !1080
  %fi189 = call i8* @injectFault3(i64 1079, i8* %228, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi189, i8** %out, align 8, !llfi_index !1081
  store i8 %226, i8* %fi188, align 1, !llfi_index !1082
  br label %239, !llfi_index !1083

; <label>:229                                     ; preds = %216
  %230 = load i32* %total, align 4, !llfi_index !1084
  %fi190 = call i32 @injectFault2(i64 1083, i32 %230, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %231 = load i32* %centre, align 4, !llfi_index !1085
  %fi191 = call i32 @injectFault2(i64 1084, i32 %231, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %232 = mul nsw i32 %fi191, 10000, !llfi_index !1086
  %fi192 = call i32 @injectFault2(i64 1085, i32 %232, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %233 = sub nsw i32 %fi190, %fi192, !llfi_index !1087
  %fi193 = call i32 @injectFault2(i64 1086, i32 %233, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %234 = load i32* %tmp, align 4, !llfi_index !1088
  %fi194 = call i32 @injectFault2(i64 1087, i32 %234, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %235 = sdiv i32 %fi193, %fi194, !llfi_index !1089
  %fi195 = call i32 @injectFault2(i64 1088, i32 %235, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %236 = trunc i32 %fi195 to i8, !llfi_index !1090
  %fi196 = call i8 @injectFault4(i64 1089, i8 %236, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %237 = load i8** %out, align 8, !llfi_index !1091
  %fi197 = call i8* @injectFault3(i64 1090, i8* %237, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %238 = getelementptr i8* %fi197, i32 1, !llfi_index !1092
  %fi198 = call i8* @injectFault3(i64 1091, i8* %238, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi198, i8** %out, align 8, !llfi_index !1093
  store i8 %fi196, i8* %fi197, align 1, !llfi_index !1094
  br label %239, !llfi_index !1095

; <label>:239                                     ; preds = %229, %221
  br label %240, !llfi_index !1096

; <label>:240                                     ; preds = %239
  %241 = load i32* %j, align 4, !llfi_index !1097
  %fi199 = call i32 @injectFault2(i64 1096, i32 %241, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %242 = add nsw i32 %fi199, 1, !llfi_index !1098
  %fi200 = call i32 @injectFault2(i64 1097, i32 %242, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi200, i32* %j, align 4, !llfi_index !1099
  br label %130, !llfi_index !1100

; <label>:243                                     ; preds = %130
  br label %244, !llfi_index !1101

; <label>:244                                     ; preds = %243
  %245 = load i32* %i, align 4, !llfi_index !1102
  %fi201 = call i32 @injectFault2(i64 1101, i32 %245, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %246 = add nsw i32 %fi201, 1, !llfi_index !1103
  %fi202 = call i32 @injectFault2(i64 1102, i32 %246, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi202, i32* %i, align 4, !llfi_index !1104
  br label %122, !llfi_index !1105

; <label>:247                                     ; preds = %122
  br label %495, !llfi_index !1106

; <label>:248                                     ; preds = %47
  store i32 1, i32* %i, align 4, !llfi_index !1107
  br label %249, !llfi_index !1108

; <label>:249                                     ; preds = %491, %248
  %250 = load i32* %i, align 4, !llfi_index !1109
  %fi203 = call i32 @injectFault2(i64 1108, i32 %250, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %251 = load i32* %6, align 4, !llfi_index !1110
  %fi204 = call i32 @injectFault2(i64 1109, i32 %251, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %252 = sub nsw i32 %fi204, 1, !llfi_index !1111
  %fi205 = call i32 @injectFault2(i64 1110, i32 %252, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %253 = icmp slt i32 %fi203, %fi205, !llfi_index !1112
  %fi206 = call i1 @injectFault0(i64 1111, i1 %253, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi206, label %254, label %494, !llfi_index !1113

; <label>:254                                     ; preds = %249
  store i32 1, i32* %j, align 4, !llfi_index !1114
  br label %255, !llfi_index !1115

; <label>:255                                     ; preds = %487, %254
  %256 = load i32* %j, align 4, !llfi_index !1116
  %fi207 = call i32 @injectFault2(i64 1115, i32 %256, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %257 = load i32* %5, align 4, !llfi_index !1117
  %fi98 = call i32 @injectFault2(i64 1116, i32 %257, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %258 = sub nsw i32 %fi98, 1, !llfi_index !1118
  %fi99 = call i32 @injectFault2(i64 1117, i32 %258, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %259 = icmp slt i32 %fi207, %fi99, !llfi_index !1119
  %fi100 = call i1 @injectFault0(i64 1118, i1 %259, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi100, label %260, label %490, !llfi_index !1120

; <label>:260                                     ; preds = %255
  store i32 0, i32* %area, align 4, !llfi_index !1121
  store i32 0, i32* %total, align 4, !llfi_index !1122
  %261 = load i8** %3, align 8, !llfi_index !1123
  %fi101 = call i8* @injectFault3(i64 1122, i8* %261, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %262 = load i32* %i, align 4, !llfi_index !1124
  %fi102 = call i32 @injectFault2(i64 1123, i32 %262, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %263 = sub nsw i32 %fi102, 1, !llfi_index !1125
  %fi103 = call i32 @injectFault2(i64 1124, i32 %263, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %264 = load i32* %5, align 4, !llfi_index !1126
  %fi104 = call i32 @injectFault2(i64 1125, i32 %264, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %265 = mul nsw i32 %fi103, %fi104, !llfi_index !1127
  %fi105 = call i32 @injectFault2(i64 1126, i32 %265, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %266 = sext i32 %fi105 to i64, !llfi_index !1128
  %fi208 = call i64 @injectFault5(i64 1127, i64 %266, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %267 = getelementptr i8* %fi101, i64 %fi208, !llfi_index !1129
  %fi209 = call i8* @injectFault3(i64 1128, i8* %267, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %268 = load i32* %j, align 4, !llfi_index !1130
  %fi210 = call i32 @injectFault2(i64 1129, i32 %268, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %269 = sext i32 %fi210 to i64, !llfi_index !1131
  %fi211 = call i64 @injectFault5(i64 1130, i64 %269, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %270 = getelementptr i8* %fi209, i64 %fi211, !llfi_index !1132
  %fi212 = call i8* @injectFault3(i64 1131, i8* %270, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %271 = getelementptr i8* %fi212, i64 -1, !llfi_index !1133
  %fi213 = call i8* @injectFault3(i64 1132, i8* %271, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi213, i8** %ip, align 8, !llfi_index !1134
  %272 = load i32* %i, align 4, !llfi_index !1135
  %fi214 = call i32 @injectFault2(i64 1134, i32 %272, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %273 = load i32* %5, align 4, !llfi_index !1136
  %fi215 = call i32 @injectFault2(i64 1135, i32 %273, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %274 = mul nsw i32 %fi214, %fi215, !llfi_index !1137
  %fi216 = call i32 @injectFault2(i64 1136, i32 %274, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %275 = load i32* %j, align 4, !llfi_index !1138
  %fi217 = call i32 @injectFault2(i64 1137, i32 %275, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %276 = add nsw i32 %fi216, %fi217, !llfi_index !1139
  %fi218 = call i32 @injectFault2(i64 1138, i32 %276, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %277 = sext i32 %fi218 to i64, !llfi_index !1140
  %fi219 = call i64 @injectFault5(i64 1139, i64 %277, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %278 = load i8** %3, align 8, !llfi_index !1141
  %fi220 = call i8* @injectFault3(i64 1140, i8* %278, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %279 = getelementptr i8* %fi220, i64 %fi219, !llfi_index !1142
  %fi221 = call i8* @injectFault3(i64 1141, i8* %279, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %280 = load i8* %fi221, align 1, !llfi_index !1143
  %fi222 = call i8 @injectFault4(i64 1142, i8 %280, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %281 = zext i8 %fi222 to i32, !llfi_index !1144
  %fi223 = call i32 @injectFault2(i64 1143, i32 %281, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi223, i32* %centre, align 4, !llfi_index !1145
  %282 = load i8** %7, align 8, !llfi_index !1146
  %fi224 = call i8* @injectFault3(i64 1145, i8* %282, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %283 = load i32* %centre, align 4, !llfi_index !1147
  %fi225 = call i32 @injectFault2(i64 1146, i32 %283, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %284 = sext i32 %fi225 to i64, !llfi_index !1148
  %fi226 = call i64 @injectFault5(i64 1147, i64 %284, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %285 = getelementptr i8* %fi224, i64 %fi226, !llfi_index !1149
  %fi227 = call i8* @injectFault3(i64 1148, i8* %285, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi227, i8** %cp, align 8, !llfi_index !1150
  %286 = load i8** %ip, align 8, !llfi_index !1151
  %fi228 = call i8* @injectFault3(i64 1150, i8* %286, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %287 = getelementptr i8* %fi228, i32 1, !llfi_index !1152
  %fi229 = call i8* @injectFault3(i64 1151, i8* %287, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi229, i8** %ip, align 8, !llfi_index !1153
  %288 = load i8* %fi228, align 1, !llfi_index !1154
  %fi230 = call i8 @injectFault4(i64 1153, i8 %288, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %289 = zext i8 %fi230 to i32, !llfi_index !1155
  %fi231 = call i32 @injectFault2(i64 1154, i32 %289, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi231, i32* %brightness, align 4, !llfi_index !1156
  %290 = load i8** %cp, align 8, !llfi_index !1157
  %fi232 = call i8* @injectFault3(i64 1156, i8* %290, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %291 = load i32* %brightness, align 4, !llfi_index !1158
  %fi233 = call i32 @injectFault2(i64 1157, i32 %291, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %292 = sext i32 %fi233 to i64, !llfi_index !1159
  %fi234 = call i64 @injectFault5(i64 1158, i64 %292, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %293 = sub i64 0, %fi234, !llfi_index !1160
  %fi235 = call i64 @injectFault5(i64 1159, i64 %293, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %294 = getelementptr i8* %fi232, i64 %fi235, !llfi_index !1161
  %fi236 = call i8* @injectFault3(i64 1160, i8* %294, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %295 = load i8* %fi236, align 1, !llfi_index !1162
  %fi237 = call i8 @injectFault4(i64 1161, i8 %295, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %296 = zext i8 %fi237 to i32, !llfi_index !1163
  %fi238 = call i32 @injectFault2(i64 1162, i32 %296, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi238, i32* %tmp, align 4, !llfi_index !1164
  %297 = load i32* %tmp, align 4, !llfi_index !1165
  %fi239 = call i32 @injectFault2(i64 1164, i32 %297, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %298 = load i32* %area, align 4, !llfi_index !1166
  %fi240 = call i32 @injectFault2(i64 1165, i32 %298, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %299 = add nsw i32 %fi240, %fi239, !llfi_index !1167
  %fi241 = call i32 @injectFault2(i64 1166, i32 %299, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi241, i32* %area, align 4, !llfi_index !1168
  %300 = load i32* %tmp, align 4, !llfi_index !1169
  %fi242 = call i32 @injectFault2(i64 1168, i32 %300, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %301 = load i32* %brightness, align 4, !llfi_index !1170
  %fi243 = call i32 @injectFault2(i64 1169, i32 %301, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %302 = mul nsw i32 %fi242, %fi243, !llfi_index !1171
  %fi244 = call i32 @injectFault2(i64 1170, i32 %302, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %303 = load i32* %total, align 4, !llfi_index !1172
  %fi245 = call i32 @injectFault2(i64 1171, i32 %303, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %304 = add nsw i32 %fi245, %fi244, !llfi_index !1173
  %fi246 = call i32 @injectFault2(i64 1172, i32 %304, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi246, i32* %total, align 4, !llfi_index !1174
  %305 = load i8** %ip, align 8, !llfi_index !1175
  %fi247 = call i8* @injectFault3(i64 1174, i8* %305, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %306 = getelementptr i8* %fi247, i32 1, !llfi_index !1176
  %fi248 = call i8* @injectFault3(i64 1175, i8* %306, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi248, i8** %ip, align 8, !llfi_index !1177
  %307 = load i8* %fi247, align 1, !llfi_index !1178
  %fi249 = call i8 @injectFault4(i64 1177, i8 %307, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %308 = zext i8 %fi249 to i32, !llfi_index !1179
  %fi250 = call i32 @injectFault2(i64 1178, i32 %308, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi250, i32* %brightness, align 4, !llfi_index !1180
  %309 = load i8** %cp, align 8, !llfi_index !1181
  %fi251 = call i8* @injectFault3(i64 1180, i8* %309, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %310 = load i32* %brightness, align 4, !llfi_index !1182
  %fi252 = call i32 @injectFault2(i64 1181, i32 %310, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %311 = sext i32 %fi252 to i64, !llfi_index !1183
  %fi253 = call i64 @injectFault5(i64 1182, i64 %311, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %312 = sub i64 0, %fi253, !llfi_index !1184
  %fi254 = call i64 @injectFault5(i64 1183, i64 %312, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %313 = getelementptr i8* %fi251, i64 %fi254, !llfi_index !1185
  %fi255 = call i8* @injectFault3(i64 1184, i8* %313, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %314 = load i8* %fi255, align 1, !llfi_index !1186
  %fi256 = call i8 @injectFault4(i64 1185, i8 %314, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %315 = zext i8 %fi256 to i32, !llfi_index !1187
  %fi257 = call i32 @injectFault2(i64 1186, i32 %315, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi257, i32* %tmp, align 4, !llfi_index !1188
  %316 = load i32* %tmp, align 4, !llfi_index !1189
  %fi258 = call i32 @injectFault2(i64 1188, i32 %316, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %317 = load i32* %area, align 4, !llfi_index !1190
  %fi259 = call i32 @injectFault2(i64 1189, i32 %317, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %318 = add nsw i32 %fi259, %fi258, !llfi_index !1191
  %fi260 = call i32 @injectFault2(i64 1190, i32 %318, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi260, i32* %area, align 4, !llfi_index !1192
  %319 = load i32* %tmp, align 4, !llfi_index !1193
  %fi261 = call i32 @injectFault2(i64 1192, i32 %319, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %320 = load i32* %brightness, align 4, !llfi_index !1194
  %fi262 = call i32 @injectFault2(i64 1193, i32 %320, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %321 = mul nsw i32 %fi261, %fi262, !llfi_index !1195
  %fi263 = call i32 @injectFault2(i64 1194, i32 %321, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %322 = load i32* %total, align 4, !llfi_index !1196
  %fi264 = call i32 @injectFault2(i64 1195, i32 %322, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %323 = add nsw i32 %fi264, %fi263, !llfi_index !1197
  %fi265 = call i32 @injectFault2(i64 1196, i32 %323, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi265, i32* %total, align 4, !llfi_index !1198
  %324 = load i8** %ip, align 8, !llfi_index !1199
  %fi266 = call i8* @injectFault3(i64 1198, i8* %324, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %325 = load i8* %fi266, align 1, !llfi_index !1200
  %fi267 = call i8 @injectFault4(i64 1199, i8 %325, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %326 = zext i8 %fi267 to i32, !llfi_index !1201
  %fi268 = call i32 @injectFault2(i64 1200, i32 %326, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi268, i32* %brightness, align 4, !llfi_index !1202
  %327 = load i8** %cp, align 8, !llfi_index !1203
  %fi269 = call i8* @injectFault3(i64 1202, i8* %327, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %328 = load i32* %brightness, align 4, !llfi_index !1204
  %fi270 = call i32 @injectFault2(i64 1203, i32 %328, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %329 = sext i32 %fi270 to i64, !llfi_index !1205
  %fi271 = call i64 @injectFault5(i64 1204, i64 %329, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %330 = sub i64 0, %fi271, !llfi_index !1206
  %fi272 = call i64 @injectFault5(i64 1205, i64 %330, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %331 = getelementptr i8* %fi269, i64 %fi272, !llfi_index !1207
  %fi273 = call i8* @injectFault3(i64 1206, i8* %331, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %332 = load i8* %fi273, align 1, !llfi_index !1208
  %fi274 = call i8 @injectFault4(i64 1207, i8 %332, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %333 = zext i8 %fi274 to i32, !llfi_index !1209
  %fi275 = call i32 @injectFault2(i64 1208, i32 %333, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi275, i32* %tmp, align 4, !llfi_index !1210
  %334 = load i32* %tmp, align 4, !llfi_index !1211
  %fi276 = call i32 @injectFault2(i64 1210, i32 %334, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %335 = load i32* %area, align 4, !llfi_index !1212
  %fi277 = call i32 @injectFault2(i64 1211, i32 %335, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %336 = add nsw i32 %fi277, %fi276, !llfi_index !1213
  %fi278 = call i32 @injectFault2(i64 1212, i32 %336, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi278, i32* %area, align 4, !llfi_index !1214
  %337 = load i32* %tmp, align 4, !llfi_index !1215
  %fi279 = call i32 @injectFault2(i64 1214, i32 %337, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %338 = load i32* %brightness, align 4, !llfi_index !1216
  %fi280 = call i32 @injectFault2(i64 1215, i32 %338, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %339 = mul nsw i32 %fi279, %fi280, !llfi_index !1217
  %fi281 = call i32 @injectFault2(i64 1216, i32 %339, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %340 = load i32* %total, align 4, !llfi_index !1218
  %fi282 = call i32 @injectFault2(i64 1217, i32 %340, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %341 = add nsw i32 %fi282, %fi281, !llfi_index !1219
  %fi283 = call i32 @injectFault2(i64 1218, i32 %341, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi283, i32* %total, align 4, !llfi_index !1220
  %342 = load i32* %5, align 4, !llfi_index !1221
  %fi284 = call i32 @injectFault2(i64 1220, i32 %342, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %343 = sub nsw i32 %fi284, 2, !llfi_index !1222
  %fi285 = call i32 @injectFault2(i64 1221, i32 %343, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %344 = load i8** %ip, align 8, !llfi_index !1223
  %fi286 = call i8* @injectFault3(i64 1222, i8* %344, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %345 = sext i32 %fi285 to i64, !llfi_index !1224
  %fi287 = call i64 @injectFault5(i64 1223, i64 %345, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %346 = getelementptr i8* %fi286, i64 %fi287, !llfi_index !1225
  %fi288 = call i8* @injectFault3(i64 1224, i8* %346, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi288, i8** %ip, align 8, !llfi_index !1226
  %347 = load i8** %ip, align 8, !llfi_index !1227
  %fi289 = call i8* @injectFault3(i64 1226, i8* %347, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %348 = getelementptr i8* %fi289, i32 1, !llfi_index !1228
  %fi290 = call i8* @injectFault3(i64 1227, i8* %348, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi290, i8** %ip, align 8, !llfi_index !1229
  %349 = load i8* %fi289, align 1, !llfi_index !1230
  %fi291 = call i8 @injectFault4(i64 1229, i8 %349, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %350 = zext i8 %fi291 to i32, !llfi_index !1231
  %fi292 = call i32 @injectFault2(i64 1230, i32 %350, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi292, i32* %brightness, align 4, !llfi_index !1232
  %351 = load i8** %cp, align 8, !llfi_index !1233
  %fi293 = call i8* @injectFault3(i64 1232, i8* %351, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %352 = load i32* %brightness, align 4, !llfi_index !1234
  %fi294 = call i32 @injectFault2(i64 1233, i32 %352, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %353 = sext i32 %fi294 to i64, !llfi_index !1235
  %fi295 = call i64 @injectFault5(i64 1234, i64 %353, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %354 = sub i64 0, %fi295, !llfi_index !1236
  %fi296 = call i64 @injectFault5(i64 1235, i64 %354, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %355 = getelementptr i8* %fi293, i64 %fi296, !llfi_index !1237
  %fi297 = call i8* @injectFault3(i64 1236, i8* %355, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %356 = load i8* %fi297, align 1, !llfi_index !1238
  %fi298 = call i8 @injectFault4(i64 1237, i8 %356, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %357 = zext i8 %fi298 to i32, !llfi_index !1239
  %fi299 = call i32 @injectFault2(i64 1238, i32 %357, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi299, i32* %tmp, align 4, !llfi_index !1240
  %358 = load i32* %tmp, align 4, !llfi_index !1241
  %fi300 = call i32 @injectFault2(i64 1240, i32 %358, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %359 = load i32* %area, align 4, !llfi_index !1242
  %fi301 = call i32 @injectFault2(i64 1241, i32 %359, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %360 = add nsw i32 %fi301, %fi300, !llfi_index !1243
  %fi302 = call i32 @injectFault2(i64 1242, i32 %360, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi302, i32* %area, align 4, !llfi_index !1244
  %361 = load i32* %tmp, align 4, !llfi_index !1245
  %fi303 = call i32 @injectFault2(i64 1244, i32 %361, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %362 = load i32* %brightness, align 4, !llfi_index !1246
  %fi304 = call i32 @injectFault2(i64 1245, i32 %362, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %363 = mul nsw i32 %fi303, %fi304, !llfi_index !1247
  %fi305 = call i32 @injectFault2(i64 1246, i32 %363, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %364 = load i32* %total, align 4, !llfi_index !1248
  %fi306 = call i32 @injectFault2(i64 1247, i32 %364, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %365 = add nsw i32 %fi306, %fi305, !llfi_index !1249
  %fi307 = call i32 @injectFault2(i64 1248, i32 %365, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi307, i32* %total, align 4, !llfi_index !1250
  %366 = load i8** %ip, align 8, !llfi_index !1251
  %fi308 = call i8* @injectFault3(i64 1250, i8* %366, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %367 = getelementptr i8* %fi308, i32 1, !llfi_index !1252
  %fi309 = call i8* @injectFault3(i64 1251, i8* %367, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi309, i8** %ip, align 8, !llfi_index !1253
  %368 = load i8* %fi308, align 1, !llfi_index !1254
  %fi310 = call i8 @injectFault4(i64 1253, i8 %368, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %369 = zext i8 %fi310 to i32, !llfi_index !1255
  %fi311 = call i32 @injectFault2(i64 1254, i32 %369, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi311, i32* %brightness, align 4, !llfi_index !1256
  %370 = load i8** %cp, align 8, !llfi_index !1257
  %fi312 = call i8* @injectFault3(i64 1256, i8* %370, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %371 = load i32* %brightness, align 4, !llfi_index !1258
  %fi313 = call i32 @injectFault2(i64 1257, i32 %371, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %372 = sext i32 %fi313 to i64, !llfi_index !1259
  %fi314 = call i64 @injectFault5(i64 1258, i64 %372, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %373 = sub i64 0, %fi314, !llfi_index !1260
  %fi315 = call i64 @injectFault5(i64 1259, i64 %373, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %374 = getelementptr i8* %fi312, i64 %fi315, !llfi_index !1261
  %fi316 = call i8* @injectFault3(i64 1260, i8* %374, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %375 = load i8* %fi316, align 1, !llfi_index !1262
  %fi317 = call i8 @injectFault4(i64 1261, i8 %375, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %376 = zext i8 %fi317 to i32, !llfi_index !1263
  %fi318 = call i32 @injectFault2(i64 1262, i32 %376, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi318, i32* %tmp, align 4, !llfi_index !1264
  %377 = load i32* %tmp, align 4, !llfi_index !1265
  %fi319 = call i32 @injectFault2(i64 1264, i32 %377, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %378 = load i32* %area, align 4, !llfi_index !1266
  %fi320 = call i32 @injectFault2(i64 1265, i32 %378, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %379 = add nsw i32 %fi320, %fi319, !llfi_index !1267
  %fi321 = call i32 @injectFault2(i64 1266, i32 %379, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi321, i32* %area, align 4, !llfi_index !1268
  %380 = load i32* %tmp, align 4, !llfi_index !1269
  %fi322 = call i32 @injectFault2(i64 1268, i32 %380, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %381 = load i32* %brightness, align 4, !llfi_index !1270
  %fi323 = call i32 @injectFault2(i64 1269, i32 %381, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %382 = mul nsw i32 %fi322, %fi323, !llfi_index !1271
  %fi324 = call i32 @injectFault2(i64 1270, i32 %382, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %383 = load i32* %total, align 4, !llfi_index !1272
  %fi325 = call i32 @injectFault2(i64 1271, i32 %383, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %384 = add nsw i32 %fi325, %fi324, !llfi_index !1273
  %fi326 = call i32 @injectFault2(i64 1272, i32 %384, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi326, i32* %total, align 4, !llfi_index !1274
  %385 = load i8** %ip, align 8, !llfi_index !1275
  %fi327 = call i8* @injectFault3(i64 1274, i8* %385, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %386 = load i8* %fi327, align 1, !llfi_index !1276
  %fi328 = call i8 @injectFault4(i64 1275, i8 %386, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %387 = zext i8 %fi328 to i32, !llfi_index !1277
  %fi329 = call i32 @injectFault2(i64 1276, i32 %387, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi329, i32* %brightness, align 4, !llfi_index !1278
  %388 = load i8** %cp, align 8, !llfi_index !1279
  %fi330 = call i8* @injectFault3(i64 1278, i8* %388, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %389 = load i32* %brightness, align 4, !llfi_index !1280
  %fi331 = call i32 @injectFault2(i64 1279, i32 %389, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %390 = sext i32 %fi331 to i64, !llfi_index !1281
  %fi332 = call i64 @injectFault5(i64 1280, i64 %390, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %391 = sub i64 0, %fi332, !llfi_index !1282
  %fi333 = call i64 @injectFault5(i64 1281, i64 %391, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %392 = getelementptr i8* %fi330, i64 %fi333, !llfi_index !1283
  %fi334 = call i8* @injectFault3(i64 1282, i8* %392, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %393 = load i8* %fi334, align 1, !llfi_index !1284
  %fi335 = call i8 @injectFault4(i64 1283, i8 %393, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %394 = zext i8 %fi335 to i32, !llfi_index !1285
  %fi336 = call i32 @injectFault2(i64 1284, i32 %394, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi336, i32* %tmp, align 4, !llfi_index !1286
  %395 = load i32* %tmp, align 4, !llfi_index !1287
  %fi337 = call i32 @injectFault2(i64 1286, i32 %395, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %396 = load i32* %area, align 4, !llfi_index !1288
  %fi338 = call i32 @injectFault2(i64 1287, i32 %396, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %397 = add nsw i32 %fi338, %fi337, !llfi_index !1289
  %fi339 = call i32 @injectFault2(i64 1288, i32 %397, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi339, i32* %area, align 4, !llfi_index !1290
  %398 = load i32* %tmp, align 4, !llfi_index !1291
  %fi340 = call i32 @injectFault2(i64 1290, i32 %398, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %399 = load i32* %brightness, align 4, !llfi_index !1292
  %fi341 = call i32 @injectFault2(i64 1291, i32 %399, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %400 = mul nsw i32 %fi340, %fi341, !llfi_index !1293
  %fi342 = call i32 @injectFault2(i64 1292, i32 %400, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %401 = load i32* %total, align 4, !llfi_index !1294
  %fi343 = call i32 @injectFault2(i64 1293, i32 %401, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %402 = add nsw i32 %fi343, %fi342, !llfi_index !1295
  %fi344 = call i32 @injectFault2(i64 1294, i32 %402, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi344, i32* %total, align 4, !llfi_index !1296
  %403 = load i32* %5, align 4, !llfi_index !1297
  %fi345 = call i32 @injectFault2(i64 1296, i32 %403, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %404 = sub nsw i32 %fi345, 2, !llfi_index !1298
  %fi346 = call i32 @injectFault2(i64 1297, i32 %404, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %405 = load i8** %ip, align 8, !llfi_index !1299
  %fi347 = call i8* @injectFault3(i64 1298, i8* %405, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %406 = sext i32 %fi346 to i64, !llfi_index !1300
  %fi348 = call i64 @injectFault5(i64 1299, i64 %406, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %407 = getelementptr i8* %fi347, i64 %fi348, !llfi_index !1301
  %fi349 = call i8* @injectFault3(i64 1300, i8* %407, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi349, i8** %ip, align 8, !llfi_index !1302
  %408 = load i8** %ip, align 8, !llfi_index !1303
  %fi350 = call i8* @injectFault3(i64 1302, i8* %408, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %409 = getelementptr i8* %fi350, i32 1, !llfi_index !1304
  %fi351 = call i8* @injectFault3(i64 1303, i8* %409, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi351, i8** %ip, align 8, !llfi_index !1305
  %410 = load i8* %fi350, align 1, !llfi_index !1306
  %fi352 = call i8 @injectFault4(i64 1305, i8 %410, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %411 = zext i8 %fi352 to i32, !llfi_index !1307
  %fi353 = call i32 @injectFault2(i64 1306, i32 %411, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi353, i32* %brightness, align 4, !llfi_index !1308
  %412 = load i8** %cp, align 8, !llfi_index !1309
  %fi354 = call i8* @injectFault3(i64 1308, i8* %412, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %413 = load i32* %brightness, align 4, !llfi_index !1310
  %fi355 = call i32 @injectFault2(i64 1309, i32 %413, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %414 = sext i32 %fi355 to i64, !llfi_index !1311
  %fi356 = call i64 @injectFault5(i64 1310, i64 %414, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %415 = sub i64 0, %fi356, !llfi_index !1312
  %fi357 = call i64 @injectFault5(i64 1311, i64 %415, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %416 = getelementptr i8* %fi354, i64 %fi357, !llfi_index !1313
  %fi358 = call i8* @injectFault3(i64 1312, i8* %416, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %417 = load i8* %fi358, align 1, !llfi_index !1314
  %fi359 = call i8 @injectFault4(i64 1313, i8 %417, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %418 = zext i8 %fi359 to i32, !llfi_index !1315
  %fi360 = call i32 @injectFault2(i64 1314, i32 %418, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi360, i32* %tmp, align 4, !llfi_index !1316
  %419 = load i32* %tmp, align 4, !llfi_index !1317
  %fi361 = call i32 @injectFault2(i64 1316, i32 %419, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %420 = load i32* %area, align 4, !llfi_index !1318
  %fi362 = call i32 @injectFault2(i64 1317, i32 %420, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %421 = add nsw i32 %fi362, %fi361, !llfi_index !1319
  %fi363 = call i32 @injectFault2(i64 1318, i32 %421, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi363, i32* %area, align 4, !llfi_index !1320
  %422 = load i32* %tmp, align 4, !llfi_index !1321
  %fi364 = call i32 @injectFault2(i64 1320, i32 %422, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %423 = load i32* %brightness, align 4, !llfi_index !1322
  %fi365 = call i32 @injectFault2(i64 1321, i32 %423, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %424 = mul nsw i32 %fi364, %fi365, !llfi_index !1323
  %fi366 = call i32 @injectFault2(i64 1322, i32 %424, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %425 = load i32* %total, align 4, !llfi_index !1324
  %fi367 = call i32 @injectFault2(i64 1323, i32 %425, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %426 = add nsw i32 %fi367, %fi366, !llfi_index !1325
  %fi368 = call i32 @injectFault2(i64 1324, i32 %426, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi368, i32* %total, align 4, !llfi_index !1326
  %427 = load i8** %ip, align 8, !llfi_index !1327
  %fi369 = call i8* @injectFault3(i64 1326, i8* %427, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %428 = getelementptr i8* %fi369, i32 1, !llfi_index !1328
  %fi370 = call i8* @injectFault3(i64 1327, i8* %428, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi370, i8** %ip, align 8, !llfi_index !1329
  %429 = load i8* %fi369, align 1, !llfi_index !1330
  %fi371 = call i8 @injectFault4(i64 1329, i8 %429, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %430 = zext i8 %fi371 to i32, !llfi_index !1331
  %fi372 = call i32 @injectFault2(i64 1330, i32 %430, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi372, i32* %brightness, align 4, !llfi_index !1332
  %431 = load i8** %cp, align 8, !llfi_index !1333
  %fi373 = call i8* @injectFault3(i64 1332, i8* %431, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %432 = load i32* %brightness, align 4, !llfi_index !1334
  %fi374 = call i32 @injectFault2(i64 1333, i32 %432, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %433 = sext i32 %fi374 to i64, !llfi_index !1335
  %fi375 = call i64 @injectFault5(i64 1334, i64 %433, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %434 = sub i64 0, %fi375, !llfi_index !1336
  %fi376 = call i64 @injectFault5(i64 1335, i64 %434, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %435 = getelementptr i8* %fi373, i64 %fi376, !llfi_index !1337
  %fi377 = call i8* @injectFault3(i64 1336, i8* %435, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %436 = load i8* %fi377, align 1, !llfi_index !1338
  %fi378 = call i8 @injectFault4(i64 1337, i8 %436, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %437 = zext i8 %fi378 to i32, !llfi_index !1339
  %fi379 = call i32 @injectFault2(i64 1338, i32 %437, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi379, i32* %tmp, align 4, !llfi_index !1340
  %438 = load i32* %tmp, align 4, !llfi_index !1341
  %fi380 = call i32 @injectFault2(i64 1340, i32 %438, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %439 = load i32* %area, align 4, !llfi_index !1342
  %fi381 = call i32 @injectFault2(i64 1341, i32 %439, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %440 = add nsw i32 %fi381, %fi380, !llfi_index !1343
  %fi382 = call i32 @injectFault2(i64 1342, i32 %440, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi382, i32* %area, align 4, !llfi_index !1344
  %441 = load i32* %tmp, align 4, !llfi_index !1345
  %fi383 = call i32 @injectFault2(i64 1344, i32 %441, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %442 = load i32* %brightness, align 4, !llfi_index !1346
  %fi384 = call i32 @injectFault2(i64 1345, i32 %442, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %443 = mul nsw i32 %fi383, %fi384, !llfi_index !1347
  %fi385 = call i32 @injectFault2(i64 1346, i32 %443, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %444 = load i32* %total, align 4, !llfi_index !1348
  %fi386 = call i32 @injectFault2(i64 1347, i32 %444, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %445 = add nsw i32 %fi386, %fi385, !llfi_index !1349
  %fi387 = call i32 @injectFault2(i64 1348, i32 %445, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi387, i32* %total, align 4, !llfi_index !1350
  %446 = load i8** %ip, align 8, !llfi_index !1351
  %fi388 = call i8* @injectFault3(i64 1350, i8* %446, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %447 = load i8* %fi388, align 1, !llfi_index !1352
  %fi389 = call i8 @injectFault4(i64 1351, i8 %447, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %448 = zext i8 %fi389 to i32, !llfi_index !1353
  %fi390 = call i32 @injectFault2(i64 1352, i32 %448, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi390, i32* %brightness, align 4, !llfi_index !1354
  %449 = load i8** %cp, align 8, !llfi_index !1355
  %fi391 = call i8* @injectFault3(i64 1354, i8* %449, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %450 = load i32* %brightness, align 4, !llfi_index !1356
  %fi392 = call i32 @injectFault2(i64 1355, i32 %450, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %451 = sext i32 %fi392 to i64, !llfi_index !1357
  %fi393 = call i64 @injectFault5(i64 1356, i64 %451, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %452 = sub i64 0, %fi393, !llfi_index !1358
  %fi394 = call i64 @injectFault5(i64 1357, i64 %452, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %453 = getelementptr i8* %fi391, i64 %fi394, !llfi_index !1359
  %fi395 = call i8* @injectFault3(i64 1358, i8* %453, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %454 = load i8* %fi395, align 1, !llfi_index !1360
  %fi396 = call i8 @injectFault4(i64 1359, i8 %454, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %455 = zext i8 %fi396 to i32, !llfi_index !1361
  %fi397 = call i32 @injectFault2(i64 1360, i32 %455, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi397, i32* %tmp, align 4, !llfi_index !1362
  %456 = load i32* %tmp, align 4, !llfi_index !1363
  %fi398 = call i32 @injectFault2(i64 1362, i32 %456, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %457 = load i32* %area, align 4, !llfi_index !1364
  %fi399 = call i32 @injectFault2(i64 1363, i32 %457, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %458 = add nsw i32 %fi399, %fi398, !llfi_index !1365
  %fi400 = call i32 @injectFault2(i64 1364, i32 %458, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi400, i32* %area, align 4, !llfi_index !1366
  %459 = load i32* %tmp, align 4, !llfi_index !1367
  %fi401 = call i32 @injectFault2(i64 1366, i32 %459, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %460 = load i32* %brightness, align 4, !llfi_index !1368
  %fi402 = call i32 @injectFault2(i64 1367, i32 %460, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %461 = mul nsw i32 %fi401, %fi402, !llfi_index !1369
  %fi403 = call i32 @injectFault2(i64 1368, i32 %461, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %462 = load i32* %total, align 4, !llfi_index !1370
  %fi404 = call i32 @injectFault2(i64 1369, i32 %462, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %463 = add nsw i32 %fi404, %fi403, !llfi_index !1371
  %fi405 = call i32 @injectFault2(i64 1370, i32 %463, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi405, i32* %total, align 4, !llfi_index !1372
  %464 = load i32* %area, align 4, !llfi_index !1373
  %fi406 = call i32 @injectFault2(i64 1372, i32 %464, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %465 = sub nsw i32 %fi406, 100, !llfi_index !1374
  %fi407 = call i32 @injectFault2(i64 1373, i32 %465, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi407, i32* %tmp, align 4, !llfi_index !1375
  %466 = load i32* %tmp, align 4, !llfi_index !1376
  %fi408 = call i32 @injectFault2(i64 1375, i32 %466, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %467 = icmp eq i32 %fi408, 0, !llfi_index !1377
  %fi409 = call i1 @injectFault0(i64 1376, i1 %467, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi409, label %468, label %476, !llfi_index !1378

; <label>:468                                     ; preds = %260
  %469 = load i8** %3, align 8, !llfi_index !1379
  %fi410 = call i8* @injectFault3(i64 1378, i8* %469, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %470 = load i32* %i, align 4, !llfi_index !1380
  %fi411 = call i32 @injectFault2(i64 1379, i32 %470, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %471 = load i32* %j, align 4, !llfi_index !1381
  %fi412 = call i32 @injectFault2(i64 1380, i32 %471, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %472 = load i32* %5, align 4, !llfi_index !1382
  %fi413 = call i32 @injectFault2(i64 1381, i32 %472, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %473 = call zeroext i8 @median(i8* %fi410, i32 %fi411, i32 %fi412, i32 %fi413), !llfi_index !1383
  %474 = load i8** %out, align 8, !llfi_index !1384
  %fi414 = call i8* @injectFault3(i64 1383, i8* %474, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %475 = getelementptr i8* %fi414, i32 1, !llfi_index !1385
  %fi415 = call i8* @injectFault3(i64 1384, i8* %475, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi415, i8** %out, align 8, !llfi_index !1386
  store i8 %473, i8* %fi414, align 1, !llfi_index !1387
  br label %486, !llfi_index !1388

; <label>:476                                     ; preds = %260
  %477 = load i32* %total, align 4, !llfi_index !1389
  %fi416 = call i32 @injectFault2(i64 1388, i32 %477, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %478 = load i32* %centre, align 4, !llfi_index !1390
  %fi417 = call i32 @injectFault2(i64 1389, i32 %478, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %479 = mul nsw i32 %fi417, 100, !llfi_index !1391
  %fi418 = call i32 @injectFault2(i64 1390, i32 %479, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %480 = sub nsw i32 %fi416, %fi418, !llfi_index !1392
  %fi419 = call i32 @injectFault2(i64 1391, i32 %480, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %481 = load i32* %tmp, align 4, !llfi_index !1393
  %fi420 = call i32 @injectFault2(i64 1392, i32 %481, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %482 = sdiv i32 %fi419, %fi420, !llfi_index !1394
  %fi421 = call i32 @injectFault2(i64 1393, i32 %482, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %483 = trunc i32 %fi421 to i8, !llfi_index !1395
  %fi422 = call i8 @injectFault4(i64 1394, i8 %483, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %484 = load i8** %out, align 8, !llfi_index !1396
  %fi423 = call i8* @injectFault3(i64 1395, i8* %484, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %485 = getelementptr i8* %fi423, i32 1, !llfi_index !1397
  %fi424 = call i8* @injectFault3(i64 1396, i8* %485, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi424, i8** %out, align 8, !llfi_index !1398
  store i8 %fi422, i8* %fi423, align 1, !llfi_index !1399
  br label %486, !llfi_index !1400

; <label>:486                                     ; preds = %476, %468
  br label %487, !llfi_index !1401

; <label>:487                                     ; preds = %486
  %488 = load i32* %j, align 4, !llfi_index !1402
  %fi425 = call i32 @injectFault2(i64 1401, i32 %488, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %489 = add nsw i32 %fi425, 1, !llfi_index !1403
  %fi426 = call i32 @injectFault2(i64 1402, i32 %489, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi426, i32* %j, align 4, !llfi_index !1404
  br label %255, !llfi_index !1405

; <label>:490                                     ; preds = %255
  br label %491, !llfi_index !1406

; <label>:491                                     ; preds = %490
  %492 = load i32* %i, align 4, !llfi_index !1407
  %fi427 = call i32 @injectFault2(i64 1406, i32 %492, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %493 = add nsw i32 %fi427, 1, !llfi_index !1408
  %fi428 = call i32 @injectFault2(i64 1407, i32 %493, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi428, i32* %i, align 4, !llfi_index !1409
  br label %249, !llfi_index !1410

; <label>:494                                     ; preds = %249
  br label %495, !llfi_index !1411

; <label>:495                                     ; preds = %494, %247
  ret void, !llfi_index !1412
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1413
  %2 = alloca i32, align 4, !llfi_index !1414
  %3 = alloca i8**, align 8, !llfi_index !1415
  %ofp = alloca %struct._IO_FILE*, align 8, !llfi_index !1416
  %filename = alloca [80 x i8], align 16, !llfi_index !1417
  %tcp = alloca i8*, align 8, !llfi_index !1418
  %in = alloca i8*, align 8, !llfi_index !1419
  %bp = alloca i8*, align 8, !llfi_index !1420
  %mid = alloca i8*, align 8, !llfi_index !1421
  %dt = alloca float, align 4, !llfi_index !1422
  %r = alloca i32*, align 8, !llfi_index !1423
  %argindex = alloca i32, align 4, !llfi_index !1424
  %bt = alloca i32, align 4, !llfi_index !1425
  %principle = alloca i32, align 4, !llfi_index !1426
  %thin_post_proc = alloca i32, align 4, !llfi_index !1427
  %three_by_three = alloca i32, align 4, !llfi_index !1428
  %drawing_mode = alloca i32, align 4, !llfi_index !1429
  %susan_quick = alloca i32, align 4, !llfi_index !1430
  %max_no_corners = alloca i32, align 4, !llfi_index !1431
  %max_no_edges = alloca i32, align 4, !llfi_index !1432
  %mode = alloca i32, align 4, !llfi_index !1433
  %i = alloca i32, align 4, !llfi_index !1434
  %x_size = alloca i32, align 4, !llfi_index !1435
  %y_size = alloca i32, align 4, !llfi_index !1436
  %corner_list = alloca [15000 x %struct.anon], align 16, !llfi_index !1437
  store i32 0, i32* %1, !llfi_index !1438
  store i32 %argc, i32* %2, align 4, !llfi_index !1439
  store i8** %argv, i8*** %3, align 8, !llfi_index !1440
  store float 4.000000e+00, float* %dt, align 4, !llfi_index !1441
  store i32 3, i32* %argindex, align 4, !llfi_index !1442
  store i32 20, i32* %bt, align 4, !llfi_index !1443
  store i32 0, i32* %principle, align 4, !llfi_index !1444
  store i32 1, i32* %thin_post_proc, align 4, !llfi_index !1445
  store i32 0, i32* %three_by_three, align 4, !llfi_index !1446
  store i32 0, i32* %drawing_mode, align 4, !llfi_index !1447
  store i32 0, i32* %susan_quick, align 4, !llfi_index !1448
  store i32 1850, i32* %max_no_corners, align 4, !llfi_index !1449
  store i32 2650, i32* %max_no_edges, align 4, !llfi_index !1450
  store i32 0, i32* %mode, align 4, !llfi_index !1451
  %4 = load i32* %2, align 4, !llfi_index !1452
  %fi22 = call i32 @injectFault2(i64 1451, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %5 = icmp slt i32 %fi22, 3, !llfi_index !1453
  %fi23 = call i1 @injectFault0(i64 1452, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi23, label %6, label %8, !llfi_index !1454

; <label>:6                                       ; preds = %0
  %7 = call i32 @usage(), !llfi_index !1455
  br label %8, !llfi_index !1456

; <label>:8                                       ; preds = %6, %0
  %9 = load i8*** %3, align 8, !llfi_index !1457
  %fi25 = call i8** @injectFault7(i64 1456, i8** %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %10 = getelementptr i8** %fi25, i64 1, !llfi_index !1458
  %fi26 = call i8** @injectFault7(i64 1457, i8** %10, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %11 = load i8** %fi26, align 8, !llfi_index !1459
  %fi27 = call i8* @injectFault3(i64 1458, i8* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @get_image(i8* %fi27, i8** %in, i32* %x_size, i32* %y_size), !llfi_index !1460
  br label %12, !llfi_index !1461

; <label>:12                                      ; preds = %75, %8
  %13 = load i32* %argindex, align 4, !llfi_index !1462
  %fi28 = call i32 @injectFault2(i64 1461, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %14 = load i32* %2, align 4, !llfi_index !1463
  %fi29 = call i32 @injectFault2(i64 1462, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %15 = icmp slt i32 %fi28, %fi29, !llfi_index !1464
  %fi30 = call i1 @injectFault0(i64 1463, i1 %15, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi30, label %16, label %78, !llfi_index !1465

; <label>:16                                      ; preds = %12
  %17 = load i32* %argindex, align 4, !llfi_index !1466
  %fi24 = call i32 @injectFault2(i64 1465, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %18 = sext i32 %fi24 to i64, !llfi_index !1467
  %fi31 = call i64 @injectFault5(i64 1466, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %19 = load i8*** %3, align 8, !llfi_index !1468
  %fi32 = call i8** @injectFault7(i64 1467, i8** %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %20 = getelementptr i8** %fi32, i64 %fi31, !llfi_index !1469
  %fi33 = call i8** @injectFault7(i64 1468, i8** %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %21 = load i8** %fi33, align 8, !llfi_index !1470
  %fi34 = call i8* @injectFault3(i64 1469, i8* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi34, i8** %tcp, align 8, !llfi_index !1471
  %22 = load i8** %tcp, align 8, !llfi_index !1472
  %fi35 = call i8* @injectFault3(i64 1471, i8* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %23 = load i8* %fi35, align 1, !llfi_index !1473
  %fi36 = call i8 @injectFault4(i64 1472, i8 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %24 = sext i8 %fi36 to i32, !llfi_index !1474
  %fi37 = call i32 @injectFault2(i64 1473, i32 %24, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %25 = icmp eq i32 %fi37, 45, !llfi_index !1475
  %fi38 = call i1 @injectFault0(i64 1474, i1 %25, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi38, label %26, label %73, !llfi_index !1476

; <label>:26                                      ; preds = %16
  %27 = load i8** %tcp, align 8, !llfi_index !1477
  %fi39 = call i8* @injectFault3(i64 1476, i8* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %28 = getelementptr i8* %fi39, i32 1, !llfi_index !1478
  %fi40 = call i8* @injectFault3(i64 1477, i8* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i8* %fi40, i8** %tcp, align 8, !llfi_index !1479
  %29 = load i8* %fi40, align 1, !llfi_index !1480
  %fi41 = call i8 @injectFault4(i64 1479, i8 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %30 = sext i8 %fi41 to i32, !llfi_index !1481
  %fi42 = call i32 @injectFault2(i64 1480, i32 %30, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  switch i32 %fi42, label %72 [
    i32 115, label %31
    i32 101, label %32
    i32 99, label %33
    i32 112, label %34
    i32 110, label %35
    i32 98, label %36
    i32 51, label %37
    i32 113, label %38
    i32 100, label %39
    i32 116, label %58
  ], !llfi_index !1482

; <label>:31                                      ; preds = %26
  store i32 0, i32* %mode, align 4, !llfi_index !1483
  br label %72, !llfi_index !1484

; <label>:32                                      ; preds = %26
  store i32 1, i32* %mode, align 4, !llfi_index !1485
  br label %72, !llfi_index !1486

; <label>:33                                      ; preds = %26
  store i32 2, i32* %mode, align 4, !llfi_index !1487
  br label %72, !llfi_index !1488

; <label>:34                                      ; preds = %26
  store i32 1, i32* %principle, align 4, !llfi_index !1489
  br label %72, !llfi_index !1490

; <label>:35                                      ; preds = %26
  store i32 0, i32* %thin_post_proc, align 4, !llfi_index !1491
  br label %72, !llfi_index !1492

; <label>:36                                      ; preds = %26
  store i32 1, i32* %drawing_mode, align 4, !llfi_index !1493
  br label %72, !llfi_index !1494

; <label>:37                                      ; preds = %26
  store i32 1, i32* %three_by_three, align 4, !llfi_index !1495
  br label %72, !llfi_index !1496

; <label>:38                                      ; preds = %26
  store i32 1, i32* %susan_quick, align 4, !llfi_index !1497
  br label %72, !llfi_index !1498

; <label>:39                                      ; preds = %26
  %40 = load i32* %argindex, align 4, !llfi_index !1499
  %fi44 = call i32 @injectFault2(i64 1498, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %41 = add nsw i32 %fi44, 1, !llfi_index !1500
  %fi45 = call i32 @injectFault2(i64 1499, i32 %41, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi45, i32* %argindex, align 4, !llfi_index !1501
  %42 = load i32* %2, align 4, !llfi_index !1502
  %fi46 = call i32 @injectFault2(i64 1501, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %43 = icmp sge i32 %fi45, %fi46, !llfi_index !1503
  %fi47 = call i1 @injectFault0(i64 1502, i1 %43, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi47, label %44, label %46, !llfi_index !1504

; <label>:44                                      ; preds = %39
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str29, i32 0, i32 0)), !llfi_index !1505
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !1506
  unreachable, !llfi_index !1507

; <label>:46                                      ; preds = %39
  %47 = load i32* %argindex, align 4, !llfi_index !1508
  %fi48 = call i32 @injectFault2(i64 1507, i32 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %48 = sext i32 %fi48 to i64, !llfi_index !1509
  %fi49 = call i64 @injectFault5(i64 1508, i64 %48, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %49 = load i8*** %3, align 8, !llfi_index !1510
  %fi50 = call i8** @injectFault7(i64 1509, i8** %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %50 = getelementptr i8** %fi50, i64 %fi49, !llfi_index !1511
  %fi51 = call i8** @injectFault7(i64 1510, i8** %50, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %51 = load i8** %fi51, align 8, !llfi_index !1512
  %fi52 = call i8* @injectFault3(i64 1511, i8* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %52 = call double @atof(i8* %fi52) #7, !llfi_index !1513
  %53 = fptrunc double %52 to float, !llfi_index !1514
  %fi53 = call float @injectFault8(i64 1513, float %53, i32 40, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @fptrunc_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store float %fi53, float* %dt, align 4, !llfi_index !1515
  %54 = load float* %dt, align 4, !llfi_index !1516
  %fi54 = call float @injectFault8(i64 1515, float %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %55 = fcmp olt float %fi54, 0.000000e+00, !llfi_index !1517
  %fi55 = call i1 @injectFault0(i64 1516, i1 %55, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi55, label %56, label %57, !llfi_index !1518

; <label>:56                                      ; preds = %46
  store i32 1, i32* %three_by_three, align 4, !llfi_index !1519
  br label %57, !llfi_index !1520

; <label>:57                                      ; preds = %56, %46
  br label %72, !llfi_index !1521

; <label>:58                                      ; preds = %26
  %59 = load i32* %argindex, align 4, !llfi_index !1522
  %fi56 = call i32 @injectFault2(i64 1521, i32 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %60 = add nsw i32 %fi56, 1, !llfi_index !1523
  %fi57 = call i32 @injectFault2(i64 1522, i32 %60, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi57, i32* %argindex, align 4, !llfi_index !1524
  %61 = load i32* %2, align 4, !llfi_index !1525
  %fi58 = call i32 @injectFault2(i64 1524, i32 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %62 = icmp sge i32 %fi57, %fi58, !llfi_index !1526
  %fi59 = call i1 @injectFault0(i64 1525, i1 %62, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi59, label %63, label %65, !llfi_index !1527

; <label>:63                                      ; preds = %58
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str30, i32 0, i32 0)), !llfi_index !1528
  call void @postInjections()
  call void @exit(i32 0) #6, !llfi_index !1529
  unreachable, !llfi_index !1530

; <label>:65                                      ; preds = %58
  %66 = load i32* %argindex, align 4, !llfi_index !1531
  %fi43 = call i32 @injectFault2(i64 1530, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %67 = sext i32 %fi43 to i64, !llfi_index !1532
  %fi60 = call i64 @injectFault5(i64 1531, i64 %67, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %68 = load i8*** %3, align 8, !llfi_index !1533
  %fi61 = call i8** @injectFault7(i64 1532, i8** %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %69 = getelementptr i8** %fi61, i64 %fi60, !llfi_index !1534
  %fi62 = call i8** @injectFault7(i64 1533, i8** %69, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %70 = load i8** %fi62, align 8, !llfi_index !1535
  %fi63 = call i8* @injectFault3(i64 1534, i8* %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %71 = call i32 @atoi(i8* %fi63) #7, !llfi_index !1536
  store i32 %71, i32* %bt, align 4, !llfi_index !1537
  br label %72, !llfi_index !1538

; <label>:72                                      ; preds = %65, %57, %38, %37, %36, %35, %34, %33, %32, %31, %26
  br label %75, !llfi_index !1539

; <label>:73                                      ; preds = %16
  %74 = call i32 @usage(), !llfi_index !1540
  br label %75, !llfi_index !1541

; <label>:75                                      ; preds = %73, %72
  %76 = load i32* %argindex, align 4, !llfi_index !1542
  %fi = call i32 @injectFault2(i64 1541, i32 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %77 = add nsw i32 %fi, 1, !llfi_index !1543
  %fi1 = call i32 @injectFault2(i64 1542, i32 %77, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !18
  store i32 %fi1, i32* %argindex, align 4, !llfi_index !1544
  br label %12, !llfi_index !1545

; <label>:78                                      ; preds = %12
  %79 = load i32* %principle, align 4, !llfi_index !1546
  %fi2 = call i32 @injectFault2(i64 1545, i32 %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %80 = icmp eq i32 %fi2, 1, !llfi_index !1547
  %fi3 = call i1 @injectFault0(i64 1546, i1 %80, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi3, label %81, label %85, !llfi_index !1548

; <label>:81                                      ; preds = %78
  %82 = load i32* %mode, align 4, !llfi_index !1549
  %fi4 = call i32 @injectFault2(i64 1548, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %83 = icmp eq i32 %fi4, 0, !llfi_index !1550
  %fi5 = call i1 @injectFault0(i64 1549, i1 %83, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !18
  br i1 %fi5, label %84, label %85, !llfi_index !1551

; <label>:84                                      ; preds = %81
  store i32 1, i32* %mode, align 4, !llfi_index !1552
  br label %85, !llfi_index !1553

; <label>:85                                      ; preds = %84, %81, %78
  %86 = load i32* %mode, align 4, !llfi_index !1554
  %fi6 = call i32 @injectFault2(i64 1553, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  switch i32 %fi6, label %100 [
    i32 0, label %87
    i32 1, label %96
    i32 2, label %98
  ], !llfi_index !1555

; <label>:87                                      ; preds = %85
  %88 = load i32* %bt, align 4, !llfi_index !1556
  %fi7 = call i32 @injectFault2(i64 1555, i32 %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @setup_brightness_lut(i8** %bp, i32 %fi7, i32 2), !llfi_index !1557
  %89 = load i32* %three_by_three, align 4, !llfi_index !1558
  %fi8 = call i32 @injectFault2(i64 1557, i32 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %90 = load i8** %in, align 8, !llfi_index !1559
  %fi9 = call i8* @injectFault3(i64 1558, i8* %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %91 = load float* %dt, align 4, !llfi_index !1560
  %fi10 = call float @injectFault8(i64 1559, float %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %92 = fpext float %fi10 to double, !llfi_index !1561
  %fi11 = call double @injectFault9(i64 1560, double %92, i32 41, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @fpext_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %93 = load i32* %x_size, align 4, !llfi_index !1562
  %fi12 = call i32 @injectFault2(i64 1561, i32 %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %94 = load i32* %y_size, align 4, !llfi_index !1563
  %fi13 = call i32 @injectFault2(i64 1562, i32 %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %95 = load i8** %bp, align 8, !llfi_index !1564
  %fi14 = call i8* @injectFault3(i64 1563, i8* %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @susan_smoothing(i32 %fi8, i8* %fi9, double %fi11, i32 %fi12, i32 %fi13, i8* %fi14), !llfi_index !1565
  br label %100, !llfi_index !1566

; <label>:96                                      ; preds = %85
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0)), !llfi_index !1567
  br label %100, !llfi_index !1568

; <label>:98                                      ; preds = %85
  %99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str32, i32 0, i32 0)), !llfi_index !1569
  br label %100, !llfi_index !1570

; <label>:100                                     ; preds = %98, %96, %87, %85
  %101 = load i8*** %3, align 8, !llfi_index !1571
  %fi15 = call i8** @injectFault7(i64 1570, i8** %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %102 = getelementptr i8** %fi15, i64 2, !llfi_index !1572
  %fi16 = call i8** @injectFault7(i64 1571, i8** %102, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %103 = load i8** %fi16, align 8, !llfi_index !1573
  %fi17 = call i8* @injectFault3(i64 1572, i8* %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %104 = load i8** %in, align 8, !llfi_index !1574
  %fi18 = call i8* @injectFault3(i64 1573, i8* %104, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %105 = load i32* %x_size, align 4, !llfi_index !1575
  %fi19 = call i32 @injectFault2(i64 1574, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %106 = load i32* %y_size, align 4, !llfi_index !1576
  %fi20 = call i32 @injectFault2(i64 1575, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  %107 = call i32 @put_image(i8* %fi17, i8* %fi18, i32 %fi19, i32 %fi20), !llfi_index !1577
  %108 = load i32* %1, !llfi_index !1578
  %fi21 = call i32 @injectFault2(i64 1577, i32 %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !18
  call void @postInjections()
  ret i32 %fi21, !llfi_index !1579
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

define i1 @injectFault0(i64, i1, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i1
  store i1 %1, i1* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i1* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 1, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i1* %tmploc
  ret i1 %updateval
}

define %struct._IO_FILE* @injectFault1(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct._IO_FILE** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct._IO_FILE** %tmploc
  ret %struct._IO_FILE* %updateval
}

define i32 @injectFault2(i64, i32, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32
  store i32 %1, i32* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32* %tmploc
  ret i32 %updateval
}

define i8* @injectFault3(i64, i8*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8*
  store i8* %1, i8** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8** %tmploc
  ret i8* %updateval
}

define i8 @injectFault4(i64, i8, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8
  store i8 %1, i8* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 8, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8* %tmploc
  ret i8 %updateval
}

define i64 @injectFault5(i64, i64, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64
  store i64 %1, i64* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64* %tmploc
  ret i64 %updateval
}

define i32* @injectFault6(i64, i32*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32*
  store i32* %1, i32** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32** %tmploc
  ret i32* %updateval
}

define i8** @injectFault7(i64, i8**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8**
  store i8** %1, i8*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8*** %tmploc
  ret i8** %updateval
}

define float @injectFault8(i64, float, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float
  store float %1, float* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float* %tmploc
  ret float %updateval
}

define double @injectFault9(i64, double, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double
  store double %1, double* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double* %tmploc
  ret double %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

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
!18 = metadata !{metadata !"after"}
!19 = metadata !{i64 18}
!20 = metadata !{i64 19}
!21 = metadata !{i64 20}
!22 = metadata !{i64 21}
!23 = metadata !{i64 22}
!24 = metadata !{i64 23}
!25 = metadata !{i64 24}
!26 = metadata !{i64 25}
!27 = metadata !{i64 26}
!28 = metadata !{i64 27}
!29 = metadata !{i64 28}
!30 = metadata !{i64 29}
!31 = metadata !{i64 30}
!32 = metadata !{i64 31}
!33 = metadata !{i64 32}
!34 = metadata !{i64 33}
!35 = metadata !{i64 34}
!36 = metadata !{i64 35}
!37 = metadata !{i64 36}
!38 = metadata !{i64 37}
!39 = metadata !{i64 38}
!40 = metadata !{i64 39}
!41 = metadata !{i64 40}
!42 = metadata !{i64 41}
!43 = metadata !{i64 42}
!44 = metadata !{i64 43}
!45 = metadata !{i64 44}
!46 = metadata !{i64 45}
!47 = metadata !{i64 46}
!48 = metadata !{i64 47}
!49 = metadata !{i64 48}
!50 = metadata !{i64 49}
!51 = metadata !{i64 50}
!52 = metadata !{i64 51}
!53 = metadata !{i64 52}
!54 = metadata !{i64 53}
!55 = metadata !{i64 54}
!56 = metadata !{i64 55}
!57 = metadata !{i64 56}
!58 = metadata !{i64 57}
!59 = metadata !{i64 58}
!60 = metadata !{i64 59}
!61 = metadata !{i64 60}
!62 = metadata !{i64 61}
!63 = metadata !{i64 62}
!64 = metadata !{i64 63}
!65 = metadata !{i64 64}
!66 = metadata !{i64 65}
!67 = metadata !{i64 66}
!68 = metadata !{i64 67}
!69 = metadata !{i64 68}
!70 = metadata !{i64 69}
!71 = metadata !{i64 70}
!72 = metadata !{i64 71}
!73 = metadata !{i64 72}
!74 = metadata !{i64 73}
!75 = metadata !{i64 74}
!76 = metadata !{i64 75}
!77 = metadata !{i64 76}
!78 = metadata !{i64 77}
!79 = metadata !{i64 78}
!80 = metadata !{i64 79}
!81 = metadata !{i64 80}
!82 = metadata !{i64 81}
!83 = metadata !{i64 82}
!84 = metadata !{i64 83}
!85 = metadata !{i64 84}
!86 = metadata !{i64 85}
!87 = metadata !{i64 86}
!88 = metadata !{i64 87}
!89 = metadata !{i64 88}
!90 = metadata !{i64 89}
!91 = metadata !{i64 90}
!92 = metadata !{i64 91}
!93 = metadata !{i64 92}
!94 = metadata !{i64 93}
!95 = metadata !{i64 94}
!96 = metadata !{i64 95}
!97 = metadata !{i64 96}
!98 = metadata !{i64 97}
!99 = metadata !{i64 98}
!100 = metadata !{i64 99}
!101 = metadata !{i64 100}
!102 = metadata !{i64 101}
!103 = metadata !{i64 102}
!104 = metadata !{i64 103}
!105 = metadata !{i64 104}
!106 = metadata !{i64 105}
!107 = metadata !{i64 106}
!108 = metadata !{i64 107}
!109 = metadata !{i64 108}
!110 = metadata !{i64 109}
!111 = metadata !{i64 110}
!112 = metadata !{i64 111}
!113 = metadata !{i64 112}
!114 = metadata !{i64 113}
!115 = metadata !{i64 114}
!116 = metadata !{i64 115}
!117 = metadata !{i64 116}
!118 = metadata !{i64 117}
!119 = metadata !{i64 118}
!120 = metadata !{i64 119}
!121 = metadata !{i64 120}
!122 = metadata !{i64 121}
!123 = metadata !{i64 122}
!124 = metadata !{i64 123}
!125 = metadata !{i64 124}
!126 = metadata !{i64 125}
!127 = metadata !{i64 126}
!128 = metadata !{i64 127}
!129 = metadata !{i64 128}
!130 = metadata !{i64 129}
!131 = metadata !{i64 130}
!132 = metadata !{i64 131}
!133 = metadata !{i64 132}
!134 = metadata !{i64 133}
!135 = metadata !{i64 134}
!136 = metadata !{i64 135}
!137 = metadata !{i64 136}
!138 = metadata !{i64 137}
!139 = metadata !{i64 138}
!140 = metadata !{i64 139}
!141 = metadata !{i64 140}
!142 = metadata !{i64 141}
!143 = metadata !{i64 142}
!144 = metadata !{i64 143}
!145 = metadata !{i64 144}
!146 = metadata !{i64 145}
!147 = metadata !{i64 146}
!148 = metadata !{i64 147}
!149 = metadata !{i64 148}
!150 = metadata !{i64 149}
!151 = metadata !{i64 150}
!152 = metadata !{i64 151}
!153 = metadata !{i64 152}
!154 = metadata !{i64 153}
!155 = metadata !{i64 154}
!156 = metadata !{i64 155}
!157 = metadata !{i64 156}
!158 = metadata !{i64 157}
!159 = metadata !{i64 158}
!160 = metadata !{i64 159}
!161 = metadata !{i64 160}
!162 = metadata !{i64 161}
!163 = metadata !{i64 162}
!164 = metadata !{i64 163}
!165 = metadata !{i64 164}
!166 = metadata !{i64 165}
!167 = metadata !{i64 166}
!168 = metadata !{i64 167}
!169 = metadata !{i64 168}
!170 = metadata !{i64 169}
!171 = metadata !{i64 170}
!172 = metadata !{i64 171}
!173 = metadata !{i64 172}
!174 = metadata !{i64 173}
!175 = metadata !{i64 174}
!176 = metadata !{i64 175}
!177 = metadata !{i64 176}
!178 = metadata !{i64 177}
!179 = metadata !{i64 178}
!180 = metadata !{i64 179}
!181 = metadata !{i64 180}
!182 = metadata !{i64 181}
!183 = metadata !{i64 182}
!184 = metadata !{i64 183}
!185 = metadata !{i64 184}
!186 = metadata !{i64 185}
!187 = metadata !{i64 186}
!188 = metadata !{i64 187}
!189 = metadata !{i64 188}
!190 = metadata !{i64 189}
!191 = metadata !{i64 190}
!192 = metadata !{i64 191}
!193 = metadata !{i64 192}
!194 = metadata !{i64 193}
!195 = metadata !{i64 194}
!196 = metadata !{i64 195}
!197 = metadata !{i64 196}
!198 = metadata !{i64 197}
!199 = metadata !{i64 198}
!200 = metadata !{i64 199}
!201 = metadata !{i64 200}
!202 = metadata !{i64 201}
!203 = metadata !{i64 202}
!204 = metadata !{i64 203}
!205 = metadata !{i64 204}
!206 = metadata !{i64 205}
!207 = metadata !{i64 206}
!208 = metadata !{i64 207}
!209 = metadata !{i64 208}
!210 = metadata !{i64 209}
!211 = metadata !{i64 210}
!212 = metadata !{i64 211}
!213 = metadata !{i64 212}
!214 = metadata !{i64 213}
!215 = metadata !{i64 214}
!216 = metadata !{i64 215}
!217 = metadata !{i64 216}
!218 = metadata !{i64 217}
!219 = metadata !{i64 218}
!220 = metadata !{i64 219}
!221 = metadata !{i64 220}
!222 = metadata !{i64 221}
!223 = metadata !{i64 222}
!224 = metadata !{i64 223}
!225 = metadata !{i64 224}
!226 = metadata !{i64 225}
!227 = metadata !{i64 226}
!228 = metadata !{i64 227}
!229 = metadata !{i64 228}
!230 = metadata !{i64 229}
!231 = metadata !{i64 230}
!232 = metadata !{i64 231}
!233 = metadata !{i64 232}
!234 = metadata !{i64 233}
!235 = metadata !{i64 234}
!236 = metadata !{i64 235}
!237 = metadata !{i64 236}
!238 = metadata !{i64 237}
!239 = metadata !{i64 238}
!240 = metadata !{i64 239}
!241 = metadata !{i64 240}
!242 = metadata !{i64 241}
!243 = metadata !{i64 242}
!244 = metadata !{i64 243}
!245 = metadata !{i64 244}
!246 = metadata !{i64 245}
!247 = metadata !{i64 246}
!248 = metadata !{i64 247}
!249 = metadata !{i64 248}
!250 = metadata !{i64 249}
!251 = metadata !{i64 250}
!252 = metadata !{i64 251}
!253 = metadata !{i64 252}
!254 = metadata !{i64 253}
!255 = metadata !{i64 254}
!256 = metadata !{i64 255}
!257 = metadata !{i64 256}
!258 = metadata !{i64 257}
!259 = metadata !{i64 258}
!260 = metadata !{i64 259}
!261 = metadata !{i64 260}
!262 = metadata !{i64 261}
!263 = metadata !{i64 262}
!264 = metadata !{i64 263}
!265 = metadata !{i64 264}
!266 = metadata !{i64 265}
!267 = metadata !{i64 266}
!268 = metadata !{i64 267}
!269 = metadata !{i64 268}
!270 = metadata !{i64 269}
!271 = metadata !{i64 270}
!272 = metadata !{i64 271}
!273 = metadata !{i64 272}
!274 = metadata !{i64 273}
!275 = metadata !{i64 274}
!276 = metadata !{i64 275}
!277 = metadata !{i64 276}
!278 = metadata !{i64 277}
!279 = metadata !{i64 278}
!280 = metadata !{i64 279}
!281 = metadata !{i64 280}
!282 = metadata !{i64 281}
!283 = metadata !{i64 282}
!284 = metadata !{i64 283}
!285 = metadata !{i64 284}
!286 = metadata !{i64 285}
!287 = metadata !{i64 286}
!288 = metadata !{i64 287}
!289 = metadata !{i64 288}
!290 = metadata !{i64 289}
!291 = metadata !{i64 290}
!292 = metadata !{i64 291}
!293 = metadata !{i64 292}
!294 = metadata !{i64 293}
!295 = metadata !{i64 294}
!296 = metadata !{i64 295}
!297 = metadata !{i64 296}
!298 = metadata !{i64 297}
!299 = metadata !{i64 298}
!300 = metadata !{i64 299}
!301 = metadata !{i64 300}
!302 = metadata !{i64 301}
!303 = metadata !{i64 302}
!304 = metadata !{i64 303}
!305 = metadata !{i64 304}
!306 = metadata !{i64 305}
!307 = metadata !{i64 306}
!308 = metadata !{i64 307}
!309 = metadata !{i64 308}
!310 = metadata !{i64 309}
!311 = metadata !{i64 310}
!312 = metadata !{i64 311}
!313 = metadata !{i64 312}
!314 = metadata !{i64 313}
!315 = metadata !{i64 314}
!316 = metadata !{i64 315}
!317 = metadata !{i64 316}
!318 = metadata !{i64 317}
!319 = metadata !{i64 318}
!320 = metadata !{i64 319}
!321 = metadata !{i64 320}
!322 = metadata !{i64 321}
!323 = metadata !{i64 322}
!324 = metadata !{i64 323}
!325 = metadata !{i64 324}
!326 = metadata !{i64 325}
!327 = metadata !{i64 326}
!328 = metadata !{i64 327}
!329 = metadata !{i64 328}
!330 = metadata !{i64 329}
!331 = metadata !{i64 330}
!332 = metadata !{i64 331}
!333 = metadata !{i64 332}
!334 = metadata !{i64 333}
!335 = metadata !{i64 334}
!336 = metadata !{i64 335}
!337 = metadata !{i64 336}
!338 = metadata !{i64 337}
!339 = metadata !{i64 338}
!340 = metadata !{i64 339}
!341 = metadata !{i64 340}
!342 = metadata !{i64 341}
!343 = metadata !{i64 342}
!344 = metadata !{i64 343}
!345 = metadata !{i64 344}
!346 = metadata !{i64 345}
!347 = metadata !{i64 346}
!348 = metadata !{i64 347}
!349 = metadata !{i64 348}
!350 = metadata !{i64 349}
!351 = metadata !{i64 350}
!352 = metadata !{i64 351}
!353 = metadata !{i64 352}
!354 = metadata !{i64 353}
!355 = metadata !{i64 354}
!356 = metadata !{i64 355}
!357 = metadata !{i64 356}
!358 = metadata !{i64 357}
!359 = metadata !{i64 358}
!360 = metadata !{i64 359}
!361 = metadata !{i64 360}
!362 = metadata !{i64 361}
!363 = metadata !{i64 362}
!364 = metadata !{i64 363}
!365 = metadata !{i64 364}
!366 = metadata !{i64 365}
!367 = metadata !{i64 366}
!368 = metadata !{i64 367}
!369 = metadata !{i64 368}
!370 = metadata !{i64 369}
!371 = metadata !{i64 370}
!372 = metadata !{i64 371}
!373 = metadata !{i64 372}
!374 = metadata !{i64 373}
!375 = metadata !{i64 374}
!376 = metadata !{i64 375}
!377 = metadata !{i64 376}
!378 = metadata !{i64 377}
!379 = metadata !{i64 378}
!380 = metadata !{i64 379}
!381 = metadata !{i64 380}
!382 = metadata !{i64 381}
!383 = metadata !{i64 382}
!384 = metadata !{i64 383}
!385 = metadata !{i64 384}
!386 = metadata !{i64 385}
!387 = metadata !{i64 386}
!388 = metadata !{i64 387}
!389 = metadata !{i64 388}
!390 = metadata !{i64 389}
!391 = metadata !{i64 390}
!392 = metadata !{i64 391}
!393 = metadata !{i64 392}
!394 = metadata !{i64 393}
!395 = metadata !{i64 394}
!396 = metadata !{i64 395}
!397 = metadata !{i64 396}
!398 = metadata !{i64 397}
!399 = metadata !{i64 398}
!400 = metadata !{i64 399}
!401 = metadata !{i64 400}
!402 = metadata !{i64 401}
!403 = metadata !{i64 402}
!404 = metadata !{i64 403}
!405 = metadata !{i64 404}
!406 = metadata !{i64 405}
!407 = metadata !{i64 406}
!408 = metadata !{i64 407}
!409 = metadata !{i64 408}
!410 = metadata !{i64 409}
!411 = metadata !{i64 410}
!412 = metadata !{i64 411}
!413 = metadata !{i64 412}
!414 = metadata !{i64 413}
!415 = metadata !{i64 414}
!416 = metadata !{i64 415}
!417 = metadata !{i64 416}
!418 = metadata !{i64 417}
!419 = metadata !{i64 418}
!420 = metadata !{i64 419}
!421 = metadata !{i64 420}
!422 = metadata !{i64 421}
!423 = metadata !{i64 422}
!424 = metadata !{i64 423}
!425 = metadata !{i64 424}
!426 = metadata !{i64 425}
!427 = metadata !{i64 426}
!428 = metadata !{i64 427}
!429 = metadata !{i64 428}
!430 = metadata !{i64 429}
!431 = metadata !{i64 430}
!432 = metadata !{i64 431}
!433 = metadata !{i64 432}
!434 = metadata !{i64 433}
!435 = metadata !{i64 434}
!436 = metadata !{i64 435}
!437 = metadata !{i64 436}
!438 = metadata !{i64 437}
!439 = metadata !{i64 438}
!440 = metadata !{i64 439}
!441 = metadata !{i64 440}
!442 = metadata !{i64 441}
!443 = metadata !{i64 442}
!444 = metadata !{i64 443}
!445 = metadata !{i64 444}
!446 = metadata !{i64 445}
!447 = metadata !{i64 446}
!448 = metadata !{i64 447}
!449 = metadata !{i64 448}
!450 = metadata !{i64 449}
!451 = metadata !{i64 450}
!452 = metadata !{i64 451}
!453 = metadata !{i64 452}
!454 = metadata !{i64 453}
!455 = metadata !{i64 454}
!456 = metadata !{i64 455}
!457 = metadata !{i64 456}
!458 = metadata !{i64 457}
!459 = metadata !{i64 458}
!460 = metadata !{i64 459}
!461 = metadata !{i64 460}
!462 = metadata !{i64 461}
!463 = metadata !{i64 462}
!464 = metadata !{i64 463}
!465 = metadata !{i64 464}
!466 = metadata !{i64 465}
!467 = metadata !{i64 466}
!468 = metadata !{i64 467}
!469 = metadata !{i64 468}
!470 = metadata !{i64 469}
!471 = metadata !{i64 470}
!472 = metadata !{i64 471}
!473 = metadata !{i64 472}
!474 = metadata !{i64 473}
!475 = metadata !{i64 474}
!476 = metadata !{i64 475}
!477 = metadata !{i64 476}
!478 = metadata !{i64 477}
!479 = metadata !{i64 478}
!480 = metadata !{i64 479}
!481 = metadata !{i64 480}
!482 = metadata !{i64 481}
!483 = metadata !{i64 482}
!484 = metadata !{i64 483}
!485 = metadata !{i64 484}
!486 = metadata !{i64 485}
!487 = metadata !{i64 486}
!488 = metadata !{i64 487}
!489 = metadata !{i64 488}
!490 = metadata !{i64 489}
!491 = metadata !{i64 490}
!492 = metadata !{i64 491}
!493 = metadata !{i64 492}
!494 = metadata !{i64 493}
!495 = metadata !{i64 494}
!496 = metadata !{i64 495}
!497 = metadata !{i64 496}
!498 = metadata !{i64 497}
!499 = metadata !{i64 498}
!500 = metadata !{i64 499}
!501 = metadata !{i64 500}
!502 = metadata !{i64 501}
!503 = metadata !{i64 502}
!504 = metadata !{i64 503}
!505 = metadata !{i64 504}
!506 = metadata !{i64 505}
!507 = metadata !{i64 506}
!508 = metadata !{i64 507}
!509 = metadata !{i64 508}
!510 = metadata !{i64 509}
!511 = metadata !{i64 510}
!512 = metadata !{i64 511}
!513 = metadata !{i64 512}
!514 = metadata !{i64 513}
!515 = metadata !{i64 514}
!516 = metadata !{i64 515}
!517 = metadata !{i64 516}
!518 = metadata !{i64 517}
!519 = metadata !{i64 518}
!520 = metadata !{i64 519}
!521 = metadata !{i64 520}
!522 = metadata !{i64 521}
!523 = metadata !{i64 522}
!524 = metadata !{i64 523}
!525 = metadata !{i64 524}
!526 = metadata !{i64 525}
!527 = metadata !{i64 526}
!528 = metadata !{i64 527}
!529 = metadata !{i64 528}
!530 = metadata !{i64 529}
!531 = metadata !{i64 530}
!532 = metadata !{i64 531}
!533 = metadata !{i64 532}
!534 = metadata !{i64 533}
!535 = metadata !{i64 534}
!536 = metadata !{i64 535}
!537 = metadata !{i64 536}
!538 = metadata !{i64 537}
!539 = metadata !{i64 538}
!540 = metadata !{i64 539}
!541 = metadata !{i64 540}
!542 = metadata !{i64 541}
!543 = metadata !{i64 542}
!544 = metadata !{i64 543}
!545 = metadata !{i64 544}
!546 = metadata !{i64 545}
!547 = metadata !{i64 546}
!548 = metadata !{i64 547}
!549 = metadata !{i64 548}
!550 = metadata !{i64 549}
!551 = metadata !{i64 550}
!552 = metadata !{i64 551}
!553 = metadata !{i64 552}
!554 = metadata !{i64 553}
!555 = metadata !{i64 554}
!556 = metadata !{i64 555}
!557 = metadata !{i64 556}
!558 = metadata !{i64 557}
!559 = metadata !{i64 558}
!560 = metadata !{i64 559}
!561 = metadata !{i64 560}
!562 = metadata !{i64 561}
!563 = metadata !{i64 562}
!564 = metadata !{i64 563}
!565 = metadata !{i64 564}
!566 = metadata !{i64 565}
!567 = metadata !{i64 566}
!568 = metadata !{i64 567}
!569 = metadata !{i64 568}
!570 = metadata !{i64 569}
!571 = metadata !{i64 570}
!572 = metadata !{i64 571}
!573 = metadata !{i64 572}
!574 = metadata !{i64 573}
!575 = metadata !{i64 574}
!576 = metadata !{i64 575}
!577 = metadata !{i64 576}
!578 = metadata !{i64 577}
!579 = metadata !{i64 578}
!580 = metadata !{i64 579}
!581 = metadata !{i64 580}
!582 = metadata !{i64 581}
!583 = metadata !{i64 582}
!584 = metadata !{i64 583}
!585 = metadata !{i64 584}
!586 = metadata !{i64 585}
!587 = metadata !{i64 586}
!588 = metadata !{i64 587}
!589 = metadata !{i64 588}
!590 = metadata !{i64 589}
!591 = metadata !{i64 590}
!592 = metadata !{i64 591}
!593 = metadata !{i64 592}
!594 = metadata !{i64 593}
!595 = metadata !{i64 594}
!596 = metadata !{i64 595}
!597 = metadata !{i64 596}
!598 = metadata !{i64 597}
!599 = metadata !{i64 598}
!600 = metadata !{i64 599}
!601 = metadata !{i64 600}
!602 = metadata !{i64 601}
!603 = metadata !{i64 602}
!604 = metadata !{i64 603}
!605 = metadata !{i64 604}
!606 = metadata !{i64 605}
!607 = metadata !{i64 606}
!608 = metadata !{i64 607}
!609 = metadata !{i64 608}
!610 = metadata !{i64 609}
!611 = metadata !{i64 610}
!612 = metadata !{i64 611}
!613 = metadata !{i64 612}
!614 = metadata !{i64 613}
!615 = metadata !{i64 614}
!616 = metadata !{i64 615}
!617 = metadata !{i64 616}
!618 = metadata !{i64 617}
!619 = metadata !{i64 618}
!620 = metadata !{i64 619}
!621 = metadata !{i64 620}
!622 = metadata !{i64 621}
!623 = metadata !{i64 622}
!624 = metadata !{i64 623}
!625 = metadata !{i64 624}
!626 = metadata !{i64 625}
!627 = metadata !{i64 626}
!628 = metadata !{i64 627}
!629 = metadata !{i64 628}
!630 = metadata !{i64 629}
!631 = metadata !{i64 630}
!632 = metadata !{i64 631}
!633 = metadata !{i64 632}
!634 = metadata !{i64 633}
!635 = metadata !{i64 634}
!636 = metadata !{i64 635}
!637 = metadata !{i64 636}
!638 = metadata !{i64 637}
!639 = metadata !{i64 638}
!640 = metadata !{i64 639}
!641 = metadata !{i64 640}
!642 = metadata !{i64 641}
!643 = metadata !{i64 642}
!644 = metadata !{i64 643}
!645 = metadata !{i64 644}
!646 = metadata !{i64 645}
!647 = metadata !{i64 646}
!648 = metadata !{i64 647}
!649 = metadata !{i64 648}
!650 = metadata !{i64 649}
!651 = metadata !{i64 650}
!652 = metadata !{i64 651}
!653 = metadata !{i64 652}
!654 = metadata !{i64 653}
!655 = metadata !{i64 654}
!656 = metadata !{i64 655}
!657 = metadata !{i64 656}
!658 = metadata !{i64 657}
!659 = metadata !{i64 658}
!660 = metadata !{i64 659}
!661 = metadata !{i64 660}
!662 = metadata !{i64 661}
!663 = metadata !{i64 662}
!664 = metadata !{i64 663}
!665 = metadata !{i64 664}
!666 = metadata !{i64 665}
!667 = metadata !{i64 666}
!668 = metadata !{i64 667}
!669 = metadata !{i64 668}
!670 = metadata !{i64 669}
!671 = metadata !{i64 670}
!672 = metadata !{i64 671}
!673 = metadata !{i64 672}
!674 = metadata !{i64 673}
!675 = metadata !{i64 674}
!676 = metadata !{i64 675}
!677 = metadata !{i64 676}
!678 = metadata !{i64 677}
!679 = metadata !{i64 678}
!680 = metadata !{i64 679}
!681 = metadata !{i64 680}
!682 = metadata !{i64 681}
!683 = metadata !{i64 682}
!684 = metadata !{i64 683}
!685 = metadata !{i64 684}
!686 = metadata !{i64 685}
!687 = metadata !{i64 686}
!688 = metadata !{i64 687}
!689 = metadata !{i64 688}
!690 = metadata !{i64 689}
!691 = metadata !{i64 690}
!692 = metadata !{i64 691}
!693 = metadata !{i64 692}
!694 = metadata !{i64 693}
!695 = metadata !{i64 694}
!696 = metadata !{i64 695}
!697 = metadata !{i64 696}
!698 = metadata !{i64 697}
!699 = metadata !{i64 698}
!700 = metadata !{i64 699}
!701 = metadata !{i64 700}
!702 = metadata !{i64 701}
!703 = metadata !{i64 702}
!704 = metadata !{i64 703}
!705 = metadata !{i64 704}
!706 = metadata !{i64 705}
!707 = metadata !{i64 706}
!708 = metadata !{i64 707}
!709 = metadata !{i64 708}
!710 = metadata !{i64 709}
!711 = metadata !{i64 710}
!712 = metadata !{i64 711}
!713 = metadata !{i64 712}
!714 = metadata !{i64 713}
!715 = metadata !{i64 714}
!716 = metadata !{i64 715}
!717 = metadata !{i64 716}
!718 = metadata !{i64 717}
!719 = metadata !{i64 718}
!720 = metadata !{i64 719}
!721 = metadata !{i64 720}
!722 = metadata !{i64 721}
!723 = metadata !{i64 722}
!724 = metadata !{i64 723}
!725 = metadata !{i64 724}
!726 = metadata !{i64 725}
!727 = metadata !{i64 726}
!728 = metadata !{i64 727}
!729 = metadata !{i64 728}
!730 = metadata !{i64 729}
!731 = metadata !{i64 730}
!732 = metadata !{i64 731}
!733 = metadata !{i64 732}
!734 = metadata !{i64 733}
!735 = metadata !{i64 734}
!736 = metadata !{i64 735}
!737 = metadata !{i64 736}
!738 = metadata !{i64 737}
!739 = metadata !{i64 738}
!740 = metadata !{i64 739}
!741 = metadata !{i64 740}
!742 = metadata !{i64 741}
!743 = metadata !{i64 742}
!744 = metadata !{i64 743}
!745 = metadata !{i64 744}
!746 = metadata !{i64 745}
!747 = metadata !{i64 746}
!748 = metadata !{i64 747}
!749 = metadata !{i64 748}
!750 = metadata !{i64 749}
!751 = metadata !{i64 750}
!752 = metadata !{i64 751}
!753 = metadata !{i64 752}
!754 = metadata !{i64 753}
!755 = metadata !{i64 754}
!756 = metadata !{i64 755}
!757 = metadata !{i64 756}
!758 = metadata !{i64 757}
!759 = metadata !{i64 758}
!760 = metadata !{i64 759}
!761 = metadata !{i64 760}
!762 = metadata !{i64 761}
!763 = metadata !{i64 762}
!764 = metadata !{i64 763}
!765 = metadata !{i64 764}
!766 = metadata !{i64 765}
!767 = metadata !{i64 766}
!768 = metadata !{i64 767}
!769 = metadata !{i64 768}
!770 = metadata !{i64 769}
!771 = metadata !{i64 770}
!772 = metadata !{i64 771}
!773 = metadata !{i64 772}
!774 = metadata !{i64 773}
!775 = metadata !{i64 774}
!776 = metadata !{i64 775}
!777 = metadata !{i64 776}
!778 = metadata !{i64 777}
!779 = metadata !{i64 778}
!780 = metadata !{i64 779}
!781 = metadata !{i64 780}
!782 = metadata !{i64 781}
!783 = metadata !{i64 782}
!784 = metadata !{i64 783}
!785 = metadata !{i64 784}
!786 = metadata !{i64 785}
!787 = metadata !{i64 786}
!788 = metadata !{i64 787}
!789 = metadata !{i64 788}
!790 = metadata !{i64 789}
!791 = metadata !{i64 790}
!792 = metadata !{i64 791}
!793 = metadata !{i64 792}
!794 = metadata !{i64 793}
!795 = metadata !{i64 794}
!796 = metadata !{i64 795}
!797 = metadata !{i64 796}
!798 = metadata !{i64 797}
!799 = metadata !{i64 798}
!800 = metadata !{i64 799}
!801 = metadata !{i64 800}
!802 = metadata !{i64 801}
!803 = metadata !{i64 802}
!804 = metadata !{i64 803}
!805 = metadata !{i64 804}
!806 = metadata !{i64 805}
!807 = metadata !{i64 806}
!808 = metadata !{i64 807}
!809 = metadata !{i64 808}
!810 = metadata !{i64 809}
!811 = metadata !{i64 810}
!812 = metadata !{i64 811}
!813 = metadata !{i64 812}
!814 = metadata !{i64 813}
!815 = metadata !{i64 814}
!816 = metadata !{i64 815}
!817 = metadata !{i64 816}
!818 = metadata !{i64 817}
!819 = metadata !{i64 818}
!820 = metadata !{i64 819}
!821 = metadata !{i64 820}
!822 = metadata !{i64 821}
!823 = metadata !{i64 822}
!824 = metadata !{i64 823}
!825 = metadata !{i64 824}
!826 = metadata !{i64 825}
!827 = metadata !{i64 826}
!828 = metadata !{i64 827}
!829 = metadata !{i64 828}
!830 = metadata !{i64 829}
!831 = metadata !{i64 830}
!832 = metadata !{i64 831}
!833 = metadata !{i64 832}
!834 = metadata !{i64 833}
!835 = metadata !{i64 834}
!836 = metadata !{i64 835}
!837 = metadata !{i64 836}
!838 = metadata !{i64 837}
!839 = metadata !{i64 838}
!840 = metadata !{i64 839}
!841 = metadata !{i64 840}
!842 = metadata !{i64 841}
!843 = metadata !{i64 842}
!844 = metadata !{i64 843}
!845 = metadata !{i64 844}
!846 = metadata !{i64 845}
!847 = metadata !{i64 846}
!848 = metadata !{i64 847}
!849 = metadata !{i64 848}
!850 = metadata !{i64 849}
!851 = metadata !{i64 850}
!852 = metadata !{i64 851}
!853 = metadata !{i64 852}
!854 = metadata !{i64 853}
!855 = metadata !{i64 854}
!856 = metadata !{i64 855}
!857 = metadata !{i64 856}
!858 = metadata !{i64 857}
!859 = metadata !{i64 858}
!860 = metadata !{i64 859}
!861 = metadata !{i64 860}
!862 = metadata !{i64 861}
!863 = metadata !{i64 862}
!864 = metadata !{i64 863}
!865 = metadata !{i64 864}
!866 = metadata !{i64 865}
!867 = metadata !{i64 866}
!868 = metadata !{i64 867}
!869 = metadata !{i64 868}
!870 = metadata !{i64 869}
!871 = metadata !{i64 870}
!872 = metadata !{i64 871}
!873 = metadata !{i64 872}
!874 = metadata !{i64 873}
!875 = metadata !{i64 874}
!876 = metadata !{i64 875}
!877 = metadata !{i64 876}
!878 = metadata !{i64 877}
!879 = metadata !{i64 878}
!880 = metadata !{i64 879}
!881 = metadata !{i64 880}
!882 = metadata !{i64 881}
!883 = metadata !{i64 882}
!884 = metadata !{i64 883}
!885 = metadata !{i64 884}
!886 = metadata !{i64 885}
!887 = metadata !{i64 886}
!888 = metadata !{i64 887}
!889 = metadata !{i64 888}
!890 = metadata !{i64 889}
!891 = metadata !{i64 890}
!892 = metadata !{i64 891}
!893 = metadata !{i64 892}
!894 = metadata !{i64 893}
!895 = metadata !{i64 894}
!896 = metadata !{i64 895}
!897 = metadata !{i64 896}
!898 = metadata !{i64 897}
!899 = metadata !{i64 898}
!900 = metadata !{i64 899}
!901 = metadata !{i64 900}
!902 = metadata !{i64 901}
!903 = metadata !{i64 902}
!904 = metadata !{i64 903}
!905 = metadata !{i64 904}
!906 = metadata !{i64 905}
!907 = metadata !{i64 906}
!908 = metadata !{i64 907}
!909 = metadata !{i64 908}
!910 = metadata !{i64 909}
!911 = metadata !{i64 910}
!912 = metadata !{i64 911}
!913 = metadata !{i64 912}
!914 = metadata !{i64 913}
!915 = metadata !{i64 914}
!916 = metadata !{i64 915}
!917 = metadata !{i64 916}
!918 = metadata !{i64 917}
!919 = metadata !{i64 918}
!920 = metadata !{i64 919}
!921 = metadata !{i64 920}
!922 = metadata !{i64 921}
!923 = metadata !{i64 922}
!924 = metadata !{i64 923}
!925 = metadata !{i64 924}
!926 = metadata !{i64 925}
!927 = metadata !{i64 926}
!928 = metadata !{i64 927}
!929 = metadata !{i64 928}
!930 = metadata !{i64 929}
!931 = metadata !{i64 930}
!932 = metadata !{i64 931}
!933 = metadata !{i64 932}
!934 = metadata !{i64 933}
!935 = metadata !{i64 934}
!936 = metadata !{i64 935}
!937 = metadata !{i64 936}
!938 = metadata !{i64 937}
!939 = metadata !{i64 938}
!940 = metadata !{i64 939}
!941 = metadata !{i64 940}
!942 = metadata !{i64 941}
!943 = metadata !{i64 942}
!944 = metadata !{i64 943}
!945 = metadata !{i64 944}
!946 = metadata !{i64 945}
!947 = metadata !{i64 946}
!948 = metadata !{i64 947}
!949 = metadata !{i64 948}
!950 = metadata !{i64 949}
!951 = metadata !{i64 950}
!952 = metadata !{i64 951}
!953 = metadata !{i64 952}
!954 = metadata !{i64 953}
!955 = metadata !{i64 954}
!956 = metadata !{i64 955}
!957 = metadata !{i64 956}
!958 = metadata !{i64 957}
!959 = metadata !{i64 958}
!960 = metadata !{i64 959}
!961 = metadata !{i64 960}
!962 = metadata !{i64 961}
!963 = metadata !{i64 962}
!964 = metadata !{i64 963}
!965 = metadata !{i64 964}
!966 = metadata !{i64 965}
!967 = metadata !{i64 966}
!968 = metadata !{i64 967}
!969 = metadata !{i64 968}
!970 = metadata !{i64 969}
!971 = metadata !{i64 970}
!972 = metadata !{i64 971}
!973 = metadata !{i64 972}
!974 = metadata !{i64 973}
!975 = metadata !{i64 974}
!976 = metadata !{i64 975}
!977 = metadata !{i64 976}
!978 = metadata !{i64 977}
!979 = metadata !{i64 978}
!980 = metadata !{i64 979}
!981 = metadata !{i64 980}
!982 = metadata !{i64 981}
!983 = metadata !{i64 982}
!984 = metadata !{i64 983}
!985 = metadata !{i64 984}
!986 = metadata !{i64 985}
!987 = metadata !{i64 986}
!988 = metadata !{i64 987}
!989 = metadata !{i64 988}
!990 = metadata !{i64 989}
!991 = metadata !{i64 990}
!992 = metadata !{i64 991}
!993 = metadata !{i64 992}
!994 = metadata !{i64 993}
!995 = metadata !{i64 994}
!996 = metadata !{i64 995}
!997 = metadata !{i64 996}
!998 = metadata !{i64 997}
!999 = metadata !{i64 998}
!1000 = metadata !{i64 999}
!1001 = metadata !{i64 1000}
!1002 = metadata !{i64 1001}
!1003 = metadata !{i64 1002}
!1004 = metadata !{i64 1003}
!1005 = metadata !{i64 1004}
!1006 = metadata !{i64 1005}
!1007 = metadata !{i64 1006}
!1008 = metadata !{i64 1007}
!1009 = metadata !{i64 1008}
!1010 = metadata !{i64 1009}
!1011 = metadata !{i64 1010}
!1012 = metadata !{i64 1011}
!1013 = metadata !{i64 1012}
!1014 = metadata !{i64 1013}
!1015 = metadata !{i64 1014}
!1016 = metadata !{i64 1015}
!1017 = metadata !{i64 1016}
!1018 = metadata !{i64 1017}
!1019 = metadata !{i64 1018}
!1020 = metadata !{i64 1019}
!1021 = metadata !{i64 1020}
!1022 = metadata !{i64 1021}
!1023 = metadata !{i64 1022}
!1024 = metadata !{i64 1023}
!1025 = metadata !{i64 1024}
!1026 = metadata !{i64 1025}
!1027 = metadata !{i64 1026}
!1028 = metadata !{i64 1027}
!1029 = metadata !{i64 1028}
!1030 = metadata !{i64 1029}
!1031 = metadata !{i64 1030}
!1032 = metadata !{i64 1031}
!1033 = metadata !{i64 1032}
!1034 = metadata !{i64 1033}
!1035 = metadata !{i64 1034}
!1036 = metadata !{i64 1035}
!1037 = metadata !{i64 1036}
!1038 = metadata !{i64 1037}
!1039 = metadata !{i64 1038}
!1040 = metadata !{i64 1039}
!1041 = metadata !{i64 1040}
!1042 = metadata !{i64 1041}
!1043 = metadata !{i64 1042}
!1044 = metadata !{i64 1043}
!1045 = metadata !{i64 1044}
!1046 = metadata !{i64 1045}
!1047 = metadata !{i64 1046}
!1048 = metadata !{i64 1047}
!1049 = metadata !{i64 1048}
!1050 = metadata !{i64 1049}
!1051 = metadata !{i64 1050}
!1052 = metadata !{i64 1051}
!1053 = metadata !{i64 1052}
!1054 = metadata !{i64 1053}
!1055 = metadata !{i64 1054}
!1056 = metadata !{i64 1055}
!1057 = metadata !{i64 1056}
!1058 = metadata !{i64 1057}
!1059 = metadata !{i64 1058}
!1060 = metadata !{i64 1059}
!1061 = metadata !{i64 1060}
!1062 = metadata !{i64 1061}
!1063 = metadata !{i64 1062}
!1064 = metadata !{i64 1063}
!1065 = metadata !{i64 1064}
!1066 = metadata !{i64 1065}
!1067 = metadata !{i64 1066}
!1068 = metadata !{i64 1067}
!1069 = metadata !{i64 1068}
!1070 = metadata !{i64 1069}
!1071 = metadata !{i64 1070}
!1072 = metadata !{i64 1071}
!1073 = metadata !{i64 1072}
!1074 = metadata !{i64 1073}
!1075 = metadata !{i64 1074}
!1076 = metadata !{i64 1075}
!1077 = metadata !{i64 1076}
!1078 = metadata !{i64 1077}
!1079 = metadata !{i64 1078}
!1080 = metadata !{i64 1079}
!1081 = metadata !{i64 1080}
!1082 = metadata !{i64 1081}
!1083 = metadata !{i64 1082}
!1084 = metadata !{i64 1083}
!1085 = metadata !{i64 1084}
!1086 = metadata !{i64 1085}
!1087 = metadata !{i64 1086}
!1088 = metadata !{i64 1087}
!1089 = metadata !{i64 1088}
!1090 = metadata !{i64 1089}
!1091 = metadata !{i64 1090}
!1092 = metadata !{i64 1091}
!1093 = metadata !{i64 1092}
!1094 = metadata !{i64 1093}
!1095 = metadata !{i64 1094}
!1096 = metadata !{i64 1095}
!1097 = metadata !{i64 1096}
!1098 = metadata !{i64 1097}
!1099 = metadata !{i64 1098}
!1100 = metadata !{i64 1099}
!1101 = metadata !{i64 1100}
!1102 = metadata !{i64 1101}
!1103 = metadata !{i64 1102}
!1104 = metadata !{i64 1103}
!1105 = metadata !{i64 1104}
!1106 = metadata !{i64 1105}
!1107 = metadata !{i64 1106}
!1108 = metadata !{i64 1107}
!1109 = metadata !{i64 1108}
!1110 = metadata !{i64 1109}
!1111 = metadata !{i64 1110}
!1112 = metadata !{i64 1111}
!1113 = metadata !{i64 1112}
!1114 = metadata !{i64 1113}
!1115 = metadata !{i64 1114}
!1116 = metadata !{i64 1115}
!1117 = metadata !{i64 1116}
!1118 = metadata !{i64 1117}
!1119 = metadata !{i64 1118}
!1120 = metadata !{i64 1119}
!1121 = metadata !{i64 1120}
!1122 = metadata !{i64 1121}
!1123 = metadata !{i64 1122}
!1124 = metadata !{i64 1123}
!1125 = metadata !{i64 1124}
!1126 = metadata !{i64 1125}
!1127 = metadata !{i64 1126}
!1128 = metadata !{i64 1127}
!1129 = metadata !{i64 1128}
!1130 = metadata !{i64 1129}
!1131 = metadata !{i64 1130}
!1132 = metadata !{i64 1131}
!1133 = metadata !{i64 1132}
!1134 = metadata !{i64 1133}
!1135 = metadata !{i64 1134}
!1136 = metadata !{i64 1135}
!1137 = metadata !{i64 1136}
!1138 = metadata !{i64 1137}
!1139 = metadata !{i64 1138}
!1140 = metadata !{i64 1139}
!1141 = metadata !{i64 1140}
!1142 = metadata !{i64 1141}
!1143 = metadata !{i64 1142}
!1144 = metadata !{i64 1143}
!1145 = metadata !{i64 1144}
!1146 = metadata !{i64 1145}
!1147 = metadata !{i64 1146}
!1148 = metadata !{i64 1147}
!1149 = metadata !{i64 1148}
!1150 = metadata !{i64 1149}
!1151 = metadata !{i64 1150}
!1152 = metadata !{i64 1151}
!1153 = metadata !{i64 1152}
!1154 = metadata !{i64 1153}
!1155 = metadata !{i64 1154}
!1156 = metadata !{i64 1155}
!1157 = metadata !{i64 1156}
!1158 = metadata !{i64 1157}
!1159 = metadata !{i64 1158}
!1160 = metadata !{i64 1159}
!1161 = metadata !{i64 1160}
!1162 = metadata !{i64 1161}
!1163 = metadata !{i64 1162}
!1164 = metadata !{i64 1163}
!1165 = metadata !{i64 1164}
!1166 = metadata !{i64 1165}
!1167 = metadata !{i64 1166}
!1168 = metadata !{i64 1167}
!1169 = metadata !{i64 1168}
!1170 = metadata !{i64 1169}
!1171 = metadata !{i64 1170}
!1172 = metadata !{i64 1171}
!1173 = metadata !{i64 1172}
!1174 = metadata !{i64 1173}
!1175 = metadata !{i64 1174}
!1176 = metadata !{i64 1175}
!1177 = metadata !{i64 1176}
!1178 = metadata !{i64 1177}
!1179 = metadata !{i64 1178}
!1180 = metadata !{i64 1179}
!1181 = metadata !{i64 1180}
!1182 = metadata !{i64 1181}
!1183 = metadata !{i64 1182}
!1184 = metadata !{i64 1183}
!1185 = metadata !{i64 1184}
!1186 = metadata !{i64 1185}
!1187 = metadata !{i64 1186}
!1188 = metadata !{i64 1187}
!1189 = metadata !{i64 1188}
!1190 = metadata !{i64 1189}
!1191 = metadata !{i64 1190}
!1192 = metadata !{i64 1191}
!1193 = metadata !{i64 1192}
!1194 = metadata !{i64 1193}
!1195 = metadata !{i64 1194}
!1196 = metadata !{i64 1195}
!1197 = metadata !{i64 1196}
!1198 = metadata !{i64 1197}
!1199 = metadata !{i64 1198}
!1200 = metadata !{i64 1199}
!1201 = metadata !{i64 1200}
!1202 = metadata !{i64 1201}
!1203 = metadata !{i64 1202}
!1204 = metadata !{i64 1203}
!1205 = metadata !{i64 1204}
!1206 = metadata !{i64 1205}
!1207 = metadata !{i64 1206}
!1208 = metadata !{i64 1207}
!1209 = metadata !{i64 1208}
!1210 = metadata !{i64 1209}
!1211 = metadata !{i64 1210}
!1212 = metadata !{i64 1211}
!1213 = metadata !{i64 1212}
!1214 = metadata !{i64 1213}
!1215 = metadata !{i64 1214}
!1216 = metadata !{i64 1215}
!1217 = metadata !{i64 1216}
!1218 = metadata !{i64 1217}
!1219 = metadata !{i64 1218}
!1220 = metadata !{i64 1219}
!1221 = metadata !{i64 1220}
!1222 = metadata !{i64 1221}
!1223 = metadata !{i64 1222}
!1224 = metadata !{i64 1223}
!1225 = metadata !{i64 1224}
!1226 = metadata !{i64 1225}
!1227 = metadata !{i64 1226}
!1228 = metadata !{i64 1227}
!1229 = metadata !{i64 1228}
!1230 = metadata !{i64 1229}
!1231 = metadata !{i64 1230}
!1232 = metadata !{i64 1231}
!1233 = metadata !{i64 1232}
!1234 = metadata !{i64 1233}
!1235 = metadata !{i64 1234}
!1236 = metadata !{i64 1235}
!1237 = metadata !{i64 1236}
!1238 = metadata !{i64 1237}
!1239 = metadata !{i64 1238}
!1240 = metadata !{i64 1239}
!1241 = metadata !{i64 1240}
!1242 = metadata !{i64 1241}
!1243 = metadata !{i64 1242}
!1244 = metadata !{i64 1243}
!1245 = metadata !{i64 1244}
!1246 = metadata !{i64 1245}
!1247 = metadata !{i64 1246}
!1248 = metadata !{i64 1247}
!1249 = metadata !{i64 1248}
!1250 = metadata !{i64 1249}
!1251 = metadata !{i64 1250}
!1252 = metadata !{i64 1251}
!1253 = metadata !{i64 1252}
!1254 = metadata !{i64 1253}
!1255 = metadata !{i64 1254}
!1256 = metadata !{i64 1255}
!1257 = metadata !{i64 1256}
!1258 = metadata !{i64 1257}
!1259 = metadata !{i64 1258}
!1260 = metadata !{i64 1259}
!1261 = metadata !{i64 1260}
!1262 = metadata !{i64 1261}
!1263 = metadata !{i64 1262}
!1264 = metadata !{i64 1263}
!1265 = metadata !{i64 1264}
!1266 = metadata !{i64 1265}
!1267 = metadata !{i64 1266}
!1268 = metadata !{i64 1267}
!1269 = metadata !{i64 1268}
!1270 = metadata !{i64 1269}
!1271 = metadata !{i64 1270}
!1272 = metadata !{i64 1271}
!1273 = metadata !{i64 1272}
!1274 = metadata !{i64 1273}
!1275 = metadata !{i64 1274}
!1276 = metadata !{i64 1275}
!1277 = metadata !{i64 1276}
!1278 = metadata !{i64 1277}
!1279 = metadata !{i64 1278}
!1280 = metadata !{i64 1279}
!1281 = metadata !{i64 1280}
!1282 = metadata !{i64 1281}
!1283 = metadata !{i64 1282}
!1284 = metadata !{i64 1283}
!1285 = metadata !{i64 1284}
!1286 = metadata !{i64 1285}
!1287 = metadata !{i64 1286}
!1288 = metadata !{i64 1287}
!1289 = metadata !{i64 1288}
!1290 = metadata !{i64 1289}
!1291 = metadata !{i64 1290}
!1292 = metadata !{i64 1291}
!1293 = metadata !{i64 1292}
!1294 = metadata !{i64 1293}
!1295 = metadata !{i64 1294}
!1296 = metadata !{i64 1295}
!1297 = metadata !{i64 1296}
!1298 = metadata !{i64 1297}
!1299 = metadata !{i64 1298}
!1300 = metadata !{i64 1299}
!1301 = metadata !{i64 1300}
!1302 = metadata !{i64 1301}
!1303 = metadata !{i64 1302}
!1304 = metadata !{i64 1303}
!1305 = metadata !{i64 1304}
!1306 = metadata !{i64 1305}
!1307 = metadata !{i64 1306}
!1308 = metadata !{i64 1307}
!1309 = metadata !{i64 1308}
!1310 = metadata !{i64 1309}
!1311 = metadata !{i64 1310}
!1312 = metadata !{i64 1311}
!1313 = metadata !{i64 1312}
!1314 = metadata !{i64 1313}
!1315 = metadata !{i64 1314}
!1316 = metadata !{i64 1315}
!1317 = metadata !{i64 1316}
!1318 = metadata !{i64 1317}
!1319 = metadata !{i64 1318}
!1320 = metadata !{i64 1319}
!1321 = metadata !{i64 1320}
!1322 = metadata !{i64 1321}
!1323 = metadata !{i64 1322}
!1324 = metadata !{i64 1323}
!1325 = metadata !{i64 1324}
!1326 = metadata !{i64 1325}
!1327 = metadata !{i64 1326}
!1328 = metadata !{i64 1327}
!1329 = metadata !{i64 1328}
!1330 = metadata !{i64 1329}
!1331 = metadata !{i64 1330}
!1332 = metadata !{i64 1331}
!1333 = metadata !{i64 1332}
!1334 = metadata !{i64 1333}
!1335 = metadata !{i64 1334}
!1336 = metadata !{i64 1335}
!1337 = metadata !{i64 1336}
!1338 = metadata !{i64 1337}
!1339 = metadata !{i64 1338}
!1340 = metadata !{i64 1339}
!1341 = metadata !{i64 1340}
!1342 = metadata !{i64 1341}
!1343 = metadata !{i64 1342}
!1344 = metadata !{i64 1343}
!1345 = metadata !{i64 1344}
!1346 = metadata !{i64 1345}
!1347 = metadata !{i64 1346}
!1348 = metadata !{i64 1347}
!1349 = metadata !{i64 1348}
!1350 = metadata !{i64 1349}
!1351 = metadata !{i64 1350}
!1352 = metadata !{i64 1351}
!1353 = metadata !{i64 1352}
!1354 = metadata !{i64 1353}
!1355 = metadata !{i64 1354}
!1356 = metadata !{i64 1355}
!1357 = metadata !{i64 1356}
!1358 = metadata !{i64 1357}
!1359 = metadata !{i64 1358}
!1360 = metadata !{i64 1359}
!1361 = metadata !{i64 1360}
!1362 = metadata !{i64 1361}
!1363 = metadata !{i64 1362}
!1364 = metadata !{i64 1363}
!1365 = metadata !{i64 1364}
!1366 = metadata !{i64 1365}
!1367 = metadata !{i64 1366}
!1368 = metadata !{i64 1367}
!1369 = metadata !{i64 1368}
!1370 = metadata !{i64 1369}
!1371 = metadata !{i64 1370}
!1372 = metadata !{i64 1371}
!1373 = metadata !{i64 1372}
!1374 = metadata !{i64 1373}
!1375 = metadata !{i64 1374}
!1376 = metadata !{i64 1375}
!1377 = metadata !{i64 1376}
!1378 = metadata !{i64 1377}
!1379 = metadata !{i64 1378}
!1380 = metadata !{i64 1379}
!1381 = metadata !{i64 1380}
!1382 = metadata !{i64 1381}
!1383 = metadata !{i64 1382}
!1384 = metadata !{i64 1383}
!1385 = metadata !{i64 1384}
!1386 = metadata !{i64 1385}
!1387 = metadata !{i64 1386}
!1388 = metadata !{i64 1387}
!1389 = metadata !{i64 1388}
!1390 = metadata !{i64 1389}
!1391 = metadata !{i64 1390}
!1392 = metadata !{i64 1391}
!1393 = metadata !{i64 1392}
!1394 = metadata !{i64 1393}
!1395 = metadata !{i64 1394}
!1396 = metadata !{i64 1395}
!1397 = metadata !{i64 1396}
!1398 = metadata !{i64 1397}
!1399 = metadata !{i64 1398}
!1400 = metadata !{i64 1399}
!1401 = metadata !{i64 1400}
!1402 = metadata !{i64 1401}
!1403 = metadata !{i64 1402}
!1404 = metadata !{i64 1403}
!1405 = metadata !{i64 1404}
!1406 = metadata !{i64 1405}
!1407 = metadata !{i64 1406}
!1408 = metadata !{i64 1407}
!1409 = metadata !{i64 1408}
!1410 = metadata !{i64 1409}
!1411 = metadata !{i64 1410}
!1412 = metadata !{i64 1411}
!1413 = metadata !{i64 1412}
!1414 = metadata !{i64 1413}
!1415 = metadata !{i64 1414}
!1416 = metadata !{i64 1415}
!1417 = metadata !{i64 1416}
!1418 = metadata !{i64 1417}
!1419 = metadata !{i64 1418}
!1420 = metadata !{i64 1419}
!1421 = metadata !{i64 1420}
!1422 = metadata !{i64 1421}
!1423 = metadata !{i64 1422}
!1424 = metadata !{i64 1423}
!1425 = metadata !{i64 1424}
!1426 = metadata !{i64 1425}
!1427 = metadata !{i64 1426}
!1428 = metadata !{i64 1427}
!1429 = metadata !{i64 1428}
!1430 = metadata !{i64 1429}
!1431 = metadata !{i64 1430}
!1432 = metadata !{i64 1431}
!1433 = metadata !{i64 1432}
!1434 = metadata !{i64 1433}
!1435 = metadata !{i64 1434}
!1436 = metadata !{i64 1435}
!1437 = metadata !{i64 1436}
!1438 = metadata !{i64 1437}
!1439 = metadata !{i64 1438}
!1440 = metadata !{i64 1439}
!1441 = metadata !{i64 1440}
!1442 = metadata !{i64 1441}
!1443 = metadata !{i64 1442}
!1444 = metadata !{i64 1443}
!1445 = metadata !{i64 1444}
!1446 = metadata !{i64 1445}
!1447 = metadata !{i64 1446}
!1448 = metadata !{i64 1447}
!1449 = metadata !{i64 1448}
!1450 = metadata !{i64 1449}
!1451 = metadata !{i64 1450}
!1452 = metadata !{i64 1451}
!1453 = metadata !{i64 1452}
!1454 = metadata !{i64 1453}
!1455 = metadata !{i64 1454}
!1456 = metadata !{i64 1455}
!1457 = metadata !{i64 1456}
!1458 = metadata !{i64 1457}
!1459 = metadata !{i64 1458}
!1460 = metadata !{i64 1459}
!1461 = metadata !{i64 1460}
!1462 = metadata !{i64 1461}
!1463 = metadata !{i64 1462}
!1464 = metadata !{i64 1463}
!1465 = metadata !{i64 1464}
!1466 = metadata !{i64 1465}
!1467 = metadata !{i64 1466}
!1468 = metadata !{i64 1467}
!1469 = metadata !{i64 1468}
!1470 = metadata !{i64 1469}
!1471 = metadata !{i64 1470}
!1472 = metadata !{i64 1471}
!1473 = metadata !{i64 1472}
!1474 = metadata !{i64 1473}
!1475 = metadata !{i64 1474}
!1476 = metadata !{i64 1475}
!1477 = metadata !{i64 1476}
!1478 = metadata !{i64 1477}
!1479 = metadata !{i64 1478}
!1480 = metadata !{i64 1479}
!1481 = metadata !{i64 1480}
!1482 = metadata !{i64 1481}
!1483 = metadata !{i64 1482}
!1484 = metadata !{i64 1483}
!1485 = metadata !{i64 1484}
!1486 = metadata !{i64 1485}
!1487 = metadata !{i64 1486}
!1488 = metadata !{i64 1487}
!1489 = metadata !{i64 1488}
!1490 = metadata !{i64 1489}
!1491 = metadata !{i64 1490}
!1492 = metadata !{i64 1491}
!1493 = metadata !{i64 1492}
!1494 = metadata !{i64 1493}
!1495 = metadata !{i64 1494}
!1496 = metadata !{i64 1495}
!1497 = metadata !{i64 1496}
!1498 = metadata !{i64 1497}
!1499 = metadata !{i64 1498}
!1500 = metadata !{i64 1499}
!1501 = metadata !{i64 1500}
!1502 = metadata !{i64 1501}
!1503 = metadata !{i64 1502}
!1504 = metadata !{i64 1503}
!1505 = metadata !{i64 1504}
!1506 = metadata !{i64 1505}
!1507 = metadata !{i64 1506}
!1508 = metadata !{i64 1507}
!1509 = metadata !{i64 1508}
!1510 = metadata !{i64 1509}
!1511 = metadata !{i64 1510}
!1512 = metadata !{i64 1511}
!1513 = metadata !{i64 1512}
!1514 = metadata !{i64 1513}
!1515 = metadata !{i64 1514}
!1516 = metadata !{i64 1515}
!1517 = metadata !{i64 1516}
!1518 = metadata !{i64 1517}
!1519 = metadata !{i64 1518}
!1520 = metadata !{i64 1519}
!1521 = metadata !{i64 1520}
!1522 = metadata !{i64 1521}
!1523 = metadata !{i64 1522}
!1524 = metadata !{i64 1523}
!1525 = metadata !{i64 1524}
!1526 = metadata !{i64 1525}
!1527 = metadata !{i64 1526}
!1528 = metadata !{i64 1527}
!1529 = metadata !{i64 1528}
!1530 = metadata !{i64 1529}
!1531 = metadata !{i64 1530}
!1532 = metadata !{i64 1531}
!1533 = metadata !{i64 1532}
!1534 = metadata !{i64 1533}
!1535 = metadata !{i64 1534}
!1536 = metadata !{i64 1535}
!1537 = metadata !{i64 1536}
!1538 = metadata !{i64 1537}
!1539 = metadata !{i64 1538}
!1540 = metadata !{i64 1539}
!1541 = metadata !{i64 1540}
!1542 = metadata !{i64 1541}
!1543 = metadata !{i64 1542}
!1544 = metadata !{i64 1543}
!1545 = metadata !{i64 1544}
!1546 = metadata !{i64 1545}
!1547 = metadata !{i64 1546}
!1548 = metadata !{i64 1547}
!1549 = metadata !{i64 1548}
!1550 = metadata !{i64 1549}
!1551 = metadata !{i64 1550}
!1552 = metadata !{i64 1551}
!1553 = metadata !{i64 1552}
!1554 = metadata !{i64 1553}
!1555 = metadata !{i64 1554}
!1556 = metadata !{i64 1555}
!1557 = metadata !{i64 1556}
!1558 = metadata !{i64 1557}
!1559 = metadata !{i64 1558}
!1560 = metadata !{i64 1559}
!1561 = metadata !{i64 1560}
!1562 = metadata !{i64 1561}
!1563 = metadata !{i64 1562}
!1564 = metadata !{i64 1563}
!1565 = metadata !{i64 1564}
!1566 = metadata !{i64 1565}
!1567 = metadata !{i64 1566}
!1568 = metadata !{i64 1567}
!1569 = metadata !{i64 1568}
!1570 = metadata !{i64 1569}
!1571 = metadata !{i64 1570}
!1572 = metadata !{i64 1571}
!1573 = metadata !{i64 1572}
!1574 = metadata !{i64 1573}
!1575 = metadata !{i64 1574}
!1576 = metadata !{i64 1575}
!1577 = metadata !{i64 1576}
!1578 = metadata !{i64 1577}
!1579 = metadata !{i64 1578}
