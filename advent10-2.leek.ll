; ModuleID = 'advent10-2.leek'
source_filename = "advent10-2.leek"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%null = type { i32, i32, i32, i32, i1 }
%"array<int>" = type { i32, i32, i32, i32, i1, i32*, i32*, i32* }
%"map_node<real, array<int>>" = type { i64, i64, i64, i64, double, %"array<int>"* }
%"map<real, array<int>>" = type { i32, i32, i32, i32, i1, %"array<int>"**, %"array<int>"**, %"array<int>"**, %"map_node<real, array<int>>"* }
%string_iterator = type { %any*, i32, i32, i32, i32 }
%any = type { i32, i32, i32, i32, i1 }
%string = type { i32, i32, i32, i32, i1 }
%"array<string>" = type { i32, i32, i32, i32, i1, %string**, %string**, %string** }
%function = type { i32, i32, i32, i32, i1, i64* }

@s = private unnamed_addr constant [552 x i8] c".###..#......###..#...#\0A#.#..#.##..###..#...#.#\0A#.#.#.##.#..##.#.###.##\0A.#..#...####.#.##..##..\0A#.###.#.####.##.#######\0A..#######..##..##.#.###\0A.##.#...##.##.####..###\0A....####.####.#########\0A#.########.#...##.####.\0A.#.#..#.#.#.#.##.###.##\0A#..#.#..##...#..#.####.\0A.###.#.#...###....###..\0A###..#.###..###.#.###.#\0A...###.##.#.##.#...#..#\0A#......#.#.##..#...#.#.\0A###.##.#..##...#..#.#.#\0A###..###..##.##..##.###\0A###.###.####....######.\0A.###.#####.#.#.#.#####.\0A##.#.###.###.##.##..##.\0A##.#..#..#..#.####.#.#.\0A.#.#.#.##.##########..#\0A#####.##......#.#.####.\00", align 1
@s.2 = private unnamed_addr constant [16 x i8] c"advent10-2.leek\00", align 1
@s.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@null = external global %null
@s.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vm = external global i8
@s.9 = private unnamed_addr constant [3 x i8] c") \00", align 1
@s.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@s.11 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@s.12 = private unnamed_addr constant [5 x i8] c" => \00", align 1

define internal void @main() personality i32 (...)* @__gxx_personality_v0 {
start:
  %g57 = alloca %"array<int>"*
  %c = alloca i32
  %exnline.slot46 = alloca i64
  %exn.slot45 = alloca i64
  %exnline.slot = alloca i64
  %exn.slot = alloca i64
  %it36 = alloca %"map_node<real, array<int>>"*
  %a35 = alloca double
  %g34 = alloca %"array<int>"*
  %i31 = alloca i32
  %it26 = alloca %"map_node<real, array<int>>"*
  %g = alloca %"array<int>"*
  %groups23 = alloca %"map<real, array<int>>"*
  %a = alloca double
  %y = alloca i32
  %x = alloca i32
  %it14 = alloca i32*
  %cell13 = alloca i32
  %it6 = alloca i32*
  %v = alloca i32
  %groups = alloca %"map<real, array<int>>"*
  %it = alloca %string_iterator
  %i = alloca i32
  %cell = alloca %string*
  %cells = alloca %"array<int>"*
  %allcells = alloca %string*
  %H = alloca i32
  %W = alloca i32
  %lines = alloca %"array<string>"*
  %CY = alloca i32
  %CX = alloca i32
  %C = alloca i32
  %data = alloca %string*
  %0 = call %string* @String.new.1(i8* getelementptr inbounds ([552 x i8], [552 x i8]* @s, i32 0, i32 0))
  %1 = call %string* @Value.move_inc.0(%string* %0)
  store %string* %1, %string** %data
  store i32 448, i32* %C
  store i32 19, i32* %CX
  store i32 11, i32* %CY
  %2 = load %string*, %string** %data
  %3 = call %"array<string>"* @String.lines.0(%string* %2)
  %4 = call %"array<string>"* @Value.move_inc.0.1(%"array<string>"* %3)
  store %"array<string>"* %4, %"array<string>"** %lines
  %5 = load %"array<string>"*, %"array<string>"** %lines
  %6 = call i32 @Array.isize.0(%"array<string>"* %5)
  %7 = icmp sge i32 0, %6
  %8 = or i1 false, %7
  br i1 %8, label %then, label %ifcont

then:                                             ; preds = %start
  %9 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %9)
  call void @Value.delete_ref.0(%"array<string>"* %5)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 29)
  br label %ifcont

