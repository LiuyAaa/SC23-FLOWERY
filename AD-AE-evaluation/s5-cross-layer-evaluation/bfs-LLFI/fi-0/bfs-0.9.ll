; ModuleID = 'bfs-0.9.ll'
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
  br label %408, !llfi_index !69

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

; <label>:167                                     ; preds = %365, %162
  store i8 0, i8* %stop, align 1, !llfi_index !212
  store i32 0, i32* %tid, align 4, !llfi_index !213
  br label %168, !llfi_index !214

; <label>:168                                     ; preds = %304, %167
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
  br i1 %171, label %174, label %307, !llfi_index !218

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
  %182 = load i8* %180, align 1, !llfi_index !223
  %check_cmp21 = icmp eq i8 %181, %182
  br i1 %check_cmp21, label %183, label %checkBb22

checkBb22:                                        ; preds = %177
  call void @check_flag()
  br label %183

; <label>:183                                     ; preds = %checkBb22, %177
  %184 = trunc i8 %181 to i1, !llfi_index !224
  %185 = zext i1 %184 to i32, !llfi_index !225
  %186 = zext i1 %184 to i32, !llfi_index !225
  %187 = icmp eq i32 %185, 1, !llfi_index !226
  %188 = icmp eq i32 %186, 1, !llfi_index !226
  %check_cmp23 = icmp eq i1 %187, %188
  br i1 %check_cmp23, label %189, label %checkBb24

checkBb24:                                        ; preds = %183
  call void @check_flag()
  br label %189

; <label>:189                                     ; preds = %checkBb24, %183
  br i1 %187, label %190, label %303, !llfi_index !227

; <label>:190                                     ; preds = %189
  %191 = load i32* %tid, align 4, !llfi_index !228
  %192 = load i32* %tid, align 4, !llfi_index !228
  %check_cmp25 = icmp eq i32 %191, %192
  br i1 %check_cmp25, label %193, label %checkBb26

checkBb26:                                        ; preds = %190
  call void @check_flag()
  br label %193

; <label>:193                                     ; preds = %checkBb26, %190
  %194 = sext i32 %191 to i64, !llfi_index !229
  %195 = load i8** %h_graph_mask, align 8, !llfi_index !230
  %196 = load i8** %h_graph_mask, align 8, !llfi_index !230
  %197 = getelementptr inbounds i8* %195, i64 %194, !llfi_index !231
  %198 = getelementptr inbounds i8* %196, i64 %194, !llfi_index !231
  %check_cmp27 = icmp eq i8* %197, %198
  br i1 %check_cmp27, label %199, label %checkBb28

checkBb28:                                        ; preds = %193
  call void @check_flag()
  br label %199

; <label>:199                                     ; preds = %checkBb28, %193
  store i8 0, i8* %197, align 1, !llfi_index !232
  %200 = load i32* %tid, align 4, !llfi_index !233
  %201 = load i32* %tid, align 4, !llfi_index !233
  %check_cmp29 = icmp eq i32 %200, %201
  br i1 %check_cmp29, label %202, label %checkBb30

checkBb30:                                        ; preds = %199
  call void @check_flag()
  br label %202

; <label>:202                                     ; preds = %checkBb30, %199
  %203 = sext i32 %200 to i64, !llfi_index !234
  %204 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !235
  %205 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !235
  %206 = getelementptr inbounds %struct.Node* %204, i64 %203, !llfi_index !236
  %207 = getelementptr inbounds %struct.Node* %205, i64 %203, !llfi_index !236
  %208 = getelementptr inbounds %struct.Node* %206, i32 0, i32 0, !llfi_index !237
  %209 = getelementptr inbounds %struct.Node* %207, i32 0, i32 0, !llfi_index !237
  %210 = load i32* %208, align 4, !llfi_index !238
  %211 = load i32* %209, align 4, !llfi_index !238
  %check_cmp31 = icmp eq i32 %210, %211
  br i1 %check_cmp31, label %212, label %checkBb32

checkBb32:                                        ; preds = %202
  call void @check_flag()
  br label %212

