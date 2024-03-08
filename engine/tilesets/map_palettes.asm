_LoadOverworldAttrmapPals::
; Load wAttrmap palette numbers based on the tileset palettes of current map.
; This function is only used for the initial loading of the map; incremental
; loads while moving happen through ScrollBGMapPalettes.
	hlcoord 0, 0
	decoord 0, 0, wAttrmap
	ld b, SCREEN_HEIGHT
.loop
	push bc
	ld c, SCREEN_WIDTH
	call GetBGMapTilePalettes
	pop bc
	dec b
	jr nz, .loop
	ret

_ScrollBGMapPalettes::
	ld hl, wBGMapBuffer
	ld de, wBGMapPalBuffer
	; fallthrough
GetBGMapTilePalettes:
.loop
	ld a, [hl]
	push hl
	ld hl, wTilesetPalettes
	add [hl]
	ld l, a
	ld a, [wTilesetPalettes + 1]
	adc 0
	ld h, a
	ld a, [hl]
	pop hl
	ld [de], a
	res 7, [hl]
	inc hl
	inc de
	dec c
	jr nz, .loop
	ret
