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
	scene_script OaksLabNoop3Scene,   SCENE_OAKSLAB_NOOP_2
	scene_script OaksLabParcelScene,  SCENE_OAKSLAB_PARCEL

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
	disappear OAKSLAB_BLUE
	end

OaksLabNoop3Scene:
	disappear OAKSLAB_OAK_WALK
	disappear OAKSLAB_BLUE
	end
	
OaksLabParcelScene:
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
	disappear OAKSLAB_OAK_WALK
	endcallback

OaksLabWalkUpToOakScript:
	applymovement OAKSLAB_OAK_WALK, OaksLab_OakWalkUpMovement
	disappear OAKSLAB_OAK_WALK
	turnobject OAKSLAB_BLUE, RIGHT
	applymovement PLAYER, OaksLab_WalkUpToOakMovement
	opentext
	turnobject OAKSLAB_BLUE, UP
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
	checkevent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	iftrue .Give5Pokeballs
	checkscene
	ifequal SCENE_OAKSLAB_TAKE_YOU_ON, OaksLabYourPokemonCanFightScript
	checkscene
	ifequal SCENE_OAKSLAB_NOOP, OaksLabOak1RaiseYourYoungPokemonScript
	checkscene
	ifequal SCENE_OAKSLAB_NOOP_2, OaksLabOak1PokemonAroundTheWorldScript
	waitbutton
	closetext
	turnobject OAKSLAB_OAK, DOWN
	end
	
.Give5Pokeballs
	checkevent EVENT_GOT_5_POKE_BALLS_FROM_OAK
	iftrue .AlreadyGotPokeBalls
	writetext OaksLabOak1ReceivedPokeballsText
	promptbutton
	giveitem POKE_BALL, 5
	writetext OaksLabPlayerReceivedPokeBallsText
	waitsfx
	playsound SFX_GET_ITEM1_1
	waitsfx
	writetext OaksLabGivePokeballsExplanationText
	waitbutton
	closetext
	setevent EVENT_GOT_5_POKE_BALLS_FROM_OAK
	end
	
.AlreadyGotPokeBalls
	writetext OaksLabOak1ComeSeeMeSometimesText
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
	
OaksLabOak1RaiseYourYoungPokemonScript:
	writetext OaksLabOak1RaiseYourYoungPokemonText
	waitbutton
	closetext
	end
	
OaksLabOak1PokemonAroundTheWorldScript:
	writetext OaksLabOak1PokemonAroundTheWorldText
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
	moveobject OAKSLAB_BLUE, 4, 7
	setscene SCENE_OAKSLAB_PARCEL
	writetext OaksLabOak1DeliverParcelText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	waitbutton
	takeitem OAKS_PARCEL
	setevent EVENT_OAK_GOT_PARCEL
	writetext OaksLabOak1ParcelThanksText
	waitbutton
	closetext
	appear OAKSLAB_BLUE
	playmusic MUSIC_MEET_RIVAL_ALT
	applymovement OAKSLAB_BLUE, BlueParcelWalkUpMovement
	special RestartMapMusic
	opentext
	writetext OaksLabRivalGrampsText
	waitbutton
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
	closetext
	changeblock 2, 1, $2E ; replace Pokedex tile
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	opentext
	writetext OaksLabOakThatWasMyDreamText
	waitbutton
	readvar VAR_FACING
	ifequal RIGHT, .KeepBlueUp
	ifequal UP, .TurnBlueRight
	
.TurnBlueRight
	turnobject OAKSLAB_BLUE, RIGHT
	writetext OaksLabRivalLeaveItAllToMeText
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	applymovement OAKSLAB_BLUE, RivalLeaveMovement
	disappear OAKSLAB_BLUE
	special RestartMapMusic
	setscene SCENE_OAKSLAB_NOOP_2
	setevent EVENT_GAMBLER_ASLEEP
	clearevent EVENT_GAMBLER_AWAKE
	setmapscene VIRIDIAN_MART, SCENE_VIRIDIANMART_NOOP
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIAN_CITY_NOOP
	setmapscene ROUTE_22, SCENE_ROUTE_22_RIVAL_1
	end
	
.KeepBlueUp
	turnobject PLAYER, DOWN
	writetext OaksLabRivalLeaveItAllToMeText
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	applymovement OAKSLAB_BLUE, RivalLeaveMovement
	disappear OAKSLAB_BLUE
	special RestartMapMusic
	setscene SCENE_OAKSLAB_NOOP_2
	setevent EVENT_GAMBLER_ASLEEP
	clearevent EVENT_GAMBLER_AWAKE
	setmapscene VIRIDIAN_MART, SCENE_VIRIDIANMART_NOOP
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIAN_CITY_NOOP
	setmapscene ROUTE_22, SCENE_ROUTE_22_RIVAL_1
	end
	
BlueParcelWalkUpMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end
	
OaksLabTryToLeaveScript:
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabOakDontGoAwayYetText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
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
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke CHARMANDER, 5
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesSquirtleMovement
	opentext
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL2
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	closetext
	readvar VAR_FACING
	ifequal RIGHT, OaksDirections
	sjump OaksDirections

SquirtlePokeBallScript:
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
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
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke SQUIRTLE, 5
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesBulbasaurMovement
	opentext
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL3
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	closetext
	sjump OaksDirections

