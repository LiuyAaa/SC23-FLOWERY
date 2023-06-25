; ModuleID = 'link-unreadable.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }

@fp = global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str10 = private unnamed_addr constant [59 x i8] c"**********************SDC DETECTED!**********************\0A\00", align 1

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
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0)), !llfi_index !62
  %13 = load i8** %input_f, align 8, !llfi_index !63
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !64
  store %struct._IO_FILE* %14, %struct._IO_FILE** @fp, align 8, !llfi_index !65
  %15 = load %struct._IO_FILE** @fp, align 8, !llfi_index !66
  %16 = icmp ne %struct._IO_FILE* %15, null, !llfi_index !67
  br i1 %16, label %19, label %17, !llfi_index !68

; <label>:17                                      ; preds = %8
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0)), !llfi_index !69
  br label %423, !llfi_index !70

; <label>:19                                      ; preds = %8
  store i32 0, i32* %source, align 4, !llfi_index !71
  %20 = load %struct._IO_FILE** @fp, align 8, !llfi_index !72
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %no_of_nodes), !llfi_index !73
  %22 = load i32* %no_of_nodes, align 4, !llfi_index !74
  %23 = sext i32 %22 to i64, !llfi_index !75
  %24 = mul i64 8, %23, !llfi_index !76
  %25 = call noalias i8* @malloc(i64 %24) #6, !llfi_index !77
  %26 = bitcast i8* %25 to %struct.Node*, !llfi_index !78
  store %struct.Node* %26, %struct.Node** %h_graph_nodes, align 8, !llfi_index !79
  %27 = load i32* %no_of_nodes, align 4, !llfi_index !80
  %28 = sext i32 %27 to i64, !llfi_index !81
  %29 = mul i64 1, %28, !llfi_index !82
  %30 = call noalias i8* @malloc(i64 %29) #6, !llfi_index !83
  store i8* %30, i8** %h_graph_mask, align 8, !llfi_index !84
  %31 = load i32* %no_of_nodes, align 4, !llfi_index !85
  %32 = sext i32 %31 to i64, !llfi_index !86
  %33 = mul i64 1, %32, !llfi_index !87
  %34 = call noalias i8* @malloc(i64 %33) #6, !llfi_index !88
  store i8* %34, i8** %h_updating_graph_mask, align 8, !llfi_index !89
  %35 = load i32* %no_of_nodes, align 4, !llfi_index !90
  %36 = sext i32 %35 to i64, !llfi_index !91
  %37 = mul i64 1, %36, !llfi_index !92
  %38 = call noalias i8* @malloc(i64 %37) #6, !llfi_index !93
  store i8* %38, i8** %h_graph_visited, align 8, !llfi_index !94
  store i32 0, i32* %i, align 4, !llfi_index !95
  br label %39, !llfi_index !96

; <label>:39                                      ; preds = %93, %19
  %40 = load i32* %i, align 4, !llfi_index !97
  %41 = load i32* %no_of_nodes, align 4, !llfi_index !98
  %42 = icmp ult i32 %40, %41, !llfi_index !99
  %43 = icmp ult i32 %40, %41, !llfi_index !99
  %check_cmp = icmp eq i1 %42, %43
  br i1 %check_cmp, label %44, label %checkBb

checkBb:                                          ; preds = %39
  call void @check_flag()
  br label %44

; <label>:44                                      ; preds = %checkBb, %39
  br i1 %42, label %45, label %94, !llfi_index !100

; <label>:45                                      ; preds = %44
  %46 = load %struct._IO_FILE** @fp, align 8, !llfi_index !101
  %47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32* %start, i32* %edgeno), !llfi_index !102
  %48 = load i32* %start, align 4, !llfi_index !103
  %49 = load i32* %start, align 4, !llfi_index !103
  %check_cmp1 = icmp eq i32 %48, %49
  br i1 %check_cmp1, label %50, label %checkBb2

checkBb2:                                         ; preds = %45
  call void @check_flag()
  br label %50

; <label>:50                                      ; preds = %checkBb2, %45
  %51 = load i32* %i, align 4, !llfi_index !104
  %52 = load i32* %i, align 4, !llfi_index !104
  %53 = zext i32 %51 to i64, !llfi_index !105
  %54 = zext i32 %52 to i64, !llfi_index !105
  %55 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !106
  %56 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !106
  %57 = getelementptr inbounds %struct.Node* %55, i64 %53, !llfi_index !107
  %58 = getelementptr inbounds %struct.Node* %56, i64 %54, !llfi_index !107
  %59 = getelementptr inbounds %struct.Node* %57, i32 0, i32 0, !llfi_index !108
  %60 = getelementptr inbounds %struct.Node* %58, i32 0, i32 0, !llfi_index !108
  %check_cmp3 = icmp eq i32* %59, %60
  br i1 %check_cmp3, label %61, label %checkBb4

checkBb4:                                         ; preds = %50
  call void @check_flag()
  br label %61

; <label>:61                                      ; preds = %checkBb4, %50
  store i32 %48, i32* %59, align 4, !llfi_index !109
  %62 = load i32* %edgeno, align 4, !llfi_index !110
  %63 = load i32* %edgeno, align 4, !llfi_index !110
  %check_cmp5 = icmp eq i32 %62, %63
  br i1 %check_cmp5, label %64, label %checkBb6

