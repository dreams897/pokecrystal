	object_const_def
	const VIRIDIANCITY_GAMBLER1
	const VIRIDIANCITY_GAMBLER2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_GIRL
	const VIRIDIANCITY_GAMBLER_ASLEEP
	const VIRIDIANCITY_YOUNGSTER
	const VIRIDIANCITY_YOUNGSTER2
	const VIRIDIANCITY_HIDDEN_POTION

ViridianCity_MapScripts:
	def_scene_scripts
	scene_script ViridianCityDrunkOldManScene,   SCENE_VIRIDIAN_CITY_CANT_PASS
	scene_script ViridianCityNoopScene, SCENE_VIRIDIAN_CITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback
	
ViridianCityNoop1Scene:
	end
	
ViridianCityDrunkOldManScene:
	clearevent EVENT_GAMBLER_GIRL_BLOCKING
	clearevent EVENT_GAMBLER_ASLEEP
	end

ViridianCityNoopScene:
	
	end

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback
	
ViridianCityDrunkOldManScript1:
	opentext
	writetext ViridianCityDrunkOldManCantPassText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_TurnDownMovement1
	end
	
ViridianCityDrunkOldManScript2:
	opentext
	writetext ViridianCityDrunkOldManCantPassText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_TurnDownMovement1
	end
	
ViridianCity_TurnDownMovement1:
	turn_head DOWN
	step DOWN
	step_end
	
ViridianCity_TurnDownMovement2:
	turn_head DOWN
	jump_step DOWN
	step_end
	
ViridianCityGirlScript:
	faceplayer
	opentext
	writetext ViridianCityGirlDontPassOutText
	waitbutton
	closetext
	turnobject VIRIDIANCITY_GIRL, RIGHT
	end

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .BlueReturned
	writetext ViridianCityGambler1GymAlwaysClosedText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianCityGambler1GymLeaderReturnedText
	waitbutton
	closetext
	end
	
CatchingTutorialOldManScript:
	faceplayer
	opentext
	writetext ViridianCityOldManWasPrettyDrunkText
	yesorno
	iftrue .Declined
	writetext ViridianCityOldManKnowHowToCatchPokemonText
	waitbutton
	closetext
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext ViridianCityOldManYouNeedToWeakenTheTargetText
	waitbutton
	closetext
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

.Declined:
	writetext ViridianCityOldManTimeIsMoneyText
	waitbutton
	closetext
	end
	
ViridianGymLockedDoorScript:
	turnobject PLAYER, UP
	opentext
	writetext ViridianCityGymLockedText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_TurnDownMovement2
	end
	
	
ViridianCityYoungster2Script:
	faceplayer
	opentext
	writetext ViridianCityYoungster2YouWantToKnowAboutText
	yesorno
	iffalse .no
	writetext ViridianCityYoungster2CaterpieAndWeedleDescriptionText
	waitbutton
	closetext
	end

.no:
	writetext ViridianCityYoungster2OkThenText
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityFisherYouCanHaveThisText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityFisherTM42ExplanationText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungster1Text

ViridianCitySign:
	jumptext ViridianCitySignText
	
ViridianCityTrainerTips1Sign:
	jumptext ViridianCityTrainerTips1Text
	
ViridianCityTrainerTips2Sign:
	jumptext ViridianCityTrainerTips2Text

ViridianGymSign:
	jumptext ViridianCityGymSignText

TrainerHouseSign:
	jumptext TrainerHouseSignText

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript
	
ViridianCityHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_CITY_HIDDEN_POTION

TrainerHouseSignText:
	text "TRAINER HOUSE"

	para "The Club for Top"
	line "Trainer Battles"
	done

ViridianCityYoungster1Text:
	text "Those # BALLs"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCityGambler1GymAlwaysClosedText:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

ViridianCityGambler1GymLeaderReturnedText:
	text "VIRIDIAN GYM's"
	line "LEADER returned!"
	done

