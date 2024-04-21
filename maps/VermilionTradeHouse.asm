	object_const_def
	const VERMILIONTRADEHOUSE_POKEFAN_F
	const VERMILIONTRADEHOUSE_YOUNGSTER

VermilionTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionTradeHousePokefanFScript:
	jumptextfaceplayer VermilionTradeHousePokefanFText

VermilionTradeHouseYoungsterScript:
	jumptextfaceplayer VermilionTradeHouseYoungsterText

VermilionTradeHouseBookshelf:
	jumpstd PictureBookshelfScript

VermilionTradeHousePokefanFText:
	text "Do you know about"
	line "the MAGNET TRAIN?"

	para "It's a railway"
	line "that goes to GOL-"
	cont "DENROD in JOHTO."
	done

VermilionTradeHouseYoungsterText:
	text "I want to go to"
	line "SAFFRON to see"
	cont "the MAGNET TRAIN."
	done

VermilionTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 8
	warp_event  3,  7, VERMILION_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, VermilionTradeHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VermilionTradeHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionTradeHousePokefanFScript, -1
	object_event  0,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionTradeHouseYoungsterScript, -1
