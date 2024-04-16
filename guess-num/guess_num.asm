		org		0x0100

		in		al, 0x40
		and		al, 0x07	 ; битовая маска, чтобы чисто было 0...7
		add		al, 0x30     ; ASCII-преобразование
		mov		cl, al       ; сохраняем в регистре cl значение
@@gameloop:
		mov		al, 0x3F     
		call	display_letter  ; выводим вопросительный знак
		call	read_keyboard
		cmp		al, cl			; сравниваем введенное и 
		jne		@@gameloop
		call	display_letter	; выводим угаданное число
		mov		al, 0x3A		
		call	display_letter	; выводим ':'
		mov		al, 0x29		
		call	display_letter	; выводим ')'

		int		0x20

%include 'library.asm'