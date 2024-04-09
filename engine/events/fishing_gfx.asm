LoadFishingGFX:
	ldh a, [rVBK]
	push af
	ld a, $1
	ldh [rVBK], a

	ld de, RedFishingGFX
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_gender
	ld de, GreenFishingGFX
	dec a ; FEMALE
	jr z, .got_gender
	ld de, EnbyFishingGFX
.got_gender

	ld hl, vTiles0 tile $02
	call .LoadGFX
	ld hl, vTiles0 tile $06
	call .LoadGFX
	ld hl, vTiles0 tile $0a
	call .LoadGFX
	ld hl, vTiles0 tile $fc
	call .LoadGFX

	pop af
	ldh [rVBK], a
	ret

.LoadGFX:
	lb bc, BANK(RedFishingGFX), 2
	push de
	call Get2bpp
	pop de
	ld hl, 2 tiles
	add hl, de
	ld d, h
	ld e, l
	ret

RedFishingGFX:
INCBIN "gfx/overworld/red_fish.2bpp"

GreenFishingGFX:
INCBIN "gfx/overworld/green_fish.2bpp"

EnbyFishingGFX:
INCBIN "gfx/overworld/enby_fish.2bpp"
