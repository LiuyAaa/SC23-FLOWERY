; ModuleID = 'dhry-mea-all.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }
%struct.tms = type { i64, i64, i64, i64 }

@Second_Record = common global %struct.record zeroinitializer, align 8
@Next_Pointer_Glob = common global %struct.record* null, align 8
@First_Record = common global %struct.record zeroinitializer, align 8
@Pointer_Glob = common global %struct.record* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"Dhrystone Benchmark (March 84), Version C / 2\0A\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"(without register variables)\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"All times are CPU times, in microseconds\0A\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@Bool_Glob = common global i32 0, align 4
@Array_Glob_1 = common global [30 x i32] zeroinitializer, align 16
@Array_Glob_2 = common global [30 x [30 x i32]] zeroinitializer, align 16
@Char_Glob_2 = common global i8 0, align 1
@.str7 = private unnamed_addr constant [22 x i8] c"User Time for run %2d\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c": %4.4f \0A\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"System Time for run %2d\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Average User Time: %4.4f \0A\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"Average System Time: %4.4f \0A\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Average Total Time: %4.4f \0A\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"Minimum User Time: %4.4f \0A\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"Minimum System Time: %4.4f \0A\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"Minimum Total Time: %4.4f \0A\00", align 1
@Char_Glob_1 = common global i8 0, align 1
@Int_Glob = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %Int_Loc_1 = alloca i32, align 4
  %Int_Loc_2 = alloca i32, align 4
  %Int_Loc_3 = alloca i32, align 4
  %Char_Index = alloca i8, align 1
  %Enum_Loc = alloca i32, align 4
  %String_Loc_1 = alloca [31 x i8], align 16
  %String_Loc_2 = alloca [31 x i8], align 16
  %begin_time = alloca %struct.tms, align 8
  %end_time = alloca %struct.tms, align 8
  %Meas_Index = alloca i32, align 4
  %Run_Index = alloca i32, align 4
  %User_Time = alloca float, align 4
  %System_Time = alloca float, align 4
  %Empty_Loop_User_Time = alloca float, align 4
  %Empty_Loop_System_Time = alloca float, align 4
  %Total_Time = alloca float, align 4
  %Sum_User_Time = alloca float, align 4
  %Sum_System_Time = alloca float, align 4
  %Sum_Total_Time = alloca float, align 4
  %Min_User_Time = alloca float, align 4
  %Min_System_Time = alloca float, align 4
  %Min_Total_Time = alloca float, align 4
  %Aver_User_Time = alloca float, align 4
  %Aver_System_Time = alloca float, align 4
  %Aver_Total_Time = alloca float, align 4
  store i32 0, i32* %1
  store %struct.record* @Second_Record, %struct.record** @Next_Pointer_Glob, align 8
  store %struct.record* @First_Record, %struct.record** @Pointer_Glob, align 8
  %2 = load %struct.record** @Next_Pointer_Glob, align 8
  %3 = load %struct.record** @Pointer_Glob, align 8
  %4 = getelementptr inbounds %struct.record* %3, i32 0, i32 0
  store %struct.record* %2, %struct.record** %4, align 8
  %5 = load %struct.record** @Pointer_Glob, align 8
  %6 = getelementptr inbounds %struct.record* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load %struct.record** @Pointer_Glob, align 8
  %8 = getelementptr inbounds %struct.record* %7, i32 0, i32 2
  %9 = bitcast %union.anon* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon* %9, i32 0, i32 0
  store i32 2, i32* %10, align 4
  %11 = load %struct.record** @Pointer_Glob, align 8
  %12 = getelementptr inbounds %struct.record* %11, i32 0, i32 2
  %13 = bitcast %union.anon* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon* %13, i32 0, i32 1
  store i32 40, i32* %14, align 4
  %15 = load %struct.record** @Pointer_Glob, align 8
  %16 = getelementptr inbounds %struct.record* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon* %17, i32 0, i32 2
  %19 = getelementptr inbounds [31 x i8]* %18, i32 0, i32 0
  %20 = call i8* @strcpy(i8* %19, i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0))
  %21 = getelementptr inbounds [31 x i8]* %String_Loc_1, i32 0, i32 0
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0))
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str3, i32 0, i32 0))
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str4, i32 0, i32 0))
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0))
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store float 0.000000e+00, float* %Sum_User_Time, align 4
  store float 0.000000e+00, float* %Sum_System_Time, align 4
  store float 0.000000e+00, float* %Sum_Total_Time, align 4
  store float 1.000000e+06, float* %Min_User_Time, align 4
  store float 1.000000e+06, float* %Min_System_Time, align 4
  store float 1.000000e+06, float* %Min_Total_Time, align 4
  store i32 1, i32* %Run_Index, align 4
  br label %29

