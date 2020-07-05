		global		_ft_write

_ft_write:
		section		.text
start:
		mov			rax, 0x02000004
		syscall
		ret
