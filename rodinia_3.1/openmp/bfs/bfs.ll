
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'bfs.cpp'
source_filename = "bfs.cpp"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.Node = type { i32, i32 }

@__omp_rtl_debug_kind = weak_odr hidden constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden constant i32 0
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 3, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137_exec_mode = weak constant i8 2
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160_exec_mode = weak constant i8 1
@llvm.compiler.used = appending global [2 x i8*] [i8* @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137_exec_mode, i8* @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160_exec_mode], section "llvm.metadata"

; Function Attrs: convergent noinline norecurse nounwind optnone
define weak void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137(i64 noundef %0, i8* noundef %1, %struct.Node* noundef %2, i32* noundef %3, i8* noundef %4, i32* noundef %5, i8* noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.Node* %2, %struct.Node** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = bitcast i64* %8 to i32*
  %19 = call i32 @__kmpc_target_init(%struct.ident_t* @1, i8 2, i1 false, i1 false)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %32

21:                                               ; preds = %7
  %22 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @4)
  %23 = load i32, i32* %18, align 4
  %24 = bitcast i64* %15 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %15, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.Node*, %struct.Node** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i8*, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 %22, i32* %17, align 4
  call void @__omp_outlined__(i32* %17, i32* %16, i64 %25, i8* %26, %struct.Node* %27, i32* %28, i8* %29, i32* %30, i8* %31) #2
  call void @__kmpc_target_deinit(%struct.ident_t* @1, i8 2, i1 false)
  ret void

32:                                               ; preds = %7
  ret void
}

declare i32 @__kmpc_target_init(%struct.ident_t*, i8, i1, i1)

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_outlined__(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i8* noundef %3, %struct.Node* noundef %4, i32* noundef %5, i8* noundef %6, i32* noundef %7, i8* noundef %8) #1 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.Node*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca [9 x i8*], align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.Node* %4, %struct.Node** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* %8, i8** %18, align 8
  %31 = bitcast i64* %12 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  %34 = sub nsw i32 %33, 0
  %35 = sdiv i32 %34, 1
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp slt i32 0, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %9
  store i32 0, i32* %24, align 4
  %40 = load i32, i32* %22, align 4
  store i32 %40, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %41 = call i32 @__kmpc_get_hardware_num_threads_in_block()
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  call void @__kmpc_distribute_static_init_4(%struct.ident_t* @2, i32 %43, i32 91, i32* %27, i32* %24, i32* %25, i32* %26, i32 1, i32 %41)
  %44 = load i32, i32* %25, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %22, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %25, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %24, align 4
  store i32 %53, i32* %19, align 4
  br label %54

54:                                               ; preds = %108, %51
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %54
  %60 = load i32, i32* %24, align 4
  %61 = zext i32 %60 to i64
  %62 = load i32, i32* %25, align 4
  %63 = zext i32 %62 to i64
  %64 = load i32, i32* %31, align 4
  %65 = bitcast i64* %29 to i32*
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %29, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.Node*, %struct.Node** %14, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 0
  %74 = inttoptr i64 %61 to i8*
  store i8* %74, i8** %73, align 8
  %75 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 1
  %76 = inttoptr i64 %63 to i8*
  store i8* %76, i8** %75, align 8
  %77 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 2
  %78 = inttoptr i64 %66 to i8*
  store i8* %78, i8** %77, align 8
  %79 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 3
  store i8* %67, i8** %79, align 8
  %80 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 4
  %81 = bitcast %struct.Node* %68 to i8*
  store i8* %81, i8** %80, align 8
  %82 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 5
  %83 = bitcast i32* %69 to i8*
  store i8* %83, i8** %82, align 8
  %84 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 6
  store i8* %70, i8** %84, align 8
  %85 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 7
  %86 = bitcast i32* %71 to i8*
  store i8* %86, i8** %85, align 8
  %87 = getelementptr inbounds [9 x i8*], [9 x i8*]* %30, i64 0, i64 8
  store i8* %72, i8** %87, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = bitcast [9 x i8*]* %30 to i8**
  call void @__kmpc_parallel_51(%struct.ident_t* @4, i32 %89, i32 1, i32 -1, i32 -1, i8* bitcast (void (i32*, i32*, i64, i64, i64, i8*, %struct.Node*, i32*, i8*, i32*, i8*)* @__omp_outlined__1 to i8*), i8* null, i8** %90, i64 9)
  br label %91

91:                                               ; preds = %59
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %26, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %26, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* %26, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %25, align 4
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %22, align 4
  br label %108

106:                                              ; preds = %91
  %107 = load i32, i32* %25, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %25, align 4
  %110 = load i32, i32* %24, align 4
  store i32 %110, i32* %19, align 4
  br label %54

111:                                              ; preds = %54
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  call void @__kmpc_distribute_static_fini(%struct.ident_t* @2, i32 %114)
  br label %115

115:                                              ; preds = %112, %9
  ret void
}

declare i32 @__kmpc_get_hardware_num_threads_in_block()

declare void @__kmpc_distribute_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_outlined__1(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8* noundef %5, %struct.Node* noundef %6, i32* noundef %7, i8* noundef %8, i32* noundef %9, i8* noundef %10) #1 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.Node*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.Node* %6, %struct.Node** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i8* %10, i8** %22, align 8
  %35 = bitcast i64* %16 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = sub nsw i32 %37, 0
  %39 = sdiv i32 %38, 1
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %41 = load i32, i32* %25, align 4
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %138

43:                                               ; preds = %11
  store i32 0, i32* %28, align 4
  %44 = load i32, i32* %26, align 4
  store i32 %44, i32* %29, align 4
  %45 = load i64, i64* %14, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %15, align 8
  %48 = trunc i64 %47 to i32
  store i32 %46, i32* %28, align 4
  store i32 %48, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @3, i32 %50, i32 33, i32* %31, i32* %28, i32* %29, i32* %30, i32 1, i32 1)
  %51 = load i32, i32* %28, align 4
  store i32 %51, i32* %23, align 4
  br label %52

52:                                               ; preds = %130, %43
  %53 = load i32, i32* %23, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %15, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %134

