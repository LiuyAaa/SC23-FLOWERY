; ModuleID = 'susan.c'
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

; Function Attrs: nounwind uwtable
define i32 @usage() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str4, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str5, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([107 x i8]* @.str6, i32 0, i32 0))
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str7, i32 0, i32 0))
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([79 x i8]* @.str8, i32 0, i32 0))
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([111 x i8]* @.str9, i32 0, i32 0))
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([108 x i8]* @.str10, i32 0, i32 0))
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([91 x i8]* @.str11, i32 0, i32 0))
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str12, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable
                                                  ; No predecessors!
  %16 = load i32* %1
  ret i32 %16
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @getint(%struct._IO_FILE* %fd) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %dummy = alloca [10000 x i8], align 16
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE** %2, align 8
  %4 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %4, i32* %c, align 4
  br label %5

; <label>:5                                       ; preds = %0, %25
  %6 = load i32* %c, align 4
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds [10000 x i8]* %dummy, i32 0, i32 0
  %10 = load %struct._IO_FILE** %2, align 8
  %11 = call i8* @fgets(i8* %9, i32 9000, %struct._IO_FILE* %10)
  br label %12

; <label>:12                                      ; preds = %8, %5
  %13 = load i32* %c, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %12
  %16 = load %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([26 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:18                                      ; preds = %12
  %19 = load i32* %c, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %18
  %22 = load i32* %c, align 4
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  br label %28

; <label>:25                                      ; preds = %21, %18
  %26 = load %struct._IO_FILE** %2, align 8
  %27 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %27, i32* %c, align 4
  br label %5

; <label>:28                                      ; preds = %24
  store i32 0, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %28, %48
  %30 = load i32* %i, align 4
  %31 = mul nsw i32 %30, 10
  %32 = load i32* %c, align 4
  %33 = sub nsw i32 %32, 48
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %i, align 4
  %35 = load %struct._IO_FILE** %2, align 8
  %36 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  store i32 %36, i32* %c, align 4
  %37 = load i32* %c, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %29
  %40 = load i32* %i, align 4
  store i32 %40, i32* %1
  br label %51

; <label>:41                                      ; preds = %29
  %42 = load i32* %c, align 4
  %43 = icmp slt i32 %42, 48
  br i1 %43, label %47, label %44

; <label>:44                                      ; preds = %41
  %45 = load i32* %c, align 4
  %46 = icmp sgt i32 %45, 57
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %44, %41
  br label %49

; <label>:48                                      ; preds = %44
  br label %29

; <label>:49                                      ; preds = %47
  %50 = load i32* %i, align 4
  store i32 %50, i32* %1
  br label %51

; <label>:51                                      ; preds = %49, %39
  %52 = load i32* %1
  ret i32 %52
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @get_image(i8* %filename, i8** %in, i32* %x_size, i32* %y_size) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %fd = alloca %struct._IO_FILE*, align 8
  %header = alloca [100 x i8], align 16
  %tmp = alloca i32, align 4
  store i8* %filename, i8** %1, align 8
  store i8** %in, i8*** %2, align 8
  store i32* %x_size, i32** %3, align 8
  store i32* %y_size, i32** %4, align 8
  %5 = load i8** %1, align 8
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %fd, align 8
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE** @stderr, align 8
  %10 = load i8** %1, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %10)
  call void @exit(i32 0) #6
  unreachable

; <label>:12                                      ; preds = %0
  %13 = load %struct._IO_FILE** %fd, align 8
  %14 = call i32 @fgetc(%struct._IO_FILE* %13)
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [100 x i8]* %header, i32 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = load %struct._IO_FILE** %fd, align 8
  %18 = call i32 @fgetc(%struct._IO_FILE* %17)
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [100 x i8]* %header, i32 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds [100 x i8]* %header, i32 0, i64 0
  %22 = load i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 80
  br i1 %24, label %25, label %30

; <label>:25                                      ; preds = %12
  %26 = getelementptr inbounds [100 x i8]* %header, i32 0, i64 1
  %27 = load i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 53
  br i1 %29, label %34, label %30

; <label>:30                                      ; preds = %25, %12
  %31 = load %struct._IO_FILE** @stderr, align 8
  %32 = load i8** %1, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([43 x i8]* @.str17, i32 0, i32 0), i8* %32)
  call void @exit(i32 0) #6
  unreachable

; <label>:34                                      ; preds = %25
  %35 = load %struct._IO_FILE** %fd, align 8
  %36 = call i32 @getint(%struct._IO_FILE* %35)
  %37 = load i32** %3, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct._IO_FILE** %fd, align 8
  %39 = call i32 @getint(%struct._IO_FILE* %38)
  %40 = load i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct._IO_FILE** %fd, align 8
  %42 = call i32 @getint(%struct._IO_FILE* %41)
  store i32 %42, i32* %tmp, align 4
  %43 = load i32** %3, align 8
  %44 = load i32* %43, align 4
  %45 = load i32** %4, align 8
  %46 = load i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = call noalias i8* @malloc(i64 %48) #4
  %50 = load i8*** %2, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8*** %2, align 8
  %52 = load i8** %51, align 8
  %53 = load i32** %3, align 8
  %54 = load i32* %53, align 4
  %55 = load i32** %4, align 8
  %56 = load i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = load %struct._IO_FILE** %fd, align 8
  %60 = call i64 @fread(i8* %52, i64 1, i64 %58, %struct._IO_FILE* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

; <label>:62                                      ; preds = %34
  %63 = load %struct._IO_FILE** @stderr, align 8
  %64 = load i8** %1, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i8* %64)
  call void @exit(i32 0) #6
  unreachable

; <label>:66                                      ; preds = %34
  %67 = load %struct._IO_FILE** %fd, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* %67)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @put_image(i8* %filename, i8* %in, i32 %x_size, i32 %y_size) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %fd = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %2, align 8
  store i8* %in, i8** %3, align 8
  store i32 %x_size, i32* %4, align 4
  store i32 %y_size, i32* %5, align 4
  %6 = load i8** %2, align 8
  %7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fd, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE** @stderr, align 8
  %11 = load i8** %2, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8]* @.str20, i32 0, i32 0), i8* %11)
  call void @exit(i32 0) #6
  unreachable

