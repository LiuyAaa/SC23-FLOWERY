; ModuleID = 'bfs-0.8.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }

@fp = global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"**********************SDC DETECTED!check-flag**********************\0A\00", align 1

; Function Attrs: uwtable
define void @_Z5UsageiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i8**, align 8, !llfi_index !2
  store i32 %argc, i32* %1, align 4, !llfi_index !3
  store i8** %argv, i8*** %2, align 8, !llfi_index !4
  %3 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !5
  %4 = load i8*** %2, align 8, !llfi_index !6
  %5 = getelementptr inbounds i8** %4, i64 0, !llfi_index !7
  %6 = load i8** %5, align 8, !llfi_index !8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %6), !llfi_index !9
  ret void, !llfi_index !10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !11
  %2 = alloca i8**, align 8, !llfi_index !12
  store i32 %argc, i32* %1, align 4, !llfi_index !13
  store i8** %argv, i8*** %2, align 8, !llfi_index !14
  %3 = load i32* %1, align 4, !llfi_index !15
  %4 = load i8*** %2, align 8, !llfi_index !16
  call void @_Z8BFSGraphiPPc(i32 %3, i8** %4), !llfi_index !17
  ret i32 0, !llfi_index !18
}

; Function Attrs: uwtable
define void @_Z8BFSGraphiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !19
  %2 = alloca i8**, align 8, !llfi_index !20
  %no_of_nodes = alloca i32, align 4, !llfi_index !21
  %edge_list_size = alloca i32, align 4, !llfi_index !22
  %input_f = alloca i8*, align 8, !llfi_index !23
  %source = alloca i32, align 4, !llfi_index !24
  %h_graph_nodes = alloca %struct.Node*, align 8, !llfi_index !25
  %h_graph_mask = alloca i8*, align 8, !llfi_index !26
  %h_updating_graph_mask = alloca i8*, align 8, !llfi_index !27
  %h_graph_visited = alloca i8*, align 8, !llfi_index !28
  %start = alloca i32, align 4, !llfi_index !29
  %edgeno = alloca i32, align 4, !llfi_index !30
  %i = alloca i32, align 4, !llfi_index !31
  %id = alloca i32, align 4, !llfi_index !32
  %cost = alloca i32, align 4, !llfi_index !33
  %h_graph_edges = alloca i32*, align 8, !llfi_index !34
  %i1 = alloca i32, align 4, !llfi_index !35
  %h_cost = alloca i32*, align 8, !llfi_index !36
  %i2 = alloca i32, align 4, !llfi_index !37
  %k = alloca i32, align 4, !llfi_index !38
  %stop = alloca i8, align 1, !llfi_index !39
  %tid = alloca i32, align 4, !llfi_index !40
  %i3 = alloca i32, align 4, !llfi_index !41
  %id4 = alloca i32, align 4, !llfi_index !42
  %tid5 = alloca i32, align 4, !llfi_index !43
  %fpo = alloca %struct._IO_FILE*, align 8, !llfi_index !44
  %i6 = alloca i32, align 4, !llfi_index !45
  store i32 %argc, i32* %1, align 4, !llfi_index !46
  store i8** %argv, i8*** %2, align 8, !llfi_index !47
  store i32 0, i32* %no_of_nodes, align 4, !llfi_index !48
  store i32 0, i32* %edge_list_size, align 4, !llfi_index !49
  %3 = load i32* %1, align 4, !llfi_index !50
  %4 = icmp ne i32 %3, 2, !llfi_index !51
  br i1 %4, label %5, label %8, !llfi_index !52

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4, !llfi_index !53
  %7 = load i8*** %2, align 8, !llfi_index !54
  call void @_Z5UsageiPPc(i32 %6, i8** %7), !llfi_index !55
  call void @exit(i32 0) #5, !llfi_index !56
  unreachable, !llfi_index !57

; <label>:8                                       ; preds = %0
  %9 = load i8*** %2, align 8, !llfi_index !58
  %10 = getelementptr inbounds i8** %9, i64 1, !llfi_index !59
  %11 = load i8** %10, align 8, !llfi_index !60
  store i8* %11, i8** %input_f, align 8, !llfi_index !61
  %12 = load i8** %input_f, align 8, !llfi_index !62
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !llfi_index !63
  store %struct._IO_FILE* %13, %struct._IO_FILE** @fp, align 8, !llfi_index !64
  %14 = load %struct._IO_FILE** @fp, align 8, !llfi_index !65
  %15 = icmp ne %struct._IO_FILE* %14, null, !llfi_index !66
  br i1 %15, label %18, label %16, !llfi_index !67

; <label>:16                                      ; preds = %8
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !llfi_index !68
  br label %401, !llfi_index !69