checkBb6:                                         ; preds = %61
  call void @check_flag()
  br label %64

; <label>:64                                      ; preds = %checkBb6, %61
  %65 = load i32* %i, align 4, !llfi_index !111
  %66 = load i32* %i, align 4, !llfi_index !111
  %67 = zext i32 %65 to i64, !llfi_index !112
  %68 = zext i32 %66 to i64, !llfi_index !112
  %69 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !113
  %70 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !113
  %71 = getelementptr inbounds %struct.Node* %69, i64 %67, !llfi_index !114
  %72 = getelementptr inbounds %struct.Node* %70, i64 %68, !llfi_index !114
  %73 = getelementptr inbounds %struct.Node* %71, i32 0, i32 1, !llfi_index !115
  %74 = getelementptr inbounds %struct.Node* %72, i32 0, i32 1, !llfi_index !115
  %check_cmp7 = icmp eq i32* %73, %74
  br i1 %check_cmp7, label %75, label %checkBb8

checkBb8:                                         ; preds = %64
  call void @check_flag()
  br label %75

; <label>:75                                      ; preds = %checkBb8, %64
  store i32 %62, i32* %73, align 4, !llfi_index !116
  %76 = load i32* %i, align 4, !llfi_index !117
  %77 = zext i32 %76 to i64, !llfi_index !118
  %78 = load i8** %h_graph_mask, align 8, !llfi_index !119
  %79 = getelementptr inbounds i8* %78, i64 %77, !llfi_index !120
  store i8 0, i8* %79, align 1, !llfi_index !121
  %80 = load i32* %i, align 4, !llfi_index !122
  %81 = zext i32 %80 to i64, !llfi_index !123
  %82 = load i8** %h_updating_graph_mask, align 8, !llfi_index !124
  %83 = getelementptr inbounds i8* %82, i64 %81, !llfi_index !125
  store i8 0, i8* %83, align 1, !llfi_index !126
  %84 = load i32* %i, align 4, !llfi_index !127
  %85 = zext i32 %84 to i64, !llfi_index !128
  %86 = load i8** %h_graph_visited, align 8, !llfi_index !129
  %87 = getelementptr inbounds i8* %86, i64 %85, !llfi_index !130
  store i8 0, i8* %87, align 1, !llfi_index !131
  br label %88, !llfi_index !132

; <label>:88                                      ; preds = %75
  %89 = load i32* %i, align 4, !llfi_index !133
  %90 = load i32* %i, align 4, !llfi_index !133
  %91 = add i32 %89, 1, !llfi_index !134
  %92 = add i32 %90, 1, !llfi_index !134
  %check_cmp9 = icmp eq i32 %91, %92
  br i1 %check_cmp9, label %93, label %checkBb10

checkBb10:                                        ; preds = %88
  call void @check_flag()
  br label %93

; <label>:93                                      ; preds = %checkBb10, %88
  store i32 %91, i32* %i, align 4, !llfi_index !135
  br label %39, !llfi_index !136

; <label>:94                                      ; preds = %44
  %95 = load %struct._IO_FILE** @fp, align 8, !llfi_index !137
  %96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %source), !llfi_index !138
  %97 = load i32* %source, align 4, !llfi_index !139
  %98 = sext i32 %97 to i64, !llfi_index !140
  %99 = load i8** %h_graph_mask, align 8, !llfi_index !141
  %100 = getelementptr inbounds i8* %99, i64 %98, !llfi_index !142
  store i8 1, i8* %100, align 1, !llfi_index !143
  %101 = load i32* %source, align 4, !llfi_index !144
  %102 = sext i32 %101 to i64, !llfi_index !145
  %103 = load i8** %h_graph_visited, align 8, !llfi_index !146
  %104 = getelementptr inbounds i8* %103, i64 %102, !llfi_index !147
  store i8 1, i8* %104, align 1, !llfi_index !148
  %105 = load %struct._IO_FILE** @fp, align 8, !llfi_index !149
  %106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %edge_list_size), !llfi_index !150
  %107 = load i32* %edge_list_size, align 4, !llfi_index !151
  %108 = sext i32 %107 to i64, !llfi_index !152
  %109 = mul i64 4, %108, !llfi_index !153
  %110 = call noalias i8* @malloc(i64 %109) #6, !llfi_index !154
  %111 = bitcast i8* %110 to i32*, !llfi_index !155
  store i32* %111, i32** %h_graph_edges, align 8, !llfi_index !156
  store i32 0, i32* %i1, align 4, !llfi_index !157
  br label %112, !llfi_index !158

; <label>:112                                     ; preds = %145, %94
  %113 = load i32* %i1, align 4, !llfi_index !159
  %114 = load i32* %i1, align 4, !llfi_index !159
  %115 = load i32* %edge_list_size, align 4, !llfi_index !160
  %116 = icmp slt i32 %113, %115, !llfi_index !161
  %117 = icmp slt i32 %114, %115, !llfi_index !161
  %check_cmp11 = icmp eq i1 %116, %117
  br i1 %check_cmp11, label %118, label %checkBb12