57:                                               ; preds = %52
  %58 = load i32, i32* %23, align 4
  %59 = mul nsw i32 %58, 1
  %60 = add nsw i32 0, %59
  store i32 %60, i32* %32, align 4
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %32, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = trunc i8 %65 to i1
  %67 = zext i1 %66 to i32
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %128

69:                                               ; preds = %57
  %70 = load i8*, i8** %17, align 8
  %71 = load i32, i32* %32, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load %struct.Node*, %struct.Node** %18, align 8
  %75 = load i32, i32* %32, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Node, %struct.Node* %74, i64 %76
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %33, align 4
  br label %80

80:                                               ; preds = %124, %69
  %81 = load i32, i32* %33, align 4
  %82 = load %struct.Node*, %struct.Node** %18, align 8
  %83 = load i32, i32* %32, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.Node, %struct.Node* %82, i64 %84
  %86 = getelementptr inbounds %struct.Node, %struct.Node* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.Node*, %struct.Node** %18, align 8
  %89 = load i32, i32* %32, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Node, %struct.Node* %88, i64 %90
  %92 = getelementptr inbounds %struct.Node, %struct.Node* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %87, %93
  %95 = icmp slt i32 %81, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %80
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %33, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %34, align 4
  %102 = load i8*, i8** %20, align 8
  %103 = load i32, i32* %34, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %123, label %108

108:                                              ; preds = %96
  %109 = load i32*, i32** %21, align 8
  %110 = load i32, i32* %32, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %34, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i8*, i8** %22, align 8
  %120 = load i32, i32* %34, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 1, i8* %122, align 1
  br label %123

123:                                              ; preds = %108, %96
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %33, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %33, align 4
  br label %80, !llvm.loop !10

127:                                              ; preds = %80
  br label %128

128:                                              ; preds = %127, %57
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %30, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %23, align 4
  br label %52

134:                                              ; preds = %52
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  call void @__kmpc_distribute_static_fini(%struct.ident_t* @2, i32 %137)
  br label %138

138:                                              ; preds = %135, %11
  ret void
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_distribute_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: alwaysinline
declare void @__kmpc_parallel_51(%struct.ident_t*, i32, i32, i32, i32, i8*, i8*, i8**, i64) #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #2

declare void @__kmpc_target_deinit(%struct.ident_t*, i8, i1)

; Function Attrs: convergent noinline norecurse nounwind optnone
define weak void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160(i64 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef nonnull align 1 dereferenceable(1) %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = bitcast i64* %6 to i32*
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @__kmpc_target_init(%struct.ident_t* @1, i8 1, i1 true, i1 true)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  %20 = load i32, i32* %14, align 4
  %21 = bitcast i64* %11 to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 %19, i32* %13, align 4
  call void @__omp_outlined__2(i32* %13, i32* %12, i64 %22, i8* %23, i8* %24, i8* %25, i8* %15) #2
  call void @__kmpc_target_deinit(%struct.ident_t* @1, i8 1, i1 true)
  ret void

26:                                               ; preds = %5
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal void @__omp_outlined__2(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef nonnull align 1 dereferenceable(1) %6) #1 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %25 = bitcast i64* %10 to i32*
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_distribute_static_init_4(%struct.ident_t* @5, i32 %37, i32 92, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %18, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %21, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %79, %45
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %24, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %24, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = trunc i8 %60 to i1
  %62 = zext i1 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 1, i8* %68, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %24, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 1, i8* %72, align 1
  store i8 1, i8* %26, align 1
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %24, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %64, %52
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %48

82:                                               ; preds = %48
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  call void @__kmpc_distribute_static_fini(%struct.ident_t* @5, i32 %85)
  br label %86

86:                                               ; preds = %83, %7
  ret void
}

attributes #0 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "kernel" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx32,+sm_70" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx32,+sm_70" }
attributes #2 = { nounwind }
attributes #3 = { alwaysinline }

!omp_offload.info = !{!0, !1}
!nvvm.annotations = !{!2, !3}
!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 0, i32 46, i32 973279069, !"_Z8BFSGraphiPPc", i32 137, i32 0}
!1 = !{i32 0, i32 46, i32 973279069, !"_Z8BFSGraphiPPc", i32 160, i32 1}
!2 = !{void (i64, i8*, %struct.Node*, i32*, i8*, i32*, i8*)* @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137, !"kernel", i32 1}
!3 = !{void (i64, i8*, i8*, i8*, i8*)* @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160, !"kernel", i32 1}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"openmp", i32 50}
!6 = !{i32 7, !"openmp-device", i32 50}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (/gpfs/projects/bsc37/bsc37701/llvm/llvm-p9-debug/clang cae4da6f8a7befe9657bb72e0ab4f0a305cdb60a) (/gpfs/projects/bsc37/bsc37701/llvm/llvm-p9-debug/llvm 74ca455d19c95093e308d1729e01fd23d27ae52d)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-powerpc64le-unknown-linux-gnu
; ModuleID = '/tmp/bfs-e325b8.bc'
source_filename = "bfs.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.Node = type { i32, i32 }
%struct.anon = type { i32, i8*, %struct.Node*, i32*, i8*, i32*, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i8*, %struct.Node*, i32*, i8*, i32*, i8*, [7 x i8*], [7 x i8*], [7 x i64], i32 }

$__clang_call_terminate = comdat any

@fp = dso_local global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s <num_threads> <input_file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.offload_maptypes = private unnamed_addr constant [7 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 3]
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137.region_id = weak constant i8 0
@.offload_sizes = private unnamed_addr constant [7 x i64] [i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]
@.offload_maptypes.8 = private unnamed_addr constant [7 x i64] [i64 800, i64 544, i64 544, i64 544, i64 544, i64 544, i64 544]
@.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160.region_id = weak constant i8 0
@.offload_sizes.11 = private unnamed_addr constant [5 x i64] [i64 4, i64 0, i64 0, i64 0, i64 1]
@.offload_maptypes.12 = private unnamed_addr constant [5 x i64] [i64 800, i64 544, i64 544, i64 544, i64 35]
@.str.13 = private unnamed_addr constant [25 x i8] c": iteration %d took %lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Compute time: %lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Result stored in result.txt\0A\00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [50 x i8] c"__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137\00"
@.omp_offloading.entry.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137.region_id, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@.omp_offloading.entry_name.19 = internal unnamed_addr constant [50 x i8] c"__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160\00"
@.omp_offloading.entry.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160.region_id, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.omp_offloading.entry_name.19, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5UsageiPPc(i32 noundef signext %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* noundef %8)
  ret void
}