; <label>:13                                      ; preds = %0
  %14 = load %struct._IO_FILE** %fd, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0))
  %16 = load %struct._IO_FILE** %fd, align 8
  %17 = load i32* %4, align 4
  %18 = load i32* %5, align 4
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i32 %17, i32 %18)
  %20 = load %struct._IO_FILE** %fd, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0))
  %22 = load i8** %3, align 8
  %23 = load i32* %4, align 4
  %24 = load i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct._IO_FILE** %fd, align 8
  %28 = call i64 @fwrite(i8* %22, i64 %26, i64 1, %struct._IO_FILE* %27)
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %34

; <label>:30                                      ; preds = %13
  %31 = load %struct._IO_FILE** @stderr, align 8
  %32 = load i8** %2, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([23 x i8]* @.str24, i32 0, i32 0), i8* %32)
  call void @exit(i32 0) #6
  unreachable

; <label>:34                                      ; preds = %13
  %35 = load %struct._IO_FILE** %fd, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* %35)
  %37 = load i32* %1
  ret i32 %37
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @int_to_uchar(i32* %r, i8* %in, i32 %size) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %max_r = alloca i32, align 4
  %min_r = alloca i32, align 4
  store i32* %r, i32** %2, align 8
  store i8* %in, i8** %3, align 8
  store i32 %size, i32* %4, align 4
  %5 = load i32** %2, align 8
  %6 = getelementptr inbounds i32* %5, i64 0
  %7 = load i32* %6, align 4
  store i32 %7, i32* %max_r, align 4
  %8 = load i32** %2, align 8
  %9 = getelementptr inbounds i32* %8, i64 0
  %10 = load i32* %9, align 4
  store i32 %10, i32* %min_r, align 4
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %44, %0
  %12 = load i32* %i, align 4
  %13 = load i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

; <label>:15                                      ; preds = %11
  %16 = load i32* %i, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32** %2, align 8
  %19 = getelementptr inbounds i32* %18, i64 %17
  %20 = load i32* %19, align 4
  %21 = load i32* %max_r, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %29

; <label>:23                                      ; preds = %15
  %24 = load i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32** %2, align 8
  %27 = getelementptr inbounds i32* %26, i64 %25
  %28 = load i32* %27, align 4
  store i32 %28, i32* %max_r, align 4
  br label %29

; <label>:29                                      ; preds = %23, %15
  %30 = load i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32** %2, align 8
  %33 = getelementptr inbounds i32* %32, i64 %31
  %34 = load i32* %33, align 4
  %35 = load i32* %min_r, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

; <label>:37                                      ; preds = %29
  %38 = load i32* %i, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32** %2, align 8
  %41 = getelementptr inbounds i32* %40, i64 %39
  %42 = load i32* %41, align 4
  store i32 %42, i32* %min_r, align 4
  br label %43

; <label>:43                                      ; preds = %37, %29
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4
  br label %11

; <label>:47                                      ; preds = %11
  %48 = load i32* %min_r, align 4
  %49 = load i32* %max_r, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %max_r, align 4
  store i32 0, i32* %i, align 4
  br label %51

; <label>:51                                      ; preds = %71, %47
  %52 = load i32* %i, align 4
  %53 = load i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

; <label>:55                                      ; preds = %51
  %56 = load i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32** %2, align 8
  %59 = getelementptr inbounds i32* %58, i64 %57
  %60 = load i32* %59, align 4
  %61 = load i32* %min_r, align 4
  %62 = sub nsw i32 %60, %61
  %63 = mul nsw i32 %62, 255
  %64 = load i32* %max_r, align 4
  %65 = sdiv i32 %63, %64
  %66 = trunc i32 %65 to i8
  %67 = load i32* %i, align 4
  %68 = sext i32 %67 to i64
  %69 = load i8** %3, align 8
  %70 = getelementptr inbounds i8* %69, i64 %68
  store i8 %66, i8* %70, align 1
  br label %71

; <label>:71                                      ; preds = %55
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %51

; <label>:74                                      ; preds = %51
  %75 = load i32* %1
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define void @setup_brightness_lut(i8** %bp, i32 %thresh, i32 %form) #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store i8** %bp, i8*** %1, align 8
  store i32 %thresh, i32* %2, align 4
  store i32 %form, i32* %3, align 4
  %4 = call noalias i8* @malloc(i64 516) #4
  %5 = load i8*** %1, align 8
  store i8* %4, i8** %5, align 8
  %6 = load i8*** %1, align 8
  %7 = load i8** %6, align 8
  %8 = getelementptr inbounds i8* %7, i64 258
  %9 = load i8*** %1, align 8
  store i8* %8, i8** %9, align 8
  store i32 -256, i32* %k, align 4
  br label %10

; <label>:10                                      ; preds = %44, %0
  %11 = load i32* %k, align 4
  %12 = icmp slt i32 %11, 257
  br i1 %12, label %13, label %47

; <label>:13                                      ; preds = %10
  %14 = load i32* %k, align 4
  %15 = sitofp i32 %14 to float
  %16 = load i32* %2, align 4
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %15, %17
  store float %18, float* %temp, align 4
  %19 = load float* %temp, align 4
  %20 = load float* %temp, align 4
  %21 = fmul float %19, %20
  store float %21, float* %temp, align 4
  %22 = load i32* %3, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %30

; <label>:24                                      ; preds = %13
  %25 = load float* %temp, align 4
  %26 = load float* %temp, align 4
  %27 = fmul float %25, %26
  %28 = load float* %temp, align 4
  %29 = fmul float %27, %28
  store float %29, float* %temp, align 4
  br label %30

; <label>:30                                      ; preds = %24, %13
  %31 = load float* %temp, align 4
  %32 = fsub float -0.000000e+00, %31
  %33 = fpext float %32 to double
  %34 = call double @exp(double %33) #4
  %35 = fmul double 1.000000e+02, %34
  %36 = fptrunc double %35 to float
  store float %36, float* %temp, align 4
  %37 = load float* %temp, align 4
  %38 = fptoui float %37 to i8
  %39 = load i8*** %1, align 8
  %40 = load i8** %39, align 8
  %41 = load i32* %k, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8* %40, i64 %42
  store i8 %38, i8* %43, align 1
  br label %44

; <label>:44                                      ; preds = %30
  %45 = load i32* %k, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %k, align 4
  br label %10