; <label>:212                                     ; preds = %checkBb32, %202
  store i32 %210, i32* %i3, align 4, !llfi_index !239
  br label %213, !llfi_index !240

; <label>:213                                     ; preds = %299, %212
  %214 = load i32* %i3, align 4, !llfi_index !241
  %215 = load i32* %tid, align 4, !llfi_index !242
  %216 = sext i32 %215 to i64, !llfi_index !243
  %217 = sext i32 %215 to i64, !llfi_index !243
  %check_cmp33 = icmp eq i64 %216, %217
  br i1 %check_cmp33, label %218, label %checkBb34

checkBb34:                                        ; preds = %213
  call void @check_flag()
  br label %218

; <label>:218                                     ; preds = %checkBb34, %213
  %219 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !244
  %220 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !244
  %check_cmp35 = icmp eq %struct.Node* %219, %220
  br i1 %check_cmp35, label %221, label %checkBb36

checkBb36:                                        ; preds = %218
  call void @check_flag()
  br label %221

; <label>:221                                     ; preds = %checkBb36, %218
  %222 = getelementptr inbounds %struct.Node* %219, i64 %216, !llfi_index !245
  %223 = getelementptr inbounds %struct.Node* %222, i32 0, i32 1, !llfi_index !246
  %224 = load i32* %223, align 4, !llfi_index !247
  %225 = load i32* %tid, align 4, !llfi_index !248
  %226 = sext i32 %225 to i64, !llfi_index !249
  %227 = sext i32 %225 to i64, !llfi_index !249
  %228 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !250
  %229 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !250
  %230 = getelementptr inbounds %struct.Node* %228, i64 %226, !llfi_index !251
  %231 = getelementptr inbounds %struct.Node* %229, i64 %227, !llfi_index !251
  %check_cmp37 = icmp eq %struct.Node* %230, %231
  br i1 %check_cmp37, label %232, label %checkBb38

checkBb38:                                        ; preds = %221
  call void @check_flag()
  br label %232

; <label>:232                                     ; preds = %checkBb38, %221
  %233 = getelementptr inbounds %struct.Node* %230, i32 0, i32 0, !llfi_index !252
  %234 = load i32* %233, align 4, !llfi_index !253
  %235 = load i32* %233, align 4, !llfi_index !253
  %236 = add nsw i32 %224, %234, !llfi_index !254
  %237 = add nsw i32 %224, %235, !llfi_index !254
  %238 = icmp slt i32 %214, %236, !llfi_index !255
  %239 = icmp slt i32 %214, %237, !llfi_index !255
  %check_cmp39 = icmp eq i1 %238, %239
  br i1 %check_cmp39, label %240, label %checkBb40

checkBb40:                                        ; preds = %232
  call void @check_flag()
  br label %240

; <label>:240                                     ; preds = %checkBb40, %232
  br i1 %238, label %241, label %302, !llfi_index !256

; <label>:241                                     ; preds = %240
  %242 = load i32* %i3, align 4, !llfi_index !257
  %243 = load i32* %i3, align 4, !llfi_index !257
  %check_cmp41 = icmp eq i32 %242, %243
  br i1 %check_cmp41, label %244, label %checkBb42

checkBb42:                                        ; preds = %241
  call void @check_flag()
  br label %244

; <label>:244                                     ; preds = %checkBb42, %241
  %245 = sext i32 %242 to i64, !llfi_index !258
  %246 = load i32** %h_graph_edges, align 8, !llfi_index !259
  %247 = load i32** %h_graph_edges, align 8, !llfi_index !259
  %248 = getelementptr inbounds i32* %246, i64 %245, !llfi_index !260
  %249 = getelementptr inbounds i32* %247, i64 %245, !llfi_index !260
  %250 = load i32* %248, align 4, !llfi_index !261
  %251 = load i32* %249, align 4, !llfi_index !261
  %check_cmp43 = icmp eq i32 %250, %251
  br i1 %check_cmp43, label %252, label %checkBb44

checkBb44:                                        ; preds = %244
  call void @check_flag()
  br label %252

