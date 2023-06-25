; ModuleID = '/home/foo/zhengyang/cost-variation-study-in-duplication/initial-study/COUNTBBANDDC/bfs/bfs.ll'
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
  call void @exit(i32 0) #4, !llfi_index !56
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
  br label %280, !llfi_index !69

; <label>:18                                      ; preds = %8
  store i32 0, i32* %source, align 4, !llfi_index !70
  %19 = load %struct._IO_FILE** @fp, align 8, !llfi_index !71
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %no_of_nodes), !llfi_index !72
  %21 = load i32* %no_of_nodes, align 4, !llfi_index !73
  %22 = sext i32 %21 to i64, !llfi_index !74
  %23 = mul i64 8, %22, !llfi_index !75
  %24 = call noalias i8* @malloc(i64 %23) #5, !llfi_index !76
  %25 = bitcast i8* %24 to %struct.Node*, !llfi_index !77
  store %struct.Node* %25, %struct.Node** %h_graph_nodes, align 8, !llfi_index !78
  %26 = load i32* %no_of_nodes, align 4, !llfi_index !79
  %27 = sext i32 %26 to i64, !llfi_index !80
  %28 = mul i64 1, %27, !llfi_index !81
  %29 = call noalias i8* @malloc(i64 %28) #5, !llfi_index !82
  store i8* %29, i8** %h_graph_mask, align 8, !llfi_index !83
  %30 = load i32* %no_of_nodes, align 4, !llfi_index !84
  %31 = sext i32 %30 to i64, !llfi_index !85
  %32 = mul i64 1, %31, !llfi_index !86
  %33 = call noalias i8* @malloc(i64 %32) #5, !llfi_index !87
  store i8* %33, i8** %h_updating_graph_mask, align 8, !llfi_index !88
  %34 = load i32* %no_of_nodes, align 4, !llfi_index !89
  %35 = sext i32 %34 to i64, !llfi_index !90
  %36 = mul i64 1, %35, !llfi_index !91
  %37 = call noalias i8* @malloc(i64 %36) #5, !llfi_index !92
  store i8* %37, i8** %h_graph_visited, align 8, !llfi_index !93
  store i32 0, i32* %i, align 4, !llfi_index !94
  br label %38, !llfi_index !95

; <label>:38                                      ; preds = %69, %18
  %39 = load i32* %i, align 4, !llfi_index !96
  %40 = load i32* %no_of_nodes, align 4, !llfi_index !97
  %41 = icmp ult i32 %39, %40, !llfi_index !98
  br i1 %41, label %42, label %72, !llfi_index !99

; <label>:42                                      ; preds = %38
  %43 = load %struct._IO_FILE** @fp, align 8, !llfi_index !100
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32* %start, i32* %edgeno), !llfi_index !101
  %45 = load i32* %start, align 4, !llfi_index !102
  %46 = load i32* %i, align 4, !llfi_index !103
  %47 = zext i32 %46 to i64, !llfi_index !104
  %48 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !105
  %49 = getelementptr inbounds %struct.Node* %48, i64 %47, !llfi_index !106
  %50 = getelementptr inbounds %struct.Node* %49, i32 0, i32 0, !llfi_index !107
  store i32 %45, i32* %50, align 4, !llfi_index !108
  %51 = load i32* %edgeno, align 4, !llfi_index !109
  %52 = load i32* %i, align 4, !llfi_index !110
  %53 = zext i32 %52 to i64, !llfi_index !111
  %54 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !112
  %55 = getelementptr inbounds %struct.Node* %54, i64 %53, !llfi_index !113
  %56 = getelementptr inbounds %struct.Node* %55, i32 0, i32 1, !llfi_index !114
  store i32 %51, i32* %56, align 4, !llfi_index !115
  %57 = load i32* %i, align 4, !llfi_index !116
  %58 = zext i32 %57 to i64, !llfi_index !117
  %59 = load i8** %h_graph_mask, align 8, !llfi_index !118
  %60 = getelementptr inbounds i8* %59, i64 %58, !llfi_index !119
  store i8 0, i8* %60, align 1, !llfi_index !120
  %61 = load i32* %i, align 4, !llfi_index !121
  %62 = zext i32 %61 to i64, !llfi_index !122
  %63 = load i8** %h_updating_graph_mask, align 8, !llfi_index !123
  %64 = getelementptr inbounds i8* %63, i64 %62, !llfi_index !124
  store i8 0, i8* %64, align 1, !llfi_index !125
  %65 = load i32* %i, align 4, !llfi_index !126
  %66 = zext i32 %65 to i64, !llfi_index !127
  %67 = load i8** %h_graph_visited, align 8, !llfi_index !128
  %68 = getelementptr inbounds i8* %67, i64 %66, !llfi_index !129
  store i8 0, i8* %68, align 1, !llfi_index !130
  br label %69, !llfi_index !131