; <label>:18                                      ; preds = %8
  store i32 0, i32* %source, align 4, !llfi_index !70
  %19 = load %struct._IO_FILE** @fp, align 8, !llfi_index !71
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %no_of_nodes), !llfi_index !72
  %21 = load i32* %no_of_nodes, align 4, !llfi_index !73
  %22 = sext i32 %21 to i64, !llfi_index !74
  %23 = mul i64 8, %22, !llfi_index !75
  %24 = call noalias i8* @malloc(i64 %23) #6, !llfi_index !76
  %25 = bitcast i8* %24 to %struct.Node*, !llfi_index !77
  store %struct.Node* %25, %struct.Node** %h_graph_nodes, align 8, !llfi_index !78
  %26 = load i32* %no_of_nodes, align 4, !llfi_index !79
  %27 = sext i32 %26 to i64, !llfi_index !80
  %28 = mul i64 1, %27, !llfi_index !81
  %29 = call noalias i8* @malloc(i64 %28) #6, !llfi_index !82
  store i8* %29, i8** %h_graph_mask, align 8, !llfi_index !83
  %30 = load i32* %no_of_nodes, align 4, !llfi_index !84
  %31 = sext i32 %30 to i64, !llfi_index !85
  %32 = mul i64 1, %31, !llfi_index !86
  %33 = call noalias i8* @malloc(i64 %32) #6, !llfi_index !87
  store i8* %33, i8** %h_updating_graph_mask, align 8, !llfi_index !88
  %34 = load i32* %no_of_nodes, align 4, !llfi_index !89
  %35 = sext i32 %34 to i64, !llfi_index !90
  %36 = mul i64 1, %35, !llfi_index !91
  %37 = call noalias i8* @malloc(i64 %36) #6, !llfi_index !92
  store i8* %37, i8** %h_graph_visited, align 8, !llfi_index !93
  store i32 0, i32* %i, align 4, !llfi_index !94
  br label %38, !llfi_index !95

; <label>:38                                      ; preds = %92, %18
  %39 = load i32* %i, align 4, !llfi_index !96
  %40 = load i32* %no_of_nodes, align 4, !llfi_index !97
  %41 = load i32* %no_of_nodes, align 4, !llfi_index !97
  %42 = icmp ult i32 %39, %40, !llfi_index !98
  %43 = icmp ult i32 %39, %41, !llfi_index !98
  %check_cmp = icmp eq i1 %42, %43
  br i1 %check_cmp, label %44, label %checkBb

checkBb:                                          ; preds = %38
  call void @check_flag()
  br label %44

; <label>:44                                      ; preds = %checkBb, %38
  br i1 %42, label %45, label %93, !llfi_index !99

; <label>:45                                      ; preds = %44
  %46 = load %struct._IO_FILE** @fp, align 8, !llfi_index !100
  %47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32* %start, i32* %edgeno), !llfi_index !101
  %48 = load i32* %start, align 4, !llfi_index !102
  %49 = load i32* %i, align 4, !llfi_index !103
  %50 = load i32* %i, align 4, !llfi_index !103
  %51 = zext i32 %49 to i64, !llfi_index !104
  %52 = zext i32 %50 to i64, !llfi_index !104
  %53 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !105
  %54 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !105
  %55 = getelementptr inbounds %struct.Node* %53, i64 %51, !llfi_index !106
  %56 = getelementptr inbounds %struct.Node* %54, i64 %52, !llfi_index !106
  %57 = getelementptr inbounds %struct.Node* %55, i32 0, i32 0, !llfi_index !107
  %58 = getelementptr inbounds %struct.Node* %56, i32 0, i32 0, !llfi_index !107
  %check_cmp1 = icmp eq i32* %57, %58
  br i1 %check_cmp1, label %59, label %checkBb2

checkBb2:                                         ; preds = %45
  call void @check_flag()
  br label %59

; <label>:59                                      ; preds = %checkBb2, %45
  store i32 %48, i32* %57, align 4, !llfi_index !108
  %60 = load i32* %edgeno, align 4, !llfi_index !109
  %61 = load i32* %i, align 4, !llfi_index !110
  %62 = load i32* %i, align 4, !llfi_index !110
  %63 = zext i32 %61 to i64, !llfi_index !111
  %64 = zext i32 %62 to i64, !llfi_index !111
  %65 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !112
  %66 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !112
  %67 = getelementptr inbounds %struct.Node* %65, i64 %63, !llfi_index !113
  %68 = getelementptr inbounds %struct.Node* %66, i64 %64, !llfi_index !113
  %69 = getelementptr inbounds %struct.Node* %67, i32 0, i32 1, !llfi_index !114
  %70 = getelementptr inbounds %struct.Node* %68, i32 0, i32 1, !llfi_index !114
  %check_cmp3 = icmp eq i32* %69, %70
  br i1 %check_cmp3, label %71, label %checkBb4

checkBb4:                                         ; preds = %59
  call void @check_flag()
  br label %71

; <label>:71                                      ; preds = %checkBb4, %59
  store i32 %60, i32* %69, align 4, !llfi_index !115
  %72 = load i32* %i, align 4, !llfi_index !116
  %73 = zext i32 %72 to i64, !llfi_index !117
  %74 = load i8** %h_graph_mask, align 8, !llfi_index !118
  %75 = getelementptr inbounds i8* %74, i64 %73, !llfi_index !119
  store i8 0, i8* %75, align 1, !llfi_index !120
  %76 = load i32* %i, align 4, !llfi_index !121
  %77 = zext i32 %76 to i64, !llfi_index !122
  %78 = load i8** %h_updating_graph_mask, align 8, !llfi_index !123
  %79 = load i8** %h_updating_graph_mask, align 8, !llfi_index !123
  %check_cmp5 = icmp eq i8* %78, %79
  br i1 %check_cmp5, label %80, label %checkBb6

checkBb6:                                         ; preds = %71
  call void @check_flag()
  br label %80

; <label>:80                                      ; preds = %checkBb6, %71
  %81 = getelementptr inbounds i8* %78, i64 %77, !llfi_index !124
  store i8 0, i8* %81, align 1, !llfi_index !125
  %82 = load i32* %i, align 4, !llfi_index !126
  %83 = zext i32 %82 to i64, !llfi_index !127
  %84 = zext i32 %82 to i64, !llfi_index !127
  %check_cmp7 = icmp eq i64 %83, %84
  br i1 %check_cmp7, label %85, label %checkBb8

