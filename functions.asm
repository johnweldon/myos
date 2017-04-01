;; Functions

printc:
  pusha
  mov ah, 0x0e
  int 0x10
  popa
  ret

print_string:               ; Expects string start to be in bx, prints til nil
  pusha
  mov ah, 0x0e
  jmp char_test
char_loop:
  int 0x10
  inc bx
char_test:
  mov al, [bx]
  cmp al, 0
  jne char_loop
  popa
  ret


; vi:se ft=nasm et sts=2 ts=2:
