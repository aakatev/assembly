global _start

section .text
_start:
  push 42
  push 1
  call multiply

exit:
  mov ebx, eax
  mov eax, 1
  int 0x80


multiply:
  push ebp
  mov ebp, esp
  mov eax, [ebp+8]
  mov ebx, [ebp+12]
  mul ebx  
  mov esp, ebp
  pop ebp
  ret