declare signext i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef signext i32 @main(i32 noundef signext %0, i8** noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  call void @_Z8BFSGraphiPPc(i32 noundef signext %5, i8** noundef %6)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 noundef signext %0, i8** noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca [7 x i8*], align 8
  %26 = alloca [7 x i8*], align 8
  %27 = alloca [7 x i8*], align 8
  %28 = alloca [7 x i64], align 8
  %29 = alloca i8, align 1
  %30 = alloca double, align 8
  %31 = alloca i64, align 8
  %32 = alloca [7 x i8*], align 8
  %33 = alloca [7 x i8*], align 8
  %34 = alloca [7 x i8*], align 8
  %35 = alloca %struct.anon, align 8
  %36 = alloca [1 x %struct.kmp_depend_info], align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca [5 x i8*], align 8
  %40 = alloca [5 x i8*], align 8
  %41 = alloca [5 x i8*], align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca %struct._IO_FILE*, align 8
  %48 = alloca i32, align 4
  %49 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %2
  %53 = load i32, i32* %3, align 4
  %54 = load i8**, i8*** %4, align 8
  call void @_Z5UsageiPPc(i32 noundef signext %53, i8** noundef %54)
  call void @exit(i32 noundef signext 0) #15
  unreachable

55:                                               ; preds = %2
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call signext i32 @atoi(i8* noundef %58) #16
  store i32 %59, i32* %8, align 4
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = call signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = call %struct._IO_FILE* @fopen(i8* noundef %64, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %65, %struct._IO_FILE** @fp, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %67 = icmp ne %struct._IO_FILE* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = call signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %453

70:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %72 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5)
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = call noalias align 16 i8* @malloc(i64 noundef %75) #17
  %77 = bitcast i8* %76 to %struct.Node*
  store %struct.Node* %77, %struct.Node** %10, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 1, %79
  %81 = call noalias align 16 i8* @malloc(i64 noundef %80) #17
  store i8* %81, i8** %11, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 1, %83
  %85 = call noalias align 16 i8* @malloc(i64 noundef %84) #17
  store i8* %85, i8** %12, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 1, %87
  %89 = call noalias align 16 i8* @malloc(i64 noundef %88) #17
  store i8* %89, i8** %13, align 8
  store i32 0, i32* %16, align 4
  br label %90

90:                                               ; preds = %121, %70
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %96 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* noundef %14, i32* noundef %15)
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.Node*, %struct.Node** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Node, %struct.Node* %98, i64 %100
  %102 = getelementptr inbounds %struct.Node, %struct.Node* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.Node*, %struct.Node** %10, align 8
  %105 = load i32, i32* %16, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Node, %struct.Node* %104, i64 %106
  %108 = getelementptr inbounds %struct.Node, %struct.Node* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %16, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %16, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %90, !llvm.loop !7

124:                                              ; preds = %90
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %126 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %9)
  %127 = load i8*, i8** %11, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 1, i8* %130, align 1
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 1, i8* %134, align 1
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %136 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %6)
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 4, %138
  %140 = call noalias align 16 i8* @malloc(i64 noundef %139) #17
  %141 = bitcast i8* %140 to i32*
  store i32* %141, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %142

142:                                              ; preds = %156, %124
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %148 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %17)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %150 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18)
  %151 = load i32, i32* %17, align 4
  %152 = load i32*, i32** %19, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %142, !llvm.loop !9

159:                                              ; preds = %142
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %161 = icmp ne %struct._IO_FILE* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %164 = call signext i32 @fclose(%struct._IO_FILE* noundef %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 4, %167
  %169 = call noalias align 16 i8* @malloc(i64 noundef %168) #17
  %170 = bitcast i8* %169 to i32*
  store i32* %170, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %171

171:                                              ; preds = %180, %165
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32*, i32** %21, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 -1, i32* %179, align 4
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %171, !llvm.loop !10

183:                                              ; preds = %171
  %184 = load i32*, i32** %21, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 0, i32* %187, align 4
  %188 = call signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  %189 = call double @omp_get_wtime()
  store double %189, double* %24, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = mul nuw i64 %194, 1
  %196 = load %struct.Node*, %struct.Node** %10, align 8
  %197 = load %struct.Node*, %struct.Node** %10, align 8
  %198 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nuw i64 %200, 8
  %202 = load i32*, i32** %19, align 8
  %203 = load i32*, i32** %19, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = mul nuw i64 %206, 4
  %208 = load i8*, i8** %13, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = mul nuw i64 %212, 1
  %214 = load i8*, i8** %12, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = mul nuw i64 %218, 1
  %220 = load i32*, i32** %21, align 8
  %221 = load i32*, i32** %21, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = mul nuw i64 %224, 4
  %226 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 0
  %227 = bitcast i8** %226 to i32**
  store i32* %5, i32** %227, align 8
  %228 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 0
  %229 = bitcast i8** %228 to i32**
  store i32* %5, i32** %229, align 8
  %230 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 0
  store i64 4, i64* %230, align 8
  %231 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 0
  store i8* null, i8** %231, align 8
  %232 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 1
  store i8* %190, i8** %232, align 8
  %233 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 1
  store i8* %192, i8** %233, align 8
  %234 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 1
  store i64 %195, i64* %234, align 8
  %235 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 1
  store i8* null, i8** %235, align 8
  %236 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 2
  %237 = bitcast i8** %236 to %struct.Node**
  store %struct.Node* %196, %struct.Node** %237, align 8
  %238 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 2
  %239 = bitcast i8** %238 to %struct.Node**
  store %struct.Node* %198, %struct.Node** %239, align 8
  %240 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 2
  store i64 %201, i64* %240, align 8
  %241 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 2
  store i8* null, i8** %241, align 8
  %242 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 3
  %243 = bitcast i8** %242 to i32**
  store i32* %202, i32** %243, align 8
  %244 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 3
  %245 = bitcast i8** %244 to i32**
  store i32* %204, i32** %245, align 8
  %246 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 3
  store i64 %207, i64* %246, align 8
  %247 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 3
  store i8* null, i8** %247, align 8
  %248 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 4
  store i8* %208, i8** %248, align 8
  %249 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 4
  store i8* %210, i8** %249, align 8
  %250 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 4
  store i64 %213, i64* %250, align 8
  %251 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 4
  store i8* null, i8** %251, align 8
  %252 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 5
  store i8* %214, i8** %252, align 8
  %253 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 5
  store i8* %216, i8** %253, align 8
  %254 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 5
  store i64 %219, i64* %254, align 8
  %255 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 5
  store i8* null, i8** %255, align 8
  %256 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 6
  %257 = bitcast i8** %256 to i32**
  store i32* %220, i32** %257, align 8
  %258 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 6
  %259 = bitcast i8** %258 to i32**
  store i32* %222, i32** %259, align 8
  %260 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 6
  store i64 %225, i64* %260, align 8
  %261 = getelementptr inbounds [7 x i8*], [7 x i8*]* %27, i64 0, i64 6
  store i8* null, i8** %261, align 8
  %262 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 0
  %263 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 0
  %264 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 0
  call void @__tgt_target_data_begin_mapper(%struct.ident_t* @1, i64 -1, i32 7, i8** %262, i8** %263, i64* %264, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @.offload_maptypes, i32 0, i32 0), i8** null, i8** null)
  br label %265

