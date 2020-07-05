		global		_ft_strcpy

_ft_strcpy:
		section		.text
start:
		mov			rcx, 0x00
		mov			rax, rdi
start_loop:	
		mov			r14b, byte[rsi + rcx]
		mov			byte[rdi + rcx], r14b
		cmp			r14b, 0x00
		je			end_loop
		inc			rcx
		jmp			start_loop
end_loop:
		ret
