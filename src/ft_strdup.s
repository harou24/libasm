		global		_ft_strdup

extern _malloc, _ft_strlen, _ft_strcpy

_ft_strdup:
		section		.text
start:
		push		rdi
		call		_ft_strlen
		mov			rdi, rax
		inc			rdi
		call		_malloc
		cmp			rax, 0x00
		je			return
		mov			rdi, rax
		pop			rsi
		call		_ft_strcpy
return:
		ret
