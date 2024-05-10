	object_const_def
	const ROUTE25_HIKER_BENJAMIN
	const ROUTE25_HIKER_ERIK
	const ROUTE25_YOUNGSTER_GORDON
	const ROUTE25_YOUNGSTER_WARREN
	const ROUTE25_LASS_MICHELLE
	const ROUTE25_HIKER_ANTHONY
	const ROUTE25_JRTRAINER_M_JEFFREY
	const ROUTE25_YOUNGSTER_IAN
	const ROUTE25_LASS_DANA
	const ROUTE25_POKE_BALL

Route25_MapScripts:
	def_scene_scripts

	def_callbacks

Route25TrainerHikerBenjamin:
	trainer HIKER, BENJAMIN2, EVENT_BEAT_ROUTE_25_HIKER_BENJAMIN, Route25Hiker1BattleText, Route25Hiker1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Hiker1AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerHikerErik:
	trainer HIKER, ERIK2, EVENT_BEAT_ROUTE_25_HIKER_ERIK, Route25Hiker2BattleText, Route25Hiker2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Hiker2AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerYoungsterGordon:
	trainer YOUNGSTER, GORDON2, EVENT_BEAT_ROUTE_25_YOUNGSTER_GORDON, Route25Youngster1BattleText, Route25Youngster1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Youngster1AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerYoungsterWarren:
	trainer YOUNGSTER, WARREN2, EVENT_BEAT_ROUTE_25_YOUNGSTER_WARREN, Route25Youngster2BattleText, Route25Youngster2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Youngster2AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerLassMichelle:
	trainer LASS, MICHELLE2, EVENT_BEAT_ROUTE_25_LASS_MICHELLE, Route25CooltrainerF1BattleText, Route25CooltrainerF1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25CooltrainerF1AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerHikerAnthony:
	trainer HIKER, ANTHONY6, EVENT_BEAT_ROUTE_25_HIKER_ANTHONY, Route25Hiker3BattleText, Route25Hiker3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Hiker3AfterBattleText
	waitbutton
	closetext
	end

Route25TrainerJrTrainerMJeffrey:
	trainer JRTRAINER_M, JEFFREY2, EVENT_BEAT_ROUTE_25_JRTRAINER_M_JEFFREY, Route25CooltrainerMBattleText, Route25CooltrainerMEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25CooltrainerMAfterBattleText
	waitbutton
	closetext
	end
	
Route25TrainerYoungsterIan:
	trainer YOUNGSTER, IAN2, EVENT_BEAT_ROUTE_25_YOUNGSTER_IAN, Route25Youngster3BattleText, Route25Youngster3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25Youngster3AfterBattleText
	waitbutton
	closetext
	end
	
Route25TrainerLassDana:
	trainer LASS, DANA6, EVENT_BEAT_ROUTE_25_LASS_DANA, Route25CooltrainerF2BattleText, Route25CooltrainerF2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route25CooltrainerF2AfterBattleText
	waitbutton
	closetext
	end

BillsHouseSign:
	jumptext Route25BillSignText

Route25SeismicToss:
	itemball PROTEIN

Route25HiddenFastBall:
	hiddenitem FAST_BALL, EVENT_ROUTE_25_HIDDEN_FAST_BALL

Route25Youngster1BattleText:
	text "Local trainers"
	line "come here to"
	cont "practice!"
	done

Route25Youngster1EndBattleText:
	text "You're decent."
	prompt

Route25Youngster1AfterBattleText:
	text "All #MON have"
	line "weaknesses. It's"
	cont "best to raise"
	cont "different kinds."
	done

Route25Youngster2BattleText:
	text "Dad took me to a"
	line "great party on"
	cont "S.S.ANNE at"
	cont "VERMILION CITY!"
	done

Route25Youngster2EndBattleText:
	text "I'm not mad!"
	prompt

Route25Youngster2AfterBattleText:
	text "On S.S.ANNE, I"
	line "saw trainers from"
	cont "around the world."
	done

Route25CooltrainerMBattleText:
	text "I'm a cool guy."
	line "I've got a girl"
	cont "friend!"
	done

Route25CooltrainerMEndBattleText:
	text "Aww,"
	line "darn..."
	prompt

Route25CooltrainerMAfterBattleText:
	text "Oh well. My girl"
	line "will cheer me up."
	done

Route25CooltrainerF1BattleText:
	text "Hi! My boy"
	line "friend is cool!"
	done

Route25CooltrainerF1EndBattleText:
	text "I was in"
	line "bad condition!"
	prompt

Route25CooltrainerF1AfterBattleText:
	text "I wish my guy was"
	line "as good as you!"
	done

Route25Youngster3BattleText:
	text "I knew I had to"
	line "fight you!"
	done

Route25Youngster3EndBattleText:
	text "I knew I'd"
	line "lose too!"
	prompt

Route25Youngster3AfterBattleText:
	text "If your #MON"
	line "gets confused or"
	cont "falls asleep,"
	cont "switch it!"
	done

Route25CooltrainerF2BattleText:
	text "My friend has a"
	line "cute #MON."
	cont "I'm so jealous!"
	done

Route25CooltrainerF2EndBattleText:
	text "I'm not"
	line "so jealous!"
	prompt

Route25CooltrainerF2AfterBattleText:
	text "You came from MT."
	line "MOON? May I have"
	cont "a CLEFAIRY?"
	done

Route25Hiker1BattleText:
	text "I just got down"
	line "from MT.MOON,"
	cont "but I'm ready!"
	done

Route25Hiker1EndBattleText:
	text "You worked hard!"
	prompt

Route25Hiker1AfterBattleText:
	text "Drat!"
	line "A ZUBAT bit me"
	cont "back in there."
	done

Route25Hiker2BattleText:
	text "I'm off to see a"
	line "#MON collector"
	cont "at the cape!"
	done

Route25Hiker2EndBattleText:
	text "You got me."
	prompt

Route25Hiker2AfterBattleText:
	text "The collector has"
	line "many rare kinds"
	cont "of #MON."
	done

Route25Hiker3BattleText:
	text "You're going to"
	line "see BILL? First,"
	cont "let's fight!"
	done

Route25Hiker3EndBattleText:
	text "You're something."
	prompt

Route25Hiker3AfterBattleText:
	text "The trail below"
	line "is a shortcut to"
	cont "CERULEAN CITY."
	done

Route25BillSignText:
	text "SEA COTTAGE"
	line "BILL lives here!"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 45,  3, BILLS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 43,  3, BGEVENT_READ, BillsHouseSign
	bg_event 10,  1, BGEVENT_ITEM, Route25HiddenFastBall

	def_object_events
	object_event  8,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Route25TrainerHikerBenjamin, -1
	object_event 13,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Route25TrainerHikerErik, -1
	object_event 14,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, Route25TrainerYoungsterGordon, -1
	object_event 18,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, Route25TrainerYoungsterWarren, -1
	object_event 18,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, Route25TrainerLassMichelle, -1
	object_event 23,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, Route25TrainerHikerAnthony, -1
	object_event 24,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, Route25TrainerJrTrainerMJeffrey, -1
	object_event 32,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 3, Route25TrainerYoungsterIan, -1
	object_event 37,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, Route25TrainerLassDana, -1
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25SeismicToss, EVENT_ROUTE_25_TM_SEISMIC_TOSS ; TODO make this Seismic Toss TM