checkBb12:                                        ; preds = %112
  call void @check_flag()
  br label %118

; <label>:118                                     ; preds = %checkBb12, %112
  br i1 %116, label %119, label %146, !llfi_index !162

; <label>:119                                     ; preds = %118
  %120 = load %struct._IO_FILE** @fp, align 8, !llfi_index !163
  %121 = load %struct._IO_FILE** @fp, align 8, !llfi_index !163
  %check_cmp13 = icmp eq %struct._IO_FILE* %120, %121
  br i1 %check_cmp13, label %122, label %checkBb14

checkBb14:                                        ; preds = %119
  call void @check_flag()
  br label %122

; <label>:122                                     ; preds = %checkBb14, %119
  %123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %id), !llfi_index !164
  %124 = load %struct._IO_FILE** @fp, align 8, !llfi_index !165
  %125 = load %struct._IO_FILE** @fp, align 8, !llfi_index !165
  %check_cmp15 = icmp eq %struct._IO_FILE* %124, %125
  br i1 %check_cmp15, label %126, label %checkBb16

checkBb16:                                        ; preds = %122
  call void @check_flag()
  br label %126

; <label>:126                                     ; preds = %checkBb16, %122
  %127 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %cost), !llfi_index !166
  %128 = load i32* %id, align 4, !llfi_index !167
  %129 = load i32* %id, align 4, !llfi_index !167
  %check_cmp17 = icmp eq i32 %128, %129
  br i1 %check_cmp17, label %130, label %checkBb18

checkBb18:                                        ; preds = %126
  call void @check_flag()
  br label %130

; <label>:130                                     ; preds = %checkBb18, %126
  %131 = load i32* %i1, align 4, !llfi_index !168
  %132 = load i32* %i1, align 4, !llfi_index !168
  %check_cmp19 = icmp eq i32 %131, %132
  br i1 %check_cmp19, label %133, label %checkBb20

checkBb20:                                        ; preds = %130
  call void @check_flag()
  br label %133

; <label>:133                                     ; preds = %checkBb20, %130
  %134 = sext i32 %131 to i64, !llfi_index !169
  %135 = load i32** %h_graph_edges, align 8, !llfi_index !170
  %136 = load i32** %h_graph_edges, align 8, !llfi_index !170
  %137 = getelementptr inbounds i32* %135, i64 %134, !llfi_index !171
  %138 = getelementptr inbounds i32* %136, i64 %134, !llfi_index !171
  %check_cmp21 = icmp eq i32* %137, %138
  br i1 %check_cmp21, label %139, label %checkBb22

checkBb22:                                        ; preds = %133
  call void @check_flag()
  br label %139

; <label>:139                                     ; preds = %checkBb22, %133
  store i32 %128, i32* %137, align 4, !llfi_index !172
  br label %140, !llfi_index !173

; <label>:140                                     ; preds = %139
  %141 = load i32* %i1, align 4, !llfi_index !174
  %142 = load i32* %i1, align 4, !llfi_index !174
  %143 = add nsw i32 %141, 1, !llfi_index !175
  %144 = add nsw i32 %142, 1, !llfi_index !175
  %check_cmp23 = icmp eq i32 %143, %144
  br i1 %check_cmp23, label %145, label %checkBb24

checkBb24:                                        ; preds = %140
  call void @check_flag()
  br label %145

; <label>:145                                     ; preds = %checkBb24, %140
  store i32 %143, i32* %i1, align 4, !llfi_index !176
  br label %112, !llfi_index !177

; <label>:146                                     ; preds = %118
  %147 = load %struct._IO_FILE** @fp, align 8, !llfi_index !178
  %148 = icmp ne %struct._IO_FILE* %147, null, !llfi_index !179
  br i1 %148, label %149, label %152, !llfi_index !180

; <label>:149                                     ; preds = %146
  %150 = load %struct._IO_FILE** @fp, align 8, !llfi_index !181
  %151 = call i32 @fclose(%struct._IO_FILE* %150), !llfi_index !182
  br label %152, !llfi_index !183

; <label>:152                                     ; preds = %149, %146
  %153 = load i32* %no_of_nodes, align 4, !llfi_index !184
  %154 = sext i32 %153 to i64, !llfi_index !185
  %155 = mul i64 4, %154, !llfi_index !186
  %156 = call noalias i8* @malloc(i64 %155) #6, !llfi_index !187
  %157 = bitcast i8* %156 to i32*, !llfi_index !188
  store i32* %157, i32** %h_cost, align 8, !llfi_index !189
  store i32 0, i32* %i2, align 4, !llfi_index !190
  br label %158, !llfi_index !191

; <label>:158                                     ; preds = %167, %152
  %159 = load i32* %i2, align 4, !llfi_index !192
  %160 = load i32* %no_of_nodes, align 4, !llfi_index !193
  %161 = icmp slt i32 %159, %160, !llfi_index !194
  br i1 %161, label %162, label %170, !llfi_index !195

; <label>:162                                     ; preds = %158
  %163 = load i32* %i2, align 4, !llfi_index !196
  %164 = sext i32 %163 to i64, !llfi_index !197
  %165 = load i32** %h_cost, align 8, !llfi_index !198
  %166 = getelementptr inbounds i32* %165, i64 %164, !llfi_index !199
  store i32 -1, i32* %166, align 4, !llfi_index !200
  br label %167, !llfi_index !201