265:                                              ; preds = %409, %183
  store i8 0, i8* %29, align 1
  %266 = invoke double @omp_get_wtime()
          to label %267 unwind label %454

267:                                              ; preds = %265
  store double %266, double* %30, align 8
  %268 = load i32, i32* %5, align 4
  %269 = bitcast i64* %31 to i32*
  store i32 %268, i32* %269, align 4
  %270 = load i64, i64* %31, align 8
  %271 = load i8*, i8** %11, align 8
  %272 = load %struct.Node*, %struct.Node** %10, align 8
  %273 = load i32*, i32** %19, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = load i32*, i32** %21, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 0
  %278 = bitcast i8** %277 to i64*
  store i64 %270, i64* %278, align 8
  %279 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 0
  %280 = bitcast i8** %279 to i64*
  store i64 %270, i64* %280, align 8
  %281 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 0
  store i8* null, i8** %281, align 8
  %282 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 1
  store i8* %271, i8** %282, align 8
  %283 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 1
  store i8* %271, i8** %283, align 8
  %284 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 1
  store i8* null, i8** %284, align 8
  %285 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 2
  %286 = bitcast i8** %285 to %struct.Node**
  store %struct.Node* %272, %struct.Node** %286, align 8
  %287 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 2
  %288 = bitcast i8** %287 to %struct.Node**
  store %struct.Node* %272, %struct.Node** %288, align 8
  %289 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 2
  store i8* null, i8** %289, align 8
  %290 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 3
  %291 = bitcast i8** %290 to i32**
  store i32* %273, i32** %291, align 8
  %292 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 3
  %293 = bitcast i8** %292 to i32**
  store i32* %273, i32** %293, align 8
  %294 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 3
  store i8* null, i8** %294, align 8
  %295 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 4
  store i8* %274, i8** %295, align 8
  %296 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 4
  store i8* %274, i8** %296, align 8
  %297 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 4
  store i8* null, i8** %297, align 8
  %298 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 5
  %299 = bitcast i8** %298 to i32**
  store i32* %275, i32** %299, align 8
  %300 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 5
  %301 = bitcast i8** %300 to i32**
  store i32* %275, i32** %301, align 8
  %302 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 5
  store i8* null, i8** %302, align 8
  %303 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 6
  store i8* %276, i8** %303, align 8
  %304 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 6
  store i8* %276, i8** %304, align 8
  %305 = getelementptr inbounds [7 x i8*], [7 x i8*]* %34, i64 0, i64 6
  store i8* null, i8** %305, align 8
  %306 = getelementptr inbounds [7 x i8*], [7 x i8*]* %32, i32 0, i32 0
  %307 = getelementptr inbounds [7 x i8*], [7 x i8*]* %33, i32 0, i32 0
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %309 = load i32, i32* %5, align 4
  store i32 %309, i32* %308, align 8
  %310 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %311 = load i8*, i8** %11, align 8
  store i8* %311, i8** %310, align 8
  %312 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %313 = load %struct.Node*, %struct.Node** %10, align 8
  store %struct.Node* %313, %struct.Node** %312, align 8
  %314 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 3
  %315 = load i32*, i32** %19, align 8
  store i32* %315, i32** %314, align 8
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 4
  %317 = load i8*, i8** %13, align 8
  store i8* %317, i8** %316, align 8
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 5
  %319 = load i32*, i32** %21, align 8
  store i32* %319, i32** %318, align 8
  %320 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 6
  %321 = load i8*, i8** %12, align 8
  store i8* %321, i8** %320, align 8
  %322 = call i8* @__kmpc_omp_target_task_alloc(%struct.ident_t* @1, i32 %49, i32 1, i64 264, i64 56, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry to i32 (i32, i8*)*), i64 -1)
  %323 = bitcast i8* %322 to %struct.kmp_task_t_with_privates*
  %324 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = bitcast %struct.anon* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %326, i8* align 8 %327, i64 56, i1 false)
  %328 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %323, i32 0, i32 1
  %329 = bitcast i8* %326 to %struct.anon*
  %330 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 0
  %331 = load i8*, i8** %11, align 8
  store i8* %331, i8** %330, align 8
  %332 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 1
  %333 = load %struct.Node*, %struct.Node** %10, align 8
  store %struct.Node* %333, %struct.Node** %332, align 8
  %334 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 2
  %335 = load i32*, i32** %19, align 8
  store i32* %335, i32** %334, align 8
  %336 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 3
  %337 = load i8*, i8** %13, align 8
  store i8* %337, i8** %336, align 8
  %338 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 4
  %339 = load i32*, i32** %21, align 8
  store i32* %339, i32** %338, align 8
  %340 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 5
  %341 = load i8*, i8** %12, align 8
  store i8* %341, i8** %340, align 8
  %342 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 6
  %343 = bitcast [7 x i8*]* %342 to i8*
  %344 = bitcast i8** %306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %343, i8* align 8 %344, i64 56, i1 false)
  %345 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 7
  %346 = bitcast [7 x i8*]* %345 to i8*
  %347 = bitcast i8** %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %346, i8* align 8 %347, i64 56, i1 false)
  %348 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 8
  %349 = bitcast [7 x i64]* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %349, i8* align 8 bitcast ([7 x i64]* @.offload_sizes to i8*), i64 56, i1 false)
  %350 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %328, i32 0, i32 9
  %351 = load i32, i32* %5, align 4
  store i32 %351, i32* %350, align 8
  %352 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %36, i64 0, i64 0
  %353 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %352, i64 0
  %354 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %353, i32 0, i32 0
  %355 = ptrtoint i8** %12 to i64
  store i64 %355, i64* %354, align 8
  %356 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %353, i32 0, i32 1
  store i64 8, i64* %356, align 8
  %357 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %353, i32 0, i32 2
  store i8 3, i8* %357, align 8
  store i64 1, i64* %37, align 8
  %358 = bitcast %struct.kmp_depend_info* %352 to i8*
  %359 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %49, i8* %322, i32 1, i8* %358, i32 0, i8* null)
  %360 = load i32, i32* %5, align 4
  %361 = bitcast i64* %38 to i32*
  store i32 %360, i32* %361, align 4
  %362 = load i64, i64* %38, align 8
  %363 = load i8*, i8** %12, align 8
  %364 = load i8*, i8** %11, align 8
  %365 = load i8*, i8** %13, align 8
  %366 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 0
  %367 = bitcast i8** %366 to i64*
  store i64 %362, i64* %367, align 8
  %368 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 0
  %369 = bitcast i8** %368 to i64*
  store i64 %362, i64* %369, align 8
  %370 = getelementptr inbounds [5 x i8*], [5 x i8*]* %41, i64 0, i64 0
  store i8* null, i8** %370, align 8
  %371 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 1
  store i8* %363, i8** %371, align 8
  %372 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 1
  store i8* %363, i8** %372, align 8
  %373 = getelementptr inbounds [5 x i8*], [5 x i8*]* %41, i64 0, i64 1
  store i8* null, i8** %373, align 8
  %374 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 2
  store i8* %364, i8** %374, align 8
  %375 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 2
  store i8* %364, i8** %375, align 8
  %376 = getelementptr inbounds [5 x i8*], [5 x i8*]* %41, i64 0, i64 2
  store i8* null, i8** %376, align 8
  %377 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 3
  store i8* %365, i8** %377, align 8
  %378 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 3
  store i8* %365, i8** %378, align 8
  %379 = getelementptr inbounds [5 x i8*], [5 x i8*]* %41, i64 0, i64 3
  store i8* null, i8** %379, align 8
  %380 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 4
  store i8* %29, i8** %380, align 8
  %381 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 4
  store i8* %29, i8** %381, align 8
  %382 = getelementptr inbounds [5 x i8*], [5 x i8*]* %41, i64 0, i64 4
  store i8* null, i8** %382, align 8
  %383 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i32 0, i32 0
  %384 = getelementptr inbounds [5 x i8*], [5 x i8*]* %40, i32 0, i32 0
  %385 = load i32, i32* %5, align 4
  store i32 %385, i32* %43, align 4
  %386 = load i32, i32* %43, align 4
  %387 = sub nsw i32 %386, 0
  %388 = sdiv i32 %387, 1
  %389 = sub nsw i32 %388, 1
  store i32 %389, i32* %44, align 4
  %390 = load i32, i32* %44, align 4
  %391 = add nsw i32 %390, 1
  %392 = zext i32 %391 to i64
  call void @__kmpc_push_target_tripcount_mapper(%struct.ident_t* @1, i64 -1, i64 %392)
  %393 = call i32 @__tgt_target_teams_mapper(%struct.ident_t* @1, i64 -1, i8* @.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160.region_id, i32 5, i8** %383, i8** %384, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_sizes.11, i32 0, i32 0), i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_maptypes.12, i32 0, i32 0), i8** null, i8** null, i32 0, i32 0)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %267
  call void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160(i64 %362, i8* %363, i8* %364, i8* %365, i8* %29) #6
  br label %396