BulbasaurPokeBallScript:
	checkevent EVENT_RIVAL_CHOSE_STARTER
	iftrue OaksLastPokemonScript
	checkevent EVENT_FOLLOWED_OAK_INTO_LAB
	iffalse OakNotAroundPokeBallsScript
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
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	givepoke BULBASAUR, 5
	closetext
	applymovement OAKSLAB_BLUE, RivalTakesCharmanderMovement
	opentext
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLabRivalIllTakeThisOneText
	waitbutton
	disappear OAKSLAB_POKE_BALL1
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
	checkevent EVENT_GOT_A_CHARMANDER_FROM_OAK
	iftrue RivalWalkFromSquirtleScript
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	iftrue RivalWalkFromBulbasaurScript
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	iftrue RivalWalkFromCharmanderScript

RivalWalkFromCharmanderScript:
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .RivalWalksFromCharmanderLeft
        ifequal 5, .RivalWalksFromCharmanderRight
        
.RivalWalksFromCharmanderLeft
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromCharmanderLeftMovement
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript

.RivalWalksFromCharmanderRight
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromCharmanderRightMovement
	turnobject OAKSLAB_BLUE, DOWN
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript
	
RivalWalksFromCharmanderLeftMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step DOWN
	step_end
	
RivalWalksFromCharmanderRightMovement:
	slow_step LEFT
	slow_step DOWN
	step_end
	
RivalWalkFromSquirtleScript:
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .RivalWalksFromSquirtleLeft
        ifequal 5, .RivalWalksFromSquirtleRight
        
.RivalWalksFromSquirtleLeft
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromSquirtleLeftMovement
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript

.RivalWalksFromSquirtleRight
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromSquirtleRightMovement
	turnobject OAKSLAB_BLUE, DOWN
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript
	
RivalWalksFromSquirtleLeftMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step DOWN
	step_end
	
RivalWalksFromSquirtleRightMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step DOWN
	step_end

RivalWalkFromBulbasaurScript: 
        readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .RivalWalksFromBulbasaurLeft
        ifequal 5, .RivalWalksFromBulbasaurRight
        
.RivalWalksFromBulbasaurLeft
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromBulbasaurLeftMovement
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript

.RivalWalksFromBulbasaurRight
	playmusic MUSIC_MEET_RIVAL
	turnobject PLAYER, UP
	turnobject OAKSLAB_BLUE, DOWN
	opentext
	writetext OaksLabRivalIllTakeYouOnText
	waitbutton
	closetext
	applymovement OAKSLAB_BLUE, RivalWalksFromBulbasaurRightMovement
	winlosstext OaksLabRivalIPickedTheWrongPokemonText, OaksLabRivalAmIGreatOrWhatText
	setlasttalked OAKSLAB_BLUE
	loadtrainer BLUE1, BLUE1_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump AfterBattleScript

RivalWalksFromBulbasaurLeftMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step DOWN
	step_end
	
RivalWalksFromBulbasaurRightMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step DOWN
	step_end

AfterBattleScript:
	opentext
	writetext OaksLabRivalSmellYouLaterText
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .RivalSmellYouLaterLeft
        ifequal 5, .RivalSmellYouLaterRight
	
.RivalSmellYouLaterLeft
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementLeft1
	turnobject PLAYER, RIGHT
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementLeft2
	turnobject PLAYER, DOWN
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementLeft3
	disappear OAKSLAB_BLUE
	special HealParty
	special RestartMapMusic
	setscene SCENE_OAKSLAB_NOOP
	setmapscene PALLET_TOWN, SCENE_PALLET_TOWN_NOOP
	end
	
.RivalSmellYouLaterRight
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementRight1
	turnobject PLAYER, LEFT
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementRight2
	turnobject PLAYER, DOWN
	applymovement OAKSLAB_BLUE, RivalSmellYouLaterMovementRight3
	disappear OAKSLAB_BLUE
	special HealParty
	special RestartMapMusic
	setscene SCENE_OAKSLAB_NOOP
	setmapscene PALLET_TOWN, SCENE_PALLET_TOWN_NOOP
	end
	
RivalSmellYouLaterMovementLeft1:
	slow_step RIGHT
	slow_step DOWN
	step_end
	
RivalSmellYouLaterMovementLeft2:
	slow_step DOWN
	step_end
	
RivalSmellYouLaterMovementLeft3:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end
	
RivalSmellYouLaterMovementRight1:
	slow_step LEFT
	slow_step DOWN
	step_end
	
RivalSmellYouLaterMovementRight2:
	slow_step DOWN
	step_end
	
RivalSmellYouLaterMovementRight3:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end	
	
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
	done

OaksLabPlayerReceivedPokeBallsText:
	text "<PLAYER> got 5"
	line "POKé BALLs!"
	done

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
	line "a @"
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
	text "<RIVAL>: WHAT?"
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
	
RivalLeaveMovement:
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
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Calling all"
	line "#MON trainers!"

	para "The elite trainers"
	line "of #MON LEAGUE"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#MON and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#MON LEAGUE HQ"
	line "INDIGO PLATEAU"

	para "PS: PROF.OAK,"
	line "please visit us!"
	cont "..."
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