; <label>:167                                     ; preds = %162
  %168 = load i32* %i2, align 4, !llfi_index !202
  %169 = add nsw i32 %168, 1, !llfi_index !203
  store i32 %169, i32* %i2, align 4, !llfi_index !204
  br label %158, !llfi_index !205

; <label>:170                                     ; preds = %158
  %171 = load i32* %source, align 4, !llfi_index !206
  %172 = sext i32 %171 to i64, !llfi_index !207
  %173 = load i32** %h_cost, align 8, !llfi_index !208
  %174 = getelementptr inbounds i32* %173, i64 %172, !llfi_index !209
  store i32 0, i32* %174, align 4, !llfi_index !210
  %175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0)), !llfi_index !211
  store i32 0, i32* %k, align 4, !llfi_index !212
  br label %176, !llfi_index !213

; <label>:176                                     ; preds = %374, %170
  store i8 0, i8* %stop, align 1, !llfi_index !214
  store i32 0, i32* %tid, align 4, !llfi_index !215
  br label %177, !llfi_index !216

; <label>:177                                     ; preds = %311, %176
  %178 = load i32* %tid, align 4, !llfi_index !217
  %179 = load i32* %tid, align 4, !llfi_index !217
  %180 = load i32* %no_of_nodes, align 4, !llfi_index !218
  %181 = icmp slt i32 %178, %180, !llfi_index !219
  %182 = icmp slt i32 %179, %180, !llfi_index !219
  %check_cmp25 = icmp eq i1 %181, %182
  br i1 %check_cmp25, label %183, label %checkBb26

checkBb26:                                        ; preds = %177
  call void @check_flag()
  br label %183

; <label>:183                                     ; preds = %checkBb26, %177
  br i1 %181, label %184, label %312, !llfi_index !220

; <label>:184                                     ; preds = %183
  %185 = load i32* %tid, align 4, !llfi_index !221
  %186 = sext i32 %185 to i64, !llfi_index !222
  %187 = load i8** %h_graph_mask, align 8, !llfi_index !223
  %188 = getelementptr inbounds i8* %187, i64 %186, !llfi_index !224
  %189 = load i8* %188, align 1, !llfi_index !225
  %190 = load i8* %188, align 1, !llfi_index !225
  %191 = trunc i8 %189 to i1, !llfi_index !226
  %192 = trunc i8 %190 to i1, !llfi_index !226
  %193 = zext i1 %191 to i32, !llfi_index !227
  %194 = zext i1 %192 to i32, !llfi_index !227
  %195 = icmp eq i32 %193, 1, !llfi_index !228
  %196 = icmp eq i32 %194, 1, !llfi_index !228
  %check_cmp27 = icmp eq i1 %195, %196
  br i1 %check_cmp27, label %197, label %checkBb28

checkBb28:                                        ; preds = %184
  call void @check_flag()
  br label %197

; <label>:197                                     ; preds = %checkBb28, %184
  br i1 %195, label %198, label %305, !llfi_index !229

; <label>:198                                     ; preds = %197
  %199 = load i32* %tid, align 4, !llfi_index !230
  %200 = sext i32 %199 to i64, !llfi_index !231
  %201 = load i8** %h_graph_mask, align 8, !llfi_index !232
  %202 = getelementptr inbounds i8* %201, i64 %200, !llfi_index !233
  store i8 0, i8* %202, align 1, !llfi_index !234
  %203 = load i32* %tid, align 4, !llfi_index !235
  %204 = load i32* %tid, align 4, !llfi_index !235
  %205 = sext i32 %203 to i64, !llfi_index !236
  %206 = sext i32 %204 to i64, !llfi_index !236
  %207 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !237
  %208 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !237
  %209 = getelementptr inbounds %struct.Node* %207, i64 %205, !llfi_index !238
  %210 = getelementptr inbounds %struct.Node* %208, i64 %206, !llfi_index !238
  %211 = getelementptr inbounds %struct.Node* %209, i32 0, i32 0, !llfi_index !239
  %212 = getelementptr inbounds %struct.Node* %210, i32 0, i32 0, !llfi_index !239
  %213 = load i32* %211, align 4, !llfi_index !240
  %214 = load i32* %212, align 4, !llfi_index !240
  %check_cmp29 = icmp eq i32 %213, %214
  br i1 %check_cmp29, label %215, label %checkBb30

checkBb30:                                        ; preds = %198
  call void @check_flag()
  br label %215

; <label>:215                                     ; preds = %checkBb30, %198
  store i32 %213, i32* %i3, align 4, !llfi_index !241
  br label %216, !llfi_index !242

; <label>:216                                     ; preds = %303, %215
  %217 = load i32* %i3, align 4, !llfi_index !243
  %218 = load i32* %i3, align 4, !llfi_index !243
  %219 = load i32* %tid, align 4, !llfi_index !244
  %220 = sext i32 %219 to i64, !llfi_index !245
  %221 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !246
  %222 = getelementptr inbounds %struct.Node* %221, i64 %220, !llfi_index !247
  %223 = getelementptr inbounds %struct.Node* %222, i32 0, i32 1, !llfi_index !248
  %224 = load i32* %223, align 4, !llfi_index !249
  %225 = load i32* %tid, align 4, !llfi_index !250
  %226 = load i32* %tid, align 4, !llfi_index !250
  %check_cmp31 = icmp eq i32 %225, %226
  br i1 %check_cmp31, label %227, label %checkBb32

