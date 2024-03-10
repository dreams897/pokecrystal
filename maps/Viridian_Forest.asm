	object_const_def

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerYoungsterViridianForest1Script:
	faceplayer
	opentext
	writetext ViridianForestYoungster1Text
	waitbutton
	closetext
	end
	
TrainerYoungsterViridianForest1:
	trainer BUG_CATCHER, JOE1, EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0, ViridianForestYoungster2SeenText, ViridianForestYoungster2BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ViridianForestYoungster2BeatenText
	waitbutton
	closetext
	end
	
ViridianForestTrainerTips4Sign:
	jumptext ViridianForestTrainerTips4Text

ViridianForestYoungster1Text:
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done
	
ViridianForestYoungster2SeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

ViridianForestYoungster2BeatenText:
	text "No!"
	line "CATERPIE can't"
	cont "cut it!"
	prompt

ViridianForestYoungster2AfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

ViridianForestYoungster3BattleText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

ViridianForestYoungster3EndBattleText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	prompt

ViridianForestYoungster3AfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

ViridianForestYoungster4BattleText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

ViridianForestYoungster4EndBattleText:
	text "I"
	line "give! You're good"
	cont "at this!"
	prompt

ViridianForestYoungster4AfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForestYoungster5Text:
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with!"

	para "You should carry"
	line "extras!"
	done

ViridianForestTrainerTips1Text:
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestUseAntidoteSignText:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForestTrainerTips2Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForestTrainerTips3Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

ViridianForestTrainerTips4Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestLeavingSignText:
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	
	warp_event  1,  0, VIRIDIAN_FOREST_NORTH_GATE, 2
	warp_event  2,  0, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 15, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 16, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 17, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 18, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  18, 45, BGEVENT_READ, ViridianForestTrainerTips4Sign

	def_object_events
	object_event 16, 43, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerYoungsterViridianForest1Script, -1
	object_event 30, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterViridianForest1, -1
	