396:                                              ; preds = %395, %267
  %397 = load i32, i32* %23, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %23, align 4
  %399 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %49)
  %400 = invoke double @omp_get_wtime()
          to label %401 unwind label %454

401:                                              ; preds = %396
  store double %400, double* %45, align 8
  %402 = load i32, i32* %23, align 4
  %403 = sub nsw i32 %402, 1
  %404 = load double, double* %45, align 8
  %405 = load double, double* %30, align 8
  %406 = fsub double %404, %405
  %407 = invoke signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 noundef signext %403, double noundef %406)
          to label %408 unwind label %454

408:                                              ; preds = %401
  br label %409

409:                                              ; preds = %408
  %410 = load i8, i8* %29, align 1
  %411 = trunc i8 %410 to i1
  br i1 %411, label %265, label %412, !llvm.loop !11

412:                                              ; preds = %409
  %413 = invoke double @omp_get_wtime()
          to label %414 unwind label %454

414:                                              ; preds = %412
  store double %413, double* %46, align 8
  %415 = load double, double* %46, align 8
  %416 = load double, double* %24, align 8
  %417 = fsub double %415, %416
  %418 = invoke signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), double noundef %417)
          to label %419 unwind label %454

419:                                              ; preds = %414
  %420 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i32 0, i32 0
  %421 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 0
  %422 = getelementptr inbounds [7 x i64], [7 x i64]* %28, i32 0, i32 0
  call void @__tgt_target_data_end_mapper(%struct.ident_t* @1, i64 -1, i32 7, i8** %420, i8** %421, i64* %422, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @.offload_maptypes, i32 0, i32 0), i8** null, i8** null)
  %423 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %423, %struct._IO_FILE** %47, align 8
  store i32 0, i32* %48, align 4
  br label %424

