		org		0x0100

		in		al, 0x40
		and		al, 0x07	 ; ������� �����, ����� ����� ���� 0...7
		add		al, 0x30     ; ASCII-��������������
		mov		cl, al       ; ��������� � �������� cl ��������
@@gameloop:
		mov		al, 0x3F     
		call	display_letter  ; ������� �������������� ����
		call	read_keyboard
		cmp		al, cl			; ���������� ��������� � 
		jne		@@gameloop
		call	display_letter	; ������� ��������� �����
		mov		al, 0x3A		
		call	display_letter	; ������� ':'
		mov		al, 0x29		
		call	display_letter	; ������� ')'

		int		0x20

%include 'library.asm'