checkBb32:                                        ; preds = %216
  call void @check_flag()
  br label %227

; <label>:227                                     ; preds = %checkBb32, %216
  %228 = sext i32 %225 to i64, !llfi_index !251
  %229 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !252
  %230 = getelementptr inbounds %struct.Node* %229, i64 %228, !llfi_index !253
  %231 = getelementptr inbounds %struct.Node* %229, i64 %228, !llfi_index !253
  %check_cmp33 = icmp eq %struct.Node* %230, %231
  br i1 %check_cmp33, label %232, label %checkBb34

checkBb34:                                        ; preds = %227
  call void @check_flag()
  br label %232

; <label>:232                                     ; preds = %checkBb34, %227
  %233 = getelementptr inbounds %struct.Node* %230, i32 0, i32 0, !llfi_index !254
  %234 = load i32* %233, align 4, !llfi_index !255
  %235 = load i32* %233, align 4, !llfi_index !255
  %236 = add nsw i32 %224, %234, !llfi_index !256
  %237 = add nsw i32 %224, %235, !llfi_index !256
  %238 = icmp slt i32 %217, %236, !llfi_index !257
  %239 = icmp slt i32 %218, %237, !llfi_index !257
  %check_cmp35 = icmp eq i1 %238, %239
  br i1 %check_cmp35, label %240, label %checkBb36

checkBb36:                                        ; preds = %232
  call void @check_flag()
  br label %240

; <label>:240                                     ; preds = %checkBb36, %232
  br i1 %238, label %241, label %304, !llfi_index !258

; <label>:241                                     ; preds = %240
  %242 = load i32* %i3, align 4, !llfi_index !259
  %243 = load i32* %i3, align 4, !llfi_index !259
  %check_cmp37 = icmp eq i32 %242, %243
  br i1 %check_cmp37, label %244, label %checkBb38

checkBb38:                                        ; preds = %241
  call void @check_flag()
  br label %244

; <label>:244                                     ; preds = %checkBb38, %241
  %245 = sext i32 %242 to i64, !llfi_index !260
  %246 = load i32** %h_graph_edges, align 8, !llfi_index !261
  %247 = getelementptr inbounds i32* %246, i64 %245, !llfi_index !262
  %248 = getelementptr inbounds i32* %246, i64 %245, !llfi_index !262
  %249 = load i32* %247, align 4, !llfi_index !263
  %250 = load i32* %248, align 4, !llfi_index !263
  %check_cmp39 = icmp eq i32 %249, %250
  br i1 %check_cmp39, label %251, label %checkBb40

checkBb40:                                        ; preds = %244
  call void @check_flag()
  br label %251

; <label>:251                                     ; preds = %checkBb40, %244
  store i32 %249, i32* %id4, align 4, !llfi_index !264
  %252 = load i32* %id4, align 4, !llfi_index !265
  %253 = load i32* %id4, align 4, !llfi_index !265
  %254 = sext i32 %252 to i64, !llfi_index !266
  %255 = sext i32 %253 to i64, !llfi_index !266
  %256 = load i8** %h_graph_visited, align 8, !llfi_index !267
  %257 = load i8** %h_graph_visited, align 8, !llfi_index !267
  %258 = getelementptr inbounds i8* %256, i64 %254, !llfi_index !268
  %259 = getelementptr inbounds i8* %257, i64 %255, !llfi_index !268
  %260 = load i8* %258, align 1, !llfi_index !269
  %261 = load i8* %259, align 1, !llfi_index !269
  %262 = trunc i8 %260 to i1, !llfi_index !270
  %263 = trunc i8 %261 to i1, !llfi_index !270
  %check_cmp41 = icmp eq i1 %262, %263
  br i1 %check_cmp41, label %264, label %checkBb42

checkBb42:                                        ; preds = %251
  call void @check_flag()
  br label %264

; <label>:264                                     ; preds = %checkBb42, %251
  br i1 %262, label %297, label %265, !llfi_index !271

; <label>:265                                     ; preds = %264
  %266 = load i32* %tid, align 4, !llfi_index !272
  %267 = load i32* %tid, align 4, !llfi_index !272
  %268 = sext i32 %266 to i64, !llfi_index !273
  %269 = sext i32 %267 to i64, !llfi_index !273
  %270 = load i32** %h_cost, align 8, !llfi_index !274
  %271 = load i32** %h_cost, align 8, !llfi_index !274
  %272 = getelementptr inbounds i32* %270, i64 %268, !llfi_index !275
  %273 = getelementptr inbounds i32* %271, i64 %269, !llfi_index !275
  %274 = load i32* %272, align 4, !llfi_index !276
  %275 = load i32* %273, align 4, !llfi_index !276
  %276 = add nsw i32 %274, 1, !llfi_index !277
  %277 = add nsw i32 %275, 1, !llfi_index !277
  %check_cmp43 = icmp eq i32 %276, %277
  br i1 %check_cmp43, label %278, label %checkBb44

