	object_const_def
	const PEWTERSPEECHHOUSE_GAMBLER
	const PEWTERSPEECHHOUSE_YOUNGSTER
	const PEWTERSPEECHHOUSE_COOLTRAINER_M

PewterSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript
	
PewterSpeechHouseGamblerScript:
	faceplayer
	opentext
	writetext PewterSpeechHouseGamblerText
	waitbutton
	closetext
	end

PewterSpeechHouseYoungsterScript:
	faceplayer
	opentext
	writetext PewterSpeechHouseYoungsterText
	waitbutton
	closetext
	end

PewterSpeechHouseCooltrainerMScript:
	faceplayer
	opentext
	writetext PewterSpeechHouseCooltrainerText
	waitbutton
	closetext
	end

PewterSpeechHouseGamblerText:
	text "#MON learn new"
	line "techniques as"
	cont "they grow!"

	para "But, some moves"
	line "must be taught by"
	cont "the trainer!"
	done

PewterSpeechHouseYoungsterText:
	text "#MON become"
	line "easier to catch"
	cont "when they are"
	cont "hurt or asleep!"

	para "But, it's not a"
	line "sure thing!"
	done
	
PewterSpeechHouseCooltrainerText:
	text "#MON can be fed"
	line "a BERRY based on"
	cont "their STATUS."
	
	para "But, I'm no"
	line "expert!"
	
	para "There's a man in"
	line "CERULEAN who knows"
	cont "everything about"
	cont "BERRY trees."
	done

PewterSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 6
	warp_event  3,  7, PEWTER_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterSpeechHouseGamblerScript, -1
	object_event  4,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterSpeechHouseYoungsterScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterSpeechHouseCooltrainerMScript, -1
