;ssize_t	ft_write(int fildes, const void *buf, size_t nbyte)
;rdi = fildes
;rsi = buf
;rdx = nbyte

			global _ft_write
			extern ___error
			section .text
_ft_write:	mov		rax, 0x02000004
			syscall
			jc		error
			ret

error:		push rbx
			mov rbx, rax
			call ___error
			mov [rax], rbx
			mov rax, -1
			pop rbx
			ret