checkBb44:                                        ; preds = %265
  call void @check_flag()
  br label %278

; <label>:278                                     ; preds = %checkBb44, %265
  %279 = load i32* %id4, align 4, !llfi_index !278
  %280 = load i32* %id4, align 4, !llfi_index !278
  %281 = sext i32 %279 to i64, !llfi_index !279
  %282 = sext i32 %280 to i64, !llfi_index !279
  %283 = load i32** %h_cost, align 8, !llfi_index !280
  %284 = load i32** %h_cost, align 8, !llfi_index !280
  %285 = getelementptr inbounds i32* %283, i64 %281, !llfi_index !281
  %286 = getelementptr inbounds i32* %284, i64 %282, !llfi_index !281
  %check_cmp45 = icmp eq i32* %285, %286
  br i1 %check_cmp45, label %287, label %checkBb46

checkBb46:                                        ; preds = %278
  call void @check_flag()
  br label %287

; <label>:287                                     ; preds = %checkBb46, %278
  store i32 %276, i32* %285, align 4, !llfi_index !282
  %288 = load i32* %id4, align 4, !llfi_index !283
  %289 = load i32* %id4, align 4, !llfi_index !283
  %290 = sext i32 %288 to i64, !llfi_index !284
  %291 = sext i32 %289 to i64, !llfi_index !284
  %292 = load i8** %h_updating_graph_mask, align 8, !llfi_index !285
  %293 = load i8** %h_updating_graph_mask, align 8, !llfi_index !285
  %294 = getelementptr inbounds i8* %292, i64 %290, !llfi_index !286
  %295 = getelementptr inbounds i8* %293, i64 %291, !llfi_index !286
  %check_cmp47 = icmp eq i8* %294, %295
  br i1 %check_cmp47, label %296, label %checkBb48

checkBb48:                                        ; preds = %287
  call void @check_flag()
  br label %296

; <label>:296                                     ; preds = %checkBb48, %287
  store i8 1, i8* %294, align 1, !llfi_index !287
  br label %297, !llfi_index !288

; <label>:297                                     ; preds = %296, %264
  br label %298, !llfi_index !289

; <label>:298                                     ; preds = %297
  %299 = load i32* %i3, align 4, !llfi_index !290
  %300 = load i32* %i3, align 4, !llfi_index !290
  %301 = add nsw i32 %299, 1, !llfi_index !291
  %302 = add nsw i32 %300, 1, !llfi_index !291
  %check_cmp49 = icmp eq i32 %301, %302
  br i1 %check_cmp49, label %303, label %checkBb50

checkBb50:                                        ; preds = %298
  call void @check_flag()
  br label %303

; <label>:303                                     ; preds = %checkBb50, %298
  store i32 %301, i32* %i3, align 4, !llfi_index !292
  br label %216, !llfi_index !293

; <label>:304                                     ; preds = %240
  br label %305, !llfi_index !294

; <label>:305                                     ; preds = %304, %197
  br label %306, !llfi_index !295

; <label>:306                                     ; preds = %305
  %307 = load i32* %tid, align 4, !llfi_index !296
  %308 = load i32* %tid, align 4, !llfi_index !296
  %309 = add nsw i32 %307, 1, !llfi_index !297
  %310 = add nsw i32 %308, 1, !llfi_index !297
  %check_cmp51 = icmp eq i32 %309, %310
  br i1 %check_cmp51, label %311, label %checkBb52

checkBb52:                                        ; preds = %306
  call void @check_flag()
  br label %311

; <label>:311                                     ; preds = %checkBb52, %306
  store i32 %309, i32* %tid, align 4, !llfi_index !298
  br label %177, !llfi_index !299

; <label>:312                                     ; preds = %183
  store i32 0, i32* %tid5, align 4, !llfi_index !300
  br label %313, !llfi_index !301

; <label>:313                                     ; preds = %370, %312
  %314 = load i32* %tid5, align 4, !llfi_index !302
  %315 = load i32* %tid5, align 4, !llfi_index !302
  %316 = load i32* %no_of_nodes, align 4, !llfi_index !303
  %317 = load i32* %no_of_nodes, align 4, !llfi_index !303
  %318 = icmp slt i32 %314, %316, !llfi_index !304
  %319 = icmp slt i32 %315, %317, !llfi_index !304
  %check_cmp53 = icmp eq i1 %318, %319
  br i1 %check_cmp53, label %320, label %checkBb54

checkBb54:                                        ; preds = %313
  call void @check_flag()
  br label %320

; <label>:320                                     ; preds = %checkBb54, %313
  br i1 %318, label %321, label %371, !llfi_index !305

; <label>:321                                     ; preds = %320
  %322 = load i32* %tid5, align 4, !llfi_index !306
  %323 = load i32* %tid5, align 4, !llfi_index !306
  %check_cmp55 = icmp eq i32 %322, %323
  br i1 %check_cmp55, label %324, label %checkBb56

checkBb56:                                        ; preds = %321
  call void @check_flag()
  br label %324

