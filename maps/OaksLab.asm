	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_OAK_WALK
	const OAKSLAB_GIRL
	const OAKSLAB_OAKS_AIDE
	const OAKSLAB_SCIENTIST
	const OAKSLAB_BLUE
	const OAKSLAB_POKE_BALL1
	const OAKSLAB_POKE_BALL2
	const OAKSLAB_POKE_BALL3

OaksLab_MapScripts:
	def_scene_scripts
	scene_script OaksLabOakNotAroundScene, SCENE_OAKSLAB_OAK_NOT_AROUND
	scene_script OaksLabWalkUpScene,  SCENE_OAKSLAB_WALK_UP
	scene_script OaksLabNoop1Scene,   SCENE_OAKSLAB_CANT_LEAVE
	scene_script OaksLabTakeYouOnScene, SCENE_OAKSLAB_TAKE_YOU_ON
	scene_script OaksLabNoop2Scene,   SCENE_OAKSLAB_NOOP
	scene_script OaksLabNoop3Scene,   SCENE_OAKSLAB_UNUSED
	scene_const SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS

	def_callbacks
	callback MAPCALLBACK_TILES, OaksLabPokeDexCallback
	callback MAPCALLBACK_OBJECTS, OaksLabOakCallback

OaksLabOakNotAroundScene:
	disappear OAKSLAB_OAK
	disappear OAKSLAB_OAK_WALK
	end
	
OaksLabWalkUpScene:
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iftrue OaksLabWalkUpToOakScript
	end

OaksLabNoop1Scene:
	disappear OAKSLAB_OAK_WALK
	end
	
OaksLabTakeYouOnScene:
	end

OaksLabNoop2Scene:
	disappear OAKSLAB_OAK_WALK
	end

OaksLabNoop3Scene:
	checkevent EVENT_GOT_POKEDEX
	iftrue .HideBlue
	disappear OAKSLAB_OAK_WALK
.HideBlue
	disappear OAKSLAB_BLUE
	end
	
OaksLabPokeDexCallback:
	checkevent EVENT_GOT_POKEDEX
	iffalse .DontHidePokeDex
	changeblock 2, 1, $2E ; replace pokedex tile
.DontHidePokeDex:
	endcallback
	
OaksLabOakCallback:
	checkscene
	ifnotequal SCENE_OAKSLAB_WALK_UP, .HideOak
	endcallback

.HideOak:
	moveobject OAKSLAB_OAK_WALK, 5, 2
	endcallback

OaksLabWalkUpToOakScript:
	applymovement OAKSLAB_OAK_WALK, OaksLab_OakWalkUpMovement
	disappear OAKSLAB_OAK_WALK
	applymovement PLAYER, OaksLab_WalkUpToOakMovement
	turnobject OAKSLAB_BLUE, UP
	opentext
	writetext OaksLabRivalFedUpWithWaitingText
	waitbutton
	writetext OaksLabOakChooseMonText
	waitbutton
	writetext OaksLabRivalWhatAboutMeText
	waitbutton
	writetext OaksLabOakBePatientText
	waitbutton
	setscene SCENE_OAKSLAB_CANT_LEAVE
	closetext
	end

ProfOakScript:
	faceplayer
	opentext
	checkitem OAKS_PARCEL
	iftrue OaksLabParcelScript
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iffalse WhichMonYouWantScript
	iftrue OaksLabYourPokemonCanFightScript
	waitbutton
	closetext
	end
	
WhichMonYouWantScript:
	writetext OaksLabOak1WhichPokemonDoYouWantText
	waitbutton
	closetext
	end
	
OaksAideScript:
	faceplayer
	opentext
	writetext OaksLabScientistText
	promptbutton
	closetext
	end
	
OaksLabGirlScript:
	faceplayer
	opentext
	writetext OaksLabGirlText
	waitbutton
	closetext
	end
	
OaksLabRivalScript:
	faceplayer
	opentext
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse GrampsIsNotAroundScript
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLabMineLooksStrongerScript
	checkscene SCENE_OAKSLAB_CANT_LEAVE
	iftrue OaksLabRivalGoAheadAndChooseScript
	waitbutton
	closetext
	end
	
OaksLabMineLooksStrongerScript:
	writetext OaksLabRivalMyPokemonLooksStrongerText
	waitbutton
	closetext
	end
	
GrampsIsNotAroundScript:
	writetext OaksLabRivalGrampsIsntAroundText
	waitbutton
	closetext
	end
	
OaksLabRivalGoAheadAndChooseScript:
	writetext OaksLabRivalGoAheadAndChooseText
	waitbutton
	closetext
	end
	
OaksLabYourPokemonCanFightScript:
	writetext OaksLabOak1YourPokemonCanFightText
	waitbutton
	closetext
	end
	
OaksLabPokeDexScript:
	checkevent EVENT_OAK_GOT_PARCEL
	iffalse .PokeDexText
	end
	
.PokeDexText
	jumptext OaksLabPokedexText
	
