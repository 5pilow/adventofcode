; ModuleID = 'advent5-1.leek'
source_filename = "advent5-1.leek"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%null = type { i32, i32, i32, i32, i1 }
%"array<int>" = type { i32, i32, i32, i32, i1, i32*, i32*, i32* }
%any = type { i32, i32, i32, i32, i1 }
%string = type { i32, i32, i32, i32, i1 }
%"array<string>" = type { i32, i32, i32, i32, i1, %string**, %string**, %string** }

@s = private unnamed_addr constant [2557 x i8] c"3,225,1,225,6,6,1100,1,238,225,104,0,2,171,209,224,1001,224,-1040,224,4,224,102,8,223,223,1001,224,4,224,1,223,224,223,102,65,102,224,101,-3575,224,224,4,224,102,8,223,223,101,2,224,224,1,223,224,223,1102,9,82,224,1001,224,-738,224,4,224,102,8,223,223,1001,224,2,224,1,223,224,223,1101,52,13,224,1001,224,-65,224,4,224,1002,223,8,223,1001,224,6,224,1,223,224,223,1102,82,55,225,1001,213,67,224,1001,224,-126,224,4,224,102,8,223,223,1001,224,7,224,1,223,224,223,1,217,202,224,1001,224,-68,224,4,224,1002,223,8,223,1001,224,1,224,1,224,223,223,1002,176,17,224,101,-595,224,224,4,224,102,8,223,223,101,2,224,224,1,224,223,223,1102,20,92,225,1102,80,35,225,101,21,205,224,1001,224,-84,224,4,224,1002,223,8,223,1001,224,1,224,1,224,223,223,1101,91,45,225,1102,63,5,225,1101,52,58,225,1102,59,63,225,1101,23,14,225,4,223,99,0,0,0,677,0,0,0,0,0,0,0,0,0,0,0,1105,0,99999,1105,227,247,1105,1,99999,1005,227,99999,1005,0,256,1105,1,99999,1106,227,99999,1106,0,265,1105,1,99999,1006,0,99999,1006,227,274,1105,1,99999,1105,1,280,1105,1,99999,1,225,225,225,1101,294,0,0,105,1,0,1105,1,99999,1106,0,300,1105,1,99999,1,225,225,225,1101,314,0,0,106,0,0,1105,1,99999,1008,677,677,224,1002,223,2,223,1006,224,329,101,1,223,223,1108,226,677,224,1002,223,2,223,1006,224,344,101,1,223,223,7,677,226,224,102,2,223,223,1006,224,359,1001,223,1,223,8,677,226,224,102,2,223,223,1005,224,374,1001,223,1,223,1107,677,226,224,102,2,223,223,1006,224,389,1001,223,1,223,1008,226,226,224,1002,223,2,223,1005,224,404,1001,223,1,223,7,226,677,224,102,2,223,223,1005,224,419,1001,223,1,223,1007,677,677,224,102,2,223,223,1006,224,434,1001,223,1,223,107,226,226,224,1002,223,2,223,1005,224,449,1001,223,1,223,1008,677,226,224,102,2,223,223,1006,224,464,1001,223,1,223,1007,677,226,224,1002,223,2,223,1005,224,479,1001,223,1,223,108,677,677,224,1002,223,2,223,1006,224,494,1001,223,1,223,108,226,226,224,1002,223,2,223,1006,224,509,101,1,223,223,8,226,677,224,102,2,223,223,1006,224,524,101,1,223,223,107,677,226,224,1002,223,2,223,1005,224,539,1001,223,1,223,8,226,226,224,102,2,223,223,1005,224,554,101,1,223,223,1108,677,226,224,102,2,223,223,1006,224,569,101,1,223,223,108,677,226,224,102,2,223,223,1006,224,584,1001,223,1,223,7,677,677,224,1002,223,2,223,1005,224,599,101,1,223,223,1007,226,226,224,102,2,223,223,1005,224,614,1001,223,1,223,1107,226,677,224,102,2,223,223,1006,224,629,101,1,223,223,1107,226,226,224,102,2,223,223,1005,224,644,1001,223,1,223,1108,677,677,224,1002,223,2,223,1005,224,659,101,1,223,223,107,677,677,224,1002,223,2,223,1006,224,674,1001,223,1,223,4,223,99,226\00", align 1
@s.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@null = external global %null
@s.3 = private unnamed_addr constant [15 x i8] c"advent5-1.leek\00", align 1
@s.4 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@s.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s.6 = private unnamed_addr constant [9 x i8] c" inst = \00", align 1
@vm = external global i8
@s.7 = private unnamed_addr constant [10 x i8] c"opcode = \00", align 1
@s.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@s.9 = private unnamed_addr constant [7 x i8] c"modes \00", align 1
@s.10 = private unnamed_addr constant [3 x i8] c"p \00", align 1
@s.11 = private unnamed_addr constant [5 x i8] c"main\00", align 1

