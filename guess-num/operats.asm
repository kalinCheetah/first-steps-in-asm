		org		0x0100
@@start:
		call	inc_dec    ; ��� ����������� ����������� ������������.

		int		0x20

inc_dec:					; ��������� � ���������
		mov		al, 0x30
@@inc:
		call	display_letter
		inc		al
		cmp		al, 0x39
		jne		@@inc
@@dec:
		call	display_letter
		dec		al
		cmp		al, 0x30
		jne		@@dec

		ret

nop:					; ������ ���������� �� ������ ������
		nop

		ret

or:				
		mov		al, 0
		or		al, 1

		add		al, 0x30
		call	display_letter

		ret

and:				
		mov		al, 1
		and		al, 1

		add		al, 0x30
		call	display_letter

		ret


sar:						; ��������� ������ ����� ����� �� ������
		mov		al, 8		; ������ ���� ��������� ������� � ����� ������
		shr		al, 2

		add		al, 0x30
		call	display_letter

		ret

shr:						; ������� ����� ������
		mov		al, 8
		shr		al, 2

		add		al, 0x30
		call	display_letter

		ret

shl:						; ������� ����� �����
		mov		al, 0x02
		shl		al, 2

		add		al, 0x30
		call	display_letter

		ret

div:
		mov		ax, 101
		mov		cl, 33
		div		cl

		add		al, 0x30            ; ������� � ASCII
		call	display_letter
		mov		al, 0x2E            ; ����� ','
		call	display_letter
		mov		al, ah              ; ���������� ������� ������� �� cl � ������� al
		add		al, 0x30			; ������� � ASCII
		call	display_letter
		
		ret

mul:
		mov		al, 0x2
		mov		cl, 0x4
		mul		cl
		
		add		al, 0x30
		call	display_letter

		ret

sub:
		mov		al, 0x04
		sub		al, 0x01
		
		add		al, 0x30
		call	display_letter

		ret

add:
		mov		al, 0x05
		add     al, 0x04
		
		add		al, 0x30
		call	display_letter

		ret

%include	'library.asm'