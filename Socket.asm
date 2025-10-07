
	BITS 64
	CPU X64

	section .text
	;; NOTE(mickey): macros
	%define SYSCALL_EXIT 60
	%define SYSCALL_SOCKETS 41
	%define STDOUT 1
	%define SOCK_STREAM 1
	%define AF_NET 1
	


	;; TODO(mike): connecting to a server.
connecting_to_server:
	static connecting_to_server:function
	;;NOTE(mike): function prologue i.e setting up the function stack.
	push rbp
	mov rsp, rbx
	;; TODO(mike):talk brief about calling conventions!!

	mov rax, SYSCALL_SOCKETS                                          
	mov rdi, AF_NET 	;NOTE(mike)                               
	mov rsi, SOCK_STREAM	; unix socket, constrained to local net!! 
	mov rdx, 0	      	; Socket Stream-Oriented                  
	syscall		        ; Protocal automatic i.e TCP/UDP

	;; test the return value that is places into the rax
	cmp rax, 0
	jle exit_


	
	;; sytem call exit code
exit_:	
	mov rax, SYSCALL_EXIT
	mov rdi, 1
	syscall



			

_start:
	global _start:function
	;;  function epilogue
	;; xor rax, rax
	call connecting_to_server
	
	mov rax, SYSCALL_EXIT
	mov rdi, 0
	syscall
	
	



	