; <label>:29                                      ; preds = %197, %0
  %30 = load i32* %Run_Index, align 4
  %31 = icmp sle i32 %30, 100
  br i1 %31, label %32, label %200

; <label>:32                                      ; preds = %29
  %33 = call i64 @times(%struct.tms* %begin_time) #3
  store i32 1, i32* %Meas_Index, align 4
  br label %34

; <label>:34                                      ; preds = %100, %32
  %35 = load i32* %Meas_Index, align 4
  %36 = icmp sle i32 %35, 10000
  br i1 %36, label %37, label %103

; <label>:37                                      ; preds = %34
  %38 = call i32 @Proc_5()
  %39 = call i32 @Proc_4()
  store i32 2, i32* %Int_Loc_1, align 4
  store i32 3, i32* %Int_Loc_2, align 4
  %40 = getelementptr inbounds [31 x i8]* %String_Loc_2, i32 0, i32 0
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([31 x i8]* @.str6, i32 0, i32 0))
  store i32 1, i32* %Enum_Loc, align 4
  %42 = getelementptr inbounds [31 x i8]* %String_Loc_1, i32 0, i32 0
  %43 = getelementptr inbounds [31 x i8]* %String_Loc_2, i32 0, i32 0
  %44 = call i32 @Func_2(i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @Bool_Glob, align 4
  br label %48

; <label>:48                                      ; preds = %52, %37
  %49 = load i32* %Int_Loc_1, align 4
  %50 = load i32* %Int_Loc_2, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %62

; <label>:52                                      ; preds = %48
  %53 = load i32* %Int_Loc_1, align 4
  %54 = mul nsw i32 5, %53
  %55 = load i32* %Int_Loc_2, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %Int_Loc_3, align 4
  %57 = load i32* %Int_Loc_1, align 4
  %58 = load i32* %Int_Loc_2, align 4
  %59 = call i32 @Proc_7(i32 %57, i32 %58, i32* %Int_Loc_3)
  %60 = load i32* %Int_Loc_1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %Int_Loc_1, align 4
  br label %48

; <label>:62                                      ; preds = %48
  %63 = load i32* %Int_Loc_1, align 4
  %64 = load i32* %Int_Loc_3, align 4
  %65 = call i32 @Proc_8(i32* getelementptr inbounds ([30 x i32]* @Array_Glob_1, i32 0, i32 0), [30 x i32]* getelementptr inbounds ([30 x [30 x i32]]* @Array_Glob_2, i32 0, i32 0), i32 %63, i32 %64)
  %66 = load %struct.record** @Pointer_Glob, align 8
  %67 = call i32 @Proc_1(%struct.record* %66)
  store i8 65, i8* %Char_Index, align 1
  br label %68

; <label>:68                                      ; preds = %83, %62
  %69 = load i8* %Char_Index, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8* @Char_Glob_2, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %86

; <label>:74                                      ; preds = %68
  %75 = load i32* %Enum_Loc, align 4
  %76 = load i8* %Char_Index, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 @Func_1(i32 %77, i32 67)
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %82

; <label>:80                                      ; preds = %74
  %81 = call i32 @Proc_6(i32 0, i32* %Enum_Loc)
  br label %82

; <label>:82                                      ; preds = %80, %74
  br label %83

; <label>:83                                      ; preds = %82
  %84 = load i8* %Char_Index, align 1
  %85 = add i8 %84, 1
  store i8 %85, i8* %Char_Index, align 1
  br label %68

; <label>:86                                      ; preds = %68
  %87 = load i32* %Int_Loc_2, align 4
  %88 = load i32* %Int_Loc_1, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %Int_Loc_3, align 4
  %90 = load i32* %Int_Loc_3, align 4
  %91 = load i32* %Int_Loc_1, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %Int_Loc_2, align 4
  %93 = load i32* %Int_Loc_3, align 4
  %94 = load i32* %Int_Loc_2, align 4
  %95 = sub nsw i32 %93, %94
  %96 = mul nsw i32 7, %95
  %97 = load i32* %Int_Loc_1, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %Int_Loc_2, align 4
  %99 = call i32 @Proc_2(i32* %Int_Loc_1)
  br label %100

; <label>:100                                     ; preds = %86
  %101 = load i32* %Meas_Index, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %Meas_Index, align 4
  br label %34

; <label>:103                                     ; preds = %34
  %104 = call i64 @times(%struct.tms* %end_time) #3
  %105 = getelementptr inbounds %struct.tms* %end_time, i32 0, i32 0
  %106 = load i64* %105, align 8
  %107 = getelementptr inbounds %struct.tms* %begin_time, i32 0, i32 0
  %108 = load i64* %107, align 8
  %109 = sub nsw i64 %106, %108
  %110 = sitofp i64 %109 to double
  %111 = fmul double %110, 1.000000e+06
  %112 = fdiv double %111, 6.000000e+05
  %113 = fptrunc double %112 to float
  store float %113, float* %User_Time, align 4
  %114 = getelementptr inbounds %struct.tms* %end_time, i32 0, i32 1
  %115 = load i64* %114, align 8
  %116 = getelementptr inbounds %struct.tms* %begin_time, i32 0, i32 1
  %117 = load i64* %116, align 8
  %118 = sub nsw i64 %115, %117
  %119 = sitofp i64 %118 to double
  %120 = fmul double %119, 1.000000e+06
  %121 = fdiv double %120, 6.000000e+05
  %122 = fptrunc double %121 to float
  store float %122, float* %System_Time, align 4
  %123 = call i64 @times(%struct.tms* %begin_time) #3
  store i32 1, i32* %Meas_Index, align 4
  br label %124

; <label>:124                                     ; preds = %128, %103
  %125 = load i32* %Meas_Index, align 4
  %126 = icmp sle i32 %125, 10000
  br i1 %126, label %127, label %131

; <label>:127                                     ; preds = %124
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32* %Meas_Index, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %Meas_Index, align 4
  br label %124

; <label>:131                                     ; preds = %124
  %132 = call i64 @times(%struct.tms* %end_time) #3
  %133 = getelementptr inbounds %struct.tms* %end_time, i32 0, i32 0
  %134 = load i64* %133, align 8
  %135 = getelementptr inbounds %struct.tms* %begin_time, i32 0, i32 0
  %136 = load i64* %135, align 8
  %137 = sub nsw i64 %134, %136
  %138 = sitofp i64 %137 to double
  %139 = fmul double %138, 1.000000e+06
  %140 = fdiv double %139, 6.000000e+05
  %141 = fptrunc double %140 to float
  store float %141, float* %Empty_Loop_User_Time, align 4
  %142 = getelementptr inbounds %struct.tms* %end_time, i32 0, i32 1
  %143 = load i64* %142, align 8
  %144 = getelementptr inbounds %struct.tms* %begin_time, i32 0, i32 1
  %145 = load i64* %144, align 8
  %146 = sub nsw i64 %143, %145
  %147 = sitofp i64 %146 to double
  %148 = fmul double %147, 1.000000e+06
  %149 = fdiv double %148, 6.000000e+05
  %150 = fptrunc double %149 to float
  store float %150, float* %Empty_Loop_System_Time, align 4
  %151 = load float* %User_Time, align 4
  %152 = load float* %Empty_Loop_User_Time, align 4
  %153 = fsub float %151, %152
  store float %153, float* %User_Time, align 4
  %154 = load float* %System_Time, align 4
  %155 = load float* %Empty_Loop_System_Time, align 4
  %156 = fsub float %154, %155
  store float %156, float* %System_Time, align 4
  %157 = load float* %User_Time, align 4
  %158 = load float* %System_Time, align 4
  %159 = fadd float %157, %158
  store float %159, float* %Total_Time, align 4
  %160 = load i32* %Run_Index, align 4
  %161 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i32 0, i32 0), i32 %160)
  %162 = load float* %User_Time, align 4
  %163 = fpext float %162 to double
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), double %163)
  %165 = load i32* %Run_Index, align 4
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str9, i32 0, i32 0), i32 %165)
  %167 = load float* %System_Time, align 4
  %168 = fpext float %167 to double
  %169 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), double %168)
  %170 = load float* %User_Time, align 4
  %171 = load float* %Sum_User_Time, align 4
  %172 = fadd float %171, %170
  store float %172, float* %Sum_User_Time, align 4
  %173 = load float* %System_Time, align 4
  %174 = load float* %Sum_System_Time, align 4
  %175 = fadd float %174, %173
  store float %175, float* %Sum_System_Time, align 4
  %176 = load float* %Total_Time, align 4
  %177 = load float* %Sum_Total_Time, align 4
  %178 = fadd float %177, %176
  store float %178, float* %Sum_Total_Time, align 4
  %179 = load float* %User_Time, align 4
  %180 = load float* %Min_User_Time, align 4
  %181 = fcmp olt float %179, %180
  br i1 %181, label %182, label %184