; <label>:324                                     ; preds = %checkBb56, %321
  %325 = sext i32 %322 to i64, !llfi_index !307
  %326 = load i8** %h_updating_graph_mask, align 8, !llfi_index !308
  %327 = load i8** %h_updating_graph_mask, align 8, !llfi_index !308
  %328 = getelementptr inbounds i8* %326, i64 %325, !llfi_index !309
  %329 = getelementptr inbounds i8* %327, i64 %325, !llfi_index !309
  %330 = load i8* %328, align 1, !llfi_index !310
  %331 = load i8* %329, align 1, !llfi_index !310
  %332 = trunc i8 %330 to i1, !llfi_index !311
  %333 = trunc i8 %331 to i1, !llfi_index !311
  %334 = zext i1 %332 to i32, !llfi_index !312
  %335 = zext i1 %333 to i32, !llfi_index !312
  %336 = icmp eq i32 %334, 1, !llfi_index !313
  %337 = icmp eq i32 %335, 1, !llfi_index !313
  %check_cmp57 = icmp eq i1 %336, %337
  br i1 %check_cmp57, label %338, label %checkBb58

checkBb58:                                        ; preds = %324
  call void @check_flag()
  br label %338

; <label>:338                                     ; preds = %checkBb58, %324
  br i1 %336, label %339, label %364, !llfi_index !314

; <label>:339                                     ; preds = %338
  %340 = load i32* %tid5, align 4, !llfi_index !315
  %341 = load i32* %tid5, align 4, !llfi_index !315
  %342 = sext i32 %340 to i64, !llfi_index !316
  %343 = sext i32 %341 to i64, !llfi_index !316
  %344 = load i8** %h_graph_mask, align 8, !llfi_index !317
  %345 = getelementptr inbounds i8* %344, i64 %342, !llfi_index !318
  %346 = getelementptr inbounds i8* %344, i64 %343, !llfi_index !318
  %check_cmp59 = icmp eq i8* %345, %346
  br i1 %check_cmp59, label %347, label %checkBb60

checkBb60:                                        ; preds = %339
  call void @check_flag()
  br label %347

; <label>:347                                     ; preds = %checkBb60, %339
  store i8 1, i8* %345, align 1, !llfi_index !319
  %348 = load i32* %tid5, align 4, !llfi_index !320
  %349 = load i32* %tid5, align 4, !llfi_index !320
  %350 = sext i32 %348 to i64, !llfi_index !321
  %351 = sext i32 %349 to i64, !llfi_index !321
  %352 = load i8** %h_graph_visited, align 8, !llfi_index !322
  %353 = load i8** %h_graph_visited, align 8, !llfi_index !322
  %354 = getelementptr inbounds i8* %352, i64 %350, !llfi_index !323
  %355 = getelementptr inbounds i8* %353, i64 %351, !llfi_index !323
  %check_cmp61 = icmp eq i8* %354, %355
  br i1 %check_cmp61, label %356, label %checkBb62

checkBb62:                                        ; preds = %347
  call void @check_flag()
  br label %356

; <label>:356                                     ; preds = %checkBb62, %347
  store i8 1, i8* %354, align 1, !llfi_index !324
  store i8 1, i8* %stop, align 1, !llfi_index !325
  %357 = load i32* %tid5, align 4, !llfi_index !326
  %358 = load i32* %tid5, align 4, !llfi_index !326
  %359 = sext i32 %357 to i64, !llfi_index !327
  %360 = sext i32 %358 to i64, !llfi_index !327
  %check_cmp63 = icmp eq i64 %359, %360
  br i1 %check_cmp63, label %361, label %checkBb64

checkBb64:                                        ; preds = %356
  call void @check_flag()
  br label %361

; <label>:361                                     ; preds = %checkBb64, %356
  %362 = load i8** %h_updating_graph_mask, align 8, !llfi_index !328
  %363 = getelementptr inbounds i8* %362, i64 %359, !llfi_index !329
  store i8 0, i8* %363, align 1, !llfi_index !330
  br label %364, !llfi_index !331

; <label>:364                                     ; preds = %361, %338
  br label %365, !llfi_index !332

; <label>:365                                     ; preds = %364
  %366 = load i32* %tid5, align 4, !llfi_index !333
  %367 = load i32* %tid5, align 4, !llfi_index !333
  %368 = add nsw i32 %366, 1, !llfi_index !334
  %369 = add nsw i32 %367, 1, !llfi_index !334
  %check_cmp65 = icmp eq i32 %368, %369
  br i1 %check_cmp65, label %370, label %checkBb66

checkBb66:                                        ; preds = %365
  call void @check_flag()
  br label %370

; <label>:370                                     ; preds = %checkBb66, %365
  store i32 %368, i32* %tid5, align 4, !llfi_index !335
  br label %313, !llfi_index !336

; <label>:371                                     ; preds = %320
  %372 = load i32* %k, align 4, !llfi_index !337
  %373 = add nsw i32 %372, 1, !llfi_index !338
  store i32 %373, i32* %k, align 4, !llfi_index !339
  br label %374, !llfi_index !340

; <label>:374                                     ; preds = %371
  %375 = load i8* %stop, align 1, !llfi_index !341
  %376 = trunc i8 %375 to i1, !llfi_index !342
  br i1 %376, label %176, label %377, !llfi_index !343

