	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_OAKS_AIDE
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3
	const OAKSLAB_BLUE
	const OAKSLAB_POKE_BALL1
	const OAKSLAB_POKE_BALL2
	const OAKSLAB_POKE_BALL3
	
OakLabRivalScript:

OaksLab_MapScripts:
	def_scene_scripts
	scene_script OaksLabMeetOakScene, SCENE_OAKSLAB_MEET_OAK
	scene_script OaksLabNoop1Scene,   SCENE_OAKSLAB_CANT_LEAVE
	scene_script OaksLabNoop2Scene,   SCENE_OAKSLAB_NOOP
	scene_script OaksLabNoop4Scene,   SCENE_OAKSLAB_UNUSED
	scene_const SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS

	def_callbacks

OaksLabMeetOakScene:
	sdefer OaksLabWalkUpToOakScript
	end

OaksLabNoop1Scene:
	end

OaksLabNoop2Scene:
	end

OaksLabNoop3Scene:
	end

OaksLabNoop4Scene:
	end

OaksLabNoop5Scene:
	end

OaksLabWalkUpToOakScript:
	checkevent EVENT_OAK_APPEARED_IN_PALLET
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iftrue OakGivesPokemonScript
	
OakGivesPokemonScript:
	applymovement PLAYER, OaksLab_WalkUpToOakMovement
	opentext
	writetext OakText_Intro
	sjump .OakGivesPokemon

.OakGivesPokemon:	
	opentext
	writetext OakText_ChooseAPokemon
	waitbutton
	setscene SCENE_OAKSLAB_CANT_LEAVE
	closetext
	end

ProfOakScript:
	end

OakLabTryToLeaveScript:
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OakLabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse OakDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL1
	setevent EVENT_GOT_A_CHARMANDER_FROM_OAK
	writetext OakChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OakReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, OakDirectionsScript
	applymovement PLAYER, AfterCharmanderMovement
	sjump OakDirectionsScript

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse OakDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL2
	setevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	writetext OakChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OakReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5, BERRY
	closetext
	applymovement PLAYER, AfterSquirtleMovement
	sjump OakDirectionsScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse OakDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL3
	setevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	writetext OakChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OakReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5, BERRY
	closetext
	applymovement PLAYER, AfterBulbasaurMovement
	sjump OakDirectionsScript

OakDidntChooseStarterScript:
	writetext OakDidntChooseStarterText
	waitbutton
	closetext
	end

OakDirectionsScript:
	turnobject PLAYER, UP
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	writetext OaksLabOakYourPokemonCanFightText
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	setscene SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS
	setmapscene PALLET_TOWN, SCENE_PALLET_TOWN_NOOP
	end

LookAtOakPokeBallScript:
	opentext
	writetext OakPokeBallText
	waitbutton
	closetext
	end

OakJumpBackScript1:
	closetext
	readvar VAR_FACING
	ifequal DOWN, OakJumpDownScript
	ifequal UP, OakJumpUpScript
	ifequal LEFT, OakJumpLeftScript
	ifequal RIGHT, OakJumpRightScript
	end

OakJumpBackScript2:
	closetext
	readvar VAR_FACING
	ifequal DOWN, OakJumpUpScript
	ifequal UP, OakJumpDownScript
	ifequal LEFT, OakJumpRightScript
	ifequal RIGHT, OakJumpLeftScript
	end

OakJumpUpScript:
	applymovement OAKSLAB_OAK, OakJumpUpMovement
	opentext
	end

OakJumpDownScript:
	applymovement OAKSLAB_OAK, OakJumpDownMovement
	opentext
	end

OakJumpLeftScript:
	applymovement OAKSLAB_OAK, OakJumpLeftMovement
	opentext
	end

OakJumpRightScript:
	applymovement OAKSLAB_OAK, OakJumpRightMovement
	opentext
	end

OakOakAideScript_WalkBalls1:
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksRight1
	turnobject PLAYER, DOWN
	scall OakAideScript_GiveYouBalls
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksLeft1
	end

OakOakAideScript_WalkBalls2:
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksRight2
	turnobject PLAYER, DOWN
	scall OakAideScript_GiveYouBalls
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksLeft2
	end

OakAideScript_GiveYouBalls:
	opentext
	writetext OakAideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall OakAideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext OakAideText_ExplainBalls
	promptbutton
	itemnotify
	closetext
	setscene SCENE_OAKSLAB_NOOP
	end

OakAideScript_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end

OaksAideScript:
	end

OakAideScript_ExplainBalls:
	writetext OakAideText_ExplainBalls
	waitbutton
	closetext
	end

OaksLabTravelTip1:
	jumptext OaksLabTravelTip1Text

OaksLabTravelTip2:
	jumptext OaksLabTravelTip2Text

OaksLabTravelTip3:
	jumptext OaksLabTravelTip3Text