; <label>:47                                      ; preds = %10
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define zeroext i8 @median(i8* %in, i32 %i, i32 %j, i32 %x_size) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %p = alloca [8 x i32], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %in, i8** %1, align 8
  store i32 %i, i32* %2, align 4
  store i32 %j, i32* %3, align 4
  store i32 %x_size, i32* %4, align 4
  %5 = load i32* %2, align 4
  %6 = sub nsw i32 %5, 1
  %7 = load i32* %4, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %3, align 4
  %10 = add nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = load i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32* %2, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32* %3, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = load i8** %1, align 8
  %26 = getelementptr inbounds i8* %25, i64 %24
  %27 = load i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32* %2, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32* %4, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32* %3, align 4
  %35 = add nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load i8** %1, align 8
  %39 = getelementptr inbounds i8* %38, i64 %37
  %40 = load i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 2
  store i32 %41, i32* %42, align 4
  %43 = load i32* %2, align 4
  %44 = load i32* %4, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32* %3, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i8** %1, align 8
  %51 = getelementptr inbounds i8* %50, i64 %49
  %52 = load i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 3
  store i32 %53, i32* %54, align 4
  %55 = load i32* %2, align 4
  %56 = load i32* %4, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32* %3, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i8** %1, align 8
  %63 = getelementptr inbounds i8* %62, i64 %61
  %64 = load i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 4
  store i32 %65, i32* %66, align 4
  %67 = load i32* %2, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32* %3, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load i8** %1, align 8
  %76 = getelementptr inbounds i8* %75, i64 %74
  %77 = load i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 5
  store i32 %78, i32* %79, align 4
  %80 = load i32* %2, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32* %4, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32* %3, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = load i8** %1, align 8
  %88 = getelementptr inbounds i8* %87, i64 %86
  %89 = load i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 6
  store i32 %90, i32* %91, align 4
  %92 = load i32* %2, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32* %4, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32* %3, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load i8** %1, align 8
  %101 = getelementptr inbounds i8* %100, i64 %99
  %102 = load i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 7
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %k, align 4
  br label %105

; <label>:105                                     ; preds = %148, %0
  %106 = load i32* %k, align 4
  %107 = icmp slt i32 %106, 7
  br i1 %107, label %108, label %151

; <label>:108                                     ; preds = %105
  store i32 0, i32* %l, align 4
  br label %109

; <label>:109                                     ; preds = %144, %108
  %110 = load i32* %l, align 4
  %111 = load i32* %k, align 4
  %112 = sub nsw i32 7, %111
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %147

; <label>:114                                     ; preds = %109
  %115 = load i32* %l, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %116
  %118 = load i32* %117, align 4
  %119 = load i32* %l, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %121
  %123 = load i32* %122, align 4
  %124 = icmp sgt i32 %118, %123
  br i1 %124, label %125, label %143

; <label>:125                                     ; preds = %114
  %126 = load i32* %l, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %127
  %129 = load i32* %128, align 4
  store i32 %129, i32* %tmp, align 4
  %130 = load i32* %l, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %132
  %134 = load i32* %133, align 4
  %135 = load i32* %l, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32* %tmp, align 4
  %139 = load i32* %l, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

; <label>:143                                     ; preds = %125, %114
  br label %144

; <label>:144                                     ; preds = %143
  %145 = load i32* %l, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %l, align 4
  br label %109

; <label>:147                                     ; preds = %109
  br label %148

; <label>:148                                     ; preds = %147
  %149 = load i32* %k, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %k, align 4
  br label %105

; <label>:151                                     ; preds = %105
  %152 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 3
  %153 = load i32* %152, align 4
  %154 = getelementptr inbounds [8 x i32]* %p, i32 0, i64 4
  %155 = load i32* %154, align 4
  %156 = add nsw i32 %153, %155
  %157 = sdiv i32 %156, 2
  %158 = trunc i32 %157 to i8
  ret i8 %158
}

; Function Attrs: nounwind uwtable
define i32 @enlarge(i8** %in, i8* %tmp_image, i32* %x_size, i32* %y_size, i32 %border) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %in, i8*** %2, align 8
  store i8* %tmp_image, i8** %3, align 8
  store i32* %x_size, i32** %4, align 8
  store i32* %y_size, i32** %5, align 8
  store i32 %border, i32* %6, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %39, %0
  %8 = load i32* %i, align 4
  %9 = load i32** %5, align 8
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %42

; <label>:12                                      ; preds = %7
  %13 = load i8** %3, align 8
  %14 = load i32* %i, align 4
  %15 = load i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32** %4, align 8
  %18 = load i32* %17, align 4
  %19 = load i32* %6, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 %18, %20
  %22 = mul nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8* %13, i64 %23
  %25 = load i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8* %24, i64 %26
  %28 = load i8*** %2, align 8
  %29 = load i8** %28, align 8
  %30 = load i32* %i, align 4
  %31 = load i32** %4, align 8
  %32 = load i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8* %29, i64 %34
  %36 = load i32** %4, align 8
  %37 = load i32* %36, align 4
  %38 = sext i32 %37 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %35, i64 %38, i32 1, i1 false)
  br label %39

; <label>:39                                      ; preds = %12
  %40 = load i32* %i, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4
  br label %7

; <label>:42                                      ; preds = %7
  store i32 0, i32* %i, align 4
  br label %43

; <label>:43                                      ; preds = %108, %42
  %44 = load i32* %i, align 4
  %45 = load i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %111

; <label>:47                                      ; preds = %43
  %48 = load i8** %3, align 8
  %49 = load i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32* %i, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32** %4, align 8
  %54 = load i32* %53, align 4
  %55 = load i32* %6, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  %58 = mul nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8* %48, i64 %59
  %61 = load i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8* %60, i64 %62
  %64 = load i8*** %2, align 8
  %65 = load i8** %64, align 8
  %66 = load i32* %i, align 4
  %67 = load i32** %4, align 8
  %68 = load i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8* %65, i64 %70
  %72 = load i32** %4, align 8
  %73 = load i32* %72, align 4
  %74 = sext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %71, i64 %74, i32 1, i1 false)
  %75 = load i8** %3, align 8
  %76 = load i32** %5, align 8
  %77 = load i32* %76, align 4
  %78 = load i32* %6, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32* %i, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32** %4, align 8
  %83 = load i32* %82, align 4
  %84 = load i32* %6, align 4
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %83, %85
  %87 = mul nsw i32 %81, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8* %75, i64 %88
  %90 = load i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8* %89, i64 %91
  %93 = load i8*** %2, align 8
  %94 = load i8** %93, align 8
  %95 = load i32** %5, align 8
  %96 = load i32* %95, align 4
  %97 = load i32* %i, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32** %4, align 8
  %101 = load i32* %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8* %94, i64 %103
  %105 = load i32** %4, align 8
  %106 = load i32* %105, align 4
  %107 = sext i32 %106 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %104, i64 %107, i32 1, i1 false)
  br label %108