; <label>:377                                     ; preds = %374
  %378 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)), !llfi_index !344
  store %struct._IO_FILE* %378, %struct._IO_FILE** %fpo, align 8, !llfi_index !345
  store i32 0, i32* %i6, align 4, !llfi_index !346
  br label %379, !llfi_index !347

; <label>:379                                     ; preds = %410, %377
  %380 = load i32* %i6, align 4, !llfi_index !348
  %381 = load i32* %i6, align 4, !llfi_index !348
  %382 = load i32* %no_of_nodes, align 4, !llfi_index !349
  %383 = icmp slt i32 %380, %382, !llfi_index !350
  %384 = icmp slt i32 %381, %382, !llfi_index !350
  %check_cmp67 = icmp eq i1 %383, %384
  br i1 %check_cmp67, label %385, label %checkBb68

checkBb68:                                        ; preds = %379
  call void @check_flag()
  br label %385

; <label>:385                                     ; preds = %checkBb68, %379
  br i1 %383, label %386, label %411, !llfi_index !351

; <label>:386                                     ; preds = %385
  %387 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !352
  %388 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !352
  %check_cmp69 = icmp eq %struct._IO_FILE* %387, %388
  br i1 %check_cmp69, label %389, label %checkBb70

checkBb70:                                        ; preds = %386
  call void @check_flag()
  br label %389

; <label>:389                                     ; preds = %checkBb70, %386
  %390 = load i32* %i6, align 4, !llfi_index !353
  %391 = load i32* %i6, align 4, !llfi_index !353
  %check_cmp71 = icmp eq i32 %390, %391
  br i1 %check_cmp71, label %392, label %checkBb72

checkBb72:                                        ; preds = %389
  call void @check_flag()
  br label %392

; <label>:392                                     ; preds = %checkBb72, %389
  %393 = load i32* %i6, align 4, !llfi_index !354
  %394 = load i32* %i6, align 4, !llfi_index !354
  %395 = sext i32 %393 to i64, !llfi_index !355
  %396 = sext i32 %394 to i64, !llfi_index !355
  %397 = load i32** %h_cost, align 8, !llfi_index !356
  %398 = load i32** %h_cost, align 8, !llfi_index !356
  %399 = getelementptr inbounds i32* %397, i64 %395, !llfi_index !357
  %400 = getelementptr inbounds i32* %398, i64 %396, !llfi_index !357
  %401 = load i32* %399, align 4, !llfi_index !358
  %402 = load i32* %400, align 4, !llfi_index !358
  %check_cmp73 = icmp eq i32 %401, %402
  br i1 %check_cmp73, label %403, label %checkBb74

checkBb74:                                        ; preds = %392
  call void @check_flag()
  br label %403

; <label>:403                                     ; preds = %checkBb74, %392
  %404 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0), i32 %390, i32 %401), !llfi_index !359
  br label %405, !llfi_index !360

; <label>:405                                     ; preds = %403
  %406 = load i32* %i6, align 4, !llfi_index !361
  %407 = load i32* %i6, align 4, !llfi_index !361
  %408 = add nsw i32 %406, 1, !llfi_index !362
  %409 = add nsw i32 %407, 1, !llfi_index !362
  %check_cmp75 = icmp eq i32 %408, %409
  br i1 %check_cmp75, label %410, label %checkBb76

checkBb76:                                        ; preds = %405
  call void @check_flag()
  br label %410

; <label>:410                                     ; preds = %checkBb76, %405
  store i32 %408, i32* %i6, align 4, !llfi_index !363
  br label %379, !llfi_index !364

; <label>:411                                     ; preds = %385
  %412 = load %struct._IO_FILE** %fpo, align 8, !llfi_index !365
  %413 = call i32 @fclose(%struct._IO_FILE* %412), !llfi_index !366
  %414 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !367
  %415 = bitcast %struct.Node* %414 to i8*, !llfi_index !368
  call void @free(i8* %415) #6, !llfi_index !369
  %416 = load i32** %h_graph_edges, align 8, !llfi_index !370
  %417 = bitcast i32* %416 to i8*, !llfi_index !371
  call void @free(i8* %417) #6, !llfi_index !372
  %418 = load i8** %h_graph_mask, align 8, !llfi_index !373
  call void @free(i8* %418) #6, !llfi_index !374
  %419 = load i8** %h_updating_graph_mask, align 8, !llfi_index !375
  call void @free(i8* %419) #6, !llfi_index !376
  %420 = load i8** %h_graph_visited, align 8, !llfi_index !377
  call void @free(i8* %420) #6, !llfi_index !378
  %421 = load i32** %h_cost, align 8, !llfi_index !379
  %422 = bitcast i32* %421 to i8*, !llfi_index !380
  call void @free(i8* %422) #6, !llfi_index !381
  br label %423, !llfi_index !382

; <label>:423                                     ; preds = %411, %17
  ret void, !llfi_index !383
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @dumpIndex(i64)

; Function Attrs: nounwind uwtable
define void @check_flag() #4 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str10, i32 0, i32 0))
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
!382 = metadata !{i64 382}
!383 = metadata !{i64 383}
