;size_t ft_strlen(const char *s)
;rdi = s

			global _ft_strlen

			section .text

_ft_strlen:	xor		rax, rax

cycle:		cmp		[rdi + rax], byte 0
			je		return
			inc		rax
			jmp		cycle

return:		ret
