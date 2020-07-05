		global		_ft_write

extern ___error
_ft_write:
		section		.text
start:
		mov			rax, 0x02000004
		syscall
		push		rax
		jc			error
		pop			rax
		ret
error:
		call		___error
		pop			r14
		mov			[rax], r14
		mov			rax, -1
		ret