define internal i32 @main() personality i32 (...)* @__gxx_personality_v0 {
start:
  %exnline.slot = alloca i64
  %exn.slot = alloca i64
  %program = alloca %"array<int>"*
  %it = alloca %any**
  %v = alloca %string*
  %data = alloca %string*
  %0 = call %string* @String.new.1(i8* getelementptr inbounds ([2557 x i8], [2557 x i8]* @s, i32 0, i32 0))
  %1 = call %string* @Value.move_inc.0(%string* %0)
  store %string* %1, %string** %data
  %2 = call %string* @String.new.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s.1, i32 0, i32 0))
  %3 = load %string*, %string** %data
  %4 = call %"array<string>"* @"Value.operator/.0"(%string* %3, %string* %2)
  %5 = call %"array<int>"* @Array.new.1(i32 0)
  %6 = getelementptr inbounds %"array<string>", %"array<string>"* %4, i32 0, i32 3
  %7 = load i32, i32* %6
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %"array<string>", %"array<string>"* %4, i32 0, i32 3
  store i32 %8, i32* %9
  store %null* @null, %string** %v
  %10 = getelementptr inbounds %"array<string>", %"array<string>"* %4, i32 0, i32 5
  %11 = load %string**, %string*** %10
  store %string** %11, %any*** %it
  %12 = bitcast %any*** %it to i8*
  %13 = icmp eq i8* %12, null
  br i1 %13, label %end, label %cond

cond:                                             ; preds = %it1, %start
  %14 = getelementptr inbounds %"array<string>", %"array<string>"* %4, i32 0, i32 6
  %15 = load %string**, %string*** %14
  %16 = load %any**, %any*** %it
  %17 = bitcast %any** %16 to i8*
  %18 = bitcast %string** %15 to i8*
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %end, label %loop

loop:                                             ; preds = %cond
  %20 = load %string*, %string** %v
  call void @Value.delete_previous.0(%string* %20)
  %21 = load %any**, %any*** %it
  %22 = load %any*, %any** %21
  %23 = getelementptr inbounds %any, %any* %22, i32 0, i32 3
  %24 = load i32, i32* %23
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %any, %any* %22, i32 0, i32 3
  store i32 %25, i32* %26
  store %any* %22, %string** %v
  %27 = load %string*, %string** %v
  %28 = call %string* @Value.clone.0(%string* %27)
  %29 = getelementptr inbounds %string, %string* %28, i32 0, i32 3
  %30 = load i32, i32* %29
  %31 = add i32 %30, 1
  %32 = getelementptr inbounds %string, %string* %28, i32 0, i32 3
  store i32 %31, i32* %32
  %33 = call i32 @0(%string* %28)
  call void @Array.vpush.1(%"array<int>"* %5, i32 %33)
  call void @Value.delete_ref.0(%string* %28)
  br label %it1

it1:                                              ; preds = %loop
  %34 = load %any**, %any*** %it
  %35 = getelementptr %any*, %any** %34, i32 1
  store %any** %35, %any*** %it
  br label %cond

end:                                              ; preds = %cond, %start
  call void @Value.delete.0(%"array<string>"* %4)
  %36 = load %string*, %string** %v
  call void @Value.delete_ref.0(%string* %36)
  %37 = call %"array<int>"* @Value.move_inc.0.2(%"array<int>"* %5)
  store %"array<int>"* %37, %"array<int>"** %program
  %38 = load %"array<int>"*, %"array<int>"** %program
  %39 = invoke i32 @run(%"array<int>"* %38)
          to label %cont unwind label %lpad

