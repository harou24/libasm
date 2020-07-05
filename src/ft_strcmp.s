		global		_ft_strcmp

_ft_strcmp:
		section		.text
start:
		mov			rcx, -1
start_loop:
		inc			rcx
		mov			r13b, byte[rsi + rcx]
		mov			r14b, byte[rdi + rcx]
		cmp			r13, r14
		jg			s1_greater_than_s2
		jl			s1_lesser_than_s2
		je			s1_equal_s2
s1_greater_than_s2:
		mov			rax, -1
		mov 		al, r14b
		sub			al, r13b
		jmp			return
s1_lesser_than_s2:
		mov			rax, 1
		mov			al, r14b
		sub			al, r13b
		jmp			return
s1_equal_s2:
		cmp			r13b, 0x00
		mov			rax, 0
		je			return
		jne			start_loop
return:
		ret
