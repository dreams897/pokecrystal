	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_COOLTRAINER_M
	const PEWTERGYM_HIKER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .AllKindsOfTrainers
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_PEWTER_GYM_TRAINER_JERRY
	setevent EVENT_BEAT_PEWTER_GYM_TRAINER_TONY
	setevent EVENT_1ST_ROUTE22_RIVAL_BATTLE
	setmapscene ROUTE_22, SCENE_ROUTE_22_NOOP
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	setflag ENGINE_BOULDERBADGE
	setmapscene PEWTER_CITY, SCENE_PEWTER_AFTER_BEATING_BROCK
	writetext BrockBoulderBadgeText
	waitbutton
	writetext PewterGymBrockWaitTakeThisText
	waitbutton
	verbosegiveitem TM_BIDE
	setevent EVENT_GOT_TM34_BIDE
	writetext TM34ExplanationText
	waitbutton
	closetext
	end
	
.AllKindsOfTrainers:
	writetext BrockFightDoneText
	waitbutton
	closetext
	end
	
TrainerPewterGymTrainer0:
	trainer JRTRAINER_M, JERRY, EVENT_BEAT_PEWTER_GYM_TRAINER_JERRY, PewterGymTrainer0SeenText, PewterGymTrainer0BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PewterGymTrainer0AfterBattleText
	waitbutton
	closetext
	end
	
TrainerPewterGymTrainer1:
	trainer HIKER, TONY, EVENT_BEAT_PEWTER_GYM_TRAINER_TONY, PewterGymTrainer1SeenText, PewterGymTrainer1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PewterGymTrainer1AfterBattleText
	waitbutton
	closetext
	end

PewterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	yesorno
	iffalse .FreeService
	iftrue .LetsGetHappening
	
.FreeService
	writetext PewterGymGuideFreeServiceText
	waitbutton
	sjump PewterGymGuideTextContinued
	
.LetsGetHappening
	writetext PewterGymGuideBeginAdviceText
	waitbutton
	sjump PewterGymGuideTextContinued

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetext
	end
	
PewterGymGuideTextContinued:
	writetext PewterGymGuideAdviceText
	waitbutton
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue2Script
.Beaten:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	jumpstd GymStatue3Script

BrockIntroText:
	text "I'm BROCK!"
	line "I'm PEWTER's GYM"
	cont "LEADER!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#MON are all"
	cont "the rock-type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	cont "me your best!"
	done
	
PewterGymBrockWaitTakeThisText:
	text "Wait! Take this"
	line "with you!"
	done

PewterGymReceivedTM34Text:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

TM34ExplanationText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#MON!"

	para "A TM is good only"
	line "once! So when you"
	cont "use one to teach"
	cont "a new technique,"
	cont "pick the #MON"
	cont "carefully!"

	para "TM34 contains"
	line "BIDE!"

	para "Your #MON will"
	line "absorb damage in"
	cont "battle then pay"
	cont "it back double!"
	done

PewterGymTM34NoRoomText:
	text "You don't have"
	line "room for this!"
	done

BrockWinLossText:
	text "I took you for"
	line "granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "the BOULDERBADGE!"
	done

BrockBoulderBadgeText:
	text "That's an official"
	line "#MON LEAGUE"
	cont "BADGE!"

	para "Its bearer's"
	line "#MON become"
	cont "more powerful!"

	para "The technique"
	line "FLASH can now be"
	cont "used any time!"
	prompt
	done

BrockFightDoneText:
	text "There are all"
	line "kinds of trainers"
	cont "in the world!"

	para "You appear to be"
	line "very gifted as a"
	cont "#MON trainer!"

	para "Go to the GYM in"
	line "CERULEAN and test"
	cont "your abilities!"
	done

PewterGymTrainer0SeenText:
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

PewterGymTrainer0BeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	prompt

PewterGymTrainer0AfterBattleText:
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done
	
PewterGymTrainer1SeenText:
	text "I just got back"
	line "from MT.MOON!"
	done
	
PewterGymTrainer1BeatenText:
	text "Darn!"
	
	para "You're ready for"
	line "BROCK!"
	prompt
	
PewterGymTrainer1AfterBattleText:
	text "I should've caught"
	line "more #MON."
	done

PewterGymGuideText:
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

PewterGymGuideWinText:
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done
	
PewterGymGuideBeginAdviceText:
	text "All right! Let's"
	line "get happening!"
	prompt

PewterGymGuideAdviceText:
	text "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

PewterGymGuideFreeServiceText:
	text "It's a free"
	line "service! Let's"
	cont "get happening!"
	prompt

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 3
	warp_event  5, 13, PEWTER_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3, 10, BGEVENT_READ, PewterGymStatue
	bg_event  6, 10, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  4,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPewterGymTrainer0, -1
	object_event  7,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPewterGymTrainer1, -1
	object_event  7, 10, SPRITE_GYM_GUIDE_KANTO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
