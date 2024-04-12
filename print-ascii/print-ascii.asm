        org     0x100
@@start:
        mov     ah, 0x00
		int		0x16
		cmp		al, 0x1B
		je		@@exit

		mov		ah, 0x0E
		mov		bx, 0x000F
		int		0x10

		jmp		@@start
@@exit:
		int		0x20