; <label>:108                                     ; preds = %47
  %109 = load i32* %i, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4
  br label %43

; <label>:111                                     ; preds = %43
  store i32 0, i32* %i, align 4
  br label %112

; <label>:112                                     ; preds = %196, %111
  %113 = load i32* %i, align 4
  %114 = load i32* %6, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %199

; <label>:116                                     ; preds = %112
  store i32 0, i32* %j, align 4
  br label %117

; <label>:117                                     ; preds = %192, %116
  %118 = load i32* %j, align 4
  %119 = load i32** %5, align 8
  %120 = load i32* %119, align 4
  %121 = load i32* %6, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 %120, %122
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %195

; <label>:125                                     ; preds = %117
  %126 = load i32* %j, align 4
  %127 = load i32** %4, align 8
  %128 = load i32* %127, align 4
  %129 = load i32* %6, align 4
  %130 = mul nsw i32 2, %129
  %131 = add nsw i32 %128, %130
  %132 = mul nsw i32 %126, %131
  %133 = load i32* %6, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32* %i, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = load i8** %3, align 8
  %139 = getelementptr inbounds i8* %138, i64 %137
  %140 = load i8* %139, align 1
  %141 = load i32* %j, align 4
  %142 = load i32** %4, align 8
  %143 = load i32* %142, align 4
  %144 = load i32* %6, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %143, %145
  %147 = mul nsw i32 %141, %146
  %148 = load i32* %6, align 4
  %149 = add nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  %151 = load i32* %i, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = load i8** %3, align 8
  %155 = getelementptr inbounds i8* %154, i64 %153
  store i8 %140, i8* %155, align 1
  %156 = load i32* %j, align 4
  %157 = load i32** %4, align 8
  %158 = load i32* %157, align 4
  %159 = load i32* %6, align 4
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 %158, %160
  %162 = mul nsw i32 %156, %161
  %163 = load i32** %4, align 8
  %164 = load i32* %163, align 4
  %165 = add nsw i32 %162, %164
  %166 = load i32* %6, align 4
  %167 = add nsw i32 %165, %166
  %168 = sub nsw i32 %167, 1
  %169 = load i32* %i, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = load i8** %3, align 8
  %173 = getelementptr inbounds i8* %172, i64 %171
  %174 = load i8* %173, align 1
  %175 = load i32* %j, align 4
  %176 = load i32** %4, align 8
  %177 = load i32* %176, align 4
  %178 = load i32* %6, align 4
  %179 = mul nsw i32 2, %178
  %180 = add nsw i32 %177, %179
  %181 = mul nsw i32 %175, %180
  %182 = load i32** %4, align 8
  %183 = load i32* %182, align 4
  %184 = add nsw i32 %181, %183
  %185 = load i32* %6, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32* %i, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = load i8** %3, align 8
  %191 = getelementptr inbounds i8* %190, i64 %189
  store i8 %174, i8* %191, align 1
  br label %192

; <label>:192                                     ; preds = %125
  %193 = load i32* %j, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4
  br label %117

; <label>:195                                     ; preds = %117
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32* %i, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4
  br label %112

; <label>:199                                     ; preds = %112
  %200 = load i32* %6, align 4
  %201 = mul nsw i32 2, %200
  %202 = load i32** %4, align 8
  %203 = load i32* %202, align 4
  %204 = add nsw i32 %203, %201
  store i32 %204, i32* %202, align 4
  %205 = load i32* %6, align 4
  %206 = mul nsw i32 2, %205
  %207 = load i32** %5, align 8
  %208 = load i32* %207, align 4
  %209 = add nsw i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = load i8** %3, align 8
  %211 = load i8*** %2, align 8
  store i8* %210, i8** %211, align 8
  %212 = load i32* %1
  ret i32 %212
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @susan_smoothing(i32 %three_by_three, i8* %in, double, i32 %x_size, i32 %y_size, i8* %bp) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %temp = alloca float, align 4
  %n_max = alloca i32, align 4
  %increment = alloca i32, align 4
  %mask_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %area = alloca i32, align 4
  %brightness = alloca i32, align 4
  %tmp = alloca i32, align 4
  %centre = alloca i32, align 4
  %ip = alloca i8*, align 8
  %dp = alloca i8*, align 8
  %dpt = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %out = alloca i8*, align 8
  %tmp_image = alloca i8*, align 8
  %total = alloca i32, align 4
  store i32 %three_by_three, i32* %2, align 4
  store i8* %in, i8** %3, align 8
  %dt = fptrunc double %0 to float
  store float %dt, float* %4, align 4
  store i32 %x_size, i32* %5, align 4
  store i32 %y_size, i32* %6, align 4
  store i8* %bp, i8** %7, align 8
  %8 = load i8** %3, align 8
  store i8* %8, i8** %out, align 8
  %9 = load i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %1
  %12 = load float* %4, align 4
  %13 = fpext float %12 to double
  %14 = fmul double 1.500000e+00, %13
  %15 = fptosi double %14 to i32
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %mask_size, align 4
  br label %18

; <label>:17                                      ; preds = %1
  store i32 1, i32* %mask_size, align 4
  br label %18

; <label>:18                                      ; preds = %17, %11
  store i32 0, i32* %total, align 4
  %19 = load float* %4, align 4
  %20 = fcmp ogt float %19, 1.500000e+01
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %18
  %22 = load i32* %total, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

; <label>:24                                      ; preds = %21
  %25 = load float* %4, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str25, i32 0, i32 0), double %26)
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str26, i32 0, i32 0))
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str27, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:30                                      ; preds = %21, %18
  %31 = load i32* %mask_size, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %42, label %36

; <label>:36                                      ; preds = %30
  %37 = load i32* %mask_size, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 1
  %40 = load i32* %6, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %36, %30
  %43 = load i32* %mask_size, align 4
  %44 = load i32* %5, align 4
  %45 = load i32* %6, align 4
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str28, i32 0, i32 0), i32 %43, i32 %44, i32 %45)
  call void @exit(i32 0) #6
  unreachable

; <label>:47                                      ; preds = %36
  %48 = load i32* %5, align 4
  %49 = load i32* %mask_size, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %48, %50
  %52 = load i32* %6, align 4
  %53 = load i32* %mask_size, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %52, %54
  %56 = mul nsw i32 %51, %55
  %57 = sext i32 %56 to i64
  %58 = call noalias i8* @malloc(i64 %57) #4
  store i8* %58, i8** %tmp_image, align 8
  %59 = load i8** %tmp_image, align 8
  %60 = load i32* %mask_size, align 4
  %61 = call i32 @enlarge(i8** %3, i8* %59, i32* %5, i32* %6, i32 %60)
  %62 = load i32* %2, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %248

