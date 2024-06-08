	object_const_def
	const BILLSHOUSE_BILL_POKEMON
	const BILLSHOUSE_BILL1
	const BILLSHOUSE_BILL2

BillsHouse_MapScripts:
	def_scene_scripts
	scene_script BillsHousePokemonScene,   SCENE_BILLS_HOUSE_POKEMON
	scene_script BillsHouseCellScene,      SCENE_BILLS_HOUSE_CELL
	scene_script BillsHouseHelpedScene,    SCENE_BILLS_HOUSE_JUST_HELPED
	scene_script BillsHouseNoopScene,      SCENE_BILLS_HOUSE_NOOP
	def_callbacks
	callback MAPCALLBACK_OBJECTS, BillsHouseBillsCallback

BillsHousePokemonScene:
	disappear BILLSHOUSE_BILL1
	disappear BILLSHOUSE_BILL2
       end
BillsHouseCellScene:
       end
BillsHouseHelpedScene:
	disappear BILLSHOUSE_BILL_POKEMON
	disappear BILLSHOUSE_BILL2
       end
BillsHouseNoopScene:
	appear BILLSHOUSE_BILL2
       end
BillsHouseBillsCallback:
	checkscene
	ifequal SCENE_BILLS_HOUSE_JUST_HELPED, .HelpedBill
	ifequal SCENE_BILLS_HOUSE_NOOP, .HideMon
	endcallback
.HelpedBill:
	moveobject BILLSHOUSE_BILL1, 4, 4
	endcallback
.HideMon:
	moveobject BILLSHOUSE_BILL_POKEMON, 40, 40
	moveobject BILLSHOUSE_BILL1, 40, 40
	endcallback

BillPokemon:
	faceplayer
	opentext
	writetext BillImNotAPokemonText
	yesorno
	iftrue .accepted
	writetext BillNoYouGottaHelpText
	readvar VAR_PLAYERGENDER
	ifequal FEMALE, .HelpMeBeautiful
.HelpMeChief:
	writetext BillWhatDoYouSayChief
	sjump .accepted
.HelpMeBeautiful:
	writetext BillWhatDoYouSayBeautiful
.accepted:
	writetext BillUseSeparationSystemText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal DOWN, .WalkAroundPlayer
	applymovement BILLSHOUSE_BILL_POKEMON, BillPokemonWalkUp
	sjump .backtomain
.WalkAroundPlayer
	applymovement BILLSHOUSE_BILL_POKEMON, BillPokemonWalkAroundPlayer	
.backtomain
	disappear BILLSHOUSE_BILL_POKEMON
	setscene SCENE_BILLS_HOUSE_CELL
	setevent EVENT_BILL_SAID_USE_CELL_SEPARATOR
	end

BillPokemonWalkAroundPlayer:
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step LEFT
	slow_step UP
	step_end

BillPokemonWalkUp:
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

BillThanks:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET
	iftrue .ExplainSSAnne
	readvar VAR_PLAYERGENDER
	ifequal FEMALE, .ThanksLady
	writetext BillsHouseBillThankYouText
	sjump .backtomain
.ThanksLady
	writetext BillsHouseBillThankYouTextFemale
	sjump .backtomain
.backtomain
	writetext BillsHouseBillThankYouText2
	getitemname STRING_BUFFER_3, S_S_TICKET
	giveitem S_S_TICKET
	iffalse .NoRoom
	writetext SSTicketReceivedText
	playsound SFX_GET_KEY_ITEM_1
	setevent EVENT_GOT_SS_TICKET
	setevent EVENT_MET_BILL
	setevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	clearevent EVENT_BILL_SAID_USE_CELL_SEPARATOR
	waitsfx
	setmapscene CERULEAN_CITY, SCENE_CERULEAN_CITY_AFTER_BILL
.ExplainSSAnne:
	writetext BillWhyDontYouGoInsteadOfMeText
	waitbutton
	closetext
	end
.NoRoom
	writetext SSTicketNoRoomText
	waitbutton
	closetext
	end

BillAfterHelp:
	faceplayer
	opentext
	writetext BillCheckOutMyRarePokemonText
	waitbutton
	closetext
	end

BillsHousePCScript:
	opentext
	checkscene
	ifequal SCENE_BILLS_HOUSE_CELL, .initiated
.monitor
	writetext BillsHouseMonitorText
	sjump .end