cont:                                             ; preds = %end
  %40 = load %"array<int>"*, %"array<int>"** %program
  call void @Value.delete_ref.0(%"array<int>"* %40)
  %41 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %41)
  ret i32 %39

catch:                                            ; preds = %lpad
  %42 = load %"array<int>"*, %"array<int>"** %program
  call void @Value.delete_ref.0(%"array<int>"* %42)
  %43 = load %string*, %string** %data
  call void @Value.delete_ref.0(%string* %43)
  %44 = load i64, i64* %exn.slot
  %45 = load i64, i64* %exnline.slot
  call void @System.throw.1(i64 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @s.11, i32 0, i32 0), i64 %45)
  ret i32 0

lpad:                                             ; preds = %end
  %46 = landingpad { i64, i32 }
          catch i8* null
  %47 = extractvalue { i64, i32 } %46, 0
  store i64 %47, i64* %exn.slot
  store i64 51, i64* %exnline.slot
  br label %catch
}

declare i32 @__gxx_personality_v0(...)

declare %string* @String.new.1(i8*)

declare %string* @Value.move_inc.0(%string*)

declare %"array<string>"* @"Value.operator/.0"(%string*, %string*)

define internal i32 @0(%string* %s) personality i32 (...)* @__gxx_personality_v0 {
start:
  %s1 = alloca %string*
  store %string* %s, %string** %s1
  %0 = load %string*, %string** %s1
  %1 = call i64 @String.number.0(%string* %0)
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

declare i64 @String.number.0(%string*)

declare %"array<int>"* @Array.new.1(i32)

declare void @Value.delete_previous.0(%string*)

declare %string* @Value.clone.0(%string*)

declare void @Array.vpush.1(%"array<int>"*, i32)

declare void @Value.delete_ref.0(%string*)

declare void @Value.delete.0(%"array<string>"*)

declare %"array<int>"* @Value.move_inc.0.2(%"array<int>"*)

define internal i32 @run(%"array<int>"* %program) personality i32 (...)* @__gxx_personality_v0 {
start:
  %inst57 = alloca %string*
  %n56 = alloca i32
  %v55 = alloca i32
  %d54 = alloca i32
  %p53 = alloca i32
  %v = alloca i32
  %d = alloca i32
  %p3 = alloca i32
  %p2 = alloca i32
  %p1 = alloca i32
  %m3 = alloca i32
  %exnline.slot19 = alloca i64
  %exn.slot18 = alloca i64
  %m2 = alloca i32
  %exnline.slot10 = alloca i64
  %exn.slot9 = alloca i64
  %m1 = alloca i32
  %exnline.slot = alloca i64
  %exn.slot = alloca i64
  %i = alloca i32
  %opcode = alloca i32
  %n = alloca i32
  %inst = alloca %string*
  %s = alloca i32
  %p = alloca i32
  %program1 = alloca %"array<int>"*
  store %"array<int>"* %program, %"array<int>"** %program1
  store i32 0, i32* %p
  br label %cond

cond:                                             ; preds = %ifcont51, %start
  %0 = load %"array<int>"*, %"array<int>"** %program1
  %1 = call i32 @Array.isize.2(%"array<int>"* %0)
  %2 = load i32, i32* %p
  %3 = icmp slt i32 %2, %1
  br i1 %3, label %loop, label %end52

loop:                                             ; preds = %cond
  %4 = load %"array<int>"*, %"array<int>"** %program1
  %5 = load i32, i32* %p
  %6 = call i32 @Array.isize.2(%"array<int>"* %4)
  %7 = icmp sge i32 %5, %6
  %8 = icmp slt i32 %5, 0
  %9 = or i1 %8, %7
  br i1 %9, label %then, label %ifcont

then:                                             ; preds = %loop
  call void @Value.delete_ref.0(%"array<int>"* %4)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 6)
  br label %ifcont

ifcont:                                           ; preds = %then, %loop
  %10 = getelementptr inbounds %"array<int>", %"array<int>"* %4, i32 0, i32 5
  %11 = load i32*, i32** %10
  %12 = getelementptr i32, i32* %11, i32 %5
  %13 = load i32, i32* %12
  store i32 %13, i32* %s
  %14 = load i32, i32* %s
  %15 = call %string* @String.new.1(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s.5, i32 0, i32 0))
  %16 = call %string* @"String.operator+.5"(%string* %15, i32 %14)
  %17 = call %string* @Value.move_inc.0(%string* %16)
  store %string* %17, %string** %inst
  %18 = load %string*, %string** %inst
  %19 = call %string* @String.new.1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @s.6, i32 0, i32 0))
  %20 = load i32, i32* %p
  %21 = call %string* @"Number.operator+.5"(i32 %20, %string* %19)
  %22 = call %string* @"String.operator+.0"(%string* %21, %string* %18)
  call void @System.internal_print.6(i8* @vm, %string* %22)
  %23 = load %string*, %string** %inst
  %24 = call i32 @String.size.1(%string* %23)
  store i32 %24, i32* %n
  %25 = load %string*, %string** %inst
  %26 = load i32, i32* %n
  %27 = call i32 @Number.m_min.0(i32 %26, i32 2)
  %28 = load i32, i32* %n
  %29 = sub i32 %28, %27
  %30 = load i32, i32* %n
  %31 = call i32 @Number.m_min.0(i32 2, i32 %30)
  %32 = call %string* @String.substring.1(%string* %25, i32 %29, i32 %31)
  %33 = call i64 @String.number.0(%string* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %opcode
  %35 = load i32, i32* %opcode
  %36 = call %string* @String.new.1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @s.7, i32 0, i32 0))
  %37 = call %string* @"String.operator+.5"(%string* %36, i32 %35)
  call void @System.internal_print.6(i8* @vm, %string* %37)
  %38 = load i32, i32* %opcode
  %39 = icmp eq i32 %38, 99
  br i1 %39, label %then2, label %end