ifcont:                                           ; preds = %then, %start
  %10 = getelementptr inbounds %"array<string>", %"array<string>"* %5, i32 0, i32 5
  %11 = load %string**, %string*** %10
  %12 = getelementptr %string*, %string** %11, i32 0
  %13 = load %string*, %string** %12
  %14 = call i32 @String.size.1(%string* %13)
  store i32 %14, i32* %W
  %15 = load %"array<string>"*, %"array<string>"** %lines
  %16 = call i32 @Array.isize.0(%"array<string>"* %15)
  store i32 %16, i32* %H
  %17 = load %"array<string>"*, %"array<string>"** %lines
  %18 = call %string* @Array.join.0(%"array<string>"* %17)
  %19 = call %string* @Value.move_inc.0.4(%string* %18)
  store %string* %19, %string** %allcells
  %20 = load %string*, %string** %allcells
  %21 = call i32 @String.size.1(%string* %20)
  %22 = call %"array<int>"* @Array.new.1(i32 1)
  call void @Array.vpush.1(%"array<int>"* %22, i32 -1)
  %23 = call %"array<int>"* @Array.repeat_fun.3(%"array<int>"* %22, i32 %21)
  %24 = call %"array<int>"* @Value.move_inc.0.5(%"array<int>"* %23)
  store %"array<int>"* %24, %"array<int>"** %cells
  %25 = load %string*, %string** %allcells
  %26 = getelementptr inbounds %string, %string* %25, i32 0, i32 3
  %27 = load i32, i32* %26
  %28 = add i32 %27, 1
  %29 = getelementptr inbounds %string, %string* %25, i32 0, i32 3
  store i32 %28, i32* %29
  store %null* @null, %string** %cell
  call void @String.iterator_begin.0(%string* %25, %string_iterator* %it)
  br label %cond

cond:                                             ; preds = %it4, %ifcont
  %30 = call i1 @String.iterator_end.0(%string_iterator* %it)
  br i1 %30, label %end5, label %loop

loop:                                             ; preds = %cond
  %31 = load %string*, %string** %cell
  %32 = call i32 @String.iterator_get.0(%string_iterator* %it)
  %33 = call %string* @String.iterator_get.1(i32 %32, %string* %31)
  store %string* %33, %string** %cell
  %34 = load i32, i32* %i
  %35 = call i32 @String.iterator_key.0(%string_iterator* %it)
  store i32 %35, i32* %i
  %36 = load i32, i32* %i
  %37 = load %string*, %string** %cell
  %38 = load i32, i32* %C
  %39 = load i32, i32* %i
  %40 = icmp eq i32 %39, %38
  %41 = call %string* @String.new.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s.6, i32 0, i32 0))
  %42 = load %string*, %string** %cell
  %43 = call i1 @"Value.operator==.0"(%string* %42, %string* %41)
  call void @Value.delete.0(%string* %41)
  %44 = or i1 %43, %40
  br i1 %44, label %then1, label %end

then1:                                            ; preds = %loop
  br label %it4

new.block:                                        ; No predecessors!
  br label %end

end:                                              ; preds = %new.block, %loop
  %45 = load i32, i32* %i
  %46 = load %"array<int>"*, %"array<int>"** %cells
  %47 = load i32, i32* %i
  %48 = call i32 @Array.isize.2(%"array<int>"* %46)
  %49 = icmp sge i32 %47, %48
  %50 = icmp slt i32 %47, 0
  %51 = or i1 %50, %49
  br i1 %51, label %then2, label %ifcont3

then2:                                            ; preds = %end
  call void @Value.delete_ref.0(%"array<int>"* %46)
  call void @Value.delete_ref.0(%string* %25)
  %52 = load %string*, %string** %cell
  call void @Value.delete_ref.0(%string* %52)
  %53 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %53)
  %54 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %54)
  %55 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %55)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 36)
  br label %ifcont3

ifcont3:                                          ; preds = %then2, %end
  %56 = getelementptr inbounds %"array<int>", %"array<int>"* %46, i32 0, i32 5
  %57 = load i32*, i32** %56
  %58 = getelementptr i32, i32* %57, i32 %47
  store i32 %45, i32* %58
  br label %it4

it4:                                              ; preds = %ifcont3, %then1
  call void @String.iterator_next.0(%string_iterator* %it)
  br label %cond