OaksLabParcelScript:
	writetext OaksLabOak1DeliverParcelText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	waitbutton
	takeitem OAKS_PARCEL
	setevent EVENT_OAK_GOT_PARCEL
	writetext OaksLabOak1ParcelThanksText
	waitbutton
	pause 15
	writetext OaksLabRivalGrampsText
	waitbutton
	turnobject OAKSLAB_BLUE, UP
	writetext OaksLabRivalWhatDidYouCallMeForText
	waitbutton
	writetext OaksLabOakIHaveARequestText
	waitbutton
	writetext OaksLabOakMyInventionPokedexText
	waitbutton
	waitsfx
	writetext OaksLabOakGotPokedexText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	waitbutton
	closetext
	changeblock 2, 1, $2E ; replace Pokedex tile
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	opentext
	writetext OaksLabOakThatWasMyDreamText
	waitbutton
	turnobject PLAYER, LEFT
	turnobject OAKSLAB_BLUE, RIGHT
	writetext OaksLabRivalLeaveItAllToMeText
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, DOWN
	applymovement OAKSLAB_BLUE, Rival_LeaveMovement
	disappear OAKSLAB_BLUE
	musicfadeout MUSIC_OAKS_LAB, 8
	setscene SCENE_OAKSLAB_UNUSED
	setevent EVENT_GAMBLER_ASLEEP
	setevent EVENT_GAMBLER_GIRL_BLOCKING
	clearevent EVENT_GAMBLER_AWAKE
	setmapscene VIRIDIAN_MART, SCENE_VIRIDIANMART_NOOP
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIAN_CITY_NOOP
	end
	
OaksLabTryToLeaveScript:
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabOakDontGoAwayYetText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	reanchormap
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext OaksLabYouWantCharmanderText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL1
	setevent EVENT_GOT_A_CHARMANDER_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke CHARMANDER, 5, BERRY
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesSquirtleMovement
	pause 15
	disappear OAKSLAB_POKE_BALL2
	opentext
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	closetext
	readvar VAR_FACING
	ifequal RIGHT, OaksDirections
	sjump OaksDirections

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	reanchormap
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext OaksLabYouWantSquirtleText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL2
	setevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke SQUIRTLE, 5, BERRY
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesBulbasaurMovement
	pause 15
	disappear OAKSLAB_POKE_BALL3
	opentext
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	closetext
	sjump OaksDirections

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookAtOakPokeBallScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	reanchormap
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext OaksLabYouWantBulbasaurText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL3
	setevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke BULBASAUR, 5, BERRY
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesSquirtleMovement
	pause 15
	disappear OAKSLAB_POKE_BALL2
	opentext
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	closetext
	sjump OaksDirections

OaksLabDidntChooseStarterScript:
	writetext OaksLabDidntChooseStarterText
	waitbutton
	closetext
	end

LookAtOakPokeBallScript:
	opentext
	writetext OakPokeBallText
	waitbutton
	closetext
	end
	
OakNotAroundPokeBallsScript:
	opentext
	writetext OaksLabThoseArePokeBallsText
	waitbutton
	closetext
	end
	
RivalTakesCharmanderMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	turn_head UP
	step_end
	
RivalTakesSquirtleMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end
	
RivalTakesBulbasaurMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end
	
OaksDirections:
	setevent EVENT_RIVAL_CHOSE_STARTER
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	setscene SCENE_OAKSLAB_TAKE_YOU_ON
	end
	
RivalBattleScript:
	playmusic MUSIC_MEET_RIVAL
	applymovement OAKSLAB_BLUE, RivalBattleMovement
	turnobject PLAYER, UP
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	iftrue .Squirtle
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	iftrue .Bulbasaur
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Squirtle:
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Bulbasaur:
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	opentext
	writetext OaksLabRivalIPickedTheWrongPokemonText
	waitbutton
	closetext
	setscene SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS
	setmapscene PALLET_TOWN, SCENE_PALLET_TOWN_NOOP
	end
	
.AfterYourDefeat:
	opentext
	writetext OaksLabRivalAmIGreatOrWhatText
	waitbutton
	closetext
	setscene SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS
	setmapscene PALLET_TOWN, SCENE_PALLET_TOWN_NOOP
	end

RivalBattleMovement:
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

OakAideScript_WalkBalls1:
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksRight1
	turnobject PLAYER, DOWN
	scall OakAideScript_GiveYouBalls
	applymovement OAKSLAB_OAKS_AIDE, OakAideWalksLeft1
	end

OakAideScript_WalkBalls2:
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

OakAideScript_ExplainBalls:
	writetext OakAideText_ExplainBalls
	waitbutton
	closetext
	end
	
OaksLastPokemonScript:
	opentext
	writetext OaksLabLastMonText
	waitbutton
	closetext
	end
	
OaksLabRivalGrampsIsntAroundText:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

OaksLabRivalGoAheadAndChooseText:
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