; <label>:64                                      ; preds = %47
  %65 = load i32* %mask_size, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %n_max, align 4
  %68 = load i32* %5, align 4
  %69 = load i32* %n_max, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %increment, align 4
  %71 = load i32* %n_max, align 4
  %72 = load i32* %n_max, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = call noalias i8* @malloc(i64 %74) #4
  store i8* %75, i8** %dp, align 8
  %76 = load i8** %dp, align 8
  store i8* %76, i8** %dpt, align 8
  %77 = load float* %4, align 4
  %78 = load float* %4, align 4
  %79 = fmul float %77, %78
  %80 = fsub float -0.000000e+00, %79
  store float %80, float* %temp, align 4
  %81 = load i32* %mask_size, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %i, align 4
  br label %83

; <label>:83                                      ; preds = %117, %64
  %84 = load i32* %i, align 4
  %85 = load i32* %mask_size, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %120

; <label>:87                                      ; preds = %83
  %88 = load i32* %mask_size, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %j, align 4
  br label %90

; <label>:90                                      ; preds = %113, %87
  %91 = load i32* %j, align 4
  %92 = load i32* %mask_size, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %116

; <label>:94                                      ; preds = %90
  %95 = load i32* %i, align 4
  %96 = load i32* %i, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32* %j, align 4
  %99 = load i32* %j, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = sitofp i32 %101 to float
  %103 = load float* %temp, align 4
  %104 = fdiv float %102, %103
  %105 = fpext float %104 to double
  %106 = call double @exp(double %105) #4
  %107 = fmul double 1.000000e+02, %106
  %108 = fptosi double %107 to i32
  store i32 %108, i32* %x, align 4
  %109 = load i32* %x, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8** %dpt, align 8
  %112 = getelementptr inbounds i8* %111, i32 1
  store i8* %112, i8** %dpt, align 8
  store i8 %110, i8* %111, align 1
  br label %113

; <label>:113                                     ; preds = %94
  %114 = load i32* %j, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %j, align 4
  br label %90

; <label>:116                                     ; preds = %90
  br label %117

; <label>:117                                     ; preds = %116
  %118 = load i32* %i, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %i, align 4
  br label %83

; <label>:120                                     ; preds = %83
  %121 = load i32* %mask_size, align 4
  store i32 %121, i32* %i, align 4
  br label %122

; <label>:122                                     ; preds = %244, %120
  %123 = load i32* %i, align 4
  %124 = load i32* %6, align 4
  %125 = load i32* %mask_size, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %247

; <label>:128                                     ; preds = %122
  %129 = load i32* %mask_size, align 4
  store i32 %129, i32* %j, align 4
  br label %130

; <label>:130                                     ; preds = %240, %128
  %131 = load i32* %j, align 4
  %132 = load i32* %5, align 4
  %133 = load i32* %mask_size, align 4
  %134 = sub nsw i32 %132, %133
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %243

; <label>:136                                     ; preds = %130
  store i32 0, i32* %area, align 4
  store i32 0, i32* %total, align 4
  %137 = load i8** %dp, align 8
  store i8* %137, i8** %dpt, align 8
  %138 = load i8** %3, align 8
  %139 = load i32* %i, align 4
  %140 = load i32* %mask_size, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32* %5, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8* %138, i64 %144
  %146 = load i32* %j, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8* %145, i64 %147
  %149 = load i32* %mask_size, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8* %148, i64 %151
  store i8* %152, i8** %ip, align 8
  %153 = load i32* %i, align 4
  %154 = load i32* %5, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32* %j, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = load i8** %3, align 8
  %160 = getelementptr inbounds i8* %159, i64 %158
  %161 = load i8* %160, align 1
  %162 = zext i8 %161 to i32
  store i32 %162, i32* %centre, align 4
  %163 = load i8** %7, align 8
  %164 = load i32* %centre, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8* %163, i64 %165
  store i8* %166, i8** %cp, align 8
  %167 = load i32* %mask_size, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %y, align 4
  br label %169

; <label>:169                                     ; preds = %213, %136
  %170 = load i32* %y, align 4
  %171 = load i32* %mask_size, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %216

; <label>:173                                     ; preds = %169
  %174 = load i32* %mask_size, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %x, align 4
  br label %176

; <label>:176                                     ; preds = %205, %173
  %177 = load i32* %x, align 4
  %178 = load i32* %mask_size, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %208

; <label>:180                                     ; preds = %176
  %181 = load i8** %ip, align 8
  %182 = getelementptr inbounds i8* %181, i32 1
  store i8* %182, i8** %ip, align 8
  %183 = load i8* %181, align 1
  %184 = zext i8 %183 to i32
  store i32 %184, i32* %brightness, align 4
  %185 = load i8** %dpt, align 8
  %186 = getelementptr inbounds i8* %185, i32 1
  store i8* %186, i8** %dpt, align 8
  %187 = load i8* %185, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8** %cp, align 8
  %190 = load i32* %brightness, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 0, %191
  %193 = getelementptr inbounds i8* %189, i64 %192
  %194 = load i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = mul nsw i32 %188, %195
  store i32 %196, i32* %tmp, align 4
  %197 = load i32* %tmp, align 4
  %198 = load i32* %area, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %area, align 4
  %200 = load i32* %tmp, align 4
  %201 = load i32* %brightness, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32* %total, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %total, align 4
  br label %205

; <label>:205                                     ; preds = %180
  %206 = load i32* %x, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %x, align 4
  br label %176

; <label>:208                                     ; preds = %176
  %209 = load i32* %increment, align 4
  %210 = load i8** %ip, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8* %210, i64 %211
  store i8* %212, i8** %ip, align 8
  br label %213

; <label>:213                                     ; preds = %208
  %214 = load i32* %y, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %y, align 4
  br label %169

; <label>:216                                     ; preds = %169
  %217 = load i32* %area, align 4
  %218 = sub nsw i32 %217, 10000
  store i32 %218, i32* %tmp, align 4
  %219 = load i32* %tmp, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

; <label>:221                                     ; preds = %216
  %222 = load i8** %3, align 8
  %223 = load i32* %i, align 4
  %224 = load i32* %j, align 4
  %225 = load i32* %5, align 4
  %226 = call zeroext i8 @median(i8* %222, i32 %223, i32 %224, i32 %225)
  %227 = load i8** %out, align 8
  %228 = getelementptr inbounds i8* %227, i32 1
  store i8* %228, i8** %out, align 8
  store i8 %226, i8* %227, align 1
  br label %239

