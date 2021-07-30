;char *ft_strcpy(char * dst, const char * src)
;rdi = dst
;rsi = src

					global _ft_strcpy

					section .text

_ft_strcpy:	xor		rcx, rcx

cycle:		cmp		[rsi + rcx], byte 0
			je		return
			mov		al, [rsi + rcx]
			mov		[rdi + rcx], al
			inc		rcx
			jmp		cycle

return:		mov		[rdi + rcx], byte 0
			mov		rax, rdi
			ret