; <label>:252                                     ; preds = %checkBb44, %244
  store i32 %250, i32* %id4, align 4, !llfi_index !262
  %253 = load i32* %id4, align 4, !llfi_index !263
  %254 = load i32* %id4, align 4, !llfi_index !263
  %check_cmp45 = icmp eq i32 %253, %254
  br i1 %check_cmp45, label %255, label %checkBb46

checkBb46:                                        ; preds = %252
  call void @check_flag()
  br label %255

; <label>:255                                     ; preds = %checkBb46, %252
  %256 = sext i32 %253 to i64, !llfi_index !264
  %257 = load i8** %h_graph_visited, align 8, !llfi_index !265
  %258 = load i8** %h_graph_visited, align 8, !llfi_index !265
  %259 = getelementptr inbounds i8* %257, i64 %256, !llfi_index !266
  %260 = getelementptr inbounds i8* %258, i64 %256, !llfi_index !266
  %261 = load i8* %259, align 1, !llfi_index !267
  %262 = load i8* %260, align 1, !llfi_index !267
  %263 = trunc i8 %261 to i1, !llfi_index !268
  %264 = trunc i8 %262 to i1, !llfi_index !268
  %check_cmp47 = icmp eq i1 %263, %264
  br i1 %check_cmp47, label %265, label %checkBb48

checkBb48:                                        ; preds = %255
  call void @check_flag()
  br label %265

; <label>:265                                     ; preds = %checkBb48, %255
  br i1 %263, label %298, label %266, !llfi_index !269

; <label>:266                                     ; preds = %265
  %267 = load i32* %tid, align 4, !llfi_index !270
  %268 = load i32* %tid, align 4, !llfi_index !270
  %check_cmp49 = icmp eq i32 %267, %268
  br i1 %check_cmp49, label %269, label %checkBb50

checkBb50:                                        ; preds = %266
  call void @check_flag()
  br label %269

; <label>:269                                     ; preds = %checkBb50, %266
  %270 = sext i32 %267 to i64, !llfi_index !271
  %271 = load i32** %h_cost, align 8, !llfi_index !272
  %272 = load i32** %h_cost, align 8, !llfi_index !272
  %273 = getelementptr inbounds i32* %271, i64 %270, !llfi_index !273
  %274 = getelementptr inbounds i32* %272, i64 %270, !llfi_index !273
  %275 = load i32* %273, align 4, !llfi_index !274
  %276 = load i32* %274, align 4, !llfi_index !274
  %277 = add nsw i32 %275, 1, !llfi_index !275
  %278 = add nsw i32 %276, 1, !llfi_index !275
  %check_cmp51 = icmp eq i32 %277, %278
  br i1 %check_cmp51, label %279, label %checkBb52

checkBb52:                                        ; preds = %269
  call void @check_flag()
  br label %279

; <label>:279                                     ; preds = %checkBb52, %269
  %280 = load i32* %id4, align 4, !llfi_index !276
  %281 = load i32* %id4, align 4, !llfi_index !276
  %282 = sext i32 %280 to i64, !llfi_index !277
  %283 = sext i32 %281 to i64, !llfi_index !277
  %284 = load i32** %h_cost, align 8, !llfi_index !278
  %285 = load i32** %h_cost, align 8, !llfi_index !278
  %286 = getelementptr inbounds i32* %284, i64 %282, !llfi_index !279
  %287 = getelementptr inbounds i32* %285, i64 %283, !llfi_index !279
  %check_cmp53 = icmp eq i32* %286, %287
  br i1 %check_cmp53, label %288, label %checkBb54

checkBb54:                                        ; preds = %279
  call void @check_flag()
  br label %288

; <label>:288                                     ; preds = %checkBb54, %279
  store i32 %277, i32* %286, align 4, !llfi_index !280
  %289 = load i32* %id4, align 4, !llfi_index !281
  %290 = load i32* %id4, align 4, !llfi_index !281
  %check_cmp55 = icmp eq i32 %289, %290
  br i1 %check_cmp55, label %291, label %checkBb56

checkBb56:                                        ; preds = %288
  call void @check_flag()
  br label %291

