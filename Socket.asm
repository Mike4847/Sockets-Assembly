	CPU 64
	BITS 64

	section .text
	;; NOTE(mickey): macros
	%define SYSCALL_EXIT 60
	%define SYSCALL_SOCKETS 41
	%define STDOUT 1
	%define SOCK_STREAM 1
	%define 
	
	
		
	global _start
_start:
	;;  function epilogue
	;; xor rax, rax
	;; TODO(mike): implement sockets
	mov rax, SYSCALL_SOCKETS 41
	mov rdi, 
	syscall
	