end5:                                             ; preds = %cond
  call void @Value.delete_ref.0(%string* %25)
  %59 = load %string*, %string** %cell
  call void @Value.delete_ref.0(%string* %59)
  %60 = call %"map<real, array<int>>"* @Map.new.3()
  %61 = call %"array<int>"* @Array.new.1(i32 1)
  call void @Array.vpush.1(%"array<int>"* %61, i32 0)
  call void @Map.insert_fun.3(%"map<real, array<int>>"* %60, double 9.000000e+00, %"array<int>"* %61)
  %62 = call %"map<real, array<int>>"* @Value.move_inc.0.7(%"map<real, array<int>>"* %60)
  store %"map<real, array<int>>"* %62, %"map<real, array<int>>"** %groups
  %63 = load %"array<int>"*, %"array<int>"** %cells
  %64 = call %"array<int>"* @Array.new.1(i32 0)
  %65 = getelementptr inbounds %"array<int>", %"array<int>"* %63, i32 0, i32 3
  %66 = load i32, i32* %65
  %67 = add i32 %66, 1
  %68 = getelementptr inbounds %"array<int>", %"array<int>"* %63, i32 0, i32 3
  store i32 %67, i32* %68
  %69 = getelementptr inbounds %"array<int>", %"array<int>"* %63, i32 0, i32 5
  %70 = load i32*, i32** %69
  store i32* %70, i32** %it6
  %71 = bitcast i32** %it6 to i8*
  %72 = icmp eq i8* %71, null
  br i1 %72, label %end12, label %cond7

cond7:                                            ; preds = %it11, %end5
  %73 = getelementptr inbounds %"array<int>", %"array<int>"* %63, i32 0, i32 6
  %74 = load i32*, i32** %73
  %75 = load i32*, i32** %it6
  %76 = bitcast i32* %75 to i8*
  %77 = bitcast i32* %74 to i8*
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %end12, label %loop8

loop8:                                            ; preds = %cond7
  %79 = load i32, i32* %v
  %80 = load i32*, i32** %it6
  %81 = load i32, i32* %80
  store i32 %81, i32* %v
  %82 = load i32, i32* %v
  %83 = call i1 @0(i32 %82)
  br i1 %83, label %then9, label %ifcont10

then9:                                            ; preds = %loop8
  call void @Array.vpush.1(%"array<int>"* %64, i32 %82)
  br label %ifcont10

ifcont10:                                         ; preds = %then9, %loop8
  br label %it11

it11:                                             ; preds = %ifcont10
  %84 = load i32*, i32** %it6
  %85 = getelementptr i32, i32* %84, i32 1
  store i32* %85, i32** %it6
  br label %cond7

end12:                                            ; preds = %cond7, %end5
  call void @Value.delete_ref.0(%"array<int>"* %63)
  %86 = getelementptr inbounds %"array<int>", %"array<int>"* %64, i32 0, i32 3
  %87 = load i32, i32* %86
  %88 = add i32 %87, 1
  %89 = getelementptr inbounds %"array<int>", %"array<int>"* %64, i32 0, i32 3
  store i32 %88, i32* %89
  %90 = getelementptr inbounds %"array<int>", %"array<int>"* %64, i32 0, i32 5
  %91 = load i32*, i32** %90
  store i32* %91, i32** %it14
  %92 = bitcast i32** %it14 to i8*
  %93 = icmp eq i8* %92, null
  br i1 %93, label %end25, label %cond15

cond15:                                           ; preds = %it24, %end12
  %94 = getelementptr inbounds %"array<int>", %"array<int>"* %64, i32 0, i32 6
  %95 = load i32*, i32** %94
  %96 = load i32*, i32** %it14
  %97 = bitcast i32* %96 to i8*
  %98 = bitcast i32* %95 to i8*
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %end25, label %loop16

loop16:                                           ; preds = %cond15
  %100 = load i32, i32* %cell13
  %101 = load i32*, i32** %it14
  %102 = load i32, i32* %101
  store i32 %102, i32* %cell13
  %103 = load i32, i32* %cell13
  %104 = load i32, i32* %W
  %105 = load i32, i32* %cell13
  %106 = sitofp i32 %104 to double
  %107 = fcmp oeq double %106, 0.000000e+00
  br i1 %107, label %then17, label %ifcont18

then17:                                           ; preds = %loop16
  call void @Value.delete.0(%"array<int>"* %64)
  %108 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %108)
  %109 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %109)
  %110 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %110)
  %111 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %111)
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 40)
  br label %ifcont18