ViridianCityYoungster2YouWantToKnowAboutText:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#MON?"
	done

ViridianCityYoungster2OkThenText:
	text "Oh, OK then!"
	done

ViridianCityYoungster2CaterpieAndWeedleDescriptionText:
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCityGirlDontPassOutText:
	text "Oh Grandpa! Don't"
	line "pass out here!"
	cont "My goodness..."
	cont "Sorry, but we'll"
	cont "have to wait till"
	cont "he sobers up."
	done

ViridianCityGirlWhenIGoShopText:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCityDrunkOldManCantPassText:
	text "Urgh! Hic..."
	line "hold on there!"
	cont "C'mere an lissen"
	cont "to what I hafta"
	cont "say!"

	para "...Hey!"
	line "I said don't go!"
	done

ViridianCityFisherYouCanHaveThisText:
	text "Yawn!"
	line "I must have dozed"
	cont "off in the sun."

	para "I had this dream"
	line "about a DROWZEE"
	cont "eating my dream."
	cont "What's this?"
	cont "Where did this TM"
	cont "come from?"

	para "This is spooky!"
	line "Here, you can"
	cont "have this TM."
	prompt

ViridianCityFisherReceivedTM42Text:
	text "<PLAYER> received"
	line "TM42!@"
	done

ViridianCityFisherTM42ExplanationText:
	text "TM42 contains"
	line "DREAM EATER..."
	cont "...Snore..."
	done

ViridianCityFisherTM42NoRoomText:
	text "You have too much"
	line "stuff already."
	done

ViridianCityOldManWasPrettyDrunkText:
	text "Mmm......"
	line "Seems like I was"
	cont "pretty drunk!"

	para "My head hurts..."

	para "Are you in a"
	line "hurry?"
	done

ViridianCityOldManKnowHowToCatchPokemonText:
	text "I see you're using"
	line "a #DEX."

	para "When you catch a"
	line "#MON, #DEX"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#MON?"

	para "I'll show you"
	line "how to then."
	done

ViridianCityOldManTimeIsMoneyText:
	text "Time is money..."
	line "Go along then."
	done

ViridianCityOldManYouNeedToWeakenTheTargetText:
	text "First, you need"
	line "to weaken the"
	cont "target #MON."
	done

ViridianCitySignText:
	text "VIRIDIAN CITY"
	line "The Eternally"
	cont "Green Paradise"
	done

ViridianCityTrainerTips1Text:
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCityTrainerTips2Text:
	text "TRAINER TIPS"

	para "The battle moves"
	line "of #MON are"
	cont "limited by their"
	cont "POWER POINTs, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#MON at a"
	cont "#MON CENTER!"
	done

ViridianCityGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	done

ViridianCityGymLockedText:
	text "The GYM's doors"
	line "are locked..."
	done


ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 21, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	def_coord_events
	coord_event  19,  9, SCENE_VIRIDIAN_CITY_CANT_PASS, ViridianCityDrunkOldManScript1
	coord_event  32,  8, SCENE_VIRIDIAN_CITY_NOOP, ViridianGymLockedDoorScript

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 19,  1, BGEVENT_READ, ViridianCityTrainerTips1Sign
	bg_event 21, 29, BGEVENT_READ, ViridianCityTrainerTips2Sign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 20, 15, BGEVENT_READ, TrainerHouseSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign
	bg_event 14,  4, BGEVENT_ITEM, ViridianCityHiddenPotion

	def_object_events
	object_event 17,  5, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CatchingTutorialOldManScript, EVENT_GAMBLER_AWAKE
	object_event 30,  8, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 17,  9, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityGirlScript, EVENT_GAMBLER_GIRL_BLOCKING
	object_event 18,  9, SPRITE_GAMBLER_ASLEEP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityDrunkOldManScript2, EVENT_GAMBLER_ASLEEP
	object_event 13, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
	object_event 30, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungster2Script, -1
