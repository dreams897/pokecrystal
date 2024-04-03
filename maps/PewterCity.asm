	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_COOLTRAINER_M
	const PEWTERCITY_SUPER_NERD_MUSEUM_GUY
	const PEWTERCITY_SUPER_NERD_REPEL_GUY
	const PEWTERCITY_YOUNGSTER_GYM_GUY
	const PEWTERCITY_FRUIT_TREE1
	const PEWTERCITY_FRUIT_TREE2

PewterCity_MapScripts:
	def_scene_scripts
	scene_script PewterCityNoopScene, SCENE_PEWTER_CITY_NOOP
	scene_script PewterCityAfterBeatingBrockScene, SCENE_PEWTER_AFTER_BEATING_BROCK

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlypointCallback

PewterCityFlypointCallback:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback
	
PewterCityNoopScene:
	clearevent EVENT_BOUGHT_MUSEUM_TICKET
	setmapscene PEWTER_MUSEUM_1F, PEWTER_MUSEUM_1F_NOOP_SCENE
	end
	
PewterCityAfterBeatingBrockScene:
	clearevent EVENT_BOUGHT_MUSEUM_TICKET
	setmapscene PEWTER_MUSEUM_1F, PEWTER_MUSEUM_1F_NOOP_SCENE
	moveobject PEWTERCITY_YOUNGSTER_GYM_GUY, 39, 0
	disappear PEWTERCITY_YOUNGSTER_GYM_GUY
	end

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText

PewterCitySuperNerdBugCatcherScript:
	jumptextfaceplayer PewterCityCooltrainerMText
	
PewterCityRepelScript:
	faceplayer
	opentext
	writetext PewterCitySuperNerd2DoYouKnowWhatImDoingText
	yesorno
	iffalse .ExplainRepel
	writetext PewterCitySuperNerd2ThatsRightText
	waitbutton
	closetext
	end
	
.ExplainRepel
	writetext PewterCitySuperNerd2ImSprayingRepelText
	waitbutton
	closetext
	end
	
PewterCityMuseumGuyScript:
	faceplayer
	opentext
	writetext PewterCitySuperNerd1DidYouCheckOutMuseumText
	yesorno
	iffalse .YouHaveToGo
	writetext PewterCitySuperNerd1WerentThoseFossilsAmazingText
	waitbutton
	closetext
	end
	
.YouHaveToGo
	writetext PewterCitySuperNerd1YouHaveToGoText
	waitbutton
	closetext
	playmusic MUSIC_MUSEUM_GUY
	follow PEWTERCITY_SUPER_NERD_MUSEUM_GUY, PLAYER
	applymovement PEWTERCITY_SUPER_NERD_MUSEUM_GUY, MuseumGuyTakesYouToMuseumMovement
	stopfollow
	turnobject PEWTERCITY_SUPER_NERD_MUSEUM_GUY, UP
	special RestartMapMusic
	opentext
	writetext PewterCitySuperNerd1ItsRightHereText
	waitbutton
	closetext
	applymovement PEWTERCITY_SUPER_NERD_MUSEUM_GUY, MuseumGuyLeavesMovement
	disappear PEWTERCITY_SUPER_NERD_MUSEUM_GUY
	moveobject PEWTERCITY_SUPER_NERD_MUSEUM_GUY, 27, 17
	appear PEWTERCITY_SUPER_NERD_MUSEUM_GUY
	end
	
MuseumGuyTakesYouToMuseumMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	step_end
	
MuseumGuyLeavesMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end
	
PewterCityGymGuyScript:
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 18, .GymGuyTakesYouToGym2
        ifequal 19, .GymGuyTakesYouToGym3
        turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterFollowMeText
	waitbutton
	closetext
	playmusic MUSIC_MUSEUM_GUY
	follow PEWTERCITY_YOUNGSTER_GYM_GUY, PLAYER
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyTakesYouToGymMovement
	stopfollow
	turnobject PLAYER, UP
	turnobject PEWTERCITY_YOUNGSTER_GYM_GUY, LEFT
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyLeavesMovement
	disappear PEWTERCITY_YOUNGSTER_GYM_GUY
	moveobject PEWTERCITY_YOUNGSTER_GYM_GUY, 35, 16
	appear PEWTERCITY_YOUNGSTER_GYM_GUY
	end
	
.GymGuyTakesYouToGym2
	turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterFollowMeText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	playmusic MUSIC_MUSEUM_GUY
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyWalkUpMovement
	follow PEWTERCITY_YOUNGSTER_GYM_GUY, PLAYER
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyTakesYouToGymMovement2
	stopfollow
	turnobject PLAYER, UP
	turnobject PEWTERCITY_YOUNGSTER_GYM_GUY, LEFT
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyLeavesMovement
	disappear PEWTERCITY_YOUNGSTER_GYM_GUY
	moveobject PEWTERCITY_YOUNGSTER_GYM_GUY, 35, 16
	appear PEWTERCITY_YOUNGSTER_GYM_GUY
	end
	
