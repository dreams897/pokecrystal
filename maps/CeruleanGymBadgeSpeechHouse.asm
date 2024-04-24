	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	done
	
CeruleanBadgeHouseMiddleAgedManText:
	text "#MON BADGEs"
	line "are owned only by"
	cont "skilled trainers."

	para "I see you have"
	line "at least one."

	para "Those BADGEs have"
	line "amazing secrets!"
	prompt

CeruleanBadgeHouseMiddleAgedManWhichBadgeText:
	text "Now then..."

	para "Which of the 8"
	line "BADGEs should I"
	cont "describe?"
	done

CeruleanBadgeHouseMiddleAgedManVisitAnyTimeText:
	text "Come visit me any"
	line "time you wish."
	done

CeruleanBadgeHouseBoulderBadgeText:
	text "The ATTACK of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLASH any"
	cont "time you desire."
	prompt

CeruleanBadgeHouseCascadeBadgeText:
	text "#MON up to L30"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use CUT outside"
	cont "of battle."
	prompt

CeruleanBadgeHouseThunderBadgeText:
	text "The SPEED of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLY outside"
	cont "of battle."
	prompt

CeruleanBadgeHouseRainbowBadgeText:
	text "#MON up to L50"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use STRENGTH out-"
	cont "side of battle."
	prompt

CeruleanBadgeHouseSoulBadgeText:
	text "The DEFENSE of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use SURF outside"
	cont "of battle."
	prompt

CeruleanBadgeHouseMarshBadgeText:
	text "#MON up to L70"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"
	prompt

CeruleanBadgeHouseVolcanoBadgeText:
	text "Your #MON's"
	line "SPECIAL abilities"
	cont "increase a bit."
	prompt

CeruleanBadgeHouseEarthBadgeText:
	text "All #MON will"
	line "obey you!"
	prompt

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