; <label>:229                                     ; preds = %216
  %230 = load i32* %total, align 4
  %231 = load i32* %centre, align 4
  %232 = mul nsw i32 %231, 10000
  %233 = sub nsw i32 %230, %232
  %234 = load i32* %tmp, align 4
  %235 = sdiv i32 %233, %234
  %236 = trunc i32 %235 to i8
  %237 = load i8** %out, align 8
  %238 = getelementptr inbounds i8* %237, i32 1
  store i8* %238, i8** %out, align 8
  store i8 %236, i8* %237, align 1
  br label %239

; <label>:239                                     ; preds = %229, %221
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i32* %j, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %j, align 4
  br label %130

; <label>:243                                     ; preds = %130
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32* %i, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %i, align 4
  br label %122

; <label>:247                                     ; preds = %122
  br label %495

; <label>:248                                     ; preds = %47
  store i32 1, i32* %i, align 4
  br label %249

; <label>:249                                     ; preds = %491, %248
  %250 = load i32* %i, align 4
  %251 = load i32* %6, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %494

; <label>:254                                     ; preds = %249
  store i32 1, i32* %j, align 4
  br label %255

; <label>:255                                     ; preds = %487, %254
  %256 = load i32* %j, align 4
  %257 = load i32* %5, align 4
  %258 = sub nsw i32 %257, 1
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %490