checkBb8:                                         ; preds = %80
  call void @check_flag()
  br label %85

; <label>:85                                      ; preds = %checkBb8, %80
  %86 = load i8** %h_graph_visited, align 8, !llfi_index !128
  %87 = getelementptr inbounds i8* %86, i64 %83, !llfi_index !129
  store i8 0, i8* %87, align 1, !llfi_index !130
  br label %88, !llfi_index !131

; <label>:88                                      ; preds = %85
  %89 = load i32* %i, align 4, !llfi_index !132
  %90 = add i32 %89, 1, !llfi_index !133
  %91 = add i32 %89, 1, !llfi_index !133
  %check_cmp9 = icmp eq i32 %90, %91
  br i1 %check_cmp9, label %92, label %checkBb10

checkBb10:                                        ; preds = %88
  call void @check_flag()
  br label %92

; <label>:92                                      ; preds = %checkBb10, %88
  store i32 %90, i32* %i, align 4, !llfi_index !134
  br label %38, !llfi_index !135

; <label>:93                                      ; preds = %44
  %94 = load %struct._IO_FILE** @fp, align 8, !llfi_index !136
  %95 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %source), !llfi_index !137
  %96 = load i32* %source, align 4, !llfi_index !138
  %97 = sext i32 %96 to i64, !llfi_index !139
  %98 = load i8** %h_graph_mask, align 8, !llfi_index !140
  %99 = getelementptr inbounds i8* %98, i64 %97, !llfi_index !141
  store i8 1, i8* %99, align 1, !llfi_index !142
  %100 = load i32* %source, align 4, !llfi_index !143
  %101 = sext i32 %100 to i64, !llfi_index !144
  %102 = load i8** %h_graph_visited, align 8, !llfi_index !145
  %103 = getelementptr inbounds i8* %102, i64 %101, !llfi_index !146
  store i8 1, i8* %103, align 1, !llfi_index !147
  %104 = load %struct._IO_FILE** @fp, align 8, !llfi_index !148
  %105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %edge_list_size), !llfi_index !149
  %106 = load i32* %edge_list_size, align 4, !llfi_index !150
  %107 = sext i32 %106 to i64, !llfi_index !151
  %108 = mul i64 4, %107, !llfi_index !152
  %109 = call noalias i8* @malloc(i64 %108) #6, !llfi_index !153
  %110 = bitcast i8* %109 to i32*, !llfi_index !154
  store i32* %110, i32** %h_graph_edges, align 8, !llfi_index !155
  store i32 0, i32* %i1, align 4, !llfi_index !156
  br label %111, !llfi_index !157

; <label>:111                                     ; preds = %137, %93
  %112 = load i32* %i1, align 4, !llfi_index !158
  %113 = load i32* %edge_list_size, align 4, !llfi_index !159
  %114 = load i32* %edge_list_size, align 4, !llfi_index !159
  %115 = icmp slt i32 %112, %113, !llfi_index !160
  %116 = icmp slt i32 %112, %114, !llfi_index !160
  %check_cmp11 = icmp eq i1 %115, %116
  br i1 %check_cmp11, label %117, label %checkBb12

checkBb12:                                        ; preds = %111
  call void @check_flag()
  br label %117

; <label>:117                                     ; preds = %checkBb12, %111
  br i1 %115, label %118, label %138, !llfi_index !161

; <label>:118                                     ; preds = %117
  %119 = load %struct._IO_FILE** @fp, align 8, !llfi_index !162
  %120 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %id), !llfi_index !163
  %121 = load %struct._IO_FILE** @fp, align 8, !llfi_index !164
  %122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %cost), !llfi_index !165
  %123 = load i32* %id, align 4, !llfi_index !166
  %124 = load i32* %i1, align 4, !llfi_index !167
  %125 = load i32* %i1, align 4, !llfi_index !167
  %126 = sext i32 %124 to i64, !llfi_index !168
  %127 = sext i32 %125 to i64, !llfi_index !168
  %128 = load i32** %h_graph_edges, align 8, !llfi_index !169
  %129 = load i32** %h_graph_edges, align 8, !llfi_index !169
  %130 = getelementptr inbounds i32* %128, i64 %126, !llfi_index !170
  %131 = getelementptr inbounds i32* %129, i64 %127, !llfi_index !170
  %check_cmp13 = icmp eq i32* %130, %131
  br i1 %check_cmp13, label %132, label %checkBb14

checkBb14:                                        ; preds = %118
  call void @check_flag()
  br label %132

; <label>:132                                     ; preds = %checkBb14, %118
  store i32 %123, i32* %130, align 4, !llfi_index !171
  br label %133, !llfi_index !172

; <label>:133                                     ; preds = %132
  %134 = load i32* %i1, align 4, !llfi_index !173
  %135 = add nsw i32 %134, 1, !llfi_index !174
  %136 = add nsw i32 %134, 1, !llfi_index !174
  %check_cmp15 = icmp eq i32 %135, %136
  br i1 %check_cmp15, label %137, label %checkBb16

checkBb16:                                        ; preds = %133
  call void @check_flag()
  br label %137

; <label>:137                                     ; preds = %checkBb16, %133
  store i32 %135, i32* %i1, align 4, !llfi_index !175
  br label %111, !llfi_index !176

