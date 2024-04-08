	object_const_def
	const MT_MOON_B2F_JAMES
	const MT_MOON_B2F_JESSIE

MtMoonB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
MtMoonB2FTeamRocketScript:
	faceplayer
	opentext
	writetext MtMoonJessieJamesText1
	waitbutton
	writetext MtMoonJessieJamesText2
	waitbutton
	closetext
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
	text_ram wcd6d
	text "!@"
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

	def_bg_events

	def_object_events
	object_event 9, 3, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MtMoonB2FTeamRocketScript, -1
	object_event 9, 4, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MtMoonB2FTeamRocketScript, -1