ifcont18:                                         ; preds = %then17, %loop16
  %112 = srem i32 %105, %104
  store i32 %112, i32* %x
  %113 = load i32, i32* %H
  %114 = load i32, i32* %cell13
  %115 = sdiv i32 %114, %113
  store i32 %115, i32* %y
  %116 = load i32, i32* %x
  %117 = load i32, i32* %CX
  %118 = sub i32 %117, %116
  %119 = load i32, i32* %CY
  %120 = load i32, i32* %y
  %121 = sub i32 %120, %119
  %122 = call double @Number.m_atan2.0(i32 %118, i32 %121)
  %123 = fadd double %122, 0x400921FB54442D18
  br i1 false, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont18
  call void @Value.delete.0(%"array<int>"* %64)
  %124 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %124)
  %125 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %125)
  %126 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %126)
  %127 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %127)
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 42)
  br label %ifcont20

ifcont20:                                         ; preds = %then19, %ifcont18
  %128 = frem double %123, 0x401921FB54442D18
  store double %128, double* %a
  %129 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups
  %130 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups
  %131 = load double, double* %a
  %132 = call i1 @Map.operatorin.0(%"map<real, array<int>>"* %130, double %131)
  %133 = xor i1 %132, true
  br i1 %133, label %then21, label %end22

then21:                                           ; preds = %ifcont20
  %134 = call %"array<int>"* @Array.new.1(i32 1)
  call void @Array.vpush.1(%"array<int>"* %134, i32 -1)
  %135 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups
  %136 = load double, double* %a
  %137 = call %"array<int>"** @Map.atL.3(%"map<real, array<int>>"* %135, double %136)
  %138 = call %"array<int>"* @Value.move_inc.0.5(%"array<int>"* %134)
  %139 = load %"array<int>"*, %"array<int>"** %137
  call void @Value.delete_ref.0(%"array<int>"* %139)
  store %"array<int>"* %138, %"array<int>"** %137
  %140 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups
  br label %end22

end22:                                            ; preds = %then21, %ifcont20
  %phi = phi %"map<real, array<int>>"* [ %129, %ifcont20 ], [ %140, %then21 ]
  store %"map<real, array<int>>"* %phi, %"map<real, array<int>>"** %groups23
  %141 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  %142 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  %143 = load double, double* %a
  %144 = call %"array<int>"** @Map.atL.3(%"map<real, array<int>>"* %142, double %143)
  %145 = load %"array<int>"*, %"array<int>"** %144
  %146 = load i32, i32* %cell13
  call void @Array.vpush.1(%"array<int>"* %145, i32 %146)
  br label %it24

it24:                                             ; preds = %end22
  %147 = load i32*, i32** %it14
  %148 = getelementptr i32, i32* %147, i32 1
  store i32* %148, i32** %it14
  br label %cond15

end25:                                            ; preds = %cond15, %end12
  call void @Value.delete.0(%"array<int>"* %64)
  %149 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  %150 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %149, i32 0, i32 3
  %151 = load i32, i32* %150
  %152 = add i32 %151, 1
  %153 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %149, i32 0, i32 3
  store i32 %152, i32* %153
  store %null* @null, %"array<int>"** %g
  %154 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %149, i32 0, i32 8
  %155 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %154
  store %"map_node<real, array<int>>"* %155, %"map_node<real, array<int>>"** %it26
  br label %cond27

cond27:                                           ; preds = %it29, %end25
  %156 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it26
  %157 = call %"map_node<real, array<int>>"* @Map.iterator_end.0(%"map<real, array<int>>"* %149)
  %158 = icmp eq %"map_node<real, array<int>>"* %156, %157
  br i1 %158, label %end30, label %loop28

loop28:                                           ; preds = %cond27
  %159 = load %"array<int>"*, %"array<int>"** %g
  call void @Value.delete_previous.0(%"array<int>"* %159)
  %160 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it26
  %161 = getelementptr inbounds %"map_node<real, array<int>>", %"map_node<real, array<int>>"* %160, i32 0, i32 5
  %162 = load %"array<int>"*, %"array<int>"** %161
  %163 = getelementptr inbounds %"array<int>", %"array<int>"* %162, i32 0, i32 3
  %164 = load i32, i32* %163
  %165 = add i32 %164, 1
  %166 = getelementptr inbounds %"array<int>", %"array<int>"* %162, i32 0, i32 3
  store i32 %165, i32* %166
  store %"array<int>"* %162, %"array<int>"** %g
  %167 = load %"array<int>"*, %"array<int>"** %g
  %168 = load %"array<int>"*, %"array<int>"** %g
  %169 = call %function* @Function.new.0(i8* @vm, i1 (i32, i32)* @1)
  %170 = call %"array<int>"* @Array.sort_fun.3(%"array<int>"* %168, %function* %169)
  br label %it29

