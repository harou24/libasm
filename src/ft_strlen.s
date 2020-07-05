		global		_ft_strlen

_ft_strlen:
		section		.text
start:
		mov			rax, 0x00
start_loop:
		cmp			byte[rdi + rax], 0x00
		je			end_loop
		inc			rax
		jmp			start_loop
end_loop:
		ret
