// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b12274
{
}
.class mul_ovf {
.method static	int32 u8(int64,int64) {
.maxstack	5
try_start:
	ldarg	0
	ldarg	1
	mul.ovf.un
	pop
	leave try_end
try_end:
	ldc.i4	0x1
	ret
handler_start:
	pop
	leave	done
handler_end:
done:
	ldc.i4	0x0
	ret
.try try_start to try_end catch [mscorlib]System.OverflowException handler handler_start to handler_end
}

.method static int32 main(class [mscorlib]System.String[]) {
.entrypoint
.maxstack	10
	ldc.i8		0x8000000000000000
	ldc.i8		0xF444000000040002
	call	int32 mul_ovf::u8(int64,int64)
ldstr "Should be 0, we get "
call       void [mscorlib]System.Console::Write(class [mscorlib]System.String)
call       void [mscorlib]System.Console::WriteLine(int32)

try_start:
	ldc.i8		0x8000000000000000
	ldc.i8		0xF444000000040002
	mul.ovf.un
	pop
	leave try_end
try_end:
	ldc.i4	0x1
ldstr "We should not get here. "
call       void [mscorlib]System.Console::Write(class [mscorlib]System.String)
ret

handler_start:
	pop
	leave	done
handler_end:
done:
	ldc.i4	100
ldstr "We should get here. "
call       void [mscorlib]System.Console::Write(class [mscorlib]System.String)
	ret

.try try_start to try_end catch [mscorlib]System.OverflowException handler handler_start to handler_end
	
}
}