DEF PEWTER_MUSEUM_TICKET_PRICE EQU 50

	object_const_def
	const PEWTERMUSEUM_SCIENTIST1_CASHIER
	const PEWTERMUSEUM_GAMBLER
	const PEWTERMUSEUM_SCIENTIST2
	const PEWTERMUSEUM_SCIENTIST3
	const PEWTERMUSEUM_OLD_AMBER

PewterMuseum1F_MapScripts:
	def_scene_scripts
	scene_script PewterMuseum1FNoop, PEWTER_MUSEUM_1F_NOOP_SCENE
	scene_script PewterMuseum1FFreeToLook, PEWTER_MUSEUM_FREE_TO_LOOK_AROUND_SCENE

	def_callbacks
	
PewterMuseum1FNoop:
	end
	
PewterMuseum1FFreeToLook:
	end
	
PewterMuseum1FTicketScript:
	checkevent EVENT_BOUGHT_MUSEUM_TICKET
	iftrue .TimeToLook
	readvar VAR_FACING
	ifequal LEFT, Museum1FCantSneakInScript
	opentext
	writetext Museum1FScientist1WouldYouLikeToComeInText
	special PlaceMoneyTopRight
	yesorno
	iffalse .ComeAgain
	checkmoney YOUR_MONEY, PEWTER_MUSEUM_TICKET_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, PEWTER_MUSEUM_TICKET_PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_PURCHASE_1
	waitsfx
	writetext Museum1FScientist1ThankYouText
	promptbutton
	closetext
	setevent EVENT_BOUGHT_MUSEUM_TICKET
	setscene PEWTER_MUSEUM_FREE_TO_LOOK_AROUND_SCENE
	end
	
.TimeToLook
	opentext
	writetext Museum1FScientist1TakePlentyOfTimeText
	waitbutton
	closetext
	end
	
.ComeAgain
	opentext
	writetext Museum1FScientist1ComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, StepDownMovement
	end
	
.NotEnoughMoney
	opentext
	writetext Museum1FScientist1DontHaveEnoughMoneyText
	waitbutton
	closetext
	applymovement PLAYER, StepDownMovement
	end
	
StepDownMovement:
	step DOWN
	step_end
	
Museum1FScientist2Script:
	end
	
Museum1FScientist3Script:
	end
	
Museum1FCantSneakInScript:
	faceplayer
	opentext
	yesorno
	iffalse .ExplainAmber
	writetext Museum1FScientist1DoYouKnowWhatAmberIsText
	waitbutton
	closetext
	end
	
.ExplainAmber
	opentext
	writetext Museum1FScientist1AmberIsFossilizedTreeSapText
	waitbutton
	closetext
	end
	
Museum1FOldAmberScript:
	jumptext Museum1FOldAmberText
	
Museum1FScientist2TakeThisToAPokemonLabScript:
	faceplayer
	opentext
	writetext Museum1FScientist2TakeThisToAPokemonLabText
	waitbutton
	closetext
	
Museum1FOneMagnificientFossilScript:
	faceplayer
	opentext
	writetext Museum1FGamblerText
	waitbutton
	closetext
	
Museum1FScientist1ComeAgainText:
	text "Come again!"
	done

Museum1FScientist1WouldYouLikeToComeInText:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

Museum1FScientist1ThankYouText:
	text "Right, ¥50!"
	line "Thank you!"
	done

Museum1FScientist1DontHaveEnoughMoneyText:
	text "You don't have"
	line "enough money."
	prompt

Museum1FScientist1DoYouKnowWhatAmberIsText:
	text "You can't sneak"
	line "in the back way!"

	para "Oh, whatever!"
	line "Do you know what"
	cont "AMBER is?"
	done

Museum1FScientist1TheresALabSomewhereText:
	text "There's a lab"
	line "somewhere trying"
	cont "to resurrect"
	cont "ancient #MON"
	cont "from AMBER."
	done

Museum1FScientist1AmberIsFossilizedTreeSapText:
	text "AMBER is fossil-"
	line "ized tree sap."
	done

Museum1FScientist1GoToOtherSideText:
	text "Please go to the"
	line "other side!"
	done

Museum1FScientist1TakePlentyOfTimeText:
	text "Take plenty of"
	line "time to look!"
	done

Museum1FGamblerText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1FScientist2TakeThisToAPokemonLabText:
	text "Ssh! I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA!"

	para "It would be great"
	line "if #MON could"
	cont "be resurrected"
	cont "from it!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So I have a favor"
	line "to ask!"

	para "Take this to a"
	line "#MON LAB and"
	cont "get it examined!"
	prompt

Museum1FScientist2ReceivedOldAmberText:
	text "<PLAYER> received"
	line "OLD AMBER!@"
	done

Museum1FScientist2GetTheOldAmberCheckText:
	text "Ssh! Get the OLD"
	line "AMBER checked!"
	done

Museum1FScientist2YouDontHaveSpaceText:
	text "You don't have"
	line "space for this!"
	done

Museum1FScientist3Text:
	text "We are proud of 2"
	line "fossils of very"
	cont "rare, prehistoric"
	cont "#MON!"
	done

Museum1FOldAmberText:
	text "The AMBER is"
	line "clear and gold!"
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 1
	warp_event 11,  7, PEWTER_CITY, 1
	warp_event 16,  7, PEWTER_CITY, 2
	warp_event 17,  7, PEWTER_CITY, 2
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1


	def_coord_events
	coord_event  9, 4, PEWTER_MUSEUM_1F_NOOP_SCENE, PewterMuseum1FTicketScript
	coord_event 10, 4, PEWTER_MUSEUM_1F_NOOP_SCENE, PewterMuseum1FTicketScript

	def_bg_events

	def_object_events
	object_event  12, 4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FTicketScript, -1
	object_event  1,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FOneMagnificientFossilScript, -1
	object_event  15, 2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FScientist2Script, -1
	object_event  17, 4, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FScientist3Script, -1
	object_event  16, 2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FOldAmberScript, -1
