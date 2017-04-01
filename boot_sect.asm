;; Preamble

[org 0x7c00]                ; declare expected base address


;; Code

mov bx, HELLO_MSG
call print_string

mov bx, GOODBYE_MSG
call print_string


;; Exit strategy

jmp $                       ; infinite loop (jump here)


;; Functions

%include "functions.asm"


;; Data

HELLO_MSG:
  db 'Hello, World!', 0xd, 0xa, 0

GOODBYE_MSG:
  db 'Goodbye!', 0xd, 0xa, 0


;; Padding and magic BIOS number

times 510-($-$$) db 0
dw 0xaa55

; vi:se ft=nasm et sts=2 ts=2:
