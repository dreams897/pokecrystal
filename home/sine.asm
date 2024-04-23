; Global (co)sine functions

; INPUT:  a = signed 6-bit value
;         d = degree offset
Cosine::
; Return d * cos(a) in hl
	add $10 ; 90 degrees
Sine::
; OUTPUT: a = d * sin(a).
	ld e, a
	homecall _Sine
	ld a, e
	ret