then2:                                            ; preds = %ifcont
  br label %end52

new.block:                                        ; No predecessors!
  br label %end

end:                                              ; preds = %new.block, %ifcont
  store i32 2, i32* %i
  %40 = load %string*, %string** %inst
  %41 = load i32, i32* %n
  %42 = load i32, i32* %i
  %43 = icmp slt i32 %42, %41
  br i1 %43, label %then3, label %else

then3:                                            ; preds = %end
  %44 = load %string*, %string** %inst
  %45 = load i32, i32* %i
  %46 = load i32, i32* %n
  %47 = sub i32 %46, %45
  %48 = call %string* @String.substring.1(%string* %44, i32 %47, i32 1)
  %49 = invoke i32 @Value.int.0(%string* %48)
          to label %cont unwind label %lpad

cont:                                             ; preds = %then3
  %50 = load %string*, %string** %inst
  br label %end4

catch:                                            ; preds = %lpad
  %51 = load i64, i64* %exn.slot
  %52 = load i64, i64* %exnline.slot
  call void @System.throw.1(i64 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 %52)
  ret i32 0

lpad:                                             ; preds = %then3
  %53 = landingpad { i64, i32 }
          catch i8* null
  %54 = extractvalue { i64, i32 } %53, 0
  store i64 %54, i64* %exn.slot
  store i64 14, i64* %exnline.slot
  br label %catch

else:                                             ; preds = %end
  br label %end4

end4:                                             ; preds = %else, %cont
  %phi = phi i32 [ %49, %cont ], [ 0, %else ]
  store i32 %phi, i32* %m1
  %55 = load i32, i32* %i
  %56 = add i32 %55, 1
  store i32 %56, i32* %i
  %57 = load %string*, %string** %inst
  %58 = load i32, i32* %n
  %59 = load i32, i32* %i
  %60 = icmp slt i32 %59, %58
  br i1 %60, label %then5, label %else11

then5:                                            ; preds = %end4
  %61 = load %string*, %string** %inst
  %62 = load i32, i32* %i
  %63 = load i32, i32* %n
  %64 = sub i32 %63, %62
  %65 = call %string* @String.substring.1(%string* %61, i32 %64, i32 1)
  %66 = invoke i32 @Value.int.0(%string* %65)
          to label %cont6 unwind label %lpad8

