	object_const_def
	const MT_MOON_B2F_JESSIE
	const MT_MOON_B2F_JAMES
	const MT_MOON_B2F_DOME_FOSSIL
	const MT_MOON_B2F_HELIX_FOSSIL
	const MT_MOON_B2F_ITEM_BALL_HP_UP
	const MT_MOON_B2F_ITEM_BALL_TM_DYNAMIC_PUNCH
	const MT_MOON_B2F_SUPER_NERD
	const MT_MOON_B2F_ROCKET_1
	const MT_MOON_B2F_ROCKET_2
	const MT_MOON_B2F_ROCKET_3

MtMoonB2F_MapScripts:
	def_scene_scripts
	scene_script MtMoonB2FFossilScene, SCENE_MT_MOON_B2F_FOSSIL
	scene_script MtMoonB2FTeamRocketScene, SCENE_MT_MOON_B2F_TEAM_ROCKET
	scene_script MtMoonB2FNoopScene, SCENE_MT_MOON_B2F_NOOP

	def_callbacks
	
MtMoonB2FFossilScene:
	end
	
MtMoonB2FTeamRocketScene:
	end
	
MtMoonB2FNoopScene:
	end
	
MtMoonB2FTeamRocketScript:
	playmusic MUSIC_MEET_JESSIE_JAMES
	showemote EMOTE_SHOCK, PLAYER, 20
	opentext
	writetext MtMoonJessieJamesText1
	pause 15
	closetext
	turnobject PLAYER, UP
	applymovement PLAYER, MtMoonB2F_Player_Steps_Up_Movement
	appear MT_MOON_B2F_JESSIE
	applymovement MT_MOON_B2F_JESSIE, MtMoonB2F_Jessie_Movement
	turnobject MT_MOON_B2F_JESSIE, DOWN
	appear MT_MOON_B2F_JAMES
	applymovement MT_MOON_B2F_JAMES, MtMoonB2F_James_Movement
	opentext
	writetext MtMoonJessieJamesText2
	waitbutton
	closetext
	winlosstext MtMoonJessieJamesText3, -1
	loadtrainer TEAM_ROCKET, TEAM_ROCKET1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	opentext
	writetext MtMoonJessieJamesText4
	waitbutton
	closetext
	special FadeOutToBlack
	pause 10
	special ReloadSpritesNoPalettes
	disappear MT_MOON_B2F_JAMES
	disappear MT_MOON_B2F_JESSIE
	special FadeInFromBlack
	setevent EVENT_TEAM_ROCKET_APPEARED_MT_MOON
	setscene SCENE_MT_MOON_B2F_NOOP
	end
	
MtMoonB2F_Player_Steps_Up_Movement:
	step UP
	step_end
	
MtMoonB2F_Jessie_Movement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
MtMoonB2F_James_Movement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
MtMoonB2FDomeFossilScript:
	opentext
	writetext MtMoonB2FDomeFossilYouWantText
	yesorno
	iffalse .DidNotChooseFossil
	giveitem DOME_FOSSIL
	getitemname STRING_BUFFER_3, DOME_FOSSIL
	writetext MtMoonB2FReceivedFossilText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	disappear MT_MOON_B2F_DOME_FOSSIL
	itemnotify
	closetext
	setevent EVENT_GOT_DOME_FOSSIL
	applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement
	opentext
	writetext MtMoonB2FSuperNerdThenThisIsMineText
	disappear MT_MOON_B2F_HELIX_FOSSIL
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	closetext
	end
	
.DidNotChooseFossil
	closetext
	end
	
MtMoonB2FHelixFossilScript:
	opentext
	writetext MtMoonB2FHelixFossilYouWantText
	yesorno
	iffalse .DidNotChooseFossil
	giveitem HELIX_FOSSIL
	getitemname STRING_BUFFER_3, HELIX_FOSSIL
	writetext MtMoonB2FReceivedFossilText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	disappear MT_MOON_B2F_HELIX_FOSSIL
	itemnotify
	closetext
	setevent EVENT_GOT_HELIX_FOSSIL
	applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement
	opentext
	writetext MtMoonB2FSuperNerdThenThisIsMineText
	disappear MT_MOON_B2F_DOME_FOSSIL
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	closetext
	end
	
.DidNotChooseFossil
	closetext
	end
	
MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement:
	slow_step RIGHT
	slow_step UP
	step_end
	
MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement:
	slow_step UP
	step_end
	
MtMoonB2FHPUP:
	itemball HP_UP
	
MtMoonB2FDynamicPunch:
	itemball TM_DYNAMICPUNCH
	
