global _start

section .text
_start:
  sub esp, 4
  mov [esp], byte '0'
  mov [esp+1], byte 'x'
  mov [esp+2], byte '1'
  mov [esp+3], byte '6'
  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 4
  int 0x80

exit:
  mov eax, 1
  mov ebx, 0
  int 0x80