OaksLabTravelTip4:
	jumptext OaksLabTravelTip4Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript
	
OaksAssistant1Script:
	jumptextfaceplayer OaksAssistant1Text

OaksAssistant2Script:
	jumptextfaceplayer OaksAssistant2Text

OaksAssistant3Script:
	jumptextfaceplayer OaksAssistant3Text

OaksLab_WalkUpToOakMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLab_CantLeaveMovement:
	step UP
	step_end

OakAideWalksRight1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

OakAideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

OakAideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

OakAideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

OakJumpUpMovement:
	fix_facing
	step UP
	remove_fixed_facing
	step_end

OakJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

OakJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

OakJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

AfterCharmanderMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterSquirtleMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterBulbasaurMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

OakText_Intro:
	text "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done
	
OaksLabOakYourPokemonCanFightText:
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

OakText_ResearchAmbitions:
	text "When I announce my"
	line "findings, I'm sure"

	para "we'll delve a bit"
	line "deeper into the"

	para "many mysteries of"
	line "#MON."

	para "You can count on"
	line "it!"
	done

OakText_MissionFromMrPokemon:
	text "Hey, listen."

	para "I have an acquain-"
	line "tance called MR."
	cont "#MON."

	para "He keeps finding"
	line "weird things and"

	para "raving about his"
	line "discoveries."

	para "Anyway, I just got"
	line "an e-mail from him"

	para "saying that this"
	line "time it's real."

	para "It is intriguing,"
	line "but we're busy"

	para "with our #MON"
	line "research…"

	para "Wait!"

	para "I know!"

	para "<PLAY_G>, can you"
	line "go in our place?"
	done

OakText_ChooseAPokemon:
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done
	done

OakText_LetYourMonBattleIt:
	text "If a wild #MON"
	line "appears, let your"
	cont "#MON battle it!"
	done

OakLabWhereGoingText:
	text "OAK: Wait! Where"
	line "are you going?"
	done

TakeCharmanderText:
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

TakeSquirtleText:
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

TakeBulbasaurText:
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

OakDidntChooseStarterText:
	text "OAK: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

OakChoseStarterText:
	text "OAK: I think"
	line "that's a great"
	cont "#MON too!"
	done

OakReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OakDirectionsText3:
	text "<PLAY_G>, I'm"
	line "counting on you!"
	done

OakPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.OAK."
	done

OakAideText_AlwaysBusy:
	text "There are only two"
	line "of us, so we're"
	cont "always busy."
	done

OakAideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Use these on your"
	line "#DEX quest!"
	done

OakAideText_ExplainBalls:
	text "To add to your"
	line "#DEX, you have"
	cont "to catch #MON."

	para "Throw # BALLS"
	line "at wild #MON"
	cont "to get them."
	done
	
OaksAssistant1Text:
	text "The PROF's #MON"
	line "TALK radio program"

	para "isn't aired here"
	line "in KANTO."

	para "It's a shame--I'd"
	line "like to hear it."
	done

OaksAssistant2Text:
	text "Thanks to your"
	line "work on the #-"
	cont "DEX, the PROF's"

	para "research is coming"
	line "along great."
	done

OaksAssistant3Text:
	text "Don't tell anyone,"
	line "but PROF.OAK'S"

	para "#MON TALK isn't"
	line "a live broadcast."
	done

OaksLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 1:"

	para "Press START to"
	line "open the MENU."
	done

OaksLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 2:"

	para "Record your trip"
	line "with SAVE!"
	done

OaksLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 3:"

	para "Open your PACK and"
	line "press SELECT to"
	cont "move items."
	done

OaksLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

OaksLabTrashcanText:
	text "The wrapper from"
	line "the snack PROF.OAK"
	cont "ate is in there…"
	done

OaksLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, PALLET_TOWN, 3
	warp_event  4, 11, PALLET_TOWN, 3

	def_coord_events
	coord_event  4,  6, SCENE_OAKSLAB_CANT_LEAVE, OakLabTryToLeaveScript
	coord_event  5,  6, SCENE_OAKSLAB_CANT_LEAVE, OakLabTryToLeaveScript
	coord_event  4,  8, SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS, OakOakAideScript_WalkBalls1
	coord_event  5,  8, SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS, OakOakAideScript_WalkBalls2

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  1,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  2,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, OaksLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, OaksLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, OaksLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  3,  5, BGEVENT_DOWN, OaksLabPC

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfOakScript, -1
	object_event  0, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant1Script, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant2Script, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAideScript, EVENT_OAKS_AIDE_IN_LAB
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OakLabRivalScript, -1
	object_event  6,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_GOT_A_CHARMANDER_FROM_OAK
	object_event  7,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_GOT_A_SQUIRTLE_FROM_OAK
	object_event  8,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_GOT_A_BULBASAUR_FROM_OAK
