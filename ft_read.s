;ssize_t	ft_read(int fildes, void *buf, size_t nbyte)
;rdi = fildes
;rsi = buf
;rdx = nbyte

			global _ft_read
			
			extern ___error
			section .text

_ft_read:	mov rax, 0x02000003
			syscall
			jc error
			ret

error:		push rbx
			mov rbx, rax
			call ___error
			mov [rax], rbx
			mov rax, -1
			pop rbx
			ret