; <label>:69                                      ; preds = %42
  %70 = load i32* %i, align 4, !llfi_index !132
  %71 = add i32 %70, 1, !llfi_index !133
  store i32 %71, i32* %i, align 4, !llfi_index !134
  br label %38, !llfi_index !135

; <label>:72                                      ; preds = %38
  %73 = load %struct._IO_FILE** @fp, align 8, !llfi_index !136
  %74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %source), !llfi_index !137
  %75 = load i32* %source, align 4, !llfi_index !138
  %76 = sext i32 %75 to i64, !llfi_index !139
  %77 = load i8** %h_graph_mask, align 8, !llfi_index !140
  %78 = getelementptr inbounds i8* %77, i64 %76, !llfi_index !141
  store i8 1, i8* %78, align 1, !llfi_index !142
  %79 = load i32* %source, align 4, !llfi_index !143
  %80 = sext i32 %79 to i64, !llfi_index !144
  %81 = load i8** %h_graph_visited, align 8, !llfi_index !145
  %82 = getelementptr inbounds i8* %81, i64 %80, !llfi_index !146
  store i8 1, i8* %82, align 1, !llfi_index !147
  %83 = load %struct._IO_FILE** @fp, align 8, !llfi_index !148
  %84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %edge_list_size), !llfi_index !149
  %85 = load i32* %edge_list_size, align 4, !llfi_index !150
  %86 = sext i32 %85 to i64, !llfi_index !151
  %87 = mul i64 4, %86, !llfi_index !152
  %88 = call noalias i8* @malloc(i64 %87) #5, !llfi_index !153
  %89 = bitcast i8* %88 to i32*, !llfi_index !154
  store i32* %89, i32** %h_graph_edges, align 8, !llfi_index !155
  store i32 0, i32* %i1, align 4, !llfi_index !156
  br label %90, !llfi_index !157

; <label>:90                                      ; preds = %104, %72
  %91 = load i32* %i1, align 4, !llfi_index !158
  %92 = load i32* %edge_list_size, align 4, !llfi_index !159
  %93 = icmp slt i32 %91, %92, !llfi_index !160
  br i1 %93, label %94, label %107, !llfi_index !161

; <label>:94                                      ; preds = %90
  %95 = load %struct._IO_FILE** @fp, align 8, !llfi_index !162
  %96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %id), !llfi_index !163
  %97 = load %struct._IO_FILE** @fp, align 8, !llfi_index !164
  %98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %cost), !llfi_index !165
  %99 = load i32* %id, align 4, !llfi_index !166
  %100 = load i32* %i1, align 4, !llfi_index !167
  %101 = sext i32 %100 to i64, !llfi_index !168
  %102 = load i32** %h_graph_edges, align 8, !llfi_index !169
  %103 = getelementptr inbounds i32* %102, i64 %101, !llfi_index !170
  store i32 %99, i32* %103, align 4, !llfi_index !171
  br label %104, !llfi_index !172

; <label>:104                                     ; preds = %94
  %105 = load i32* %i1, align 4, !llfi_index !173
  %106 = add nsw i32 %105, 1, !llfi_index !174
  store i32 %106, i32* %i1, align 4, !llfi_index !175
  br label %90, !llfi_index !176

; <label>:107                                     ; preds = %90
  %108 = load %struct._IO_FILE** @fp, align 8, !llfi_index !177
  %109 = icmp ne %struct._IO_FILE* %108, null, !llfi_index !178
  br i1 %109, label %110, label %113, !llfi_index !179

; <label>:110                                     ; preds = %107
  %111 = load %struct._IO_FILE** @fp, align 8, !llfi_index !180
  %112 = call i32 @fclose(%struct._IO_FILE* %111), !llfi_index !181
  br label %113, !llfi_index !182

; <label>:113                                     ; preds = %110, %107
  %114 = load i32* %no_of_nodes, align 4, !llfi_index !183
  %115 = sext i32 %114 to i64, !llfi_index !184
  %116 = mul i64 4, %115, !llfi_index !185
  %117 = call noalias i8* @malloc(i64 %116) #5, !llfi_index !186
  %118 = bitcast i8* %117 to i32*, !llfi_index !187
  store i32* %118, i32** %h_cost, align 8, !llfi_index !188
  store i32 0, i32* %i2, align 4, !llfi_index !189
  br label %119, !llfi_index !190