424:                                              ; preds = %437, %419
  %425 = load i32, i32* %48, align 4
  %426 = load i32, i32* %5, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %440

428:                                              ; preds = %424
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %47, align 8
  %430 = load i32, i32* %48, align 4
  %431 = load i32*, i32** %21, align 8
  %432 = load i32, i32* %48, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = call signext i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %429, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 noundef signext %430, i32 noundef signext %435)
  br label %437

437:                                              ; preds = %428
  %438 = load i32, i32* %48, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %48, align 4
  br label %424, !llvm.loop !12

440:                                              ; preds = %424
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %47, align 8
  %442 = call signext i32 @fclose(%struct._IO_FILE* noundef %441)
  %443 = call signext i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %444 = load %struct.Node*, %struct.Node** %10, align 8
  %445 = bitcast %struct.Node* %444 to i8*
  call void @free(i8* noundef %445) #6
  %446 = load i32*, i32** %19, align 8
  %447 = bitcast i32* %446 to i8*
  call void @free(i8* noundef %447) #6
  %448 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %448) #6
  %449 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %449) #6
  %450 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %450) #6
  %451 = load i32*, i32** %21, align 8
  %452 = bitcast i32* %451 to i8*
  call void @free(i8* noundef %452) #6
  br label %453

453:                                              ; preds = %440, %68
  ret void

454:                                              ; preds = %414, %412, %401, %396, %265
  %455 = landingpad { i8*, i32 }
          catch i8* null
  %456 = extractvalue { i8*, i32 } %455, 0
  call void @__clang_call_terminate(i8* %456) #15
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #3

; Function Attrs: nounwind readonly willreturn
declare signext i32 @atoi(i8* noundef) #4

declare signext i32 @printf(i8* noundef, ...) #1

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare signext i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #5

declare signext i32 @fclose(%struct._IO_FILE* noundef) #1

declare double @omp_get_wtime() #1

; Function Attrs: nounwind
declare void @__tgt_target_data_begin_mapper(%struct.ident_t*, i64, i32, i8**, i8**, i64*, i64*, i8**, i8**) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #6
  call void @_ZSt9terminatev() #15
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137(i64 noundef %0, i8* noundef %1, %struct.Node* noundef %2, i32* noundef %3, i8* noundef %4, i32* noundef %5, i8* noundef %6) #8 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.Node* %2, %struct.Node** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = bitcast i64* %8 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = bitcast i64* %15 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.Node*, %struct.Node** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i8*, i8** %14, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @1, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i8*, %struct.Node*, i32*, i8*, i32*, i8*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %19, i8* %20, %struct.Node* %21, i32* %22, i8* %23, i32* %24, i8* %25)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i8* noundef %3, %struct.Node* noundef %4, i32* noundef %5, i8* noundef %6, i32* noundef %7, i8* noundef %8) #8 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.Node*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.Node* %4, %struct.Node** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* %8, i8** %18, align 8
  %30 = bitcast i64* %12 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = sub nsw i32 %32, 0
  %34 = sdiv i32 %33, 1
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %9
  store i32 0, i32* %24, align 4
  %39 = load i32, i32* %22, align 4
  store i32 %39, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %41, i32 92, i32* %27, i32* %24, i32* %25, i32* %26, i32 1, i32 1)
  %42 = load i32, i32* %25, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %22, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %25, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %70, %49
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %25, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %24, align 4
  %58 = zext i32 %57 to i64
  %59 = load i32, i32* %25, align 4
  %60 = zext i32 %59 to i64
  %61 = load i32, i32* %30, align 4
  %62 = bitcast i64* %29 to i32*
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %29, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.Node*, %struct.Node** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %18, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*, %struct.Node*, i32*, i8*, i32*, i8*)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i64 %58, i64 %60, i64 %63, i8* %64, %struct.Node* %65, i32* %66, i8* %67, i32* %68, i8* %69)
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %26, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %19, align 4
  br label %52

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %77)
  br label %78

78:                                               ; preds = %75, %9
  ret void
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..7(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8* noundef %5, %struct.Node* noundef %6, i32* noundef %7, i8* noundef %8, i32* noundef %9, i8* noundef %10) #8 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.Node*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.Node* %6, %struct.Node** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i8* %10, i8** %22, align 8
  %35 = bitcast i64* %16 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = sub nsw i32 %37, 0
  %39 = sdiv i32 %38, 1
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %41 = load i32, i32* %25, align 4
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %145

43:                                               ; preds = %11
  store i32 0, i32* %28, align 4
  %44 = load i32, i32* %26, align 4
  store i32 %44, i32* %29, align 4
  %45 = load i64, i64* %14, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %15, align 8
  %48 = trunc i64 %47 to i32
  store i32 %46, i32* %28, align 4
  store i32 %48, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @3, i32 %50, i32 34, i32* %31, i32* %28, i32* %29, i32* %30, i32 1, i32 1)
  %51 = load i32, i32* %29, align 4
  %52 = load i32, i32* %26, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %26, align 4
  br label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %29, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %29, align 4
  %60 = load i32, i32* %28, align 4
  store i32 %60, i32* %23, align 4
  br label %61

61:                                               ; preds = %138, %58
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %29, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %141

65:                                               ; preds = %61
  %66 = load i32, i32* %23, align 4
  %67 = mul nsw i32 %66, 1
  %68 = add nsw i32 0, %67
  store i32 %68, i32* %32, align 4
  %69 = load i8*, i8** %17, align 8
  %70 = load i32, i32* %32, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = trunc i8 %73 to i1
  %75 = zext i1 %74 to i32
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %136