cont6:                                            ; preds = %then5
  %67 = load %string*, %string** %inst
  br label %end12

catch7:                                           ; preds = %lpad8
  %68 = load i64, i64* %exn.slot9
  %69 = load i64, i64* %exnline.slot10
  call void @System.throw.1(i64 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 %69)
  ret i32 0

lpad8:                                            ; preds = %then5
  %70 = landingpad { i64, i32 }
          catch i8* null
  %71 = extractvalue { i64, i32 } %70, 0
  store i64 %71, i64* %exn.slot9
  store i64 16, i64* %exnline.slot10
  br label %catch7

else11:                                           ; preds = %end4
  br label %end12

end12:                                            ; preds = %else11, %cont6
  %phi13 = phi i32 [ %66, %cont6 ], [ 0, %else11 ]
  store i32 %phi13, i32* %m2
  %72 = load i32, i32* %i
  %73 = add i32 %72, 1
  store i32 %73, i32* %i
  %74 = load %string*, %string** %inst
  %75 = load i32, i32* %n
  %76 = load i32, i32* %i
  %77 = icmp slt i32 %76, %75
  br i1 %77, label %then14, label %else20

then14:                                           ; preds = %end12
  %78 = load %string*, %string** %inst
  %79 = load i32, i32* %i
  %80 = load i32, i32* %n
  %81 = sub i32 %80, %79
  %82 = call %string* @String.substring.1(%string* %78, i32 %81, i32 1)
  %83 = invoke i32 @Value.int.0(%string* %82)
          to label %cont15 unwind label %lpad17

cont15:                                           ; preds = %then14
  %84 = load %string*, %string** %inst
  br label %end21

catch16:                                          ; preds = %lpad17
  %85 = load i64, i64* %exn.slot18
  %86 = load i64, i64* %exnline.slot19
  call void @System.throw.1(i64 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 %86)
  ret i32 0

lpad17:                                           ; preds = %then14
  %87 = landingpad { i64, i32 }
          catch i8* null
  %88 = extractvalue { i64, i32 } %87, 0
  store i64 %88, i64* %exn.slot18
  store i64 18, i64* %exnline.slot19
  br label %catch16

else20:                                           ; preds = %end12
  br label %end21

end21:                                            ; preds = %else20, %cont15
  %phi22 = phi i32 [ %83, %cont15 ], [ 0, %else20 ]
  store i32 %phi22, i32* %m3
  %89 = load i32, i32* %m3
  %90 = call %string* @String.new.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s.8, i32 0, i32 0))
  %91 = load i32, i32* %m2
  %92 = call %string* @String.new.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s.8, i32 0, i32 0))
  %93 = load i32, i32* %m1
  %94 = call %string* @String.new.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @s.9, i32 0, i32 0))
  %95 = call %string* @"String.operator+.5"(%string* %94, i32 %93)
  %96 = call %string* @"String.operator+.0"(%string* %95, %string* %92)
  %97 = call %string* @"String.operator+.5"(%string* %96, i32 %91)
  %98 = call %string* @"String.operator+.0"(%string* %97, %string* %90)
  %99 = call %string* @"String.operator+.5"(%string* %98, i32 %89)
  call void @System.internal_print.6(i8* @vm, %string* %99)
  %100 = load %"array<int>"*, %"array<int>"** %program1
  %101 = load i32, i32* %p
  %102 = add i32 %101, 1
  %103 = call i32 @Array.isize.2(%"array<int>"* %100)
  %104 = icmp sge i32 %102, %103
  %105 = icmp slt i32 %102, 0
  %106 = or i1 %105, %104
  br i1 %106, label %then23, label %ifcont24

then23:                                           ; preds = %end21
  call void @Value.delete_ref.0(%"array<int>"* %100)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 20)
  br label %ifcont24

ifcont24:                                         ; preds = %then23, %end21
  %107 = getelementptr inbounds %"array<int>", %"array<int>"* %100, i32 0, i32 5
  %108 = load i32*, i32** %107
  %109 = getelementptr i32, i32* %108, i32 %102
  %110 = load i32, i32* %109
  store i32 %110, i32* %p1
  %111 = load %"array<int>"*, %"array<int>"** %program1
  %112 = load i32, i32* %p
  %113 = add i32 %112, 2
  %114 = call i32 @Array.isize.2(%"array<int>"* %111)
  %115 = icmp sge i32 %113, %114
  %116 = icmp slt i32 %113, 0
  %117 = or i1 %116, %115
  br i1 %117, label %then25, label %ifcont26

