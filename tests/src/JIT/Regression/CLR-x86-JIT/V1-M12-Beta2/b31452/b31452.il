// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xc2f3d0c8 {}
.class ILGEN_0xc2f3d0c8 {

.field static	float64 field_0x0
.method static int32 Method_0x5cc2(float64 Arg_0x1)
 {
.maxstack	17

 ldc.r8 float64(0x27686ec137e35c0b)  
 stsfld float64 ILGEN_0xc2f3d0c8::field_0x0

 ldc.r8 float64(0x27686ec137e35c0b) 
 ldsfld float64 ILGEN_0xc2f3d0c8::field_0x0
 ldsfld float64 ILGEN_0xc2f3d0c8::field_0x0
 ldarg Arg_0x1
 ceq
 conv.ovf.u8
 ldc.i4.m1
 ldc.i4.5
 mul.ovf
 conv.ovf.u8
 mul.ovf
 conv.r8
 div
 mul
 conv.i4
 ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
.try {
ldc.r8 float64(0x66196a2e347c2a80) 
call int32 ILGEN_0xc2f3d0c8::Method_0x5cc2(float64 Arg_0x1)
pop
  leave stop
 } catch [mscorlib]System.OverflowException {
 pop
 leave stop
 }
 stop:
ldc.i4 100
ret
}

}