; <label>:138                                     ; preds = %117
  %139 = load %struct._IO_FILE** @fp, align 8, !llfi_index !177
  %140 = icmp ne %struct._IO_FILE* %139, null, !llfi_index !178
  br i1 %140, label %141, label %144, !llfi_index !179

; <label>:141                                     ; preds = %138
  %142 = load %struct._IO_FILE** @fp, align 8, !llfi_index !180
  %143 = call i32 @fclose(%struct._IO_FILE* %142), !llfi_index !181
  br label %144, !llfi_index !182

; <label>:144                                     ; preds = %141, %138
  %145 = load i32* %no_of_nodes, align 4, !llfi_index !183
  %146 = sext i32 %145 to i64, !llfi_index !184
  %147 = mul i64 4, %146, !llfi_index !185
  %148 = call noalias i8* @malloc(i64 %147) #6, !llfi_index !186
  %149 = bitcast i8* %148 to i32*, !llfi_index !187
  store i32* %149, i32** %h_cost, align 8, !llfi_index !188
  store i32 0, i32* %i2, align 4, !llfi_index !189
  br label %150, !llfi_index !190

; <label>:150                                     ; preds = %159, %144
  %151 = load i32* %i2, align 4, !llfi_index !191
  %152 = load i32* %no_of_nodes, align 4, !llfi_index !192
  %153 = icmp slt i32 %151, %152, !llfi_index !193
  br i1 %153, label %154, label %162, !llfi_index !194

; <label>:154                                     ; preds = %150
  %155 = load i32* %i2, align 4, !llfi_index !195
  %156 = sext i32 %155 to i64, !llfi_index !196
  %157 = load i32** %h_cost, align 8, !llfi_index !197
  %158 = getelementptr inbounds i32* %157, i64 %156, !llfi_index !198
  store i32 -1, i32* %158, align 4, !llfi_index !199
  br label %159, !llfi_index !200

; <label>:159                                     ; preds = %154
  %160 = load i32* %i2, align 4, !llfi_index !201
  %161 = add nsw i32 %160, 1, !llfi_index !202
  store i32 %161, i32* %i2, align 4, !llfi_index !203
  br label %150, !llfi_index !204

; <label>:162                                     ; preds = %150
  %163 = load i32* %source, align 4, !llfi_index !205
  %164 = sext i32 %163 to i64, !llfi_index !206
  %165 = load i32** %h_cost, align 8, !llfi_index !207
  %166 = getelementptr inbounds i32* %165, i64 %164, !llfi_index !208
  store i32 0, i32* %166, align 4, !llfi_index !209
  store i32 0, i32* %k, align 4, !llfi_index !210
  br label %167, !llfi_index !211

; <label>:167                                     ; preds = %358, %162
  store i8 0, i8* %stop, align 1, !llfi_index !212
  store i32 0, i32* %tid, align 4, !llfi_index !213
  br label %168, !llfi_index !214

; <label>:168                                     ; preds = %297, %167
  %169 = load i32* %tid, align 4, !llfi_index !215
  %170 = load i32* %no_of_nodes, align 4, !llfi_index !216
  %171 = icmp slt i32 %169, %170, !llfi_index !217
  %172 = icmp slt i32 %169, %170, !llfi_index !217
  %check_cmp17 = icmp eq i1 %171, %172
  br i1 %check_cmp17, label %173, label %checkBb18

checkBb18:                                        ; preds = %168
  call void @check_flag()
  br label %173

; <label>:173                                     ; preds = %checkBb18, %168
  br i1 %171, label %174, label %300, !llfi_index !218

; <label>:174                                     ; preds = %173
  %175 = load i32* %tid, align 4, !llfi_index !219
  %176 = load i32* %tid, align 4, !llfi_index !219
  %check_cmp19 = icmp eq i32 %175, %176
  br i1 %check_cmp19, label %177, label %checkBb20

checkBb20:                                        ; preds = %174
  call void @check_flag()
  br label %177

; <label>:177                                     ; preds = %checkBb20, %174
  %178 = sext i32 %175 to i64, !llfi_index !220
  %179 = load i8** %h_graph_mask, align 8, !llfi_index !221
  %180 = getelementptr inbounds i8* %179, i64 %178, !llfi_index !222
  %181 = load i8* %180, align 1, !llfi_index !223
  %182 = trunc i8 %181 to i1, !llfi_index !224
  %183 = zext i1 %182 to i32, !llfi_index !225
  %184 = zext i1 %182 to i32, !llfi_index !225
  %185 = icmp eq i32 %183, 1, !llfi_index !226
  %186 = icmp eq i32 %184, 1, !llfi_index !226
  %check_cmp21 = icmp eq i1 %185, %186
  br i1 %check_cmp21, label %187, label %checkBb22

checkBb22:                                        ; preds = %177
  call void @check_flag()
  br label %187

; <label>:187                                     ; preds = %checkBb22, %177
  br i1 %185, label %188, label %296, !llfi_index !227

; <label>:188                                     ; preds = %187
  %189 = load i32* %tid, align 4, !llfi_index !228
  %190 = load i32* %tid, align 4, !llfi_index !228
  %check_cmp23 = icmp eq i32 %189, %190
  br i1 %check_cmp23, label %191, label %checkBb24

checkBb24:                                        ; preds = %188
  call void @check_flag()
  br label %191

; <label>:191                                     ; preds = %checkBb24, %188
  %192 = sext i32 %189 to i64, !llfi_index !229
  %193 = load i8** %h_graph_mask, align 8, !llfi_index !230
  %194 = load i8** %h_graph_mask, align 8, !llfi_index !230
  %check_cmp25 = icmp eq i8* %193, %194
  br i1 %check_cmp25, label %195, label %checkBb26

