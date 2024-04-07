	object_const_def
	const PEWTERNIDORANSPEECHHOUSE_LITTLE_BOY
	const PEWTERNIDORANSPEECHHOUSE_MIDDLE_AGED_MAN
	const PEWTERNIDORANSPEECHHOUSE_NIDORAN_M

PewterNidoranSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranSpeechHouseLittleBoyScript:
	faceplayer
	opentext
	writetext PewterNidoranHouseLittleBoyText
	waitbutton
	turnobject PEWTERNIDORANSPEECHHOUSE_LITTLE_BOY, RIGHT
	closetext
	end
	
PewterNidoranSpeechHouseMiddleAgedManScript:
	jumptextfaceplayer PewterNidoranHouseMiddleAgedManText

PewterNidoran:
	opentext
	writetext PewterNidoranHouseNidoranText
	cry NIDORAN_M
	waitbutton
	closetext
	end
	
PewterNidoranHouseNidoranText:
	text "NIDORAN: Bowbow!"
	done

PewterNidoranHouseLittleBoyText:
	text "NIDORAN sit!"
	done

PewterNidoranHouseMiddleAgedManText:
	text "Our #MON's an"
	line "outsider, so it's"
	cont "hard to handle."

	para "An outsider is a"
	line "#MON that you"
	cont "get in a trade."

	para "It grows fast, but"
	line "it may ignore an"
	cont "unskilled trainer"
	cont "in battle!"

	para "If only we had"
	line "some BADGEs..."
	done

PewterNidoranSpeechHouseSuperNerdText:
	text "NIDORAN, shake!"
	done

PewterNidoranText:
	text "NIDORAN: Gau gau!"
	done

PewterNidoranSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 4
	warp_event  3,  7, PEWTER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHouseLittleBoyScript, -1
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHouseMiddleAgedManScript, -1
	object_event  4,  5, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterNidoran, -1
