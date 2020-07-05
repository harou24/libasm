		global		_ft_read

extern ___error

_ft_read:
		section		.text
start:
		mov			rax, 0x02000003
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