then25:                                           ; preds = %ifcont24
  call void @Value.delete_ref.0(%"array<int>"* %111)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 21)
  br label %ifcont26

ifcont26:                                         ; preds = %then25, %ifcont24
  %118 = getelementptr inbounds %"array<int>", %"array<int>"* %111, i32 0, i32 5
  %119 = load i32*, i32** %118
  %120 = getelementptr i32, i32* %119, i32 %113
  %121 = load i32, i32* %120
  store i32 %121, i32* %p2
  %122 = load %"array<int>"*, %"array<int>"** %program1
  %123 = load i32, i32* %p
  %124 = add i32 %123, 3
  %125 = call i32 @Array.isize.2(%"array<int>"* %122)
  %126 = icmp sge i32 %124, %125
  %127 = icmp slt i32 %124, 0
  %128 = or i1 %127, %126
  br i1 %128, label %then27, label %ifcont28

then27:                                           ; preds = %ifcont26
  call void @Value.delete_ref.0(%"array<int>"* %122)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 22)
  br label %ifcont28

ifcont28:                                         ; preds = %then27, %ifcont26
  %129 = getelementptr inbounds %"array<int>", %"array<int>"* %122, i32 0, i32 5
  %130 = load i32*, i32** %129
  %131 = getelementptr i32, i32* %130, i32 %124
  %132 = load i32, i32* %131
  store i32 %132, i32* %p3
  store i32 0, i32* %d
  store i32 0, i32* %v
  %133 = load i32, i32* %opcode
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %then29, label %else34

then29:                                           ; preds = %ifcont28
  %135 = load %"array<int>"*, %"array<int>"** %program1
  %136 = load i32, i32* %p2
  %137 = call i32 @Array.isize.2(%"array<int>"* %135)
  %138 = icmp sge i32 %136, %137
  %139 = icmp slt i32 %136, 0
  %140 = or i1 %139, %138
  br i1 %140, label %then30, label %ifcont31

then30:                                           ; preds = %then29
  call void @Value.delete_ref.0(%"array<int>"* %135)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 27)
  br label %ifcont31

ifcont31:                                         ; preds = %then30, %then29
  %141 = getelementptr inbounds %"array<int>", %"array<int>"* %135, i32 0, i32 5
  %142 = load i32*, i32** %141
  %143 = getelementptr i32, i32* %142, i32 %136
  %144 = load i32, i32* %143
  %145 = load %"array<int>"*, %"array<int>"** %program1
  %146 = load i32, i32* %p1
  %147 = call i32 @Array.isize.2(%"array<int>"* %145)
  %148 = icmp sge i32 %146, %147
  %149 = icmp slt i32 %146, 0
  %150 = or i1 %149, %148
  br i1 %150, label %then32, label %ifcont33

then32:                                           ; preds = %ifcont31
  call void @Value.delete_ref.0(%"array<int>"* %135)
  call void @Value.delete_ref.0(%"array<int>"* %145)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 27)
  br label %ifcont33

ifcont33:                                         ; preds = %then32, %ifcont31
  %151 = getelementptr inbounds %"array<int>", %"array<int>"* %145, i32 0, i32 5
  %152 = load i32*, i32** %151
  %153 = getelementptr i32, i32* %152, i32 %146
  %154 = load i32, i32* %153
  %155 = add i32 %154, %144
  store i32 %155, i32* %v
  %156 = load i32, i32* %p3
  store i32 %156, i32* %d
  %157 = load i32, i32* %p
  %158 = add i32 %157, 4
  store i32 %158, i32* %p
  %159 = load i32, i32* %p
  %160 = load i32, i32* %v
  %161 = load i32, i32* %d
  br label %end49

else34:                                           ; preds = %ifcont28
  %162 = load i32, i32* %opcode
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %then35, label %else40

