	object_const_def
	const ROUTE24_TRAINER_ROCKET
	const ROUTE24_TRAINER_JRTRAINER_M1
	const ROUTE24_TRAINER_LASS1
	const ROUTE24_TRAINER_JRTRAINER_M2
	const ROUTE24_TRAINER_YOUNGSTER
	const ROUTE24_TRAINER_LASS2
	const ROUTE24_TRAINER_BUG_CATCHER
	

Route24_MapScripts:
	def_scene_scripts
	scene_script Route24NoopScene,   SCENE_ROUTE_24_NOOP
	scene_script Route24AfterNuggetScene,   SCENE_ROUTE_24_AFTER_NUGGET

	def_callbacks
	
Route24NoopScene:
	end
	
Route24AfterNuggetScene:
	end

Route24RocketScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_NUGGET
	iftrue .WithYourAbility
	writetext Route24CooltrainerM1YouBeatOurContestText
	waitbutton
	writetext Route24CooltrainerM1YouJustEarnedAPrizeText
	waitbutton
	getitemname STRING_BUFFER_3, NUGGET
	giveitem NUGGET
	iffalse .NotEnoughSpace
	waitsfx
	writetext Route24ReceivedNuggetText
	playsound SFX_GET_ITEM1_1
	waitsfx
	writetext Route24CooltrainerM1JoinTeamRocketText
	playmusic MUSIC_MEET_EVIL_TRAINER
	waitbutton
	closetext
	setevent EVENT_GOT_NUGGET
	winlosstext Route24CooltrainerM1DefeatedText, 0
	loadtrainer GRUNTM, ROCKET_5
	startbattle
	reloadmapafterbattle
	opentext
	writetext Route24CooltrainerM1YouCouldBecomeATopLeaderText
	waitbutton
	closetext
	setscene SCENE_ROUTE_24_AFTER_NUGGET
	end
	
.WithYourAbility
	writetext Route24CooltrainerM1YouCouldBecomeATopLeaderText
	waitbutton
	closetext
	end
	
.NotEnoughSpace
	writetext Route24CooltrainerM1NoRoomText
	waitbutton
	closetext
	end
	
Route24JrTrainerM1Script:
	trainer JRTRAINER_M, SEAN2, EVENT_BEAT_ROUTE_24_JRTRAINER_M_SEAN, Route24JrTrainerM1BattleText, Route24JrTrainerM1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24AfterBattleText
	waitbutton
	closetext
	end
	
Route24LassF1Script:
	trainer LASS, EMILY, EVENT_BEAT_ROUTE_24_LASS_EMILY, Route24LassF1BattleText, Route24LassF1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24AfterBattleText
	waitbutton
	closetext
	end
	
Route24JrTrainerM2Script:
	trainer JRTRAINER_M, ALEX2, EVENT_BEAT_ROUTE_24_JRTRAINER_M_ALEX, Route24JrTrainerM2BattleText, Route24JrTrainerM2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24JrTrainerM2AfterBattleText
	waitbutton
	closetext
	end
	
Route24YoungsterScript:
	trainer YOUNGSTER, RYAN2, EVENT_BEAT_ROUTE_24_YOUNGSTER_RYAN, Route24YoungsterBattleText, Route24YoungsterEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24AfterBattleText
	waitbutton
	closetext
	end
	
Route24CooltrainerF2Script:
	trainer LASS, AMY, EVENT_BEAT_ROUTE_24_LASS_AMY, Route24LassF2BattleText, Route24LassF2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24AfterBattleText
	waitbutton
	closetext
	end
	
Route24BugCatcherScript:
	trainer BUG_CATCHER, JAKE2, EVENT_BEAT_ROUTE_24_BUG_CATCHER_JAKE, Route24BugCatcherBattleText, Route24BugCatcherEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24AfterBattleText
	waitbutton
	closetext
	end

Route24CooltrainerM1YouBeatOurContestText:
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!"
	done

Route24CooltrainerM1YouJustEarnedAPrizeText:
	text "You just earned a"
	line "fabulous prize!"
	prompt

Route24CooltrainerM1NoRoomText:
	text "You don't have"
	line "any room!"
	done

Route24CooltrainerM1JoinTeamRocketText:
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

Route24CooltrainerM1DefeatedText:
	text "Arrgh!"
	line "You are good!"
	prompt

Route24CooltrainerM1YouCouldBecomeATopLeaderText:
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done
	
Route24ReceivedNuggetText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route24JrTrainerM2BattleText:
	text "I saw your feat"
	line "from the grass!"
	done
	
Route24JrTrainerM2EndBattleText:
	text "I thought not!"
	prompt

Route24JrTrainerM2AfterBattleText:
	text "I hid because the"
	line "people on the"
	cont "bridge scared me!"
	done

Route24JrTrainerM1BattleText:
	text "OK! I'm No. 5!"
	line "I'll stomp you!"
	done

Route24JrTrainerM1EndBattleText:
	text "Whoa!"
	line "Too much!"
	prompt

Route24AfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24LassF1BattleText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

Route24LassF1EndBattleText:
	text "I lost too!"
	prompt

Route24YoungsterBattleText:
	text "Here's No. 3!"
	line "I won't be easy!"
	done

Route24YoungsterEndBattleText:
	text "Ow!"
	line "Stomped flat!"
	prompt

Route24LassF2BattleText:
	text "I'm second!"
	line "Now it's serious!"
	done

Route24LassF2EndBattleText:
	text "How could I lose?"
	prompt

Route24BugCatcherBattleText:
	text "This is NUGGET"
	line "BRIDGE! Beat us 5"
	cont "trainers and win"
	cont "a fabulous prize!"

	para "Think you got"
	line "what it takes?"
	done

Route24BugCatcherEndBattleText:
	text "Whoo!"
	line "Good stuff!"
	prompt

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  10,  15, SCENE_ROUTE_24_NOOP, Route24RocketScript

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, -1
	object_event 11, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, Route24JrTrainerM1Script, -1
	object_event 10, 22, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, Route24LassF1Script, -1
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, Route24JrTrainerM2Script, -1
	object_event 11, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, Route24YoungsterScript, -1
	object_event 10, 28, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, Route24CooltrainerF2Script, -1
	object_event 11, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, Route24BugCatcherScript, -1