checkBb26:                                        ; preds = %191
  call void @check_flag()
  br label %195

; <label>:195                                     ; preds = %checkBb26, %191
  %196 = getelementptr inbounds i8* %193, i64 %192, !llfi_index !231
  store i8 0, i8* %196, align 1, !llfi_index !232
  %197 = load i32* %tid, align 4, !llfi_index !233
  %198 = load i32* %tid, align 4, !llfi_index !233
  %check_cmp27 = icmp eq i32 %197, %198
  br i1 %check_cmp27, label %199, label %checkBb28

checkBb28:                                        ; preds = %195
  call void @check_flag()
  br label %199

; <label>:199                                     ; preds = %checkBb28, %195
  %200 = sext i32 %197 to i64, !llfi_index !234
  %201 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !235
  %202 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !235
  %203 = getelementptr inbounds %struct.Node* %201, i64 %200, !llfi_index !236
  %204 = getelementptr inbounds %struct.Node* %202, i64 %200, !llfi_index !236
  %205 = getelementptr inbounds %struct.Node* %203, i32 0, i32 0, !llfi_index !237
  %206 = getelementptr inbounds %struct.Node* %204, i32 0, i32 0, !llfi_index !237
  %207 = load i32* %205, align 4, !llfi_index !238
  %208 = load i32* %206, align 4, !llfi_index !238
  %check_cmp29 = icmp eq i32 %207, %208
  br i1 %check_cmp29, label %209, label %checkBb30

checkBb30:                                        ; preds = %199
  call void @check_flag()
  br label %209

; <label>:209                                     ; preds = %checkBb30, %199
  store i32 %207, i32* %i3, align 4, !llfi_index !239
  br label %210, !llfi_index !240

; <label>:210                                     ; preds = %292, %209
  %211 = load i32* %i3, align 4, !llfi_index !241
  %212 = load i32* %tid, align 4, !llfi_index !242
  %213 = sext i32 %212 to i64, !llfi_index !243
  %214 = sext i32 %212 to i64, !llfi_index !243
  %check_cmp31 = icmp eq i64 %213, %214
  br i1 %check_cmp31, label %215, label %checkBb32

checkBb32:                                        ; preds = %210
  call void @check_flag()
  br label %215

; <label>:215                                     ; preds = %checkBb32, %210
  %216 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !244
  %217 = getelementptr inbounds %struct.Node* %216, i64 %213, !llfi_index !245
  %218 = getelementptr inbounds %struct.Node* %217, i32 0, i32 1, !llfi_index !246
  %219 = load i32* %218, align 4, !llfi_index !247
  %220 = load i32* %tid, align 4, !llfi_index !248
  %221 = sext i32 %220 to i64, !llfi_index !249
  %222 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !250
  %223 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !250
  %224 = getelementptr inbounds %struct.Node* %222, i64 %221, !llfi_index !251
  %225 = getelementptr inbounds %struct.Node* %223, i64 %221, !llfi_index !251
  %check_cmp33 = icmp eq %struct.Node* %224, %225
  br i1 %check_cmp33, label %226, label %checkBb34

checkBb34:                                        ; preds = %215
  call void @check_flag()
  br label %226

; <label>:226                                     ; preds = %checkBb34, %215
  %227 = getelementptr inbounds %struct.Node* %224, i32 0, i32 0, !llfi_index !252
  %228 = load i32* %227, align 4, !llfi_index !253
  %229 = load i32* %227, align 4, !llfi_index !253
  %230 = add nsw i32 %219, %228, !llfi_index !254
  %231 = add nsw i32 %219, %229, !llfi_index !254
  %232 = icmp slt i32 %211, %230, !llfi_index !255
  %233 = icmp slt i32 %211, %231, !llfi_index !255
  %check_cmp35 = icmp eq i1 %232, %233
  br i1 %check_cmp35, label %234, label %checkBb36

checkBb36:                                        ; preds = %226
  call void @check_flag()
  br label %234

; <label>:234                                     ; preds = %checkBb36, %226
  br i1 %232, label %235, label %295, !llfi_index !256

; <label>:235                                     ; preds = %234
  %236 = load i32* %i3, align 4, !llfi_index !257
  %237 = load i32* %i3, align 4, !llfi_index !257
  %check_cmp37 = icmp eq i32 %236, %237
  br i1 %check_cmp37, label %238, label %checkBb38

checkBb38:                                        ; preds = %235
  call void @check_flag()
  br label %238

; <label>:238                                     ; preds = %checkBb38, %235
  %239 = sext i32 %236 to i64, !llfi_index !258
  %240 = load i32** %h_graph_edges, align 8, !llfi_index !259
  %241 = load i32** %h_graph_edges, align 8, !llfi_index !259
  %242 = getelementptr inbounds i32* %240, i64 %239, !llfi_index !260
  %243 = getelementptr inbounds i32* %241, i64 %239, !llfi_index !260
  %check_cmp39 = icmp eq i32* %242, %243
  br i1 %check_cmp39, label %244, label %checkBb40

checkBb40:                                        ; preds = %238
  call void @check_flag()
  br label %244

; <label>:244                                     ; preds = %checkBb40, %238
  %245 = load i32* %242, align 4, !llfi_index !261
  store i32 %245, i32* %id4, align 4, !llfi_index !262
  %246 = load i32* %id4, align 4, !llfi_index !263
  %247 = load i32* %id4, align 4, !llfi_index !263
  %check_cmp41 = icmp eq i32 %246, %247
  br i1 %check_cmp41, label %248, label %checkBb42