; <label>:291                                     ; preds = %checkBb56, %288
  %292 = sext i32 %289 to i64, !llfi_index !282
  %293 = load i8** %h_updating_graph_mask, align 8, !llfi_index !283
  %294 = load i8** %h_updating_graph_mask, align 8, !llfi_index !283
  %295 = getelementptr inbounds i8* %293, i64 %292, !llfi_index !284
  %296 = getelementptr inbounds i8* %294, i64 %292, !llfi_index !284
  %check_cmp57 = icmp eq i8* %295, %296
  br i1 %check_cmp57, label %297, label %checkBb58

checkBb58:                                        ; preds = %291
  call void @check_flag()
  br label %297

; <label>:297                                     ; preds = %checkBb58, %291
  store i8 1, i8* %295, align 1, !llfi_index !285
  br label %298, !llfi_index !286

; <label>:298                                     ; preds = %297, %265
  br label %299, !llfi_index !287

; <label>:299                                     ; preds = %298
  %300 = load i32* %i3, align 4, !llfi_index !288
  %301 = add nsw i32 %300, 1, !llfi_index !289
  store i32 %301, i32* %i3, align 4, !llfi_index !290
  br label %213, !llfi_index !291

; <label>:302                                     ; preds = %240
  br label %303, !llfi_index !292

; <label>:303                                     ; preds = %302, %189
  br label %304, !llfi_index !293

; <label>:304                                     ; preds = %303
  %305 = load i32* %tid, align 4, !llfi_index !294
  %306 = add nsw i32 %305, 1, !llfi_index !295
  store i32 %306, i32* %tid, align 4, !llfi_index !296
  br label %168, !llfi_index !297

; <label>:307                                     ; preds = %173
  store i32 0, i32* %tid5, align 4, !llfi_index !298
  br label %308, !llfi_index !299

; <label>:308                                     ; preds = %359, %307
  %309 = load i32* %tid5, align 4, !llfi_index !300
  %310 = load i32* %no_of_nodes, align 4, !llfi_index !301
  %311 = icmp slt i32 %309, %310, !llfi_index !302
  %312 = icmp slt i32 %309, %310, !llfi_index !302
  %check_cmp59 = icmp eq i1 %311, %312
  br i1 %check_cmp59, label %313, label %checkBb60

checkBb60:                                        ; preds = %308
  call void @check_flag()
  br label %313

; <label>:313                                     ; preds = %checkBb60, %308
  br i1 %311, label %314, label %362, !llfi_index !303

; <label>:314                                     ; preds = %313
  %315 = load i32* %tid5, align 4, !llfi_index !304
  %316 = load i32* %tid5, align 4, !llfi_index !304
  %check_cmp61 = icmp eq i32 %315, %316
  br i1 %check_cmp61, label %317, label %checkBb62

checkBb62:                                        ; preds = %314
  call void @check_flag()
  br label %317

; <label>:317                                     ; preds = %checkBb62, %314
  %318 = sext i32 %315 to i64, !llfi_index !305
  %319 = load i8** %h_updating_graph_mask, align 8, !llfi_index !306
  %320 = load i8** %h_updating_graph_mask, align 8, !llfi_index !306
  %321 = getelementptr inbounds i8* %319, i64 %318, !llfi_index !307
  %322 = getelementptr inbounds i8* %320, i64 %318, !llfi_index !307
  %323 = load i8* %321, align 1, !llfi_index !308
  %324 = load i8* %322, align 1, !llfi_index !308
  %325 = trunc i8 %323 to i1, !llfi_index !309
  %326 = trunc i8 %324 to i1, !llfi_index !309
  %327 = zext i1 %325 to i32, !llfi_index !310
  %328 = zext i1 %326 to i32, !llfi_index !310
  %329 = icmp eq i32 %327, 1, !llfi_index !311
  %330 = icmp eq i32 %328, 1, !llfi_index !311
  %check_cmp63 = icmp eq i1 %329, %330
  br i1 %check_cmp63, label %331, label %checkBb64

checkBb64:                                        ; preds = %317
  call void @check_flag()
  br label %331

; <label>:331                                     ; preds = %checkBb64, %317
  br i1 %329, label %332, label %358, !llfi_index !312

