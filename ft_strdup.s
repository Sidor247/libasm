;char *ft_strdup(const char *s1)
;rdi = s1

				global _ft_strdup
				extern ___error
				extern _malloc
				extern _ft_strlen
				extern _ft_strcpy
				section .text

_ft_strdup:		push rbx
				mov rbx, rdi
				call _ft_strlen
				mov rdi, rax
				call _malloc
				cmp rax, 0
				je error
				mov rdi, rax
				mov rsi, rbx
				call _ft_strcpy
				jmp return

error:			push rbx
				mov rbx, rax
				call ___error
				mov [rax], rbx
				mov rax, -1
				pop rbx
				jmp	return

return:			pop rbx
				ret