it29:                                             ; preds = %loop28
  %171 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it26
  %172 = call %"map_node<real, array<int>>"* @Map.iterator_inc.0(%"map_node<real, array<int>>"* %171)
  store %"map_node<real, array<int>>"* %172, %"map_node<real, array<int>>"** %it26
  br label %cond27

end30:                                            ; preds = %cond27
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %149)
  %173 = load %"array<int>"*, %"array<int>"** %g
  call void @Value.delete_ref.0(%"array<int>"* %173)
  store i32 0, i32* %i31
  br label %cond32

cond32:                                           ; preds = %end55, %end30
  br i1 true, label %loop33, label %end56

loop33:                                           ; preds = %cond32
  %174 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  %175 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %174, i32 0, i32 3
  %176 = load i32, i32* %175
  %177 = add i32 %176, 1
  %178 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %174, i32 0, i32 3
  store i32 %177, i32* %178
  store %null* @null, %"array<int>"** %g34
  %179 = getelementptr inbounds %"map<real, array<int>>", %"map<real, array<int>>"* %174, i32 0, i32 8
  %180 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %179
  store %"map_node<real, array<int>>"* %180, %"map_node<real, array<int>>"** %it36
  br label %cond37

cond37:                                           ; preds = %it54, %loop33
  %181 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it36
  %182 = call %"map_node<real, array<int>>"* @Map.iterator_end.0(%"map<real, array<int>>"* %174)
  %183 = icmp eq %"map_node<real, array<int>>"* %181, %182
  br i1 %183, label %end55, label %loop38

loop38:                                           ; preds = %cond37
  %184 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_previous.0(%"array<int>"* %184)
  %185 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it36
  %186 = getelementptr inbounds %"map_node<real, array<int>>", %"map_node<real, array<int>>"* %185, i32 0, i32 5
  %187 = load %"array<int>"*, %"array<int>"** %186
  %188 = getelementptr inbounds %"array<int>", %"array<int>"* %187, i32 0, i32 3
  %189 = load i32, i32* %188
  %190 = add i32 %189, 1
  %191 = getelementptr inbounds %"array<int>", %"array<int>"* %187, i32 0, i32 3
  store i32 %190, i32* %191
  store %"array<int>"* %187, %"array<int>"** %g34
  %192 = load double, double* %a35
  %193 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it36
  %194 = getelementptr inbounds %"map_node<real, array<int>>", %"map_node<real, array<int>>"* %193, i32 0, i32 4
  %195 = load double, double* %194
  store double %195, double* %a35
  %196 = load double, double* %a35
  %197 = load %"array<int>"*, %"array<int>"** %g34
  %198 = load %"array<int>"*, %"array<int>"** %g34
  %199 = invoke i32 @Value.absolute.0(%"array<int>"* %198)
          to label %cont unwind label %lpad

cont:                                             ; preds = %loop38
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  br i1 %201, label %then39, label %end41

catch:                                            ; preds = %lpad
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %202 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %202)
  %203 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %203)
  %204 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %204)
  %205 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %205)
  %206 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %206)
  %207 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %207)
  %208 = load i64, i64* %exn.slot
  %209 = load i64, i64* %exnline.slot
  call void @System.throw.1(i64 %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 %209)
  ret void

lpad:                                             ; preds = %loop38
  %210 = landingpad { i64, i32 }
          catch i8* null
  %211 = extractvalue { i64, i32 } %210, 0
  store i64 %211, i64* %exn.slot
  store i64 61, i64* %exnline.slot
  br label %catch

then39:                                           ; preds = %cont
  br label %it54

new.block40:                                      ; No predecessors!
  br label %end41

end41:                                            ; preds = %new.block40, %cont
  %212 = load %"array<int>"*, %"array<int>"** %g34
  %213 = invoke i32 @Array.pop.3(%"array<int>"* %212)
          to label %cont42 unwind label %lpad44

cont42:                                           ; preds = %end41
  store i32 %213, i32* %c
  %214 = load i32, i32* %i31
  %215 = add i32 %214, 1
  store i32 %215, i32* %i31
  %216 = icmp eq i32 %215, 200
  br i1 %216, label %then47, label %end53

catch43:                                          ; preds = %lpad44
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %217 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %217)
  %218 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %218)
  %219 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %219)
  %220 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %220)
  %221 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %221)
  %222 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %222)
  %223 = load i64, i64* %exn.slot45
  %224 = load i64, i64* %exnline.slot46
  call void @System.throw.1(i64 %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 %224)
  ret void

lpad44:                                           ; preds = %end41
  %225 = landingpad { i64, i32 }
          catch i8* null
  %226 = extractvalue { i64, i32 } %225, 0
  store i64 %226, i64* %exn.slot45
  store i64 62, i64* %exnline.slot46
  br label %catch43

