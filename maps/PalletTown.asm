	object_const_def
	const PALLETTOWN_TEACHER
	const PALLETTOWN_FISHER
	const PALLETTOWN_OAK

PalletTown_MapScripts:
	def_scene_scripts
	scene_script PalletTownNoop1Scene, SCENE_PALLET_TOWN_OAK_STOPS_YOU
	scene_script PalletTownNoop2Scene, SCENE_PALLET_TOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlypointCallback
	
PalletTownNoop1Scene:
	end

PalletTownNoop2Scene:
	end

PalletTownProfessorOak:
	end

PalletTownFlypointCallback:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

PalletTownTeacherScript:
	jumptextfaceplayer PalletTownTeacherText

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText

PalletTownSign:
	jumptext PalletTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText
	
OakStopsYouLeft:
	playmusic MUSIC_MEET_PROF_OAK
	opentext
	writetext PalletTownOakHeyWaitDontGoOutText
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 30
	appear PALLETTOWN_OAK
	closetext
	applymovement PALLETTOWN_OAK, PalletTownOakWalkToYouMovementLeft
	opentext
	writetext PalletTownOakItsUnsafeText
	waitbutton
	closetext
	setevent EVENT_OAK_APPEARED_IN_PALLET
	setevent EVENT_FOLLOWED_OAK_INTO_LAB
	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, PalletTownOakWalkToLabLeft
	sjump OakTakesYouToLab
OakStopsYouRight:
	playmusic MUSIC_MEET_PROF_OAK
	opentext
	writetext PalletTownOakHeyWaitDontGoOutText
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 30
	appear PALLETTOWN_OAK
	closetext
	applymovement PALLETTOWN_OAK, PalletTownOakWalkToYouMovementRight
	opentext
	writetext PalletTownOakItsUnsafeText
	waitbutton
	closetext
	setevent EVENT_OAK_APPEARED_IN_PALLET
	setevent EVENT_FOLLOWED_OAK_INTO_LAB
	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, PalletTownOakWalkToLabRight
	sjump OakTakesYouToLab

OakTakesYouToLab:
	stopfollow
	disappear PALLETTOWN_OAK
	setscene SCENE_PALLET_TOWN_NOOP
	applymovement PLAYER, PalletTownPlayerWalkUp
	warp OAKS_LAB, 5, 11
	end

PalletTownPlayerWalkUp:
	step UP
	step_end


PalletTownOakWalkToYouMovementLeft:
	step RIGHT
	step UP
	step RIGHT
	step UP
	step UP
	step_end

PalletTownOakWalkToYouMovementRight:
	step RIGHT
	step UP
	step RIGHT
	step UP
	step RIGHT
	step UP
	step_end

PalletTownOakWalkToLabLeft:
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

PalletTownOakWalkToLabRight:
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

PalletTownOakHeyWaitDontGoOutText:
	text "OAK: Hey! Wait!"
	line "Don't go out!"
	done

PalletTownOakItsUnsafeText:
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "You need your own"
	line "#MON for your"
	cont "protection."
	cont "I know!"

	para "Here, come with"
	line "me!"
	done

PalletTownTeacherText:
	text "I'm raising"
	line "#MON too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

PalletTownSignText:
	text "PALLET TOWN"

	line "Shades of your"
	cont "journey await!"
	done

RedsHouseSignText:
	text "<PLAYER>'s house "
	done

OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

BluesHouseSignText:
	text "<RIVAL>'s house "
	done

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1

	def_coord_events
	coord_event 10,  1, SCENE_PALLET_TOWN_OAK_STOPS_YOU, OakStopsYouLeft
	coord_event 11,  1, SCENE_PALLET_TOWN_OAK_STOPS_YOU, OakStopsYouRight

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, BluesHouseSign

	def_object_events
	object_event  3,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
	object_event  8,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownProfessorOak, EVENT_OAK_APPEARED_IN_PALLET
