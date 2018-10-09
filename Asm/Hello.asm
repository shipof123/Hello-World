; x86_64(AMD64)

%define SYS_WRITE 1
%define STDOUT 1

%define SYS_EXIT 60
%define EXIT_OK 0

section .data
  msg: db "Hello World!", 0xa, 0x0
  len equ $-msg
  
section .text
GLOBAL _start

_start:
  mov rax, SYS_WRITE ; set up sys_write
  mov rdi, STDOUT    ; File Descriptor
  mov rsi, msg
  mov rdx, len
  syscall
  
  mov rax, SYS_EXIT
  mov rdi, EXIT_OK
  
