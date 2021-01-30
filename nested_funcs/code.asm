global _start

section .data
  msg db "Hello, World!", 0x0a
  len equ $ - msg

section .text
_start:
  push 0
  call loop

exit:
  mov eax, 1
  mov ebx, 0
  int 0x80

loop:
  push ebp
  mov ebp, esp
  call print
  pop ebx
  inc ebx
  push ebx
  cmp ebx, 10
  jl loop
  mov esp, ebp
  pop ebp
  ret

print:
  push ebp
  mov ebp, esp
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, len
  int 0x80
  mov eax, 1
  mov esp, ebp
  pop ebp
  ret