; <label>:119                                     ; preds = %128, %113
  %120 = load i32* %i2, align 4, !llfi_index !191
  %121 = load i32* %no_of_nodes, align 4, !llfi_index !192
  %122 = icmp slt i32 %120, %121, !llfi_index !193
  br i1 %122, label %123, label %131, !llfi_index !194

; <label>:123                                     ; preds = %119
  %124 = load i32* %i2, align 4, !llfi_index !195
  %125 = sext i32 %124 to i64, !llfi_index !196
  %126 = load i32** %h_cost, align 8, !llfi_index !197
  %127 = getelementptr inbounds i32* %126, i64 %125, !llfi_index !198
  store i32 -1, i32* %127, align 4, !llfi_index !199
  br label %128, !llfi_index !200

; <label>:128                                     ; preds = %123
  %129 = load i32* %i2, align 4, !llfi_index !201
  %130 = add nsw i32 %129, 1, !llfi_index !202
  store i32 %130, i32* %i2, align 4, !llfi_index !203
  br label %119, !llfi_index !204

; <label>:131                                     ; preds = %119
  %132 = load i32* %source, align 4, !llfi_index !205
  %133 = sext i32 %132 to i64, !llfi_index !206
  %134 = load i32** %h_cost, align 8, !llfi_index !207
  %135 = getelementptr inbounds i32* %134, i64 %133, !llfi_index !208
  store i32 0, i32* %135, align 4, !llfi_index !209
  store i32 0, i32* %k, align 4, !llfi_index !210
  br label %136, !llfi_index !211

; <label>:136                                     ; preds = %247, %131
  store i8 0, i8* %stop, align 1, !llfi_index !212
  store i32 0, i32* %tid, align 4, !llfi_index !213
  br label %137, !llfi_index !214

; <label>:137                                     ; preds = %210, %136
  %138 = load i32* %tid, align 4, !llfi_index !215
  %139 = load i32* %no_of_nodes, align 4, !llfi_index !216
  %140 = icmp slt i32 %138, %139, !llfi_index !217
  br i1 %140, label %141, label %213, !llfi_index !218

; <label>:141                                     ; preds = %137
  %142 = load i32* %tid, align 4, !llfi_index !219
  %143 = sext i32 %142 to i64, !llfi_index !220
  %144 = load i8** %h_graph_mask, align 8, !llfi_index !221
  %145 = getelementptr inbounds i8* %144, i64 %143, !llfi_index !222
  %146 = load i8* %145, align 1, !llfi_index !223
  %147 = trunc i8 %146 to i1, !llfi_index !224
  %148 = zext i1 %147 to i32, !llfi_index !225
  %149 = icmp eq i32 %148, 1, !llfi_index !226
  br i1 %149, label %150, label %209, !llfi_index !227

; <label>:150                                     ; preds = %141
  %151 = load i32* %tid, align 4, !llfi_index !228
  %152 = sext i32 %151 to i64, !llfi_index !229
  %153 = load i8** %h_graph_mask, align 8, !llfi_index !230
  %154 = getelementptr inbounds i8* %153, i64 %152, !llfi_index !231
  store i8 0, i8* %154, align 1, !llfi_index !232
  %155 = load i32* %tid, align 4, !llfi_index !233
  %156 = sext i32 %155 to i64, !llfi_index !234
  %157 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !235
  %158 = getelementptr inbounds %struct.Node* %157, i64 %156, !llfi_index !236
  %159 = getelementptr inbounds %struct.Node* %158, i32 0, i32 0, !llfi_index !237
  %160 = load i32* %159, align 4, !llfi_index !238
  store i32 %160, i32* %i3, align 4, !llfi_index !239
  br label %161, !llfi_index !240

; <label>:161                                     ; preds = %205, %150
  %162 = load i32* %i3, align 4, !llfi_index !241
  %163 = load i32* %tid, align 4, !llfi_index !242
  %164 = sext i32 %163 to i64, !llfi_index !243
  %165 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !244
  %166 = getelementptr inbounds %struct.Node* %165, i64 %164, !llfi_index !245
  %167 = getelementptr inbounds %struct.Node* %166, i32 0, i32 1, !llfi_index !246
  %168 = load i32* %167, align 4, !llfi_index !247
  %169 = load i32* %tid, align 4, !llfi_index !248
  %170 = sext i32 %169 to i64, !llfi_index !249
  %171 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !250
  %172 = getelementptr inbounds %struct.Node* %171, i64 %170, !llfi_index !251
  %173 = getelementptr inbounds %struct.Node* %172, i32 0, i32 0, !llfi_index !252
  %174 = load i32* %173, align 4, !llfi_index !253
  %175 = add nsw i32 %168, %174, !llfi_index !254
  %176 = icmp slt i32 %162, %175, !llfi_index !255
  br i1 %176, label %177, label %208, !llfi_index !256

