// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly legacy library arrlen {}
.class private auto ansi beforefieldinit nullsdarr
       extends [mscorlib]System.Object
{
  .method public static void f() cil managed
  {
    .maxstack  1
    IL_0000:  ldnull
    IL_0003:  ldlen
    IL_0004:  conv.i4
    IL_0005:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0010:  ret
  }
  .method public static int32 Main() cil managed
  {
    .entrypoint
    .maxstack 5
    .try
    {
	call void nullsdarr::f()
        leave.s FAIL
    }
    catch [mscorlib]System.NullReferenceException
    {
        pop
        leave.s PASS
    }
    FAIL:
	ldstr "Should have caught System.NullReferenceException"
	call void [mscorlib]System.Console::WriteLine(string)
	ldstr "FAILED"
	call void [mscorlib]System.Console::WriteLine(string)
        ldc.i4 1
	ret
    PASS:
	ldstr "Caught System.NullReferenceException as expected"
	call void [mscorlib]System.Console::WriteLine(string)
	ldstr "PASSED"
	call void [mscorlib]System.Console::WriteLine(string)
        ldc.i4 100
	ret
  }
}