; <label>:260                                     ; preds = %255
  store i32 0, i32* %area, align 4
  store i32 0, i32* %total, align 4
  %261 = load i8** %3, align 8
  %262 = load i32* %i, align 4
  %263 = sub nsw i32 %262, 1
  %264 = load i32* %5, align 4
  %265 = mul nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8* %261, i64 %266
  %268 = load i32* %j, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8* %267, i64 %269
  %271 = getelementptr inbounds i8* %270, i64 -1
  store i8* %271, i8** %ip, align 8
  %272 = load i32* %i, align 4
  %273 = load i32* %5, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32* %j, align 4
  %276 = add nsw i32 %274, %275
  %277 = sext i32 %276 to i64
  %278 = load i8** %3, align 8
  %279 = getelementptr inbounds i8* %278, i64 %277
  %280 = load i8* %279, align 1
  %281 = zext i8 %280 to i32
  store i32 %281, i32* %centre, align 4
  %282 = load i8** %7, align 8
  %283 = load i32* %centre, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8* %282, i64 %284
  store i8* %285, i8** %cp, align 8
  %286 = load i8** %ip, align 8
  %287 = getelementptr inbounds i8* %286, i32 1
  store i8* %287, i8** %ip, align 8
  %288 = load i8* %286, align 1
  %289 = zext i8 %288 to i32
  store i32 %289, i32* %brightness, align 4
  %290 = load i8** %cp, align 8
  %291 = load i32* %brightness, align 4
  %292 = sext i32 %291 to i64
  %293 = sub i64 0, %292
  %294 = getelementptr inbounds i8* %290, i64 %293
  %295 = load i8* %294, align 1
  %296 = zext i8 %295 to i32
  store i32 %296, i32* %tmp, align 4
  %297 = load i32* %tmp, align 4
  %298 = load i32* %area, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %area, align 4
  %300 = load i32* %tmp, align 4
  %301 = load i32* %brightness, align 4
  %302 = mul nsw i32 %300, %301
  %303 = load i32* %total, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %total, align 4
  %305 = load i8** %ip, align 8
  %306 = getelementptr inbounds i8* %305, i32 1
  store i8* %306, i8** %ip, align 8
  %307 = load i8* %305, align 1
  %308 = zext i8 %307 to i32
  store i32 %308, i32* %brightness, align 4
  %309 = load i8** %cp, align 8
  %310 = load i32* %brightness, align 4
  %311 = sext i32 %310 to i64
  %312 = sub i64 0, %311
  %313 = getelementptr inbounds i8* %309, i64 %312
  %314 = load i8* %313, align 1
  %315 = zext i8 %314 to i32
  store i32 %315, i32* %tmp, align 4
  %316 = load i32* %tmp, align 4
  %317 = load i32* %area, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %area, align 4
  %319 = load i32* %tmp, align 4
  %320 = load i32* %brightness, align 4
  %321 = mul nsw i32 %319, %320
  %322 = load i32* %total, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %total, align 4
  %324 = load i8** %ip, align 8
  %325 = load i8* %324, align 1
  %326 = zext i8 %325 to i32
  store i32 %326, i32* %brightness, align 4
  %327 = load i8** %cp, align 8
  %328 = load i32* %brightness, align 4
  %329 = sext i32 %328 to i64
  %330 = sub i64 0, %329
  %331 = getelementptr inbounds i8* %327, i64 %330
  %332 = load i8* %331, align 1
  %333 = zext i8 %332 to i32
  store i32 %333, i32* %tmp, align 4
  %334 = load i32* %tmp, align 4
  %335 = load i32* %area, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %area, align 4
  %337 = load i32* %tmp, align 4
  %338 = load i32* %brightness, align 4
  %339 = mul nsw i32 %337, %338
  %340 = load i32* %total, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* %total, align 4
  %342 = load i32* %5, align 4
  %343 = sub nsw i32 %342, 2
  %344 = load i8** %ip, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8* %344, i64 %345
  store i8* %346, i8** %ip, align 8
  %347 = load i8** %ip, align 8
  %348 = getelementptr inbounds i8* %347, i32 1
  store i8* %348, i8** %ip, align 8
  %349 = load i8* %347, align 1
  %350 = zext i8 %349 to i32
  store i32 %350, i32* %brightness, align 4
  %351 = load i8** %cp, align 8
  %352 = load i32* %brightness, align 4
  %353 = sext i32 %352 to i64
  %354 = sub i64 0, %353
  %355 = getelementptr inbounds i8* %351, i64 %354
  %356 = load i8* %355, align 1
  %357 = zext i8 %356 to i32
  store i32 %357, i32* %tmp, align 4
  %358 = load i32* %tmp, align 4
  %359 = load i32* %area, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %area, align 4
  %361 = load i32* %tmp, align 4
  %362 = load i32* %brightness, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load i32* %total, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %total, align 4
  %366 = load i8** %ip, align 8
  %367 = getelementptr inbounds i8* %366, i32 1
  store i8* %367, i8** %ip, align 8
  %368 = load i8* %366, align 1
  %369 = zext i8 %368 to i32
  store i32 %369, i32* %brightness, align 4
  %370 = load i8** %cp, align 8
  %371 = load i32* %brightness, align 4
  %372 = sext i32 %371 to i64
  %373 = sub i64 0, %372
  %374 = getelementptr inbounds i8* %370, i64 %373
  %375 = load i8* %374, align 1
  %376 = zext i8 %375 to i32
  store i32 %376, i32* %tmp, align 4
  %377 = load i32* %tmp, align 4
  %378 = load i32* %area, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %area, align 4
  %380 = load i32* %tmp, align 4
  %381 = load i32* %brightness, align 4
  %382 = mul nsw i32 %380, %381
  %383 = load i32* %total, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %total, align 4
  %385 = load i8** %ip, align 8
  %386 = load i8* %385, align 1
  %387 = zext i8 %386 to i32
  store i32 %387, i32* %brightness, align 4
  %388 = load i8** %cp, align 8
  %389 = load i32* %brightness, align 4
  %390 = sext i32 %389 to i64
  %391 = sub i64 0, %390
  %392 = getelementptr inbounds i8* %388, i64 %391
  %393 = load i8* %392, align 1
  %394 = zext i8 %393 to i32
  store i32 %394, i32* %tmp, align 4
  %395 = load i32* %tmp, align 4
  %396 = load i32* %area, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %area, align 4
  %398 = load i32* %tmp, align 4
  %399 = load i32* %brightness, align 4
  %400 = mul nsw i32 %398, %399
  %401 = load i32* %total, align 4
  %402 = add nsw i32 %401, %400
  store i32 %402, i32* %total, align 4
  %403 = load i32* %5, align 4
  %404 = sub nsw i32 %403, 2
  %405 = load i8** %ip, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i8* %405, i64 %406
  store i8* %407, i8** %ip, align 8
  %408 = load i8** %ip, align 8
  %409 = getelementptr inbounds i8* %408, i32 1
  store i8* %409, i8** %ip, align 8
  %410 = load i8* %408, align 1
  %411 = zext i8 %410 to i32
  store i32 %411, i32* %brightness, align 4
  %412 = load i8** %cp, align 8
  %413 = load i32* %brightness, align 4
  %414 = sext i32 %413 to i64
  %415 = sub i64 0, %414
  %416 = getelementptr inbounds i8* %412, i64 %415
  %417 = load i8* %416, align 1
  %418 = zext i8 %417 to i32
  store i32 %418, i32* %tmp, align 4
  %419 = load i32* %tmp, align 4
  %420 = load i32* %area, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %area, align 4
  %422 = load i32* %tmp, align 4
  %423 = load i32* %brightness, align 4
  %424 = mul nsw i32 %422, %423
  %425 = load i32* %total, align 4
  %426 = add nsw i32 %425, %424
  store i32 %426, i32* %total, align 4
  %427 = load i8** %ip, align 8
  %428 = getelementptr inbounds i8* %427, i32 1
  store i8* %428, i8** %ip, align 8
  %429 = load i8* %427, align 1
  %430 = zext i8 %429 to i32
  store i32 %430, i32* %brightness, align 4
  %431 = load i8** %cp, align 8
  %432 = load i32* %brightness, align 4
  %433 = sext i32 %432 to i64
  %434 = sub i64 0, %433
  %435 = getelementptr inbounds i8* %431, i64 %434
  %436 = load i8* %435, align 1
  %437 = zext i8 %436 to i32
  store i32 %437, i32* %tmp, align 4
  %438 = load i32* %tmp, align 4
  %439 = load i32* %area, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %area, align 4
  %441 = load i32* %tmp, align 4
  %442 = load i32* %brightness, align 4
  %443 = mul nsw i32 %441, %442
  %444 = load i32* %total, align 4
  %445 = add nsw i32 %444, %443
  store i32 %445, i32* %total, align 4
  %446 = load i8** %ip, align 8
  %447 = load i8* %446, align 1
  %448 = zext i8 %447 to i32
  store i32 %448, i32* %brightness, align 4
  %449 = load i8** %cp, align 8
  %450 = load i32* %brightness, align 4
  %451 = sext i32 %450 to i64
  %452 = sub i64 0, %451
  %453 = getelementptr inbounds i8* %449, i64 %452
  %454 = load i8* %453, align 1
  %455 = zext i8 %454 to i32
  store i32 %455, i32* %tmp, align 4
  %456 = load i32* %tmp, align 4
  %457 = load i32* %area, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %area, align 4
  %459 = load i32* %tmp, align 4
  %460 = load i32* %brightness, align 4
  %461 = mul nsw i32 %459, %460
  %462 = load i32* %total, align 4
  %463 = add nsw i32 %462, %461
  store i32 %463, i32* %total, align 4
  %464 = load i32* %area, align 4
  %465 = sub nsw i32 %464, 100
  store i32 %465, i32* %tmp, align 4
  %466 = load i32* %tmp, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %476

; <label>:468                                     ; preds = %260
  %469 = load i8** %3, align 8
  %470 = load i32* %i, align 4
  %471 = load i32* %j, align 4
  %472 = load i32* %5, align 4
  %473 = call zeroext i8 @median(i8* %469, i32 %470, i32 %471, i32 %472)
  %474 = load i8** %out, align 8
  %475 = getelementptr inbounds i8* %474, i32 1
  store i8* %475, i8** %out, align 8
  store i8 %473, i8* %474, align 1
  br label %486

; <label>:476                                     ; preds = %260
  %477 = load i32* %total, align 4
  %478 = load i32* %centre, align 4
  %479 = mul nsw i32 %478, 100
  %480 = sub nsw i32 %477, %479
  %481 = load i32* %tmp, align 4
  %482 = sdiv i32 %480, %481
  %483 = trunc i32 %482 to i8
  %484 = load i8** %out, align 8
  %485 = getelementptr inbounds i8* %484, i32 1
  store i8* %485, i8** %out, align 8
  store i8 %483, i8* %484, align 1
  br label %486

; <label>:486                                     ; preds = %476, %468
  br label %487

; <label>:487                                     ; preds = %486
  %488 = load i32* %j, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %j, align 4
  br label %255

; <label>:490                                     ; preds = %255
  br label %491

; <label>:491                                     ; preds = %490
  %492 = load i32* %i, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %i, align 4
  br label %249

; <label>:494                                     ; preds = %249
  br label %495