; <label>:177                                     ; preds = %161
  %178 = load i32* %i3, align 4, !llfi_index !257
  %179 = sext i32 %178 to i64, !llfi_index !258
  %180 = load i32** %h_graph_edges, align 8, !llfi_index !259
  %181 = getelementptr inbounds i32* %180, i64 %179, !llfi_index !260
  %182 = load i32* %181, align 4, !llfi_index !261
  store i32 %182, i32* %id4, align 4, !llfi_index !262
  %183 = load i32* %id4, align 4, !llfi_index !263
  %184 = sext i32 %183 to i64, !llfi_index !264
  %185 = load i8** %h_graph_visited, align 8, !llfi_index !265
  %186 = getelementptr inbounds i8* %185, i64 %184, !llfi_index !266
  %187 = load i8* %186, align 1, !llfi_index !267
  %188 = trunc i8 %187 to i1, !llfi_index !268
  br i1 %188, label %204, label %189, !llfi_index !269

; <label>:189                                     ; preds = %177
  %190 = load i32* %tid, align 4, !llfi_index !270
  %191 = sext i32 %190 to i64, !llfi_index !271
  %192 = load i32** %h_cost, align 8, !llfi_index !272
  %193 = getelementptr inbounds i32* %192, i64 %191, !llfi_index !273
  %194 = load i32* %193, align 4, !llfi_index !274
  %195 = add nsw i32 %194, 1, !llfi_index !275
  %196 = load i32* %id4, align 4, !llfi_index !276
  %197 = sext i32 %196 to i64, !llfi_index !277
  %198 = load i32** %h_cost, align 8, !llfi_index !278
  %199 = getelementptr inbounds i32* %198, i64 %197, !llfi_index !279
  store i32 %195, i32* %199, align 4, !llfi_index !280
  %200 = load i32* %id4, align 4, !llfi_index !281
  %201 = sext i32 %200 to i64, !llfi_index !282
  %202 = load i8** %h_updating_graph_mask, align 8, !llfi_index !283
  %203 = getelementptr inbounds i8* %202, i64 %201, !llfi_index !284
  store i8 1, i8* %203, align 1, !llfi_index !285
  br label %204, !llfi_index !286

; <label>:204                                     ; preds = %189, %177
  br label %205, !llfi_index !287

; <label>:205                                     ; preds = %204
  %206 = load i32* %i3, align 4, !llfi_index !288
  %207 = add nsw i32 %206, 1, !llfi_index !289
  store i32 %207, i32* %i3, align 4, !llfi_index !290
  br label %161, !llfi_index !291

; <label>:208                                     ; preds = %161
  br label %209, !llfi_index !292

; <label>:209                                     ; preds = %208, %141
  br label %210, !llfi_index !293

; <label>:210                                     ; preds = %209
  %211 = load i32* %tid, align 4, !llfi_index !294
  %212 = add nsw i32 %211, 1, !llfi_index !295
  store i32 %212, i32* %tid, align 4, !llfi_index !296
  br label %137, !llfi_index !297

; <label>:213                                     ; preds = %137
  store i32 0, i32* %tid5, align 4, !llfi_index !298
  br label %214, !llfi_index !299

; <label>:214                                     ; preds = %241, %213
  %215 = load i32* %tid5, align 4, !llfi_index !300
  %216 = load i32* %no_of_nodes, align 4, !llfi_index !301
  %217 = icmp slt i32 %215, %216, !llfi_index !302
  br i1 %217, label %218, label %244, !llfi_index !303

; <label>:218                                     ; preds = %214
  %219 = load i32* %tid5, align 4, !llfi_index !304
  %220 = sext i32 %219 to i64, !llfi_index !305
  %221 = load i8** %h_updating_graph_mask, align 8, !llfi_index !306
  %222 = getelementptr inbounds i8* %221, i64 %220, !llfi_index !307
  %223 = load i8* %222, align 1, !llfi_index !308
  %224 = trunc i8 %223 to i1, !llfi_index !309
  %225 = zext i1 %224 to i32, !llfi_index !310
  %226 = icmp eq i32 %225, 1, !llfi_index !311
  br i1 %226, label %227, label %240, !llfi_index !312

