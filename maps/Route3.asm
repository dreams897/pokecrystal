	object_const_def
	const ROUTE3_BUG_CATCHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_LASS1
	const ROUTE3_BUG_CATCHER2
	const ROUTE3_YOUNGSTER2
	const ROUTE3_LASS2
	const ROUTE3_BUG_CATCHER3
	const ROUTE3_LASS3
	const ROUTE3_SUPER_NERD

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

Route3TrainerBugCatcher1:
	trainer BUG_CATCHER, FOREST_T2, EVENT_BEAT_ROUTE_3_BUG_CATCHER_FOREST, Route3BugCatcher1BattleText, Route3BugCatcher1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3BugCatcher1AfterBattleText
	waitbutton
	closetext
	end

Route3TrainerYoungster1:
	trainer YOUNGSTER, BEN2, EVENT_BEAT_ROUTE_3_YOUNGSTER_BEN, Route3Youngster1BattleText, Route3Youngster1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3Youngster1AfterBattleText
	waitbutton
	closetext
	end

Route3TrainerLass1:
	trainer LASS, ALICE2, EVENT_BEAT_ROUTE_3_LASS_ALICE, Route3Lass1BattleText, Route3Lass1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3Lass1AfterBattleText
	waitbutton
	closetext
	end
	
Route3TrainerBugCatcher2:
	trainer BUG_CATCHER, JOSH2, EVENT_BEAT_ROUTE_3_BUG_CATCHER_JOSH, Route3BugCatcher2BattleText, Route3BugCatcher2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3BugCatcher2AfterBattleText
	waitbutton
	closetext
	end
	
Route3TrainerYoungster2:
	trainer YOUNGSTER, MIKEY2, EVENT_BEAT_ROUTE_3_YOUNGSTER_MIKEY, Route3Youngster2BattleText, Route3Youngster2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3Youngster2AfterBattleText
	waitbutton
	closetext
	end
	
Route3TrainerLass2:
	trainer LASS, CARRIE2, EVENT_BEAT_ROUTE_3_LASS_CARRIE, Route3Lass2BattleText, Route3Lass2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3Lass2AfterBattleText
	waitbutton
	closetext
	end
	
Route3TrainerBugCatcher3:
	trainer BUG_CATCHER, WADE6, EVENT_BEAT_ROUTE_3_BUG_CATCHER_WADE, Route3BugCatcher3BattleText, Route3BugCatcher3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3BugCatcher3AfterBattleText
	waitbutton
	closetext
	end
	
Route3TrainerLass3:
	trainer LASS, CONNIE4, EVENT_BEAT_ROUTE_3_LASS_CONNIE, Route3Lass3BattleText, Route3Lass3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route3Lass3AfterBattleText
	waitbutton
	closetext
	end
	
Route3SuperNerdScript:
	faceplayer
	opentext
	writetext Route3Text1
	waitbutton
	closetext
	end

Route3MtMoonSign:
	jumptext Route3SignText

Route3BugCatcher1BattleText:
	text "Hey! I met you in"
	line "VIRIDIAN FOREST!"
	done

Route3BugCatcher1EndBattleText:
	text "You beat"
	line "me again!"
	prompt

Route3BugCatcher1AfterBattleText:
	text "There are other"
	line "kinds of #MON"
	cont "than those found"
	cont "in the forest!"
	done

Route3Youngster1BattleText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

Route3Youngster1EndBattleText:
	text "I don't"
	line "believe it!"
	prompt

Route3Youngster1AfterBattleText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

Route3Lass1BattleText:
	text "You looked at me,"
	line "didn't you?"
	done

Route3Lass1EndBattleText:
	text "You're mean!"
	done

Route3Lass1AfterBattleText:
	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

Route3BugCatcher2BattleText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

Route3BugCatcher2EndBattleText:
	text "If I had new"
	line "#MON I"
	cont "would've won!"
	prompt

Route3BugCatcher2AfterBattleText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

Route3Lass2BattleText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

Route3Lass2EndBattleText:
	text "Be nice!"
	prompt

Route3Lass2AfterBattleText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

Route3Youngster2BattleText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

Route3Youngster2EndBattleText:
	text "Lost!"
	line "Lost! Lost!"
	prompt

Route3Youngster2AfterBattleText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

Route3BugCatcher3BattleText:
	text "You can fight my"
	line "new #MON!"
	done

Route3BugCatcher3EndBattleText:
	text "Done"
	line "like dinner!"
	prompt

Route3BugCatcher3AfterBattleText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

Route3Lass3BattleText:
	text "Eek! Did you"
	line "touch me?"
	done

Route3Lass3EndBattleText:
	text "That's it?"
	prompt

Route3Lass3AfterBattleText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
	done

Route3SignText:
	text "ROUTE 3"
	line "MT.MOON AHEAD"
	done
	
Route3Text1:
	text "Whew... I better"
	line "take a rest..."
	cont "Groan..."

	para "That tunnel from"
	line "CERULEAN takes a"
	cont "lot out of you!"
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 59,  9, BGEVENT_READ, Route3MtMoonSign

	def_object_events
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, Route3TrainerBugCatcher1, -1
	object_event 14,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, Route3TrainerYoungster1, -1
	object_event 16,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, Route3TrainerLass1, -1
	object_event 19,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, Route3TrainerBugCatcher2, -1
	object_event 22,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, Route3TrainerYoungster2, -1
	object_event 23,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, Route3TrainerLass2, -1
	object_event 24,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, Route3TrainerBugCatcher3, -1
	object_event 33, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, Route3TrainerLass3, -1
	object_event 57, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route3SuperNerdScript, -1