; <label>:332                                     ; preds = %331
  %333 = load i32* %tid5, align 4, !llfi_index !313
  %334 = load i32* %tid5, align 4, !llfi_index !313
  %check_cmp65 = icmp eq i32 %333, %334
  br i1 %check_cmp65, label %335, label %checkBb66

checkBb66:                                        ; preds = %332
  call void @check_flag()
  br label %335

; <label>:335                                     ; preds = %checkBb66, %332
  %336 = sext i32 %333 to i64, !llfi_index !314
  %337 = load i8** %h_graph_mask, align 8, !llfi_index !315
  %338 = load i8** %h_graph_mask, align 8, !llfi_index !315
  %339 = getelementptr inbounds i8* %337, i64 %336, !llfi_index !316
  %340 = getelementptr inbounds i8* %338, i64 %336, !llfi_index !316
  %check_cmp67 = icmp eq i8* %339, %340
  br i1 %check_cmp67, label %341, label %checkBb68

checkBb68:                                        ; preds = %335
  call void @check_flag()
  br label %341

; <label>:341                                     ; preds = %checkBb68, %335
  store i8 1, i8* %339, align 1, !llfi_index !317
  %342 = load i32* %tid5, align 4, !llfi_index !318
  %343 = load i32* %tid5, align 4, !llfi_index !318
  %check_cmp69 = icmp eq i32 %342, %343
  br i1 %check_cmp69, label %344, label %checkBb70

checkBb70:                                        ; preds = %341
  call void @check_flag()
  br label %344

; <label>:344                                     ; preds = %checkBb70, %341
  %345 = sext i32 %342 to i64, !llfi_index !319
  %346 = load i8** %h_graph_visited, align 8, !llfi_index !320
  %347 = load i8** %h_graph_visited, align 8, !llfi_index !320
  %348 = getelementptr inbounds i8* %346, i64 %345, !llfi_index !321
  %349 = getelementptr inbounds i8* %347, i64 %345, !llfi_index !321
  %check_cmp71 = icmp eq i8* %348, %349
  br i1 %check_cmp71, label %350, label %checkBb72

checkBb72:                                        ; preds = %344
  call void @check_flag()
  br label %350

; <label>:350                                     ; preds = %checkBb72, %344
  store i8 1, i8* %348, align 1, !llfi_index !322
  store i8 1, i8* %stop, align 1, !llfi_index !323
  %351 = load i32* %tid5, align 4, !llfi_index !324
  %352 = sext i32 %351 to i64, !llfi_index !325
  %353 = load i8** %h_updating_graph_mask, align 8, !llfi_index !326
  %354 = load i8** %h_updating_graph_mask, align 8, !llfi_index !326
  %355 = getelementptr inbounds i8* %353, i64 %352, !llfi_index !327
  %356 = getelementptr inbounds i8* %354, i64 %352, !llfi_index !327
  %check_cmp73 = icmp eq i8* %355, %356
  br i1 %check_cmp73, label %357, label %checkBb74

checkBb74:                                        ; preds = %350
  call void @check_flag()
  br label %357

; <label>:357                                     ; preds = %checkBb74, %350
  store i8 0, i8* %355, align 1, !llfi_index !328
  br label %358, !llfi_index !329

; <label>:358                                     ; preds = %357, %331
  br label %359, !llfi_index !330

; <label>:359                                     ; preds = %358
  %360 = load i32* %tid5, align 4, !llfi_index !331
  %361 = add nsw i32 %360, 1, !llfi_index !332
  store i32 %361, i32* %tid5, align 4, !llfi_index !333
  br label %308, !llfi_index !334

; <label>:362                                     ; preds = %313
  %363 = load i32* %k, align 4, !llfi_index !335
  %364 = add nsw i32 %363, 1, !llfi_index !336
  store i32 %364, i32* %k, align 4, !llfi_index !337
  br label %365, !llfi_index !338

; <label>:365                                     ; preds = %362
  %366 = load i8* %stop, align 1, !llfi_index !339
  %367 = trunc i8 %366 to i1, !llfi_index !340
  br i1 %367, label %167, label %368, !llfi_index !341

