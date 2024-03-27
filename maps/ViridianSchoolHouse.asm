	object_const_def
	const TRAINERHOUSE1F_BRUNETTE_GIRL
	const TRAINERHOUSE1F_COOLTRAINER_F

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianTrainerHouseBrunetteGirlScript:
	jumptextfaceplayer ViridianTrainerHouseBrunetteGirlText

ViridianTrainerHouseCooltrainerFScript:
	jumptextfaceplayer ViridianTrainerHouseCooltrainerFText

TrainerHouseBlackboard:
	jumptext ViridianSchoolBlackboardText1

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

ViridianSchoolHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, VIRIDIAN_CITY, 3
	warp_event  3, 13, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, TrainerHouseBlackboard

	def_object_events
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianTrainerHouseBrunetteGirlScript, -1
	object_event  4,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianTrainerHouseCooltrainerFScript, -1