77:                                               ; preds = %65
  %78 = load i8*, i8** %17, align 8
  %79 = load i32, i32* %32, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.Node*, %struct.Node** %18, align 8
  %83 = load i32, i32* %32, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.Node, %struct.Node* %82, i64 %84
  %86 = getelementptr inbounds %struct.Node, %struct.Node* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %33, align 4
  br label %88

88:                                               ; preds = %132, %77
  %89 = load i32, i32* %33, align 4
  %90 = load %struct.Node*, %struct.Node** %18, align 8
  %91 = load i32, i32* %32, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %90, i64 %92
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.Node*, %struct.Node** %18, align 8
  %97 = load i32, i32* %32, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Node, %struct.Node* %96, i64 %98
  %100 = getelementptr inbounds %struct.Node, %struct.Node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %95, %101
  %103 = icmp slt i32 %89, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %88
  %105 = load i32*, i32** %19, align 8
  %106 = load i32, i32* %33, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %34, align 4
  %110 = load i8*, i8** %20, align 8
  %111 = load i32, i32* %34, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = trunc i8 %114 to i1
  br i1 %115, label %131, label %116

116:                                              ; preds = %104
  %117 = load i32*, i32** %21, align 8
  %118 = load i32, i32* %32, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32*, i32** %21, align 8
  %124 = load i32, i32* %34, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i8*, i8** %22, align 8
  %128 = load i32, i32* %34, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 1, i8* %130, align 1
  br label %131

131:                                              ; preds = %116, %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %33, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %33, align 4
  br label %88, !llvm.loop !13

135:                                              ; preds = %88
  br label %136

136:                                              ; preds = %135, %65
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %23, align 4
  br label %61

141:                                              ; preds = %61
  br label %142

142:                                              ; preds = %141
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %144)
  br label %145

145:                                              ; preds = %142, %11
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #6

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #6

; Function Attrs: nounwind
declare void @__kmpc_push_target_tripcount_mapper(%struct.ident_t*, i64, i64) #6

; Function Attrs: nounwind
declare i32 @__tgt_target_teams_nowait_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**, i32, i32, i32, i8*, i32, i8*) #6

; Function Attrs: noinline uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias noundef %0, i32** noalias noundef %1, i8*** noalias noundef %2, %struct.Node*** noalias noundef %3, i32*** noalias noundef %4, i8*** noalias noundef %5, i32*** noalias noundef %6, i8*** noalias noundef %7, [7 x i8*]** noalias noundef %8, [7 x i8*]** noalias noundef %9, [7 x i64]** noalias noundef %10) #9 {
  %12 = alloca %struct..kmp_privates.t*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8***, align 8
  %15 = alloca %struct.Node***, align 8
  %16 = alloca i32***, align 8
  %17 = alloca i8***, align 8
  %18 = alloca i32***, align 8
  %19 = alloca i8***, align 8
  %20 = alloca [7 x i8*]**, align 8
  %21 = alloca [7 x i8*]**, align 8
  %22 = alloca [7 x i64]**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i8*** %2, i8**** %14, align 8
  store %struct.Node*** %3, %struct.Node**** %15, align 8
  store i32*** %4, i32**** %16, align 8
  store i8*** %5, i8**** %17, align 8
  store i32*** %6, i32**** %18, align 8
  store i8*** %7, i8**** %19, align 8
  store [7 x i8*]** %8, [7 x i8*]*** %20, align 8
  store [7 x i8*]** %9, [7 x i8*]*** %21, align 8
  store [7 x i64]** %10, [7 x i64]*** %22, align 8
  %23 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %12, align 8
  %24 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 0
  %25 = load i8***, i8**** %14, align 8
  store i8** %24, i8*** %25, align 8
  %26 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 1
  %27 = load %struct.Node***, %struct.Node**** %15, align 8
  store %struct.Node** %26, %struct.Node*** %27, align 8
  %28 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 2
  %29 = load i32***, i32**** %16, align 8
  store i32** %28, i32*** %29, align 8
  %30 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 3
  %31 = load i8***, i8**** %17, align 8
  store i8** %30, i8*** %31, align 8
  %32 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 4
  %33 = load i32***, i32**** %18, align 8
  store i32** %32, i32*** %33, align 8
  %34 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 5
  %35 = load i8***, i8**** %19, align 8
  store i8** %34, i8*** %35, align 8
  %36 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 6
  %37 = load [7 x i8*]**, [7 x i8*]*** %20, align 8
  store [7 x i8*]* %36, [7 x i8*]** %37, align 8
  %38 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 7
  %39 = load [7 x i8*]**, [7 x i8*]*** %21, align 8
  store [7 x i8*]* %38, [7 x i8*]** %39, align 8
  %40 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 8
  %41 = load [7 x i64]**, [7 x i64]*** %22, align 8
  store [7 x i64]* %40, [7 x i64]** %41, align 8
  %42 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %23, i32 0, i32 9
  %43 = load i32**, i32*** %13, align 8
  store i32* %42, i32** %43, align 8
  ret void
}

