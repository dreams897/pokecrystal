	object_const_def

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	
YoungsterViridianForest1Script:
	faceplayer
	opentext
	writetext ViridianForestYoungster1Text
	waitbutton
	closetext
	end
	
YoungsterViridianForest5Script:
	faceplayer
	opentext
	writetext ViridianForestYoungster5Text
	waitbutton
	closetext
	end
	
TrainerYoungsterViridianForest1:
	trainer BUG_CATCHER, JOE1, EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0, ViridianForestYoungster2SeenText, ViridianForestYoungster2BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ViridianForestYoungster2AfterBattleText
	waitbutton
	closetext
	end
	
TrainerYoungsterViridianForest2:
	trainer BUG_CATCHER, GREG1, EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1, ViridianForestYoungster3SeenText, ViridianForestYoungster3BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ViridianForestYoungster3AfterBattleText
	waitbutton
	closetext
	end
	
TrainerYoungsterViridianForest3:
	trainer BUG_CATCHER, MIKE1, EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2, ViridianForestYoungster4SeenText, ViridianForestYoungster4BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ViridianForestYoungster4AfterBattleText
	waitbutton
	closetext
	end
	
ViridianForestPokeBall:
	itemball POKE_BALL
	
ViridianForestPotion:
	itemball POTION
	
ViridianForestAntidote:
	itemball ANTIDOTE
	
ViridianForestUseAntidoteSign:
	jumptext ViridianForestUseAntidoteSignText
	
ViridianForestTrainerTips4Sign:
	jumptext ViridianForestTrainerTips4Text
	
ViridianForestTrainerTips1Sign:
	jumptext ViridianForestTrainerTips1Text
	
ViridianForestTrainerTips2Sign:
	jumptext ViridianForestTrainerTips2Text
	
ViridianForestTrainerTips3Sign:
	jumptext ViridianForestTrainerTips3Text
	
ViridianForestLeavingSign:
	jumptext ViridianForestLeavingSignText
	
ViridianForestHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION
	
ViridianForestHiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

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

ViridianForestYoungster3SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

ViridianForestYoungster3BeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	prompt

ViridianForestYoungster3AfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

ViridianForestYoungster4SeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

ViridianForestYoungster4BeatenText:
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
	bg_event  24, 40, BGEVENT_READ, ViridianForestTrainerTips1Sign
	bg_event  16, 32, BGEVENT_READ, ViridianForestUseAntidoteSign
	bg_event  26, 17, BGEVENT_READ, ViridianForestTrainerTips2Sign
	bg_event   4, 24, BGEVENT_READ, ViridianForestTrainerTips3Sign
	bg_event   2,  1, BGEVENT_READ, ViridianForestLeavingSign
	bg_event   1, 18, BGEVENT_ITEM, ViridianForestHiddenPotion
	bg_event  16, 42, BGEVENT_ITEM, ViridianForestHiddenAntidote

	def_object_events
	object_event 16, 43, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YoungsterViridianForest1Script, -1
	object_event 27, 40, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YoungsterViridianForest5Script, -1
	object_event 30, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerYoungsterViridianForest1, -1
	object_event 30, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerYoungsterViridianForest2, -1
	object_event  2, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerYoungsterViridianForest3, -1
	object_event  1, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeBall, EVENT_VIRIDIAN_FOREST_POKE_BALL
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, EVENT_VIRIDIAN_FOREST_POTION
	object_event 25, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	