then47:                                           ; preds = %cont42
  %227 = load i32, i32* %H
  %228 = load i32, i32* %c
  %229 = sdiv i32 %228, %227
  %230 = load i32, i32* %W
  %231 = load i32, i32* %c
  %232 = sitofp i32 %230 to double
  %233 = fcmp oeq double %232, 0.000000e+00
  br i1 %233, label %then48, label %ifcont49

then48:                                           ; preds = %then47
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %234 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %234)
  %235 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %235)
  %236 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %236)
  %237 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %237)
  %238 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %238)
  %239 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %239)
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 64)
  br label %ifcont49

ifcont49:                                         ; preds = %then48, %then47
  %240 = srem i32 %231, %230
  %241 = mul i32 %240, 100
  %242 = add i32 %241, %229
  %243 = call %string* @String.new.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s.9, i32 0, i32 0))
  %244 = load i32, i32* %H
  %245 = load i32, i32* %c
  %246 = sdiv i32 %245, %244
  %247 = call %string* @String.new.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s.10, i32 0, i32 0))
  %248 = load i32, i32* %W
  %249 = load i32, i32* %c
  %250 = sitofp i32 %248 to double
  %251 = fcmp oeq double %250, 0.000000e+00
  br i1 %251, label %then50, label %ifcont51

then50:                                           ; preds = %ifcont49
  call void @Value.delete.0(%string* %243)
  call void @Value.delete.0(%string* %247)
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %252 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %252)
  %253 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %253)
  %254 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %254)
  %255 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %255)
  %256 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %256)
  %257 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %257)
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.3, i32 0, i32 0), i64 64)
  br label %ifcont51

ifcont51:                                         ; preds = %then50, %ifcont49
  %258 = srem i32 %249, %248
  %259 = call %string* @String.new.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s.11, i32 0, i32 0))
  %260 = load i32, i32* %c
  %261 = call %string* @String.new.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.12, i32 0, i32 0))
  %262 = load i32, i32* %i31
  %263 = call %string* @"Number.operator+.5"(i32 %262, %string* %261)
  %264 = call %string* @"String.operator+.5"(%string* %263, i32 %260)
  %265 = call %string* @"String.operator+.0"(%string* %264, %string* %259)
  %266 = call %string* @"String.operator+.5"(%string* %265, i32 %258)
  %267 = call %string* @"String.operator+.0"(%string* %266, %string* %247)
  %268 = call %string* @"String.operator+.5"(%string* %267, i32 %246)
  %269 = call %string* @"String.operator+.0"(%string* %268, %string* %243)
  %270 = call %string* @"String.operator+.5"(%string* %269, i32 %242)
  call void @System.internal_print.6(i8* @vm, %string* %270)
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %271 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %271)
  %272 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %272)
  %273 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %273)
  %274 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %274)
  %275 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %275)
  %276 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %276)
  ret void

new.block52:                                      ; No predecessors!
  br label %end53

end53:                                            ; preds = %new.block52, %cont42
  br label %it54

it54:                                             ; preds = %end53, %then39
  %277 = load %"map_node<real, array<int>>"*, %"map_node<real, array<int>>"** %it36
  %278 = call %"map_node<real, array<int>>"* @Map.iterator_inc.0(%"map_node<real, array<int>>"* %277)
  store %"map_node<real, array<int>>"* %278, %"map_node<real, array<int>>"** %it36
  br label %cond37

end55:                                            ; preds = %cond37
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %174)
  %279 = load %"array<int>"*, %"array<int>"** %g34
  call void @Value.delete_ref.0(%"array<int>"* %279)
  br label %cond32

end56:                                            ; preds = %cond32
  %280 = load %"array<int>"*, %"array<int>"** %g34
  store %"array<int>"* %280, %"array<int>"** %g57
  %281 = load %"array<string>"*, %"array<string>"** %lines
  call void @Value.delete_ref.0(%"array<string>"* %281)
  %282 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %282)
  %283 = load %string*, %string** %allcells
  call void @Value.delete_ref.0(%string* %283)
  %284 = load %"array<int>"*, %"array<int>"** %cells
  call void @Value.delete_ref.0(%"array<int>"* %284)
  %285 = load %"array<int>"*, %"array<int>"** %g57
  call void @Value.delete_ref.0(%"array<int>"* %285)
  %286 = load %"map<real, array<int>>"*, %"map<real, array<int>>"** %groups23
  call void @Value.delete_ref.0(%"map<real, array<int>>"* %286)
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare %string* @String.new.1(i8*)

