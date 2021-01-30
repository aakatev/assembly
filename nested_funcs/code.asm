global _start

section .data
  msg1 db "This is first message!", 0x0a
  len1 equ $ - msg1
  msg2 db "This is second message!", 0x0a
  len2 equ $ - msg2
  msg3 db "This is the last message!", 0x0a
  len3 equ $ - msg3

section .text
_start:
  call main

exit:
  mov eax, 1
  mov ebx, 0
  int 0x80

main:
  push ebp
  mov ebp, esp
  push msg1
  push len1
  call print
  push msg2
  push len2
  call print
  push msg3
  push len3
  call print
  mov esp, ebp
  pop ebp
  ret


print:
  push ebp
  mov ebp, esp
  mov eax, 4
  mov ebx, 1
  mov ecx, [ebp+12]
  mov edx, [ebp+8]
  int 0x80
  mov eax, 1
  mov esp, ebp
  pop ebp
  ret

