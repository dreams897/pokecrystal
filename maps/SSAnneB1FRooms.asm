	object_const_def

SSAnneB1FRooms_MapScripts:
	def_scene_scripts

	def_callbacks
	
SSAnneEther:
	itemball ETHER

SSAnneMaxPotion:
	itemball MAX_POTION
	
SSAnneTMRest:
	itemball TM_REST
	
SSAnneB1FRoomsMachokeScript:
	opentext
	writetext SSAnneB1FRoomsMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end
	
SSAnneB1FTrainerFisher:
	trainer FISHER, BARNY, EVENT_BEAT_SS_ANNE_10_TRAINER_5, SSAnneB1FRoomsFisherBattleText, SSAnneB1FRoomsFisherEndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsFisherAfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FRoomsSailor5:
	trainer SAILOR, PHILLIP2, EVENT_BEAT_SS_ANNE_10_TRAINER_4, SSAnneB1FRoomsSailor5BattleText, SSAnneB1FRoomsSailor5EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsSailor5AfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FRoomsSailor4:
	trainer SAILOR, DYLAN2, EVENT_BEAT_SS_ANNE_10_TRAINER_3, SSAnneB1FRoomsSailor4BattleText, SSAnneB1FRoomsSailor4EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsSailor4AfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FRoomsSailor3:
	trainer SAILOR, HUEY5, EVENT_BEAT_SS_ANNE_10_TRAINER_2, SSAnneB1FRoomsSailor3BattleText, SSAnneB1FRoomsSailor3EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsSailor3AfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FRoomsSailor2:
	trainer SAILOR, DUNCAN2, EVENT_BEAT_SS_ANNE_10_TRAINER_1, SSAnneB1FRoomsSailor2BattleText, SSAnneB1FRoomsSailor2EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsSailor2AfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FRoomsSailor1:
	trainer SAILOR, LEONARD2, EVENT_BEAT_SS_ANNE_10_TRAINER_0, SSAnneB1FRoomsSailor1BattleText, SSAnneB1FRoomsSailor1EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnneB1FRoomsSailor1AfterBattleText
	waitbutton
	closetext
	end
	
SSAnneB1FRoomsSuperNerdScript:
	jumptextfaceplayer SSAnneB1FRoomsSuperNerdText

SSAnneB1FRoomsMachokeText:
	text "MACHOKE: Gwoh!"
	line "Goggoh!"
	done

SSAnneB1FRoomsSailor1BattleText:
	text "You know what they"
	line "say about sailors"
	cont "and fighting!"
	done

SSAnneB1FRoomsSailor1EndBattleText:
	text "Right!"
	line "Good fight, mate!"
	prompt

SSAnneB1FRoomsSailor1AfterBattleText:
	text "Haha! Want to be"
	line "a sailor, mate?"
	done

SSAnneB1FRoomsSailor2BattleText:
	text "My sailor's pride"
	line "is at stake!"
	done

SSAnneB1FRoomsSailor2EndBattleText:
	text "Your spirit sank"
	line "me!"
	prompt

SSAnneB1FRoomsSailor2AfterBattleText:
	text "Did you see the"
	line "FISHING GURU in"
	cont "VERMILION CITY?"
	done

SSAnneB1FRoomsSailor3BattleText:
	text "Us sailors have"
	line "#MON too!"
	done

SSAnneB1FRoomsSailor3EndBattleText:
	text "OK, you're not"
	line "bad."
	prompt

SSAnneB1FRoomsSailor3AfterBattleText:
	text "We caught all our"
	line "#MON while"
	cont "out at sea!"
	done

SSAnneB1FRoomsSailor4BattleText:
	text "I like feisty"
	line "kids like you!"
	done

SSAnneB1FRoomsSailor4EndBattleText:
	text "Argh!"
	line "Lost it!"
	prompt

SSAnneB1FRoomsSailor4AfterBattleText:
	text "Sea #MON live"
	line "in deep water."
	cont "You'll need a ROD!"
	done

SSAnneB1FRoomsSailor5BattleText:
	text "Matey, you're"
	line "walking the plank"
	cont "if you lose!"
	done

SSAnneB1FRoomsSailor5EndBattleText:
	text "Argh!"
	line "Beaten by a kid!"
	prompt

SSAnneB1FRoomsSailor5AfterBattleText:
	text "Jellyfish some-"
	line "times drift into"
	cont "the ship."
	done

SSAnneB1FRoomsFisherBattleText:
	text "Hello stranger!"
	line "Stop and chat!"

	para "All my #MON"
	line "are from the sea!"
	done

SSAnneB1FRoomsFisherEndBattleText:
	text "Darn!"
	line "I let that one"
	cont "get away!"
	prompt

SSAnneB1FRoomsFisherAfterBattleText:
	text "I was going to"
	line "make you my"
	cont "assistant too!"
	done

SSAnneB1FRoomsSuperNerdText:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done


SSAnneB1FRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, SS_ANNE_B1F, 5
	warp_event  3,  5, SS_ANNE_B1F, 5
	warp_event 12,  5, SS_ANNE_B1F, 4
	warp_event 13,  5, SS_ANNE_B1F, 4
	warp_event 22,  5, SS_ANNE_B1F, 3
	warp_event 23,  5, SS_ANNE_B1F, 3
	warp_event  2, 15, SS_ANNE_B1F, 2
	warp_event  3, 15, SS_ANNE_B1F, 2
	warp_event 12, 15, SS_ANNE_B1F, 1
	warp_event 13, 15, SS_ANNE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 13, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SSAnneB1FTrainerSailor1, -1
	object_event  2, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, SSAnneB1FTrainerSailor2, -1
	object_event 12,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SSAnneB1FTrainerSailor3, -1
	object_event 22,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SSAnneB1FTrainerSailor4, -1
	object_event  0,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SSAnneB1FTrainerSailor5, -1
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, SSAnneB1FTrainerFisher, -1
	object_event 10, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SSAnneB1FRoomsSuperNerdScript, -1
	object_event 11, 12, SPRITE_MACHOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneB1FRoomsMachokeScript, -1
	object_event 20,  2, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneEther, EVENT_SS_ANNE_ETHER
	object_event 10,  2, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneTMRest, EVENT_SS_ANNE_TM_REST
	object_event 12, 11, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneMaxPotion, EVENT_SS_ANNE_MAX_POTION