; <label>:182                                     ; preds = %131
  %183 = load float* %User_Time, align 4
  store float %183, float* %Min_User_Time, align 4
  br label %184

; <label>:184                                     ; preds = %182, %131
  %185 = load float* %System_Time, align 4
  %186 = load float* %Min_System_Time, align 4
  %187 = fcmp olt float %185, %186
  br i1 %187, label %188, label %190

; <label>:188                                     ; preds = %184
  %189 = load float* %System_Time, align 4
  store float %189, float* %Min_System_Time, align 4
  br label %190

; <label>:190                                     ; preds = %188, %184
  %191 = load float* %Total_Time, align 4
  %192 = load float* %Min_Total_Time, align 4
  %193 = fcmp olt float %191, %192
  br i1 %193, label %194, label %196

; <label>:194                                     ; preds = %190
  %195 = load float* %Total_Time, align 4
  store float %195, float* %Min_Total_Time, align 4
  br label %196

; <label>:196                                     ; preds = %194, %190
  br label %197

; <label>:197                                     ; preds = %196
  %198 = load i32* %Run_Index, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %Run_Index, align 4
  br label %29

; <label>:200                                     ; preds = %29
  %201 = load float* %Sum_User_Time, align 4
  %202 = fdiv float %201, 1.000000e+02
  store float %202, float* %Aver_User_Time, align 4
  %203 = load float* %Sum_System_Time, align 4
  %204 = fdiv float %203, 1.000000e+02
  store float %204, float* %Aver_System_Time, align 4
  %205 = load float* %Sum_Total_Time, align 4
  %206 = fdiv float %205, 1.000000e+02
  store float %206, float* %Aver_Total_Time, align 4
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %208 = load float* %Aver_User_Time, align 4
  %209 = fpext float %208 to double
  %210 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str10, i32 0, i32 0), double %209)
  %211 = load float* %Aver_System_Time, align 4
  %212 = fpext float %211 to double
  %213 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str11, i32 0, i32 0), double %212)
  %214 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %215 = load float* %Aver_Total_Time, align 4
  %216 = fpext float %215 to double
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str12, i32 0, i32 0), double %216)
  %218 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %219 = load float* %Min_User_Time, align 4
  %220 = fpext float %219 to double
  %221 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str13, i32 0, i32 0), double %220)
  %222 = load float* %Min_System_Time, align 4
  %223 = fpext float %222 to double
  %224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str14, i32 0, i32 0), double %223)
  %225 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %226 = load float* %Min_Total_Time, align 4
  %227 = fpext float %226 to double
  %228 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str15, i32 0, i32 0), double %227)
  %229 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %230 = load i32* %1
  ret i32 %230
}

declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #2

; Function Attrs: nounwind uwtable
define i32 @Proc_1(%struct.record* %Pointer_Par_Val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record*, align 8
  %Next_Record = alloca %struct.record*, align 8
  store %struct.record* %Pointer_Par_Val, %struct.record** %2, align 8
  %3 = load %struct.record** %2, align 8
  %4 = getelementptr inbounds %struct.record* %3, i32 0, i32 0
  %5 = load %struct.record** %4, align 8
  store %struct.record* %5, %struct.record** %Next_Record, align 8
  %6 = load %struct.record** %2, align 8
  %7 = getelementptr inbounds %struct.record* %6, i32 0, i32 0
  %8 = load %struct.record** %7, align 8
  %9 = load %struct.record** @Pointer_Glob, align 8
  %10 = bitcast %struct.record* %8 to i8*
  %11 = bitcast %struct.record* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 56, i32 8, i1 false)
  %12 = load %struct.record** %2, align 8
  %13 = getelementptr inbounds %struct.record* %12, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon* %14, i32 0, i32 1
  store i32 5, i32* %15, align 4
  %16 = load %struct.record** %2, align 8
  %17 = getelementptr inbounds %struct.record* %16, i32 0, i32 2
  %18 = bitcast %union.anon* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon* %18, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = load %struct.record** %Next_Record, align 8
  %22 = getelementptr inbounds %struct.record* %21, i32 0, i32 2
  %23 = bitcast %union.anon* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.record** %2, align 8
  %26 = getelementptr inbounds %struct.record* %25, i32 0, i32 0
  %27 = load %struct.record** %26, align 8
  %28 = load %struct.record** %Next_Record, align 8
  %29 = getelementptr inbounds %struct.record* %28, i32 0, i32 0
  store %struct.record* %27, %struct.record** %29, align 8
  %30 = load %struct.record** %Next_Record, align 8
  %31 = getelementptr inbounds %struct.record* %30, i32 0, i32 0
  %32 = call i32 @Proc_3(%struct.record** %31)
  %33 = load %struct.record** %Next_Record, align 8
  %34 = getelementptr inbounds %struct.record* %33, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

