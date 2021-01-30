global _start

section .text
_start:
  mov ecx, 1

loop:
  inc ecx
  cmp ecx, 42
  jl loop

exit:
  mov eax, 1
  mov ebx, ecx
  int 0x80
