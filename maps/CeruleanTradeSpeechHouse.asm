	object_const_def
	const CERULEANTRADESPEECHHOUSE_GRANNY
	const CERULEANTRADESPEECHHOUSE_GRAMPS_TRADE

CeruleanTradeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeSpeechHouseGrannyScript:
	jumptextfaceplayer CeruleanTradeSpeechHouseGrannyText

CeruleanTradeSpeechHouseGrampsScript:
	faceplayer
	opentext
	trade NPC_TRADE_TIM2
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseGrannyText:
	text "My husband likes"
	line "trading #MON."

	para "If you are a"
	line "collector, would"
	cont "you please trade"
	cont "with him?"
	done

CeruleanTradeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 4
	warp_event  3,  7, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrannyScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrampsScript, -1
