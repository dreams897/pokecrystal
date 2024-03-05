; Global (co)sine functions

; INPUT:  a = signed 6-bit value
;         d = degree offset
Cosine::
; OUTPUT: a = d * cos(a).
	add %010000 ; add 90 degrees
Sine::
; OUTPUT: a = d * sin(a).
	ld e, a
	homecall _Sine
	ld a, e
	ret