checkBb42:                                        ; preds = %244
  call void @check_flag()
  br label %248

; <label>:248                                     ; preds = %checkBb42, %244
  %249 = sext i32 %246 to i64, !llfi_index !264
  %250 = load i8** %h_graph_visited, align 8, !llfi_index !265
  %251 = load i8** %h_graph_visited, align 8, !llfi_index !265
  %252 = getelementptr inbounds i8* %250, i64 %249, !llfi_index !266
  %253 = getelementptr inbounds i8* %251, i64 %249, !llfi_index !266
  %254 = load i8* %252, align 1, !llfi_index !267
  %255 = load i8* %253, align 1, !llfi_index !267
  %256 = trunc i8 %254 to i1, !llfi_index !268
  %257 = trunc i8 %255 to i1, !llfi_index !268
  %check_cmp43 = icmp eq i1 %256, %257
  br i1 %check_cmp43, label %258, label %checkBb44

checkBb44:                                        ; preds = %248
  call void @check_flag()
  br label %258

; <label>:258                                     ; preds = %checkBb44, %248
  br i1 %256, label %291, label %259, !llfi_index !269

; <label>:259                                     ; preds = %258
  %260 = load i32* %tid, align 4, !llfi_index !270
  %261 = load i32* %tid, align 4, !llfi_index !270
  %check_cmp45 = icmp eq i32 %260, %261
  br i1 %check_cmp45, label %262, label %checkBb46

checkBb46:                                        ; preds = %259
  call void @check_flag()
  br label %262

; <label>:262                                     ; preds = %checkBb46, %259
  %263 = sext i32 %260 to i64, !llfi_index !271
  %264 = load i32** %h_cost, align 8, !llfi_index !272
  %265 = load i32** %h_cost, align 8, !llfi_index !272
  %266 = getelementptr inbounds i32* %264, i64 %263, !llfi_index !273
  %267 = getelementptr inbounds i32* %265, i64 %263, !llfi_index !273
  %268 = load i32* %266, align 4, !llfi_index !274
  %269 = load i32* %267, align 4, !llfi_index !274
  %270 = add nsw i32 %268, 1, !llfi_index !275
  %271 = add nsw i32 %269, 1, !llfi_index !275
  %check_cmp47 = icmp eq i32 %270, %271
  br i1 %check_cmp47, label %272, label %checkBb48

checkBb48:                                        ; preds = %262
  call void @check_flag()
  br label %272

; <label>:272                                     ; preds = %checkBb48, %262
  %273 = load i32* %id4, align 4, !llfi_index !276
  %274 = load i32* %id4, align 4, !llfi_index !276
  %275 = sext i32 %273 to i64, !llfi_index !277
  %276 = sext i32 %274 to i64, !llfi_index !277
  %277 = load i32** %h_cost, align 8, !llfi_index !278
  %278 = load i32** %h_cost, align 8, !llfi_index !278
  %279 = getelementptr inbounds i32* %277, i64 %275, !llfi_index !279
  %280 = getelementptr inbounds i32* %278, i64 %276, !llfi_index !279
  %check_cmp49 = icmp eq i32* %279, %280
  br i1 %check_cmp49, label %281, label %checkBb50

checkBb50:                                        ; preds = %272
  call void @check_flag()
  br label %281

; <label>:281                                     ; preds = %checkBb50, %272
  store i32 %270, i32* %279, align 4, !llfi_index !280
  %282 = load i32* %id4, align 4, !llfi_index !281
  %283 = load i32* %id4, align 4, !llfi_index !281
  %check_cmp51 = icmp eq i32 %282, %283
  br i1 %check_cmp51, label %284, label %checkBb52

checkBb52:                                        ; preds = %281
  call void @check_flag()
  br label %284

; <label>:284                                     ; preds = %checkBb52, %281
  %285 = sext i32 %282 to i64, !llfi_index !282
  %286 = load i8** %h_updating_graph_mask, align 8, !llfi_index !283
  %287 = load i8** %h_updating_graph_mask, align 8, !llfi_index !283
  %288 = getelementptr inbounds i8* %286, i64 %285, !llfi_index !284
  %289 = getelementptr inbounds i8* %287, i64 %285, !llfi_index !284
  %check_cmp53 = icmp eq i8* %288, %289
  br i1 %check_cmp53, label %290, label %checkBb54

checkBb54:                                        ; preds = %284
  call void @check_flag()
  br label %290

; <label>:290                                     ; preds = %checkBb54, %284
  store i8 1, i8* %288, align 1, !llfi_index !285
  br label %291, !llfi_index !286

; <label>:291                                     ; preds = %290, %258
  br label %292, !llfi_index !287

; <label>:292                                     ; preds = %291
  %293 = load i32* %i3, align 4, !llfi_index !288
  %294 = add nsw i32 %293, 1, !llfi_index !289
  store i32 %294, i32* %i3, align 4, !llfi_index !290
  br label %210, !llfi_index !291

; <label>:295                                     ; preds = %234
  br label %296, !llfi_index !292

; <label>:296                                     ; preds = %295, %187
  br label %297, !llfi_index !293

; <label>:297                                     ; preds = %296
  %298 = load i32* %tid, align 4, !llfi_index !294
  %299 = add nsw i32 %298, 1, !llfi_index !295
  store i32 %299, i32* %tid, align 4, !llfi_index !296
  br label %168, !llfi_index !297