then35:                                           ; preds = %else34
  %164 = load %"array<int>"*, %"array<int>"** %program1
  %165 = load i32, i32* %p2
  %166 = call i32 @Array.isize.2(%"array<int>"* %164)
  %167 = icmp sge i32 %165, %166
  %168 = icmp slt i32 %165, 0
  %169 = or i1 %168, %167
  br i1 %169, label %then36, label %ifcont37

then36:                                           ; preds = %then35
  call void @Value.delete_ref.0(%"array<int>"* %164)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 31)
  br label %ifcont37

ifcont37:                                         ; preds = %then36, %then35
  %170 = getelementptr inbounds %"array<int>", %"array<int>"* %164, i32 0, i32 5
  %171 = load i32*, i32** %170
  %172 = getelementptr i32, i32* %171, i32 %165
  %173 = load i32, i32* %172
  %174 = load %"array<int>"*, %"array<int>"** %program1
  %175 = load i32, i32* %p1
  %176 = call i32 @Array.isize.2(%"array<int>"* %174)
  %177 = icmp sge i32 %175, %176
  %178 = icmp slt i32 %175, 0
  %179 = or i1 %178, %177
  br i1 %179, label %then38, label %ifcont39

then38:                                           ; preds = %ifcont37
  call void @Value.delete_ref.0(%"array<int>"* %164)
  call void @Value.delete_ref.0(%"array<int>"* %174)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 31)
  br label %ifcont39

ifcont39:                                         ; preds = %then38, %ifcont37
  %180 = getelementptr inbounds %"array<int>", %"array<int>"* %174, i32 0, i32 5
  %181 = load i32*, i32** %180
  %182 = getelementptr i32, i32* %181, i32 %175
  %183 = load i32, i32* %182
  %184 = mul i32 %183, %173
  store i32 %184, i32* %v
  %185 = load i32, i32* %p3
  store i32 %185, i32* %d
  %186 = load i32, i32* %p
  %187 = add i32 %186, 4
  store i32 %187, i32* %p
  %188 = load i32, i32* %p
  %189 = load i32, i32* %v
  %190 = load i32, i32* %d
  br label %end48

else40:                                           ; preds = %else34
  %191 = load i32, i32* %opcode
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %then41, label %else42

then41:                                           ; preds = %else40
  %193 = load i32, i32* %p1
  %194 = call %string* @String.new.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s.10, i32 0, i32 0))
  %195 = call %string* @"String.operator+.5"(%string* %194, i32 %193)
  call void @System.internal_print.6(i8* @vm, %string* %195)
  store i32 1, i32* %v
  %196 = load i32, i32* %p1
  store i32 %196, i32* %d
  %197 = load i32, i32* %p
  %198 = add i32 %197, 2
  store i32 %198, i32* %p
  %199 = load i32, i32* %p
  %200 = load i32, i32* %v
  %201 = load i32, i32* %d
  br label %end47

else42:                                           ; preds = %else40
  %202 = load %"array<int>"*, %"array<int>"** %program1
  %203 = load i32, i32* %p1
  %204 = call i32 @Array.isize.2(%"array<int>"* %202)
  %205 = icmp sge i32 %203, %204
  %206 = icmp slt i32 %203, 0
  %207 = or i1 %206, %205
  br i1 %207, label %then43, label %ifcont44

then43:                                           ; preds = %else42
  call void @Value.delete_ref.0(%"array<int>"* %202)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 40)
  br label %ifcont44

ifcont44:                                         ; preds = %then43, %else42
  %208 = getelementptr inbounds %"array<int>", %"array<int>"* %202, i32 0, i32 5
  %209 = load i32*, i32** %208
  %210 = getelementptr i32, i32* %209, i32 %203
  %211 = load i32, i32* %210
  call void @System.internal_print.1(i8* @vm, i32 %211)
  %212 = load i32, i32* %p1
  %213 = load i32, i32* %d
  store i32 %212, i32* %d
  %214 = load %"array<int>"*, %"array<int>"** %program1
  %215 = load i32, i32* %p1
  %216 = call i32 @Array.isize.2(%"array<int>"* %214)
  %217 = icmp sge i32 %215, %216
  %218 = icmp slt i32 %215, 0
  %219 = or i1 %218, %217
  br i1 %219, label %then45, label %ifcont46

