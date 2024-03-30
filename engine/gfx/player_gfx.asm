MovePlayerPicRight:
	hlcoord 6, 4
	ld de, 1
	jr MovePlayerPic

MovePlayerPicLeft:
	hlcoord 13, 4
	ld de, -1
	; fallthrough

MovePlayerPic:
; Move player pic at hl by de * 7 tiles.
	ld c, $8
.loop
	push bc
	push hl
	push de
	xor a
	ldh [hBGMapMode], a
	lb bc, 7, 7
	predef PlaceGraphic
	xor a
	ldh [hBGMapThird], a
	call WaitBGMap
	call DelayFrame
	pop de
	pop hl
	add hl, de
	pop bc
	dec c
	ret z
	push hl
	push bc
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a
	lb bc, 7, 7
	call ClearBox
	pop bc
	pop hl
	jr .loop

ShowPlayerNamingChoices:
	ld hl, ChrisNameMenuHeader
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotGender
	ld hl, GreenNameMenuHeader
	dec a ; FEMALE
	jr z, .GotGender
	ld hl, EnbyNameMenuHeader
.GotGender
	call LoadMenuHeader
	call VerticalMenu
	ld a, [wMenuCursorY]
	dec a
	call CopyNameFromMenu
	call CloseWindow
	ret

INCLUDE "data/player_names.asm"

GetPlayerIcon:
	ld de, RedSpriteGFX
	ld b, BANK(RedSpriteGFX)
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotGraphics
	ld de, GreenSpriteGFX
	ld b, BANK(GreenSpriteGFX)
	dec a ; FEMALE
	jr z, .GotGraphics

	; Enby
	ld de, EnbySpriteGFX
	ld b, BANK(EnbySpriteGFX)
	
.GotGraphics
	ret

GetCardPic:
	ld hl, ChrisCardPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotPic
	ld hl, GreenCardPic
	dec a ; FEMALE
	jr z, .GotPic
	ld hl, EnbyCardPic
.GotPic
	ld de, vTiles2 tile $00
	ld bc, $23 tiles
	ld a, BANK(ChrisCardPic) ; aka BANK(GreenCardPic)
	call FarCopyBytes
	ld hl, TrainerCardGFX
	ld de, vTiles2 tile $23
	ld bc, 6 tiles
	ld a, BANK(TrainerCardGFX)
	call FarCopyBytes
	ret

ChrisCardPic:
INCBIN "gfx/trainer_card/red_card.2bpp"

GreenCardPic:
INCBIN "gfx/trainer_card/green_card.2bpp"

EnbyCardPic:
INCBIN "gfx/trainer_card/enby_card.2bpp"

TrainerCardGFX:
INCBIN "gfx/trainer_card/trainer_card.2bpp"

GetPlayerBackpic:
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, GetChrisBackpic
	dec a ; FEMALE
	jp z, GetGreenBackpic
	call GetEnbyBackpic
	ret

GetChrisBackpic:
	ld hl, ChrisBackpic
	ld b, BANK(ChrisBackpic)
	ld de, vTiles2 tile $31
	ld c, 7 * 7
	predef DecompressGet2bpp
	ret

HOF_LoadTrainerFrontpic:
	call WaitBGMap
	xor a
	ldh [hBGMapMode], a

; Get class
	ld e, CHRIS
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotClass
	ld e, GREEN
	dec a ; FEMALE
	jr z, .GotClass
	ld e, PURPLE
.GotClass
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, RedPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotPic
	ld de, GreenPic
	dec a ; FEMALE
	jr z, .GotPic
	ld de, EnbyPic
.GotPic
	ld hl, vTiles2
	ld b, BANK(RedPic) ; aka BANK(GreenPic)
	ld c, 7 * 7
	call Get2bpp

	call WaitBGMap
	ld a, $1
	ldh [hBGMapMode], a
	ret

DrawIntroPlayerPic:
; Draw the player pic at (6,4).

; Get class
	ld e, CHRIS
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotClass
	ld e, GREEN
	dec a ; FEMALE
	jr z, .GotClass
	ld e, PURPLE
.GotClass
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, RedPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .GotPic
	ld de, GreenPic
	dec a ; FEMALE
	jr z, .GotPic
	ld de, EnbyPic
.GotPic
	ld hl, vTiles2
	ld b, BANK(RedPic) ; aka BANK(GreenPic)
	ld c, 7 * 7 ; dimensions
	call Get2bpp

; Draw
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef PlaceGraphic
	ret

RedPic:
INCBIN "gfx/player/red.2bpp"

GreenPic:
INCBIN "gfx/player/green.2bpp"

EnbyPic:
INCBIN "gfx/player/enby.2bpp"

GetGreenBackpic:
; Green's backpic is uncompressed.
	ld de, GreenBackpic
	ld hl, vTiles2 tile $31
	lb bc, BANK(GreenBackpic), 7 * 7 ; dimensions
	call Get2bpp
	ret

GreenBackpic:
INCBIN "gfx/player/green_back.2bpp"

GetEnbyBackpic:
	ld de, EnbyBackpic
	ld hl, vTiles2 tile $31
	lb bc, BANK(EnbyBackpic), 7 * 7 ; dimensions
	call Get2bpp
	ret

EnbyBackpic:
INCBIN "gfx/player/enby_back.2bpp"
