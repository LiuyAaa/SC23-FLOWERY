; ModuleID = 'external.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"**********************SDC DETECTED!check-flag**********************\0A\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"**********************SDC DETECTED!True**********************\0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"**********************SDC DETECTED!False**********************\0A\00", align 1
@.str3 = private unnamed_addr constant [62 x i8] c"**********************SDC DETECTED!Cmp**********************\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @check_flag() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 99) #3
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @checkerT(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([63 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 99) #3
  unreachable

; <label>:10                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @checkerF(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0))
  call void @exit(i32 99) #3
  unreachable

; <label>:10                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @checker(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 99) #3
  unreachable

; <label>:8                                       ; preds = %0
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
