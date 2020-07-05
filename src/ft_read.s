		global		_ft_read

_ft_read:
		section		.text
start:
		mov			rax, 0x02000003
		syscall
		ret