declare %string* @Value.move_inc.0(%string*)

declare %"array<string>"* @String.lines.0(%string*)

declare %"array<string>"* @Value.move_inc.0.1(%"array<string>"*)

declare i32 @Array.isize.0(%"array<string>"*)

declare void @Value.delete_ref.0(%string*)

declare void @System.throw.0(i32, i8*, i8*, i64)

declare i32 @String.size.1(%string*)

declare %string* @Array.join.0(%"array<string>"*)

declare %string* @Value.move_inc.0.4(%string*)

declare %"array<int>"* @Array.new.1(i32)

declare void @Array.vpush.1(%"array<int>"*, i32)

declare %"array<int>"* @Array.repeat_fun.3(%"array<int>"*, i32)

declare %"array<int>"* @Value.move_inc.0.5(%"array<int>"*)

declare void @String.iterator_begin.0(%string*, %string_iterator*)

declare i1 @String.iterator_end.0(%string_iterator*)

declare i32 @String.iterator_get.0(%string_iterator*)

declare %string* @String.iterator_get.1(i32, %string*)

declare i32 @String.iterator_key.0(%string_iterator*)

declare i1 @"Value.operator==.0"(%string*, %string*)

declare void @Value.delete.0(%string*)

declare i32 @Array.isize.2(%"array<int>"*)

declare void @String.iterator_next.0(%string_iterator*)

declare %"map<real, array<int>>"* @Map.new.3()

declare void @Map.insert_fun.3(%"map<real, array<int>>"*, double, %"array<int>"*)

declare %"map<real, array<int>>"* @Value.move_inc.0.7(%"map<real, array<int>>"*)

define internal i1 @0(i32 %c) {
start:
  %c1 = alloca i32
  store i32 %c, i32* %c1
  %0 = load i32, i32* %c1
  %1 = icmp sge i32 %0, 0
  ret i1 %1
}

declare double @Number.m_atan2.0(i32, i32)

declare i1 @Map.operatorin.0(%"map<real, array<int>>"*, double)

declare %"array<int>"** @Map.atL.3(%"map<real, array<int>>"*, double)

declare %"map_node<real, array<int>>"* @Map.iterator_end.0(%"map<real, array<int>>"*)

declare void @Value.delete_previous.0(%"array<int>"*)

define internal i1 @1(i32 %a, i32 %b) personality i32 (...)* @__gxx_personality_v0 {
start:
  %exnline.slot19 = alloca i64
  %exn.slot18 = alloca i64
  %exnline.slot14 = alloca i64
  %exn.slot13 = alloca i64
  %exnline.slot9 = alloca i64
  %exn.slot8 = alloca i64
  %exnline.slot = alloca i64
  %exn.slot = alloca i64
  %y2 = alloca i32
  %x2 = alloca i32
  %y1 = alloca i32
  %x1 = alloca i32
  %CY = alloca i32
  %CX = alloca i32
  %H = alloca i32
  %W = alloca i32
  %b2 = alloca i32
  %a1 = alloca i32
  store i32 %a, i32* %a1
  store i32 %b, i32* %b2
  store i32 23, i32* %W
  store i32 23, i32* %H
  store i32 19, i32* %CX
  store i32 11, i32* %CY
  %0 = load i32, i32* %W
  %1 = load i32, i32* %a1
  %2 = sitofp i32 %0 to double
  %3 = fcmp oeq double %2, 0.000000e+00
  br i1 %3, label %then, label %ifcont

then:                                             ; preds = %start
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 52)
  br label %ifcont

ifcont:                                           ; preds = %then, %start
  %4 = srem i32 %1, %0
  store i32 %4, i32* %x1
  %5 = load i32, i32* %H
  %6 = load i32, i32* %a1
  %7 = sdiv i32 %6, %5
  store i32 %7, i32* %y1
  %8 = load i32, i32* %W
  %9 = load i32, i32* %b2
  %10 = sitofp i32 %8 to double
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %then3, label %ifcont4

then3:                                            ; preds = %ifcont
  call void @System.throw.0(i32 -2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 53)
  br label %ifcont4

ifcont4:                                          ; preds = %then3, %ifcont
  %12 = srem i32 %9, %8
  store i32 %12, i32* %x2
  %13 = load i32, i32* %H
  %14 = load i32, i32* %b2
  %15 = sdiv i32 %14, %13
  store i32 %15, i32* %y2
  %16 = load i32, i32* %CY
  %17 = load i32, i32* %y2
  %18 = sub i32 %17, %16
  %19 = sitofp i32 %18 to double
  %20 = call %any* @Number.new.0(double %19)
  %21 = invoke i32 @Value.absolute.0(%any* %20)
          to label %cont unwind label %lpad