; Function Attrs: noinline norecurse uwtable
define internal noundef signext i32 @.omp_task_entry(i32 noundef signext %0, %struct.kmp_task_t_with_privates* noalias noundef %1) #10 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.Node**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca [7 x i8*]*, align 8
  %17 = alloca [7 x i8*]*, align 8
  %18 = alloca [7 x i64]*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %22, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %23, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %23, align 8
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %25, i32 0, i32 1
  %32 = bitcast %struct..kmp_privates.t* %31 to i8*
  %33 = bitcast %struct.kmp_task_t_with_privates* %25 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  store i32 %24, i32* %3, align 4, !noalias !25
  store i32* %27, i32** %4, align 8, !noalias !25
  store i8* %32, i8** %5, align 8, !noalias !25
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**, i8***, %struct.Node***, i32***, i8***, i32***, i8***, [7 x i8*]**, [7 x i8*]**, [7 x i64]**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !25
  store i8* %33, i8** %7, align 8, !noalias !25
  store %struct.anon* %30, %struct.anon** %8, align 8, !noalias !25
  %34 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !25
  %35 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !25
  %36 = load i8*, i8** %5, align 8, !noalias !25
  %37 = bitcast void (i8*, ...)* %35 to void (i8*, i32**, i8***, %struct.Node***, i32***, i8***, i32***, i8***, [7 x i8*]**, [7 x i8*]**, [7 x i64]**)*
  call void %37(i8* %36, i32** %9, i8*** %10, %struct.Node*** %11, i32*** %12, i8*** %13, i32*** %14, i8*** %15, [7 x i8*]** %16, [7 x i8*]** %17, [7 x i64]** %18) #6
  %38 = load i32*, i32** %9, align 8, !noalias !25
  %39 = load i8**, i8*** %10, align 8, !noalias !25
  %40 = load %struct.Node**, %struct.Node*** %11, align 8, !noalias !25
  %41 = load i32**, i32*** %12, align 8, !noalias !25
  %42 = load i8**, i8*** %13, align 8, !noalias !25
  %43 = load i32**, i32*** %14, align 8, !noalias !25
  %44 = load i8**, i8*** %15, align 8, !noalias !25
  %45 = load [7 x i8*]*, [7 x i8*]** %16, align 8, !noalias !25
  %46 = load [7 x i8*]*, [7 x i8*]** %17, align 8, !noalias !25
  %47 = load [7 x i64]*, [7 x i64]** %18, align 8, !noalias !25
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %45, i64 0, i64 0
  %49 = getelementptr inbounds [7 x i8*], [7 x i8*]* %46, i64 0, i64 0
  %50 = getelementptr inbounds [7 x i64], [7 x i64]* %47, i64 0, i64 0
  %51 = load i32, i32* %38, align 4
  store i32 %51, i32* %19, align 4, !noalias !25
  %52 = load i32, i32* %19, align 4, !noalias !25
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %20, align 4, !noalias !25
  %54 = load i32, i32* %20, align 4, !noalias !25
  %55 = add nsw i32 %54, 1
  %56 = zext i32 %55 to i64
  call void @__kmpc_push_target_tripcount_mapper(%struct.ident_t* @1, i64 -1, i64 %56) #6
  %57 = call i32 @__tgt_target_teams_nowait_mapper(%struct.ident_t* @1, i64 -1, i8* @.__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137.region_id, i32 7, i8** %48, i8** %49, i64* %50, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @.offload_maptypes.8, i32 0, i32 0), i8** null, i8** null, i32 0, i32 0, i32 0, i8* null, i32 0, i8* null) #6
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %.omp_outlined..9.exit

59:                                               ; preds = %2
  %60 = load i32, i32* %38, align 4
  %61 = bitcast i64* %21 to i32*
  store i32 %60, i32* %61, align 4, !noalias !25
  %62 = load i64, i64* %21, align 8, !noalias !25
  %63 = load i8*, i8** %39, align 8
  %64 = load %struct.Node*, %struct.Node** %40, align 8
  %65 = load i32*, i32** %41, align 8
  %66 = load i8*, i8** %42, align 8
  %67 = load i32*, i32** %43, align 8
  %68 = load i8*, i8** %44, align 8
  call void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l137(i64 %62, i8* %63, %struct.Node* %64, i32* %65, i8* %66, i32* %67, i8* %68) #6
  br label %.omp_outlined..9.exit

.omp_outlined..9.exit:                            ; preds = %2, %59
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #6

; Function Attrs: nounwind
declare i8* @__kmpc_omp_target_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #6

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_2e_3a030f5d__Z8BFSGraphiPPc_l160(i64 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef nonnull align 1 dereferenceable(1) %4) #8 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = bitcast i64* %6 to i32*
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* %12, align 4
  %15 = bitcast i64* %11 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i64, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i8*, i8*, i8*, i8*)* @.omp_outlined..10 to void (i32*, i32*, ...)*), i64 %16, i8* %17, i8* %18, i8* %19, i8* %13)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..10(i32* noalias noundef %0, i32* noalias noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef nonnull align 1 dereferenceable(1) %6) #8 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %25 = bitcast i64* %10 to i32*
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %37, i32 92, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %18, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %21, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %79, %45
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %24, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %24, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = trunc i8 %60 to i1
  %62 = zext i1 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 1, i8* %68, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %24, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 1, i8* %72, align 1
  store i8 1, i8* %26, align 1
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %24, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %64, %52
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %48

82:                                               ; preds = %48
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %85)
  br label %86

86:                                               ; preds = %83, %7
  ret void
}

; Function Attrs: nounwind
declare i32 @__tgt_target_teams_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**, i32, i32) #6

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #12

; Function Attrs: nounwind
declare void @__tgt_target_data_end_mapper(%struct.ident_t*, i64, i32, i8**, i8**, i64*, i64*, i8**, i8**) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #13

; Function Attrs: noinline uwtable
define internal void @.omp_offloading.requires_reg() #9 section ".text.startup" {
  call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #9 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #10 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { convergent nounwind }
attributes #13 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0) }

!omp_offload.info = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 0, i32 46, i32 973279069, !"_Z8BFSGraphiPPc", i32 137, i32 0}
!1 = !{i32 0, i32 46, i32 973279069, !"_Z8BFSGraphiPPc", i32 160, i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 50}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"clang version 15.0.0 (/gpfs/projects/bsc37/bsc37701/llvm/llvm-p9-debug/clang cae4da6f8a7befe9657bb72e0ab4f0a305cdb60a) (/gpfs/projects/bsc37/bsc37701/llvm/llvm-p9-debug/llvm 74ca455d19c95093e308d1729e01fd23d27ae52d)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = !{!15}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
!16 = !{!17}
!17 = distinct !{!17, !18, !".omp_outlined..9: argument 0"}
!18 = distinct !{!18, !".omp_outlined..9"}
!19 = !{!20}
!20 = distinct !{!20, !18, !".omp_outlined..9: argument 1"}
!21 = !{!22}
!22 = distinct !{!22, !18, !".omp_outlined..9: argument 2"}
!23 = !{!24}
!24 = distinct !{!24, !18, !".omp_outlined..9: argument 3"}
!25 = !{!17, !20, !22, !24}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