MtMoonB2FSuperNerdScript1:
	checkevent EVENT_BEAT_MT_MOON_B2F_SUPER_NERD_MIGUEL
	iffalse MtMoonB2FSuperNerdScript2
	faceplayer
	opentext
	writetext MtMoonB2FSuperNerdTheresAPokemonLabText
	waitbutton
	closetext
	end
	
MtMoonB2FSuperNerdScript2:
	faceplayer
	opentext
	writetext MtMoonB2FSuperNerdTheyreBothMineText
	playmusic MUSIC_MEET_MALE_TRAINER
	waitbutton
	closetext
	winlosstext MtMoonB2FSuperNerdOkIllShareText, -1
	loadtrainer SUPER_NERD, MIGUEL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MT_MOON_B2F_SUPER_NERD_MIGUEL
	pause 10
	opentext
	writetext MtMoonB2fSuperNerdEachTakeOneText
	waitbutton
	closetext
	setscene SCENE_MT_MOON_B2F_TEAM_ROCKET
	end
	
MtMoonB2FTrainerRocket1:
	end
	
MtMoonB2FTrainerRocket2:
	end
	
MtMoonB2FTrainerRocket3:
	end
	
MtMoonJessieJamesText1:
	text "Stop right there!"
	done

MtMoonJessieJamesText2:
	text "That fossil is"
	line "TEAM ROCKET's!"

	para "Surrender now, or "
	line "prepare to fight!"
	done

MtMoonJessieJamesText3:
	text "A brat beat us?"
	done

MtMoonJessieJamesText4:
	text "TEAM ROCKET, blast"
	line "off at the speed"
	cont "of light!"
	done

MtMoonB2FDomeFossilYouWantText:
	text "You want the"
	line "DOME FOSSIL?"
	done

MtMoonB2FHelixFossilYouWantText:
	text "You want the"
	line "HELIX FOSSIL?"
	done

MtMoonB2FReceivedFossilText:
	text "<PLAYER> got the"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

MtMoonB2FYouHaveNoRoomText:
	text "Look, you've got"
	line "no room for this."
	done

MtMoonB2FSuperNerdTheyreBothMineText:
	text "Hey, stop!"

	para "I found these"
	line "fossils! They're"
	cont "both mine!"
	done

MtMoonB2FSuperNerdOkIllShareText:
	text "OK! I'll share!"
	done

MtMoonB2fSuperNerdEachTakeOneText:
	text "We'll each take"
	line "one!"
	cont "No being greedy!"
	done

MtMoonB2FSuperNerdTheresAPokemonLabText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	cont "there's a #MON"
	cont "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MtMoonB2FSuperNerdThenThisIsMineText:
	text "All right. Then"
	line "this is mine!"
	done

MtMoonB2FRocket2BattleText:
	text "We, TEAM ROCKET,"
	line "are #MON"
	cont "gangsters!"
	done

MtMoonB2FRocket2EndBattleText:
	text "I blew it!"
	done

MtMoonB2FRocket2AfterBattleText:
	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

MtMoonB2FRocket3BattleText:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

MtMoonB2FRocket3EndBattleText:
	text "So, you are good."
	done

MtMoonB2FRocket3AfterBattleText:
	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done

MtMoonB2FRocket4BattleText:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

MtMoonB2FRocket4EndBattleText:
	text "I'm steamed!"
	prompt

MtMoonB2FRocket4AfterBattleText:
	text "#MON lived"
	line "here long before"
	cont "people came."
	done

MtMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, MT_MOON_B1F, 2
	warp_event 21, 17, MT_MOON_B1F, 5
	warp_event 15, 27, MT_MOON_B1F, 6
	warp_event  5,  7, MT_MOON_B1F, 7

	def_coord_events
	coord_event  13,  8, SCENE_MT_MOON_B2F_FOSSIL, MtMoonB2FSuperNerdScript2
	coord_event  3,   5, SCENE_MT_MOON_B2F_TEAM_ROCKET, MtMoonB2FTeamRocketScript

	def_bg_events

	def_object_events
	object_event 9,   3, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MtMoonB2FTeamRocketScript, EVENT_TEAM_ROCKET_APPEARED_MT_MOON
	object_event 9,   4, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MtMoonB2FTeamRocketScript, EVENT_TEAM_ROCKET_APPEARED_MT_MOON
	object_event 12,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FDomeFossilScript, EVENT_GOT_DOME_FOSSIL
	object_event 13,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FHelixFossilScript, EVENT_GOT_HELIX_FOSSIL
	object_event 25, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FHPUP, EVENT_MT_MOON_B2F_HP_UP
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FDynamicPunch, EVENT_MT_MOON_B2F_TM_DYNAMIC_PUNCH
	object_event 12,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonB2FSuperNerdScript1, -1
	object_event 15, 22, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket1, -1
	object_event 29, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket2, -1
	object_event 29, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket3, -1
