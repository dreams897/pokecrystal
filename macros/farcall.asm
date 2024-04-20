; Far calls to another bank

MACRO farcall ; bank, address
	ld a, BANK(\1)
	ld hl, \1
	rst FarCall
ENDM

MACRO callfar ; address, bank
	ld hl, \1
	ld a, BANK(\1)
	rst FarCall
ENDM

MACRO farjp ; bank, address
	rst FarCall
	dbw BANK(\1), \1 | $8000
	assert !(\1 & $8000), "farjp cannot call things above ROMX"
	assert warn, BANK(\1) != 0 && BANK(\1) != BANK(@), "unnecessary `farjp \1`"
ENDM

MACRO homecall
	ldh a, [hROMBank]
	push af
	ld a, BANK(\1)
	rst Bankswitch
	call \1
	pop af
	rst Bankswitch
ENDM
