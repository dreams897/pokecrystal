	object_const_def
	const CERULEANTRASHEDHOUSE_FISHING_GURU
	const CERULEANTRASHEDHOUSE_POKEFAN_F

CeruleanTrashedHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTrashedHouseFishingGuruScript:
	opentext
	checkitem TM_DIG
	iftrue .TheyStoleATM
	writetext CeruleanTrashedHouseFishingGuruWhatsLostIsLostText
	sjump .backtomain
	.TheyStoleATM:
	writetext CeruleanTrashedHouseFishingGuruTheyStoleATMText
	.backtomain
	waitbutton
	closetext
	end

CeruleanTrashedHousePokefanFScript:
	jumptextfaceplayer CeruleanTrashedHouseGirlText

CeruleanTrashedHouseFishingGuruTheyStoleATMText:
	text "Those miserable"
	line "ROCKETs!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	cont "#MON how to"
	cont "DIG holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

CeruleanTrashedHouseFishingGuruWhatsLostIsLostText:
	text "I figure what's"
	line "lost is lost!"

	para "I decided to teach"
	line "DIGLETT how to"
	cont "DIG without a TM!"
	done

CeruleanTrashedHouseGirlText:
	text "TEAM ROCKET must"
	line "be trying to DIG"
	cont "their way into no"
	cont "good!"
	done

CeruleanTrashedHouseWallHoleText:
	text "TEAM ROCKET left"
	line "a way out!"
	done

WayOutScript:
	opentext
	writetext CeruleanTrashedHouseWallHoleText
	waitbutton
	closetext
	end

CeruleanTrashedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3
	warp_event  3,  0, CERULEAN_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_UP, WayOutScript
	def_object_events
	object_event  5,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseFishingGuruScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHousePokefanFScript, -1