; <label>:368                                     ; preds = %365
  %369 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !llfi_index !342
  store %struct._IO_FILE* %369, %struct._IO_FILE** %fpo, align 8, !llfi_index !343
  store i32 0, i32* %i6, align 4, !llfi_index !344
  br label %370, !llfi_index !345

; <label>:370                                     ; preds = %393, %368
  %371 = load i32* %i6, align 4, !llfi_index !346
  %372 = load i32* %no_of_nodes, align 4, !llfi_index !347
  %373 = icmp slt i32 %371, %372, !llfi_index !348
  %374 = icmp slt i32 %371, %372, !llfi_index !348
  %check_cmp75 = icmp eq i1 %373, %374
  br i1 %check_cmp75, label %375, label %checkBb76

checkBb76:                                        ; preds = %370
  call void @check_flag()
  br label %375

; <label>:375                                     ; preds = %checkBb76, %370
  br i1 %373, label %376, label %396, !llfi_index !349

; <label>:376                                     ; preds = %375
  %377 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !350
  %378 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !350
  %check_cmp77 = icmp eq %struct._IO_FILE* %377, %378
  br i1 %check_cmp77, label %379, label %checkBb78

checkBb78:                                        ; preds = %376
  call void @check_flag()
  br label %379

; <label>:379                                     ; preds = %checkBb78, %376
  %380 = load i32* %i6, align 4, !llfi_index !351
  %381 = load i32* %i6, align 4, !llfi_index !352
  %382 = load i32* %i6, align 4, !llfi_index !352
  %383 = sext i32 %381 to i64, !llfi_index !353
  %384 = sext i32 %382 to i64, !llfi_index !353
  %385 = load i32** %h_cost, align 8, !llfi_index !354
  %386 = load i32** %h_cost, align 8, !llfi_index !354
  %387 = getelementptr inbounds i32* %385, i64 %383, !llfi_index !355
  %388 = getelementptr inbounds i32* %386, i64 %384, !llfi_index !355
  %389 = load i32* %387, align 4, !llfi_index !356
  %390 = load i32* %388, align 4, !llfi_index !356
  %check_cmp79 = icmp eq i32 %389, %390
  br i1 %check_cmp79, label %391, label %checkBb80

checkBb80:                                        ; preds = %379
  call void @check_flag()
  br label %391

; <label>:391                                     ; preds = %checkBb80, %379
  %392 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %377, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %380, i32 %389), !llfi_index !357
  br label %393, !llfi_index !358

; <label>:393                                     ; preds = %391
  %394 = load i32* %i6, align 4, !llfi_index !359
  %395 = add nsw i32 %394, 1, !llfi_index !360
  store i32 %395, i32* %i6, align 4, !llfi_index !361
  br label %370, !llfi_index !362

; <label>:396                                     ; preds = %375
  %397 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !363
  %398 = call i32 @fclose(%struct._IO_FILE* %397), !llfi_index !364
  %399 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !365
  %400 = bitcast %struct.Node* %399 to i8*, !llfi_index !366
  call void @free(i8* %400) #6, !llfi_index !367
  %401 = load i32** %h_graph_edges, align 8, !llfi_index !368
  %402 = bitcast i32* %401 to i8*, !llfi_index !369
  call void @free(i8* %402) #6, !llfi_index !370
  %403 = load i8** %h_graph_mask, align 8, !llfi_index !371
  call void @free(i8* %403) #6, !llfi_index !372
  %404 = load i8** %h_updating_graph_mask, align 8, !llfi_index !373
  call void @free(i8* %404) #6, !llfi_index !374
  %405 = load i8** %h_graph_visited, align 8, !llfi_index !375
  call void @free(i8* %405) #6, !llfi_index !376
  %406 = load i32** %h_cost, align 8, !llfi_index !377
  %407 = bitcast i32* %406 to i8*, !llfi_index !378
  call void @free(i8* %407) #6, !llfi_index !379
  br label %408, !llfi_index !380

; <label>:408                                     ; preds = %396, %16
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