then45:                                           ; preds = %ifcont44
  call void @Value.delete_ref.0(%"array<int>"* %214)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 42)
  br label %ifcont46

ifcont46:                                         ; preds = %then45, %ifcont44
  %220 = getelementptr inbounds %"array<int>", %"array<int>"* %214, i32 0, i32 5
  %221 = load i32*, i32** %220
  %222 = getelementptr i32, i32* %221, i32 %215
  %223 = load i32, i32* %222
  %224 = load i32, i32* %v
  store i32 %223, i32* %v
  %225 = load i32, i32* %p
  %226 = add i32 %225, 2
  store i32 %226, i32* %p
  %227 = load i32, i32* %p
  %228 = load i32, i32* %d
  %229 = load i32, i32* %v
  br label %end47

end47:                                            ; preds = %ifcont46, %then41
  %230 = load i32, i32* %d
  %231 = load i32, i32* %p
  %232 = load i32, i32* %v
  br label %end48

end48:                                            ; preds = %end47, %ifcont39
  %233 = load i32, i32* %d
  %234 = load i32, i32* %p
  %235 = load i32, i32* %v
  br label %end49

end49:                                            ; preds = %end48, %ifcont33
  %236 = load i32, i32* %v
  %237 = load %"array<int>"*, %"array<int>"** %program1
  %238 = load i32, i32* %d
  %239 = call i32 @Array.isize.2(%"array<int>"* %237)
  %240 = icmp sge i32 %238, %239
  %241 = icmp slt i32 %238, 0
  %242 = or i1 %241, %240
  br i1 %242, label %then50, label %ifcont51

then50:                                           ; preds = %end49
  call void @Value.delete_ref.0(%"array<int>"* %237)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 45)
  br label %ifcont51

ifcont51:                                         ; preds = %then50, %end49
  %243 = getelementptr inbounds %"array<int>", %"array<int>"* %237, i32 0, i32 5
  %244 = load i32*, i32** %243
  %245 = getelementptr i32, i32* %244, i32 %238
  store i32 %236, i32* %245
  br label %cond

end52:                                            ; preds = %then2, %cond
  %246 = load i32, i32* %p
  store i32 %246, i32* %p53
  %247 = load i32, i32* %d
  store i32 %247, i32* %d54
  %248 = load i32, i32* %v
  store i32 %248, i32* %v55
  %249 = load i32, i32* %n
  store i32 %249, i32* %n56
  %250 = load %string*, %string** %inst
  store %string* %250, %string** %inst57
  %251 = load %"array<int>"*, %"array<int>"** %program1
  %252 = call i32 @Array.isize.2(%"array<int>"* %251)
  %253 = icmp sge i32 0, %252
  %254 = or i1 false, %253
  br i1 %254, label %then58, label %ifcont59

then58:                                           ; preds = %end52
  call void @Value.delete_ref.0(%"array<int>"* %251)
  call void @System.throw.0(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s.4, i32 0, i32 0), i64 47)
  br label %ifcont59

ifcont59:                                         ; preds = %then58, %end52
  %255 = getelementptr inbounds %"array<int>", %"array<int>"* %251, i32 0, i32 5
  %256 = load i32*, i32** %255
  %257 = getelementptr i32, i32* %256, i32 0
  %258 = load i32, i32* %257
  %259 = load %string*, %string** %inst57
  call void @Value.delete_ref.0(%string* %259)
  ret i32 %258
}

declare i32 @Array.isize.2(%"array<int>"*)

declare void @System.throw.0(i32, i8*, i8*, i64)

declare %string* @"String.operator+.5"(%string*, i32)

declare %string* @"Number.operator+.5"(i32, %string*)

declare %string* @"String.operator+.0"(%string*, %string*)

declare void @System.internal_print.6(i8*, %string*)

declare i32 @String.size.1(%string*)

declare i32 @Number.m_min.0(i32, i32)

declare %string* @String.substring.1(%string*, i32, i32)

declare i32 @Value.int.0(%string*)

declare void @System.throw.1(i64, i8*, i8*, i64)

declare void @System.internal_print.1(i8*, i32)
