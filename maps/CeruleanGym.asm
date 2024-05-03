	object_const_def
	const CERULEANGYM_MISTY
	const CERULEANGYM_SWIMMER_GIRL1
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymMistyScript:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext CeruleanGymMistyPreBattleText
	waitbutton
	closetext
	winlosstext CeruleanGymMistyReceivedCascadeBadgeText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_DIANA
	setevent EVENT_BEAT_SWIMMERF_BRIANA
	setevent EVENT_BEAT_SWIMMERM_PARKER
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	writetext MistyFightDoneText
	waitbutton
	closetext
	end

TrainerSwimmerfDiana:
	trainer SWIMMERF, DIANA, EVENT_BEAT_SWIMMERF_DIANA, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfBriana:
	trainer SWIMMERF, BRIANA, EVENT_BEAT_SWIMMERF_BRIANA, SwimmerfBrianaSeenText, SwimmerfBrianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfBrianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermParker:
	trainer SWIMMERM, PARKER, EVENT_BEAT_SWIMMERM_PARKER, SwimmermParkerSeenText, SwimmermParkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermParkerAfterBattleText
	waitbutton
	closetext
	end

CeruleanGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuideWinScript
	writetext CeruleanGymGuideText
	waitbutton
	closetext
	end

.CeruleanGymGuideWinScript:
	writetext CeruleanGymGuideWinText
	waitbutton
	closetext
	end

CeruleanGymStatue:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	jumpstd GymStatue2Script

MistyIntroText:
	text "MISTY: I was ex-"
	line "pecting you, you"
	cont "pest!"

	para "You may have a"
	line "lot of JOHTO GYM"

	para "BADGES, but you'd"
	line "better not take me"
	cont "too lightly."

	para "My water-type"
	line "#MON are tough!"
	done

MistyWinLossText:
	text "MISTY: You really"
	line "are good…"

	para "I'll admit that"
	line "you are skilled…"

	para "Here you go. It's"
	line "CASCADEBADGE."
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> received"
	line "CASCADEBADGE."
	done

MistyFightDoneText:
	text "MISTY: Are there"
	line "many strong train-"
	cont "ers in JOHTO? Like"
	cont "you, I mean."

	para "I'm going to"
	line "travel one day, so"

	para "I can battle some"
	line "skilled trainers."
	done

SwimmerfDianaSeenText:
	text "Sorry about being"
	line "away. Let's get on"
	cont "with it!"
	done

SwimmerfDianaBeatenText:
	text "I give up! You're"
	line "the winner!"
	done

SwimmerfDianaAfterBattleText:
	text "I'll be swimming"
	line "quietly."
	done

SwimmerfBrianaSeenText:
	text "Don't let my ele-"
	line "gant swimming un-"
	cont "nerve you."
	done

SwimmerfBrianaBeatenText:
	text "Ooh, you calmly"
	line "disposed of me…"
	done

SwimmerfBrianaAfterBattleText:
	text "Don't be too smug"
	line "about beating me."

	para "MISTY will destroy"
	line "you if you get"
	cont "complacent."
	done

SwimmermParkerSeenText:
	text "Glub…"

	para "I'm first! Come"
	line "and get me!"
	done

SwimmermParkerBeatenText:
	text "This can't be…"
	done

SwimmermParkerAfterBattleText:
	text "MISTY has gotten"
	line "much better in the"
	cont "past few years."

	para "Don't let your"
	line "guard down, or"
	cont "you'll be crushed!"
	done
	
CeruleanGymMistyPreBattleText:
	text "Hi, you're a new"
	line "face!"

	para "Trainers who want"
	line "to turn pro have"
	cont "to have a policy"
	cont "about #MON!"

	para "What is your"
	line "approach when you"
	cont "catch #MON?"

	para "My policy is an"
	line "all-out offensive"
	cont "with water-type"
	cont "#MON!"
	done

CeruleanGymMistyTM11ExplanationText:
	text "TM11 teaches"
	line "BUBBLEBEAM!"

	para "Use it on an"
	line "aquatic #MON!"
	done

CeruleanGymMistyCascadeBadgeInfoText:
	text "The CASCADEBADGE"
	line "makes all #MON"
	cont "up to L30 obey!"

	para "That includes"
	line "even outsiders!"

	para "There's more, you"
	line "can now use CUT"
	cont "any time!"

	para "You can CUT down"
	line "small bushes to"
	cont "open new paths!"

	para "You can also have"
	line "my favorite TM!"
	done

CeruleanGymMistyReceivedTM11Text:
	text "<PLAYER> received"
	line "TM11!"
	done

CeruleanGymMistyTM11NoRoomText:
	text "You better make"
	line "room for this!"
	done

CeruleanGymMistyReceivedCascadeBadgeText:
	text "Wow!"
	line "You're too much!"

	para "All right!"

	para "You can have the"
	line "CASCADEBADGE to"
	cont "show you beat me!"
	done

CeruleanGymBattleText1:
	text "I'm more than good"
	line "enough for you!"

	para "MISTY can wait!"
	done

CeruleanGymEndBattleText1:
	text "You"
	line "overwhelmed me!"
	prompt

CeruleanGymAfterBattleText1:
	text "You have to face"
	line "other trainers to"
	cont "find out how good"
	cont "you really are."
	done

CeruleanGymBattleText2:
	text "Splash!"

	para "I'm first up!"
	line "Let's do it!"
	done

CeruleanGymEndBattleText2:
	text "That"
	line "can't be!"
	prompt

CeruleanGymAfterBattleText2:
	text "MISTY is going to"
	line "keep improving!"

	para "She won't lose to"
	line "someone like you!"
	done

CeruleanGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "Here's my advice!"

	para "The LEADER, MISTY,"
	line "is a pro who uses"
	cont "water #MON!"

	para "You can drain all"
	line "their water with"
	cont "plant #MON!"

	para "Or, zap them with"
	line "electricity!"
	done

CeruleanGymGuideWinText:
	text "You beat MISTY!"
	line "What'd I tell ya?"

	para "You and me kid,"
	line "we make a pretty"
	cont "darn good team!"
	done

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, CERULEAN_CITY, 6
	warp_event  5, 13, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3, 11, BGEVENT_READ, CeruleanGymStatue
	bg_event  6, 11, BGEVENT_READ, CeruleanGymStatue

	def_object_events
	object_event  4,  2, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, -1
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDiana, -1
	object_event  8,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmermParker, -1
	object_event  7, 10, SPRITE_GYM_GUIDE_KANTO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, -1