.GymGuyTakesYouToGym3
	turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterFollowMeText
	waitbutton
	closetext
	applymovement PLAYER, WalkUpToGymGuyMovement
	turnobject PLAYER, LEFT
	playmusic MUSIC_MUSEUM_GUY
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyWalkUpMovement
	follow PEWTERCITY_YOUNGSTER_GYM_GUY, PLAYER
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyTakesYouToGymMovement2
	stopfollow
	turnobject PLAYER, UP
	turnobject PEWTERCITY_YOUNGSTER_GYM_GUY, LEFT
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER_GYM_GUY, GymGuyLeavesMovement
	disappear PEWTERCITY_YOUNGSTER_GYM_GUY
	moveobject PEWTERCITY_YOUNGSTER_GYM_GUY, 35, 16
	appear PEWTERCITY_YOUNGSTER_GYM_GUY
	end
	
GymGuyWalkUpMovement:
	step DOWN
	step DOWN
	step_end
	
WalkUpToGymGuyMovement:
	step LEFT
	step UP
	step_end
	
GymGuyTakesYouToGymMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GymGuyTakesYouToGymMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GymGuyTakesYouToGymMovement3:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GymGuyLeavesMovement:
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

PewterCitySign:
	jumptext PewterCitySignText

PewterGymSign:
	jumptext PewterCityGymSignText

PewterMuseumSign:
	jumptext PewterCityMuseumSignText

PewterCityMtMoonSign:
	jumptext PewterCityPoliceNoticeSignText

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

PewterCityFruitTree1:
	fruittree FRUITTREE_PEWTER_CITY_1

PewterCityFruitTree2:
	fruittree FRUITTREE_PEWTER_CITY_2

PewterCityCooltrainerFText:
	text "It's rumored that"
	line "CLEFAIRYs came"
	cont "from the moon!"

	para "They appeared "
	line "after MOON STONE"
	cont "fell on MT.MOON."
	done

PewterCityCooltrainerMText:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"

	para "They're all like"
	line "BUG CATCHERs,"
	cont "but PEWTER GYM's"
	cont "BROCK is totally"
	cont "into it!"
	done

PewterCitySuperNerd1DidYouCheckOutMuseumText:
	text "Did you check out"
	line "the MUSEUM?"
	done

PewterCitySuperNerd1WerentThoseFossilsAmazingText:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

PewterCitySuperNerd1YouHaveToGoText:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

PewterCitySuperNerd1ItsRightHereText:
	text "It's right here!"
	line "You have to pay"
	cont "to get in, but"
	cont "it's worth it!"
	cont "See you around!"
	done

PewterCitySuperNerd2DoYouKnowWhatImDoingText:
	text "Psssst!"
	line "Do you know what"
	cont "I'm doing?"
	done

PewterCitySuperNerd2ThatsRightText:
	text "That's right!"
	line "It's hard work!"
	done

PewterCitySuperNerd2ImSprayingRepelText:
	text "I'm spraying REPEL"
	line "to keep #MON"
	cont "out of my garden!"
	done

PewterCityYoungsterFollowMeText:
	text "You're a trainer"
	line "right? BROCK's"
	cont "looking for new"
	cont "challengers!"
	cont "Follow me!"
	done

PewterCityYoungsterGoTakeOnBrockText:
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCityTrainerTipsText:
	text "TRAINER TIPS"

	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns EXP!"
	done

PewterCityPoliceNoticeSignText:
	text "NOTICE!"

	para "Thieves have been"
	line "stealing #MON"
	cont "fossils at MT."
	cont "MOON! Please call"
	cont "PEWTER POLICE"
	cont "with any info!"
	done

PewterCityMuseumSignText:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCityGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray"
	cont "City"
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  7, PEWTER_MUSEUM_1F, 1
	warp_event 19,  5, PEWTER_MUSEUM_1F, 3
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1

	def_coord_events
	coord_event  35,  17, SCENE_PEWTER_CITY_NOOP, PewterCityGymGuyScript
	coord_event  36,  18, SCENE_PEWTER_CITY_NOOP, PewterCityGymGuyScript
	coord_event  37,  19, SCENE_PEWTER_CITY_NOOP, PewterCityGymGuyScript

	def_bg_events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterGymSign
	bg_event 15,  9, BGEVENT_READ, PewterMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityMtMoonSign
	bg_event 19, 29, BGEVENT_READ, PewterCitySign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign

	def_object_events
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 17, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerdBugCatcherScript, -1
	object_event 27, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityMuseumGuyScript, -1
	object_event 26, 25, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCityRepelScript, -1
	object_event 35, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCityGymGuyScript, -1
	object_event 32,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree1, -1
	object_event 30,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree2, -1
