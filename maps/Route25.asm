	object_const_def
	const ROUTE25_COOLTRAINER_M1
	const ROUTE25_YOUNGSTER1
	const ROUTE25_LASS1
	const ROUTE25_YOUNGSTER2
	const ROUTE25_LASS2
	const ROUTE25_YOUNGSTER3
	const ROUTE25_LASS3
	const ROUTE25_SUPER_NERD
	const ROUTE25_COOLTRAINER_M2
	const ROUTE25_POKE_BALL

Route25_MapScripts:
	def_scene_scripts
	scene_script Route25Noop1Scene, SCENE_ROUTE25_NOOP

	def_callbacks

Route25Noop1Scene:
	end

Route25Noop2Scene:
	end

TrainerSchoolboyDudley:
	trainer SCHOOLBOY, DUDLEY, EVENT_BEAT_SCHOOLBOY_DUDLEY, SchoolboyDudleySeenText, SchoolboyDudleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDudleyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassEllen:
	trainer LASS, ELLEN, EVENT_BEAT_LASS_ELLEN, LassEllenSeenText, LassEllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassEllenAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJoe:
	trainer SCHOOLBOY, JOE, EVENT_BEAT_SCHOOLBOY_JOE, SchoolboyJoeSeenText, SchoolboyJoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJoeAfterBattleText
	waitbutton
	closetext
	end

TrainerLassLaura:
	trainer LASS, LAURA, EVENT_BEAT_LASS_LAURA, LassLauraSeenText, LassLauraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLauraAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperLloyd:
	trainer CAMPER, LLOYD, EVENT_BEAT_CAMPER_LLOYD, CamperLloydSeenText, CamperLloydBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperLloydAfterBattleText
	waitbutton
	closetext
	end

TrainerLassShannon:
	trainer LASS, SHANNON, EVENT_BEAT_LASS_SHANNON, LassShannonSeenText, LassShannonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassShannonAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdPat:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, SupernerdPatSeenText, SupernerdPatBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdPatAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermKevin:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_KEVIN
	iftrue .AfterBattle
	checkevent EVENT_CLEARED_NUGGET_BRIDGE
	iftrue .AfterNuggetBridge
	writetext CooltrainermKevinNuggetText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoomForNugget
	setevent EVENT_CLEARED_NUGGET_BRIDGE
.AfterNuggetBridge:
	writetext CooltrainermKevinSeenText
	waitbutton
	closetext
	winlosstext CooltrainermKevinBeatenText, 0
	loadtrainer COOLTRAINERM, KEVIN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_KEVIN
	opentext
.AfterBattle:
	writetext CooltrainermKevinAfterBattleText
	waitbutton
.NoRoomForNugget:
	closetext
	end

BillsHouseSign:
	jumptext BillsHouseSignText

Route25Protein:
	itemball PROTEIN

Route25HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_25_HIDDEN_POTION

SchoolboyDudleySeenText:
	text "Beat the six of us"
	line "trainers to win a"
	cont "fabulous prize!"

	para "Think you've got"
	line "what it takes?"
	done

SchoolboyDudleyBeatenText:
	text "Whoo! Good stuff."
	done

SchoolboyDudleyAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

LassEllenSeenText:
	text "I'm second."
	line "Now it's serious!"
	done

LassEllenBeatenText:
	text "How could I lose?"
	done

LassEllenAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

SchoolboyJoeSeenText:
	text "Here's No. 3!"
	line "I won't be easy."
	done

SchoolboyJoeBeatenText:
	text "Ow! Stomped flat!"
	done

SchoolboyJoeAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

LassLauraSeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

LassLauraBeatenText:
	text "I lost too…"
	done

LassLauraAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

CamperLloydSeenText:
	text "OK! I'm No. 5."
	line "I'll stomp you!"
	done

CamperLloydBeatenText:
	text "Whoa! Too much."
	done

CamperLloydAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

LassShannonSeenText:
	text "I'm the last in"
	line "line, but I tell"
	cont "you, I'm tough!"
	done

LassShannonBeatenText:
	text "You're kidding."
	done

LassShannonAfterBattleText:
	text "I did my best."
	line "I have no regrets."
	done

SupernerdPatSeenText:
	text "Mufufufu…"

	para "I have nothing to"
	line "do with the six-"
	cont "pack trainers."

	para "I waited here to"
	line "beat you when you"

	para "were tired out by"
	line "all the battles."
	done

SupernerdPatBeatenText:
	text "Aren't you tired"
	line "at all?"
	done

SupernerdPatAfterBattleText:
	text "I'm sorry… I won't"
	line "cheat anymore…"
	done

CooltrainermKevinNuggetText:
	text "You took on one"
	line "more battle than"

	para "you expected, but"
	line "you won anyway."

	para "As promised, you"
	line "win a prize."
	done

CooltrainermKevinSeenText:
	text "But after seeing"
	line "how you battle, I"

	para "want to see how"
	line "I'll fare."

	para "How about it? Let"
	line "me take you on."
	done

CooltrainermKevinBeatenText:
	text "I've never had a"
	line "battle this good!"
	done

CooltrainermKevinAfterBattleText:
	text "That was a great"
	line "battle!"

	para "You and your #-"
	line "MON are truly out-"
	cont "standing!"
	done

BillsHouseSignText:
	text "SEA COTTAGE"
	line "BILL'S HOUSE"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 45,  3, BILLS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 43,  3, BGEVENT_READ, BillsHouseSign
	bg_event  4,  5, BGEVENT_ITEM, Route25HiddenPotion

	def_object_events
	object_event 46, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyDudley, -1
	object_event 13,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassEllen, -1
	object_event 14,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJoe, -1
	object_event 18,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassLaura, -1
	object_event 22,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperLloyd, -1
	object_event 24,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassShannon, -1
	object_event 31,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdPat, -1
	object_event 37,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerCooltrainermKevin, -1
	object_event 32,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25Protein, EVENT_ROUTE_25_PROTEIN
