;int	ft_strcmp(const char *s1, const char *s2)
;rdi = s1
;rsi = s2

			global _ft_strcmp

			section .text

_ft_strcmp:	xor		rcx, rcx
			xor		rax, rax
			xor		rbx, rbx

cycle:		mov		al, [rdi + rcx]
			mov		bl, [rsi + rcx]
			cmp		al, bl
			jne		return
			cmp		al, byte 0
			je		return
			cmp		bl, byte 0
			je		return
			inc		rcx
			jmp		cycle

return:		sub		rax, rbx
			ret