OaksLabRivalMyPokemonLooksStrongerText:
	text "<RIVAL>: My"
	line "#MON looks a"
	cont "lot stronger."
	done

OaksLabThoseArePokeBallsText:
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
	done

OaksLabYouWantCharmanderText:
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

OaksLabYouWantSquirtleText:
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

OaksLabYouWantBulbasaurText:
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

OaksLabMonEnergeticText:
	text "This #MON is"
	line "really energetic!"
	prompt

OaksLabReceivedMonText:
	text "<PLAYER> received"
	line "a @"
	text_ram wcd6d
	text "!@"
	done

OaksLabLastMonText:
	text "That's PROF.OAK's"
	line "last #MON!"
	done

OaksLabOak1WhichPokemonDoYouWantText:
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

OaksLabOak1YourPokemonCanFightText:
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

OaksLabOak1RaiseYourYoungPokemonText:
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

OaksLabOak1DeliverParcelText:
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL.@"
	text_end

OaksLabOak1ParcelThanksText:
	text "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

OaksLabOak1PokemonAroundTheWorldText:
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

OaksLabOak1ReceivedPokeballsText:
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> got 5"
	line "# BALLs!@"
	text_end

OaksLabGivePokeballsExplanationText:
	text "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and try"
	line "to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

OaksLabOak1ComeSeeMeSometimesText:
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

OaksLabOak1HowIsYourPokedexComingText:
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

OaksLabOak2Text:
	text "?"
	done

OaksLabGirlText:
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLabRivalFedUpWithWaitingText:
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLabOakChooseMonText:
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

OaksLabRivalWhatAboutMeText:
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OaksLabOakBePatientText:
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OaksLabOakDontGoAwayYetText:
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

OaksLabRivalIllTakeThisOneText:
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLabRivalReceivedMonText:
	text "<RIVAL> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OaksLabRivalIllTakeYouOnText:
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabRivalIPickedTheWrongPokemonText:
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	prompt

OaksLabRivalAmIGreatOrWhatText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

OaksLabRivalSmellYouLaterText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLabRivalGrampsText:
	text "<RIVAL>: Gramps!"
	done

OaksLabRivalWhatDidYouCallMeForText:
	text "<RIVAL>: What did"
	line "you call me for?"
	done

OaksLabOakIHaveARequestText:
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."
	done

OaksLabOakMyInventionPokedexText:
	text "On the desk there"
	line "is my invention,"
	cont "#DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

OaksLabOakGotPokedexText:
	text "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#DEX from OAK!@"
	text_end

OaksLabOakThatWasMyDreamText:
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

OaksLabRivalLeaveItAllToMeText:
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

OaksLabScientistText:
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

OaksLabTravelTip1:
	jumptext OaksLabTravelTip1Text

OaksLabTravelTip2:
	jumptext OaksLabTravelTip2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText

OaksLabBookshelf:
	jumpstd PictureBookshelfScript
	
OaksLab_OakWalkUpMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end
	
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
	
Rival_LeaveMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

OaksLab_CantLeaveMovement:
	step UP
	step_end

OakAideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

OakAideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
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
	big_step UP
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

OaksLab_OakToDefaultPositionMovement1:
	step UP
	step_end

OaksLab_OakToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
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

OaksLabDidntChooseStarterText:
	text "OAK: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

OaksLabReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OakPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.OAK."
	done
	
OaksLabPokedexText:
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
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

OaksLabTravelTip1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabTravelTip2Text:
	text "Hold 'B'"
	line "to Run!"
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
	coord_event  4,  6, SCENE_OAKSLAB_CANT_LEAVE, OaksLabTryToLeaveScript
	coord_event  5,  6, SCENE_OAKSLAB_CANT_LEAVE, OaksLabTryToLeaveScript
	coord_event  4,  6, SCENE_OAKSLAB_TAKE_YOU_ON, RivalBattleScript
	coord_event  5,  6, SCENE_OAKSLAB_TAKE_YOU_ON, RivalBattleScript
	coord_event  4,  9, SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS, OakAideScript_WalkBalls1
	coord_event  5,  9, SCENE_OAKSLAB_AIDE_GIVES_POKE_BALLS, OakAideScript_WalkBalls2

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  4,  0, BGEVENT_READ, OaksLabTravelTip1
	bg_event  5,  0, BGEVENT_READ, OaksLabTravelTip2
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC
	bg_event  2,  1, BGEVENT_READ, OaksLabPokeDexScript
	bg_event  3,  1, BGEVENT_READ, OaksLabPokeDexScript

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfOakScript, -1
	object_event  5, 10, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabWalkUpToOakScript, -1
	object_event  1,  9, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OaksLabGirlScript, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAideScript, EVENT_OAKS_AIDE_IN_LAB
	object_event  8, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAideScript, -1
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabRivalScript, -1
	object_event  6,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_OAKS_LAB
	object_event  7,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_OAKS_LAB
	object_event  8,  3, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_OAKS_LAB
