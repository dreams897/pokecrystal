	object_const_def
	const VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL
	const VIRIDIANSCHOOLHOUSE_COOLTRAINER_F

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianTrainerHouseBrunetteGirlScript:
	faceplayer
	opentext
	writetext ViridianTrainerHouseBrunetteGirlText
	waitbutton
	closetext
	turnobject VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL, UP
	end

ViridianTrainerHouseCooltrainerFScript:
	faceplayer
	opentext
	writetext ViridianTrainerHouseCooltrainerFText
	waitbutton
	closetext
	turnobject VIRIDIANSCHOOLHOUSE_COOLTRAINER_F, DOWN
	end

ViridianSchoolHouseBlackboardScript:
	jumptext ViridianSchoolBlackboardText1
	
ViridianSchoolHouseNotebookScript:
	opentext
	writetext ViridianSchoolNotebookText1
	writetext KeepReadingText
	yesorno
	iffalse .StopReading
	writetext ViridianSchoolNotebookText2
	writetext KeepReadingText
	yesorno
	iffalse .StopReading
	writetext ViridianSchoolNotebookText3
	writetext KeepReadingText
	yesorno
	iffalse .StopReading
	writetext ViridianSchoolNotebookText4
	sjump .StopReading
	
.StopReading
	writetext ViridianSchoolNotebookText5
	waitbutton
	closetext
	end
	
KeepReadingText:
	text "Keep reading?"
	done

ViridianTrainerHouseBrunetteGirlText:
	text "Whew! I'm trying"
	line "to memorize all"
	cont "my notes."
	done

ViridianTrainerHouseCooltrainerFText:
	text "Okay!"

	para "Be sure to read"
	line "the blackboard"
	cont "carefully!"
	done
	
ViridianSchoolBlackboardText1:
	text "The blackboard"
	line "describes #MON"
	cont "STATUS changes"
	cont "during battles."
	prompt

ViridianSchoolBlackboardText2:
	text "Which heading do"
	line "you want to read?"
	done
	
StatusAilmentText1:
	db   " SLP"
	next " PSN"
	next " PAR@"

StatusAilmentText2:
	db   " BRN"
	next " FRZ"
	next " QUIT@"

ViridianBlackboardSleepText:
	text "A #MON can't"
	line "attack if it's"
	cont "asleep!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	prompt

ViridianBlackboardPoisonText:
	text "When poisoned, a"
	line "#MON's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	prompt

ViridianBlackboardPrlzText:
	text "Paralysis could"
	line "make #MON"
	cont "moves misfire!"

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	prompt

ViridianBlackboardBurnText:
	text "A burn reduces"
	line "power and speed."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	prompt

ViridianBlackboardFrozenText:
	text "If frozen, a"
	line "#MON becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	prompt
	
ViridianSchoolNotebookText5:
	text "GIRL: Hey! Don't"
	line "look at my notes!"
	done

ViridianSchoolNotebookText1:
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	prompt

ViridianSchoolNotebookText2:
	text "Second page..."

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

ViridianSchoolNotebookText3:
	text "Third page..."

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	prompt

ViridianSchoolNotebookText4:
	text "Fourth page..."

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top 8 #MON"
	cont "GYM LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	prompt

ViridianSchoolHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 3
	warp_event  3,  7, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, ViridianSchoolHouseBlackboardScript
	bg_event  3,  4, BGEVENT_READ, ViridianSchoolHouseNotebookScript

	def_object_events
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianTrainerHouseBrunetteGirlScript, -1
	object_event  4,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianTrainerHouseCooltrainerFScript, -1