.initiated
	writetext BillsHouseInitiatedText
	playmusic MUSIC_NONE
	pause 8
	playsound SFX_SWITCH_1
	waitsfx
	pause 30
	closetext
	pause 16
	playsound SFX_TINK_1
	waitsfx
	pause 40
	playsound SFX_SHRINK_1
	waitsfx
	pause 24
	playsound SFX_TINK_1
	waitsfx
	pause 16
	playsound SFX_GET_ITEM1_1
	waitsfx
	special RestartMapMusic
	setscene SCENE_BILLS_HOUSE_JUST_HELPED	
	appear BILLSHOUSE_BILL1
	applymovement BILLSHOUSE_BILL1, BillExitMachine
	end
.end
	waitbutton
	closetext
	end

BillExitMachine:
		slow_step DOWN
		slow_step RIGHT
		slow_step RIGHT
		slow_step RIGHT
		slow_step DOWN
		step_end

BillsHouseCantLeave:
	opentext
	writetext BillPleaseStayText
	waitbutton
	closetext
	applymovement PLAYER, BillsHouse_CantLeaveMovement
	end

BillsHouse_CantLeaveMovement:
	step UP
	step_end
	
BillsHouseMonitorText:
	text "TELEPORTER is"
	line "displayed on the"
	cont "PC monitor."
	done
	
BillPleaseStayText:
	text "BILL: Wait!"
	line "Don't leave!"
	done
	
BillsHouseInitiatedText:
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!@"
	text_end

BillImNotAPokemonText:
	text "Hiya! I'm a"
	line "#MON..."
	cont "...No I'm not!"

	para "Call me BILL!"
	line "I'm a true blue"
	cont "#MANIAC! Hey!"
	cont "What's with that"
	cont "skeptical look?"

	para "I'm not joshing"
	line "you, I screwed up"
	cont "an experiment and"
	cont "got combined with"
	cont "a #MON!"

	para "So, how about it?"
	line "Help me out here!"
	done
	
BillNoYouGottaHelpText:
	text "No!? Come on, you"
	line "gotta help a guy"
	cont "in deep trouble!"
	prompt
	
BillWhatDoYouSayChief:
	text "What do you say,"
	line "chief? Please?"
	cont "OK? All right!"
	prompt

BillWhatDoYouSayBeautiful:
	text "What do you say,"
	line "beautiful?"
	para "Please? OK?"
	line "All right!"
	prompt

BillUseSeparationSystemText:
	text "When I'm in the"
	line "TELEPORTER, go to"
	cont "my PC and run the"
	cont "Cell Separation"
	cont "System!"
	done
	
BillsGrandpaIntroText:
	text "Hm? You know BILL?"
	line "He's my grandson."

	para "He's in JOHTO. He"
	line "does something"

	para "with PCs, so I'm"
	line "house-sitting."
	done
	
BillsHouseBillThankYouText:
	text "BILL: Yeehah!"
	line "Thanks, bud! I"
	cont "owe you one!"
	prompt
	
BillsHouseBillThankYouTextFemale:
	text "BILL: Yeehah!"
	line "Thanks, lady!"
	cont "I owe you one!"
	prompt	
	
BillsHouseBillThankYouText2:
	text "So, did you come"
	line "to see my #MON"
	cont "collection?"
	cont "You didn't?"
	cont "That's a bummer."

	para "I've got to thank"
	line "you... Oh here,"
	cont "maybe this'll do."
	prompt

SSTicketReceivedText:
	text "<PLAYER> received"
	line "an @"
	text_ram wStringBuffer3
	text "!@"
	text_end

SSTicketNoRoomText:
	text "You've got too"
	line "much stuff, bud!"
	done

BillWhyDontYouGoInsteadOfMeText:
	text "That cruise ship,"
	line "S.S.ANNE, is in"
	cont "VERMILION CITY."
	cont "Its passengers"
	cont "are all trainers!"

	para "They invited me"
	line "to their party,"
	cont "but I can't stand"
	cont "fancy do's. Why"
	cont "don't you go"
	cont "instead of me?"
	done

BillCheckOutMyRarePokemonText:
	text "BILL: Look, bud,"
	line "just check out"
	cont "some of my rare"
	cont "#MON on my PC!"
	done


BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events
	coord_event  2,  7, SCENE_BILLS_HOUSE_CELL, BillsHouseCantLeave
	coord_event  3,  7, SCENE_BILLS_HOUSE_CELL, BillsHouseCantLeave	
	def_bg_events
	bg_event  1,  4, BGEVENT_UP, BillsHousePCScript

	def_object_events
	object_event  6,  5, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillPokemon, -1
	object_event  1,  2, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillThanks, EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
	object_event  6,  5, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillAfterHelp, EVENT_BILL_SAID_USE_CELL_SEPARATOR