; <label>:300                                     ; preds = %173
  store i32 0, i32* %tid5, align 4, !llfi_index !298
  br label %301, !llfi_index !299

; <label>:301                                     ; preds = %352, %300
  %302 = load i32* %tid5, align 4, !llfi_index !300
  %303 = load i32* %no_of_nodes, align 4, !llfi_index !301
  %304 = icmp slt i32 %302, %303, !llfi_index !302
  %305 = icmp slt i32 %302, %303, !llfi_index !302
  %check_cmp55 = icmp eq i1 %304, %305
  br i1 %check_cmp55, label %306, label %checkBb56

checkBb56:                                        ; preds = %301
  call void @check_flag()
  br label %306

; <label>:306                                     ; preds = %checkBb56, %301
  br i1 %304, label %307, label %355, !llfi_index !303

; <label>:307                                     ; preds = %306
  %308 = load i32* %tid5, align 4, !llfi_index !304
  %309 = load i32* %tid5, align 4, !llfi_index !304
  %check_cmp57 = icmp eq i32 %308, %309
  br i1 %check_cmp57, label %310, label %checkBb58

checkBb58:                                        ; preds = %307
  call void @check_flag()
  br label %310

; <label>:310                                     ; preds = %checkBb58, %307
  %311 = sext i32 %308 to i64, !llfi_index !305
  %312 = load i8** %h_updating_graph_mask, align 8, !llfi_index !306
  %313 = load i8** %h_updating_graph_mask, align 8, !llfi_index !306
  %314 = getelementptr inbounds i8* %312, i64 %311, !llfi_index !307
  %315 = getelementptr inbounds i8* %313, i64 %311, !llfi_index !307
  %316 = load i8* %314, align 1, !llfi_index !308
  %317 = load i8* %315, align 1, !llfi_index !308
  %318 = trunc i8 %316 to i1, !llfi_index !309
  %319 = trunc i8 %317 to i1, !llfi_index !309
  %320 = zext i1 %318 to i32, !llfi_index !310
  %321 = zext i1 %319 to i32, !llfi_index !310
  %322 = icmp eq i32 %320, 1, !llfi_index !311
  %323 = icmp eq i32 %321, 1, !llfi_index !311
  %check_cmp59 = icmp eq i1 %322, %323
  br i1 %check_cmp59, label %324, label %checkBb60

checkBb60:                                        ; preds = %310
  call void @check_flag()
  br label %324

; <label>:324                                     ; preds = %checkBb60, %310
  br i1 %322, label %325, label %351, !llfi_index !312

; <label>:325                                     ; preds = %324
  %326 = load i32* %tid5, align 4, !llfi_index !313
  %327 = load i32* %tid5, align 4, !llfi_index !313
  %check_cmp61 = icmp eq i32 %326, %327
  br i1 %check_cmp61, label %328, label %checkBb62

checkBb62:                                        ; preds = %325
  call void @check_flag()
  br label %328

; <label>:328                                     ; preds = %checkBb62, %325
  %329 = sext i32 %326 to i64, !llfi_index !314
  %330 = load i8** %h_graph_mask, align 8, !llfi_index !315
  %331 = load i8** %h_graph_mask, align 8, !llfi_index !315
  %332 = getelementptr inbounds i8* %330, i64 %329, !llfi_index !316
  %333 = getelementptr inbounds i8* %331, i64 %329, !llfi_index !316
  %check_cmp63 = icmp eq i8* %332, %333
  br i1 %check_cmp63, label %334, label %checkBb64

checkBb64:                                        ; preds = %328
  call void @check_flag()
  br label %334

; <label>:334                                     ; preds = %checkBb64, %328
  store i8 1, i8* %332, align 1, !llfi_index !317
  %335 = load i32* %tid5, align 4, !llfi_index !318
  %336 = load i32* %tid5, align 4, !llfi_index !318
  %check_cmp65 = icmp eq i32 %335, %336
  br i1 %check_cmp65, label %337, label %checkBb66

checkBb66:                                        ; preds = %334
  call void @check_flag()
  br label %337

; <label>:337                                     ; preds = %checkBb66, %334
  %338 = sext i32 %335 to i64, !llfi_index !319
  %339 = load i8** %h_graph_visited, align 8, !llfi_index !320
  %340 = load i8** %h_graph_visited, align 8, !llfi_index !320
  %341 = getelementptr inbounds i8* %339, i64 %338, !llfi_index !321
  %342 = getelementptr inbounds i8* %340, i64 %338, !llfi_index !321
  %check_cmp67 = icmp eq i8* %341, %342
  br i1 %check_cmp67, label %343, label %checkBb68

checkBb68:                                        ; preds = %337
  call void @check_flag()
  br label %343

; <label>:343                                     ; preds = %checkBb68, %337
  store i8 1, i8* %341, align 1, !llfi_index !322
  store i8 1, i8* %stop, align 1, !llfi_index !323
  %344 = load i32* %tid5, align 4, !llfi_index !324
  %345 = sext i32 %344 to i64, !llfi_index !325
  %346 = load i8** %h_updating_graph_mask, align 8, !llfi_index !326
  %347 = load i8** %h_updating_graph_mask, align 8, !llfi_index !326
  %348 = getelementptr inbounds i8* %346, i64 %345, !llfi_index !327
  %349 = getelementptr inbounds i8* %347, i64 %345, !llfi_index !327
  %check_cmp69 = icmp eq i8* %348, %349
  br i1 %check_cmp69, label %350, label %checkBb70