; <label>:37                                      ; preds = %0
  %38 = load %struct.record** %Next_Record, align 8
  %39 = getelementptr inbounds %struct.record* %38, i32 0, i32 2
  %40 = bitcast %union.anon* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon* %40, i32 0, i32 1
  store i32 6, i32* %41, align 4
  %42 = load %struct.record** %2, align 8
  %43 = getelementptr inbounds %struct.record* %42, i32 0, i32 2
  %44 = bitcast %union.anon* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon* %44, i32 0, i32 0
  %46 = load i32* %45, align 4
  %47 = load %struct.record** %Next_Record, align 8
  %48 = getelementptr inbounds %struct.record* %47, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon* %49, i32 0, i32 0
  %51 = call i32 @Proc_6(i32 %46, i32* %50)
  %52 = load %struct.record** @Pointer_Glob, align 8
  %53 = getelementptr inbounds %struct.record* %52, i32 0, i32 0
  %54 = load %struct.record** %53, align 8
  %55 = load %struct.record** %Next_Record, align 8
  %56 = getelementptr inbounds %struct.record* %55, i32 0, i32 0
  store %struct.record* %54, %struct.record** %56, align 8
  %57 = load %struct.record** %Next_Record, align 8
  %58 = getelementptr inbounds %struct.record* %57, i32 0, i32 2
  %59 = bitcast %union.anon* %58 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon* %59, i32 0, i32 1
  %61 = load i32* %60, align 4
  %62 = load %struct.record** %Next_Record, align 8
  %63 = getelementptr inbounds %struct.record* %62, i32 0, i32 2
  %64 = bitcast %union.anon* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon* %64, i32 0, i32 1
  %66 = call i32 @Proc_7(i32 %61, i32 10, i32* %65)
  br label %74