cont:                                             ; preds = %ifcont4
  call void @Value.delete.0(%any* %20)
  %22 = load i32, i32* %CX
  %23 = load i32, i32* %x2
  %24 = sub i32 %23, %22
  %25 = sitofp i32 %24 to double
  %26 = call %any* @Number.new.0(double %25)
  %27 = invoke i32 @Value.absolute.0(%any* %26)
          to label %cont5 unwind label %lpad7

catch:                                            ; preds = %lpad
  %28 = load i64, i64* %exn.slot
  %29 = load i64, i64* %exnline.slot
  call void @System.throw.1(i64 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 %29)
  ret i1 false

lpad:                                             ; preds = %ifcont4
  %30 = landingpad { i64, i32 }
          catch i8* null
  %31 = extractvalue { i64, i32 } %30, 0
  store i64 %31, i64* %exn.slot
  store i64 54, i64* %exnline.slot
  br label %catch

cont5:                                            ; preds = %cont
  call void @Value.delete.0(%any* %26)
  %32 = add i32 %27, %21
  %33 = load i32, i32* %CY
  %34 = load i32, i32* %y1
  %35 = sub i32 %34, %33
  %36 = sitofp i32 %35 to double
  %37 = call %any* @Number.new.0(double %36)
  %38 = invoke i32 @Value.absolute.0(%any* %37)
          to label %cont10 unwind label %lpad12

catch6:                                           ; preds = %lpad7
  %39 = load i64, i64* %exn.slot8
  %40 = load i64, i64* %exnline.slot9
  call void @System.throw.1(i64 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 %40)
  ret i1 false

lpad7:                                            ; preds = %cont
  %41 = landingpad { i64, i32 }
          catch i8* null
  %42 = extractvalue { i64, i32 } %41, 0
  store i64 %42, i64* %exn.slot8
  store i64 54, i64* %exnline.slot9
  br label %catch6

cont10:                                           ; preds = %cont5
  call void @Value.delete.0(%any* %37)
  %43 = load i32, i32* %CX
  %44 = load i32, i32* %x1
  %45 = sub i32 %44, %43
  %46 = sitofp i32 %45 to double
  %47 = call %any* @Number.new.0(double %46)
  %48 = invoke i32 @Value.absolute.0(%any* %47)
          to label %cont15 unwind label %lpad17

catch11:                                          ; preds = %lpad12
  %49 = load i64, i64* %exn.slot13
  %50 = load i64, i64* %exnline.slot14
  call void @System.throw.1(i64 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 %50)
  ret i1 false

lpad12:                                           ; preds = %cont5
  %51 = landingpad { i64, i32 }
          catch i8* null
  %52 = extractvalue { i64, i32 } %51, 0
  store i64 %52, i64* %exn.slot13
  store i64 54, i64* %exnline.slot14
  br label %catch11

cont15:                                           ; preds = %cont10
  call void @Value.delete.0(%any* %47)
  %53 = add i32 %48, %38
  %54 = icmp sgt i32 %53, %32
  ret i1 %54

catch16:                                          ; preds = %lpad17
  %55 = load i64, i64* %exn.slot18
  %56 = load i64, i64* %exnline.slot19
  call void @System.throw.1(i64 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @s.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.8, i32 0, i32 0), i64 %56)
  ret i1 false

lpad17:                                           ; preds = %cont10
  %57 = landingpad { i64, i32 }
          catch i8* null
  %58 = extractvalue { i64, i32 } %57, 0
  store i64 %58, i64* %exn.slot18
  store i64 54, i64* %exnline.slot19
  br label %catch16

new.block:                                        ; No predecessors!
  ret i1 false
}

declare %any* @Number.new.0(double)

declare i32 @Value.absolute.0(%any*)

declare void @System.throw.1(i64, i8*, i8*, i64)

declare %function* @Function.new.0(i8*, i1 (i32, i32)*)

declare %"array<int>"* @Array.sort_fun.3(%"array<int>"*, %function*)

declare %"map_node<real, array<int>>"* @Map.iterator_inc.0(%"map_node<real, array<int>>"*)

declare i32 @Array.pop.3(%"array<int>"*)

declare %string* @"Number.operator+.5"(i32, %string*)

declare %string* @"String.operator+.5"(%string*, i32)

declare %string* @"String.operator+.0"(%string*, %string*)

declare void @System.internal_print.6(i8*, %string*)