checkBb70:                                        ; preds = %343
  call void @check_flag()
  br label %350

; <label>:350                                     ; preds = %checkBb70, %343
  store i8 0, i8* %348, align 1, !llfi_index !328
  br label %351, !llfi_index !329

; <label>:351                                     ; preds = %350, %324
  br label %352, !llfi_index !330

; <label>:352                                     ; preds = %351
  %353 = load i32* %tid5, align 4, !llfi_index !331
  %354 = add nsw i32 %353, 1, !llfi_index !332
  store i32 %354, i32* %tid5, align 4, !llfi_index !333
  br label %301, !llfi_index !334

; <label>:355                                     ; preds = %306
  %356 = load i32* %k, align 4, !llfi_index !335
  %357 = add nsw i32 %356, 1, !llfi_index !336
  store i32 %357, i32* %k, align 4, !llfi_index !337
  br label %358, !llfi_index !338

; <label>:358                                     ; preds = %355
  %359 = load i8* %stop, align 1, !llfi_index !339
  %360 = trunc i8 %359 to i1, !llfi_index !340
  br i1 %360, label %167, label %361, !llfi_index !341

; <label>:361                                     ; preds = %358
  %362 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !llfi_index !342
  store %struct._IO_FILE* %362, %struct._IO_FILE** %fpo, align 8, !llfi_index !343
  store i32 0, i32* %i6, align 4, !llfi_index !344
  br label %363, !llfi_index !345

; <label>:363                                     ; preds = %386, %361
  %364 = load i32* %i6, align 4, !llfi_index !346
  %365 = load i32* %no_of_nodes, align 4, !llfi_index !347
  %366 = icmp slt i32 %364, %365, !llfi_index !348
  %367 = icmp slt i32 %364, %365, !llfi_index !348
  %check_cmp71 = icmp eq i1 %366, %367
  br i1 %check_cmp71, label %368, label %checkBb72

checkBb72:                                        ; preds = %363
  call void @check_flag()
  br label %368

; <label>:368                                     ; preds = %checkBb72, %363
  br i1 %366, label %369, label %389, !llfi_index !349

; <label>:369                                     ; preds = %368
  %370 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !350
  %371 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !350
  %check_cmp73 = icmp eq %struct._IO_FILE* %370, %371
  br i1 %check_cmp73, label %372, label %checkBb74

checkBb74:                                        ; preds = %369
  call void @check_flag()
  br label %372

; <label>:372                                     ; preds = %checkBb74, %369
  %373 = load i32* %i6, align 4, !llfi_index !351
  %374 = load i32* %i6, align 4, !llfi_index !352
  %375 = load i32* %i6, align 4, !llfi_index !352
  %376 = sext i32 %374 to i64, !llfi_index !353
  %377 = sext i32 %375 to i64, !llfi_index !353
  %378 = load i32** %h_cost, align 8, !llfi_index !354
  %379 = load i32** %h_cost, align 8, !llfi_index !354
  %380 = getelementptr inbounds i32* %378, i64 %376, !llfi_index !355
  %381 = getelementptr inbounds i32* %379, i64 %377, !llfi_index !355
  %382 = load i32* %380, align 4, !llfi_index !356
  %383 = load i32* %381, align 4, !llfi_index !356
  %check_cmp75 = icmp eq i32 %382, %383
  br i1 %check_cmp75, label %384, label %checkBb76

checkBb76:                                        ; preds = %372
  call void @check_flag()
  br label %384

; <label>:384                                     ; preds = %checkBb76, %372
  %385 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %370, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %373, i32 %382), !llfi_index !357
  br label %386, !llfi_index !358

; <label>:386                                     ; preds = %384
  %387 = load i32* %i6, align 4, !llfi_index !359
  %388 = add nsw i32 %387, 1, !llfi_index !360
  store i32 %388, i32* %i6, align 4, !llfi_index !361
  br label %363, !llfi_index !362

; <label>:389                                     ; preds = %368
  %390 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !363
  %391 = call i32 @fclose(%struct._IO_FILE* %390), !llfi_index !364
  %392 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !365
  %393 = bitcast %struct.Node* %392 to i8*, !llfi_index !366
  call void @free(i8* %393) #6, !llfi_index !367
  %394 = load i32** %h_graph_edges, align 8, !llfi_index !368
  %395 = bitcast i32* %394 to i8*, !llfi_index !369
  call void @free(i8* %395) #6, !llfi_index !370
  %396 = load i8** %h_graph_mask, align 8, !llfi_index !371
  call void @free(i8* %396) #6, !llfi_index !372
  %397 = load i8** %h_updating_graph_mask, align 8, !llfi_index !373
  call void @free(i8* %397) #6, !llfi_index !374
  %398 = load i8** %h_graph_visited, align 8, !llfi_index !375
  call void @free(i8* %398) #6, !llfi_index !376
  %399 = load i32** %h_cost, align 8, !llfi_index !377
  %400 = bitcast i32* %399 to i8*, !llfi_index !378
  call void @free(i8* %400) #6, !llfi_index !379
  br label %401, !llfi_index !380

; <label>:401                                     ; preds = %389, %16
  ret void, !llfi_index !381
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #4 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 99) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!373 = metadata !{i64 373}
!374 = metadata !{i64 374}
!375 = metadata !{i64 375}
!376 = metadata !{i64 376}
!377 = metadata !{i64 377}
!378 = metadata !{i64 378}
!379 = metadata !{i64 379}
!380 = metadata !{i64 380}
!381 = metadata !{i64 381}
