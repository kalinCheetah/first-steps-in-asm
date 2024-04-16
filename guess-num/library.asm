display_letter:
		push	ax
		push	bx
		push	cx
		push	dx
		push	si
		push	di

		mov		ah, 0x0E
		mov		bx, 0x000F
		int		0x10

		pop		di
		pop		si
		pop		dx
		pop		cx
		pop		bx
		pop		ax
		
		ret

read_keyboard:
		push	bx
		push	cx
		push	dx
		push	si
		push    di

		mov		ah, 0x00
		int		0x16

		pop		di
		pop		si
		pop		dx
		pop		cx
		pop		bx

		ret