; <label>:495                                     ; preds = %494, %247
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %ofp = alloca %struct._IO_FILE*, align 8
  %filename = alloca [80 x i8], align 16
  %tcp = alloca i8*, align 8
  %in = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %mid = alloca i8*, align 8
  %dt = alloca float, align 4
  %r = alloca i32*, align 8
  %argindex = alloca i32, align 4
  %bt = alloca i32, align 4
  %principle = alloca i32, align 4
  %thin_post_proc = alloca i32, align 4
  %three_by_three = alloca i32, align 4
  %drawing_mode = alloca i32, align 4
  %susan_quick = alloca i32, align 4
  %max_no_corners = alloca i32, align 4
  %max_no_edges = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store float 4.000000e+00, float* %dt, align 4
  store i32 3, i32* %argindex, align 4
  store i32 20, i32* %bt, align 4
  store i32 0, i32* %principle, align 4
  store i32 1, i32* %thin_post_proc, align 4
  store i32 0, i32* %three_by_three, align 4
  store i32 0, i32* %drawing_mode, align 4
  store i32 0, i32* %susan_quick, align 4
  store i32 1850, i32* %max_no_corners, align 4
  store i32 2650, i32* %max_no_edges, align 4
  store i32 0, i32* %mode, align 4
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 @usage()
  br label %8

; <label>:8                                       ; preds = %6, %0
  %9 = load i8*** %3, align 8
  %10 = getelementptr inbounds i8** %9, i64 1
  %11 = load i8** %10, align 8
  call void @get_image(i8* %11, i8** %in, i32* %x_size, i32* %y_size)
  br label %12

; <label>:12                                      ; preds = %75, %8
  %13 = load i32* %argindex, align 4
  %14 = load i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %78

; <label>:16                                      ; preds = %12
  %17 = load i32* %argindex, align 4
  %18 = sext i32 %17 to i64
  %19 = load i8*** %3, align 8
  %20 = getelementptr inbounds i8** %19, i64 %18
  %21 = load i8** %20, align 8
  store i8* %21, i8** %tcp, align 8
  %22 = load i8** %tcp, align 8
  %23 = load i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %73

; <label>:26                                      ; preds = %16
  %27 = load i8** %tcp, align 8
  %28 = getelementptr inbounds i8* %27, i32 1
  store i8* %28, i8** %tcp, align 8
  %29 = load i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %72 [
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
  ]

; <label>:31                                      ; preds = %26
  store i32 0, i32* %mode, align 4
  br label %72

; <label>:32                                      ; preds = %26
  store i32 1, i32* %mode, align 4
  br label %72

; <label>:33                                      ; preds = %26
  store i32 2, i32* %mode, align 4
  br label %72

; <label>:34                                      ; preds = %26
  store i32 1, i32* %principle, align 4
  br label %72

; <label>:35                                      ; preds = %26
  store i32 0, i32* %thin_post_proc, align 4
  br label %72

; <label>:36                                      ; preds = %26
  store i32 1, i32* %drawing_mode, align 4
  br label %72

; <label>:37                                      ; preds = %26
  store i32 1, i32* %three_by_three, align 4
  br label %72

; <label>:38                                      ; preds = %26
  store i32 1, i32* %susan_quick, align 4
  br label %72

; <label>:39                                      ; preds = %26
  %40 = load i32* %argindex, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %argindex, align 4
  %42 = load i32* %2, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %39
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str29, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:46                                      ; preds = %39
  %47 = load i32* %argindex, align 4
  %48 = sext i32 %47 to i64
  %49 = load i8*** %3, align 8
  %50 = getelementptr inbounds i8** %49, i64 %48
  %51 = load i8** %50, align 8
  %52 = call double @atof(i8* %51) #7
  %53 = fptrunc double %52 to float
  store float %53, float* %dt, align 4
  %54 = load float* %dt, align 4
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %46
  store i32 1, i32* %three_by_three, align 4
  br label %57

; <label>:57                                      ; preds = %56, %46
  br label %72

; <label>:58                                      ; preds = %26
  %59 = load i32* %argindex, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %argindex, align 4
  %61 = load i32* %2, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %58
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str30, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:65                                      ; preds = %58
  %66 = load i32* %argindex, align 4
  %67 = sext i32 %66 to i64
  %68 = load i8*** %3, align 8
  %69 = getelementptr inbounds i8** %68, i64 %67
  %70 = load i8** %69, align 8
  %71 = call i32 @atoi(i8* %70) #7
  store i32 %71, i32* %bt, align 4
  br label %72

; <label>:72                                      ; preds = %26, %65, %57, %38, %37, %36, %35, %34, %33, %32, %31
  br label %75

; <label>:73                                      ; preds = %16
  %74 = call i32 @usage()
  br label %75

; <label>:75                                      ; preds = %73, %72
  %76 = load i32* %argindex, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %argindex, align 4
  br label %12

; <label>:78                                      ; preds = %12
  %79 = load i32* %principle, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

; <label>:81                                      ; preds = %78
  %82 = load i32* %mode, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %81
  store i32 1, i32* %mode, align 4
  br label %85

; <label>:85                                      ; preds = %84, %81, %78
  %86 = load i32* %mode, align 4
  switch i32 %86, label %100 [
    i32 0, label %87
    i32 1, label %96
    i32 2, label %98
  ]

; <label>:87                                      ; preds = %85
  %88 = load i32* %bt, align 4
  call void @setup_brightness_lut(i8** %bp, i32 %88, i32 2)
  %89 = load i32* %three_by_three, align 4
  %90 = load i8** %in, align 8
  %91 = load float* %dt, align 4
  %92 = fpext float %91 to double
  %93 = load i32* %x_size, align 4
  %94 = load i32* %y_size, align 4
  %95 = load i8** %bp, align 8
  call void @susan_smoothing(i32 %89, i8* %90, double %92, i32 %93, i32 %94, i8* %95)
  br label %100

; <label>:96                                      ; preds = %85
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0))
  br label %100

; <label>:98                                      ; preds = %85
  %99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str32, i32 0, i32 0))
  br label %100

; <label>:100                                     ; preds = %85, %98, %96, %87
  %101 = load i8*** %3, align 8
  %102 = getelementptr inbounds i8** %101, i64 2
  %103 = load i8** %102, align 8
  %104 = load i8** %in, align 8
  %105 = load i32* %x_size, align 4
  %106 = load i32* %y_size, align 4
  %107 = call i32 @put_image(i8* %103, i8* %104, i32 %105, i32 %106)
  %108 = load i32* %1
  ret i32 %108
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

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