; <label>:67                                      ; preds = %0
  %68 = load %struct.record** %2, align 8
  %69 = load %struct.record** %2, align 8
  %70 = getelementptr inbounds %struct.record* %69, i32 0, i32 0
  %71 = load %struct.record** %70, align 8
  %72 = bitcast %struct.record* %68 to i8*
  %73 = bitcast %struct.record* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 56, i32 8, i1 false)
  br label %74

; <label>:74                                      ; preds = %67, %37
  %75 = load i32* %1
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @Proc_2(i32* %Int_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  %Enum_Loc = alloca i32, align 4
  store i32* %Int_Par_Ref, i32** %2, align 8
  %3 = load i32** %2, align 8
  %4 = load i32* %3, align 4
  %5 = add nsw i32 %4, 10
  store i32 %5, i32* %Int_Loc, align 4
  br label %6

; <label>:6                                       ; preds = %18, %0
  %7 = load i8* @Char_Glob_1, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 65
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i32* %Int_Loc, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %Int_Loc, align 4
  %13 = load i32* %Int_Loc, align 4
  %14 = load i32* @Int_Glob, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32** %2, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %Enum_Loc, align 4
  br label %17

; <label>:17                                      ; preds = %10, %6
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %Enum_Loc, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %6, label %21

; <label>:21                                      ; preds = %18
  %22 = load i32* %1
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @Proc_3(%struct.record** %Pointer_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record**, align 8
  store %struct.record** %Pointer_Par_Ref, %struct.record*** %2, align 8
  %3 = load %struct.record** @Pointer_Glob, align 8
  %4 = icmp ne %struct.record* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.record** @Pointer_Glob, align 8
  %7 = getelementptr inbounds %struct.record* %6, i32 0, i32 0
  %8 = load %struct.record** %7, align 8
  %9 = load %struct.record*** %2, align 8
  store %struct.record* %8, %struct.record** %9, align 8
  br label %11

; <label>:10                                      ; preds = %0
  store i32 100, i32* @Int_Glob, align 4
  br label %11

; <label>:11                                      ; preds = %10, %5
  %12 = load i32* @Int_Glob, align 4
  %13 = load %struct.record** @Pointer_Glob, align 8
  %14 = getelementptr inbounds %struct.record* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon* %15, i32 0, i32 1
  %17 = call i32 @Proc_7(i32 10, i32 %12, i32* %16)
  %18 = load i32* %1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @Proc_4() #0 {
  %1 = alloca i32, align 4
  %Bool_Loc = alloca i32, align 4
  %2 = load i8* @Char_Glob_1, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 65
  %5 = zext i1 %4 to i32
  store i32 %5, i32* %Bool_Loc, align 4
  %6 = load i32* %Bool_Loc, align 4
  %7 = load i32* @Bool_Glob, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %Bool_Loc, align 4
  store i8 66, i8* @Char_Glob_2, align 1
  %9 = load i32* %1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @Proc_5() #0 {
  %1 = alloca i32, align 4
  store i8 65, i8* @Char_Glob_1, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32* %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @Proc_6(i32 %Enum_Par_Val, i32* %Enum_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %Enum_Par_Val, i32* %2, align 4
  store i32* %Enum_Par_Ref, i32** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load i32** %3, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32* %2, align 4
  %7 = call i32 @Func_3(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32** %3, align 8
  store i32 3, i32* %10, align 4
  br label %11

; <label>:11                                      ; preds = %9, %0
  %12 = load i32* %2, align 4
  switch i32 %12, label %28 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %23
    i32 3, label %25
    i32 4, label %26
  ]

; <label>:13                                      ; preds = %11
  %14 = load i32** %3, align 8
  store i32 0, i32* %14, align 4
  br label %28

; <label>:15                                      ; preds = %11
  %16 = load i32* @Int_Glob, align 4
  %17 = icmp sgt i32 %16, 100
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = load i32** %3, align 8
  store i32 0, i32* %19, align 4
  br label %22

; <label>:20                                      ; preds = %15
  %21 = load i32** %3, align 8
  store i32 3, i32* %21, align 4
  br label %22

; <label>:22                                      ; preds = %20, %18
  br label %28

; <label>:23                                      ; preds = %11
  %24 = load i32** %3, align 8
  store i32 1, i32* %24, align 4
  br label %28

; <label>:25                                      ; preds = %11
  br label %28

; <label>:26                                      ; preds = %11
  %27 = load i32** %3, align 8
  store i32 2, i32* %27, align 4
  br label %28

; <label>:28                                      ; preds = %11, %26, %25, %23, %22, %13
  %29 = load i32* %1
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @Proc_7(i32 %Int_Par_Val1, i32 %Int_Par_Val2, i32* %Int_Par_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %Int_Loc = alloca i32, align 4
  store i32 %Int_Par_Val1, i32* %2, align 4
  store i32 %Int_Par_Val2, i32* %3, align 4
  store i32* %Int_Par_Ref, i32** %4, align 8
  %5 = load i32* %2, align 4
  %6 = add nsw i32 %5, 2
  store i32 %6, i32* %Int_Loc, align 4
  %7 = load i32* %3, align 4
  %8 = load i32* %Int_Loc, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32** %4, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32* %1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @Proc_8(i32* %Array_Par_1_Ref, [30 x i32]* %Array_Par_2_Ref, i32 %Int_Par_Val_1, i32 %Int_Par_Val_2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [30 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %Int_Index = alloca i32, align 4
  %Int_Loc = alloca i32, align 4
  store i32* %Array_Par_1_Ref, i32** %2, align 8
  store [30 x i32]* %Array_Par_2_Ref, [30 x i32]** %3, align 8
  store i32 %Int_Par_Val_1, i32* %4, align 4
  store i32 %Int_Par_Val_2, i32* %5, align 4
  %6 = load i32* %4, align 4
  %7 = add nsw i32 %6, 5
  store i32 %7, i32* %Int_Loc, align 4
  %8 = load i32* %5, align 4
  %9 = load i32* %Int_Loc, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %2, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  store i32 %8, i32* %12, align 4
  %13 = load i32* %Int_Loc, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32** %2, align 8
  %16 = getelementptr inbounds i32* %15, i64 %14
  %17 = load i32* %16, align 4
  %18 = load i32* %Int_Loc, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i32** %2, align 8
  %22 = getelementptr inbounds i32* %21, i64 %20
  store i32 %17, i32* %22, align 4
  %23 = load i32* %Int_Loc, align 4
  %24 = load i32* %Int_Loc, align 4
  %25 = add nsw i32 %24, 30
  %26 = sext i32 %25 to i64
  %27 = load i32** %2, align 8
  %28 = getelementptr inbounds i32* %27, i64 %26
  store i32 %23, i32* %28, align 4
  %29 = load i32* %Int_Loc, align 4
  store i32 %29, i32* %Int_Index, align 4
  br label %30

; <label>:30                                      ; preds = %44, %0
  %31 = load i32* %Int_Index, align 4
  %32 = load i32* %Int_Loc, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %30
  %36 = load i32* %Int_Loc, align 4
  %37 = load i32* %Int_Index, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32* %Int_Loc, align 4
  %40 = sext i32 %39 to i64
  %41 = load [30 x i32]** %3, align 8
  %42 = getelementptr inbounds [30 x i32]* %41, i64 %40
  %43 = getelementptr inbounds [30 x i32]* %42, i32 0, i64 %38
  store i32 %36, i32* %43, align 4
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load i32* %Int_Index, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %Int_Index, align 4
  br label %30

; <label>:47                                      ; preds = %30
  %48 = load i32* %Int_Loc, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i32* %Int_Loc, align 4
  %52 = sext i32 %51 to i64
  %53 = load [30 x i32]** %3, align 8
  %54 = getelementptr inbounds [30 x i32]* %53, i64 %52
  %55 = getelementptr inbounds [30 x i32]* %54, i32 0, i64 %50
  %56 = load i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32* %Int_Loc, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32** %2, align 8
  %61 = getelementptr inbounds i32* %60, i64 %59
  %62 = load i32* %61, align 4
  %63 = load i32* %Int_Loc, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32* %Int_Loc, align 4
  %66 = add nsw i32 %65, 20
  %67 = sext i32 %66 to i64
  %68 = load [30 x i32]** %3, align 8
  %69 = getelementptr inbounds [30 x i32]* %68, i64 %67
  %70 = getelementptr inbounds [30 x i32]* %69, i32 0, i64 %64
  store i32 %62, i32* %70, align 4
  store i32 5, i32* @Int_Glob, align 4
  %71 = load i32* %1
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @Func_1(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %Char_Loc_1 = alloca i8, align 1
  %Char_Loc_2 = alloca i8, align 1
  %Char_Par_1_Val = trunc i32 %0 to i8
  store i8 %Char_Par_1_Val, i8* %4, align 1
  %Char_Par_2_Val = trunc i32 %1 to i8
  store i8 %Char_Par_2_Val, i8* %5, align 1
  %6 = load i8* %4, align 1
  store i8 %6, i8* %Char_Loc_1, align 1
  %7 = load i8* %Char_Loc_1, align 1
  store i8 %7, i8* %Char_Loc_2, align 1
  %8 = load i8* %Char_Loc_2, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %2
  store i32 0, i32* %3
  br label %15

; <label>:14                                      ; preds = %2
  store i32 1, i32* %3
  br label %15

; <label>:15                                      ; preds = %14, %13
  %16 = load i32* %3
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @Func_2(i8* %String_Par_1_Ref, i8* %String_Par_2_Ref) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %Int_Loc = alloca i32, align 4
  %Char_Loc = alloca i8, align 1
  store i8* %String_Par_1_Ref, i8** %2, align 8
  store i8* %String_Par_2_Ref, i8** %3, align 8
  store i32 2, i32* %Int_Loc, align 4
  br label %4

; <label>:4                                       ; preds = %26, %0
  %5 = load i32* %Int_Loc, align 4
  %6 = icmp sle i32 %5, 2
  br i1 %6, label %7, label %27

; <label>:7                                       ; preds = %4
  %8 = load i32* %Int_Loc, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds i8* %10, i64 %9
  %12 = load i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32* %Int_Loc, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = load i8** %3, align 8
  %18 = getelementptr inbounds i8* %17, i64 %16
  %19 = load i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func_1(i32 %13, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %7
  store i8 65, i8* %Char_Loc, align 1
  %24 = load i32* %Int_Loc, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %Int_Loc, align 4
  br label %26

; <label>:26                                      ; preds = %23, %7
  br label %4

; <label>:27                                      ; preds = %4
  %28 = load i8* %Char_Loc, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 87
  br i1 %30, label %31, label %36

; <label>:31                                      ; preds = %27
  %32 = load i8* %Char_Loc, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 90
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %31
  store i32 7, i32* %Int_Loc, align 4
  br label %36

; <label>:36                                      ; preds = %35, %31, %27
  %37 = load i8* %Char_Loc, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 88
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %36
  store i32 1, i32* %1
  br label %50

; <label>:41                                      ; preds = %36
  %42 = load i8** %2, align 8
  %43 = load i8** %3, align 8
  %44 = call i32 @strcmp(i8* %42, i8* %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %41
  %47 = load i32* %Int_Loc, align 4
  %48 = add nsw i32 %47, 7
  store i32 %48, i32* %Int_Loc, align 4
  store i32 1, i32* %1
  br label %50

; <label>:49                                      ; preds = %41
  store i32 0, i32* %1
  br label %50

; <label>:50                                      ; preds = %49, %46, %40
  %51 = load i32* %1
  ret i32 %51
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @Func_3(i32 %Enum_Par_Val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Enum_Loc = alloca i32, align 4
  store i32 %Enum_Par_Val, i32* %2, align 4
  %3 = load i32* %2, align 4
  store i32 %3, i32* %Enum_Loc, align 4
  %4 = load i32* %Enum_Loc, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 1, i32* %1
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i32* %1
  ret i32 %8
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