; <label>:227                                     ; preds = %218
  %228 = load i32* %tid5, align 4, !llfi_index !313
  %229 = sext i32 %228 to i64, !llfi_index !314
  %230 = load i8** %h_graph_mask, align 8, !llfi_index !315
  %231 = getelementptr inbounds i8* %230, i64 %229, !llfi_index !316
  store i8 1, i8* %231, align 1, !llfi_index !317
  %232 = load i32* %tid5, align 4, !llfi_index !318
  %233 = sext i32 %232 to i64, !llfi_index !319
  %234 = load i8** %h_graph_visited, align 8, !llfi_index !320
  %235 = getelementptr inbounds i8* %234, i64 %233, !llfi_index !321
  store i8 1, i8* %235, align 1, !llfi_index !322
  store i8 1, i8* %stop, align 1, !llfi_index !323
  %236 = load i32* %tid5, align 4, !llfi_index !324
  %237 = sext i32 %236 to i64, !llfi_index !325
  %238 = load i8** %h_updating_graph_mask, align 8, !llfi_index !326
  %239 = getelementptr inbounds i8* %238, i64 %237, !llfi_index !327
  store i8 0, i8* %239, align 1, !llfi_index !328
  br label %240, !llfi_index !329

; <label>:240                                     ; preds = %227, %218
  br label %241, !llfi_index !330

; <label>:241                                     ; preds = %240
  %242 = load i32* %tid5, align 4, !llfi_index !331
  %243 = add nsw i32 %242, 1, !llfi_index !332
  store i32 %243, i32* %tid5, align 4, !llfi_index !333
  br label %214, !llfi_index !334

; <label>:244                                     ; preds = %214
  %245 = load i32* %k, align 4, !llfi_index !335
  %246 = add nsw i32 %245, 1, !llfi_index !336
  store i32 %246, i32* %k, align 4, !llfi_index !337
  br label %247, !llfi_index !338

; <label>:247                                     ; preds = %244
  %248 = load i8* %stop, align 1, !llfi_index !339
  %249 = trunc i8 %248 to i1, !llfi_index !340
  br i1 %249, label %136, label %250, !llfi_index !341

; <label>:250                                     ; preds = %247
  %251 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !llfi_index !342
  store %struct._IO_FILE* %251, %struct._IO_FILE** %fpo, align 8, !llfi_index !343
  store i32 0, i32* %i6, align 4, !llfi_index !344
  br label %252, !llfi_index !345

; <label>:252                                     ; preds = %265, %250
  %253 = load i32* %i6, align 4, !llfi_index !346
  %254 = load i32* %no_of_nodes, align 4, !llfi_index !347
  %255 = icmp slt i32 %253, %254, !llfi_index !348
  br i1 %255, label %256, label %268, !llfi_index !349

; <label>:256                                     ; preds = %252
  %257 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !350
  %258 = load i32* %i6, align 4, !llfi_index !351
  %259 = load i32* %i6, align 4, !llfi_index !352
  %260 = sext i32 %259 to i64, !llfi_index !353
  %261 = load i32** %h_cost, align 8, !llfi_index !354
  %262 = getelementptr inbounds i32* %261, i64 %260, !llfi_index !355
  %263 = load i32* %262, align 4, !llfi_index !356
  %264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %258, i32 %263), !llfi_index !357
  br label %265, !llfi_index !358

; <label>:265                                     ; preds = %256
  %266 = load i32* %i6, align 4, !llfi_index !359
  %267 = add nsw i32 %266, 1, !llfi_index !360
  store i32 %267, i32* %i6, align 4, !llfi_index !361
  br label %252, !llfi_index !362

; <label>:268                                     ; preds = %252
  %269 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !363
  %270 = call i32 @fclose(%struct._IO_FILE* %269), !llfi_index !364
  %271 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !365
  %272 = bitcast %struct.Node* %271 to i8*, !llfi_index !366
  call void @free(i8* %272) #5, !llfi_index !367
  %273 = load i32** %h_graph_edges, align 8, !llfi_index !368
  %274 = bitcast i32* %273 to i8*, !llfi_index !369
  call void @free(i8* %274) #5, !llfi_index !370
  %275 = load i8** %h_graph_mask, align 8, !llfi_index !371
  call void @free(i8* %275) #5, !llfi_index !372
  %276 = load i8** %h_updating_graph_mask, align 8, !llfi_index !373
  call void @free(i8* %276) #5, !llfi_index !374
  %277 = load i8** %h_graph_visited, align 8, !llfi_index !375
  call void @free(i8* %277) #5, !llfi_index !376
  %278 = load i32** %h_cost, align 8, !llfi_index !377
  %279 = bitcast i32* %278 to i8*, !llfi_index !378
  call void @free(i8* %279) #5, !llfi_index !379
  br label %280, !llfi_index !380

; <label>:280                                     ; preds = %268, %16
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

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
