	object_const_def

SSAnne2FRooms_MapScripts:
	def_scene_scripts
	const SSANNE2FROOMS_GENTLEMAN1
	const SSANNE2FROOMS_FISHER
	const SSANNE2FROOMS_GENTLEMAN2
	const SSANNE2FROOMS_COOLTRAINER_F
	const SSANNE2FROOMS_GENTLEMAN3
	const SSANNE2FROOMS_MAX_ETHER
	const SSANNE2FROOMS_GENTLEMAN4
	const SSANNE2FROOMS_GRAMPS
	const SSANNE2FROOMS_RARE_CANDY
	const SSANNE2FROOMS_GENTLEMAN5
	const SSANNE2FROOMS_LITTLE_BOY
	const SSANNE2FROOMS_BRUNETTE_GIRL
	const SSANNE2FROOMS_BEAUTY
	def_callbacks

SSAnneRareCandy:
	itemball RARE_CANDY

SSAnneMaxEther:
	itemball MAX_ETHER

SSAnne2FRoomsGentleman4Script:
	jumptextfaceplayer SSAnne2FRoomsGentleman4Text
	
SSAnne2FRoomsGentleman5Script:
	jumptextfaceplayer SSAnne2FRoomsGentleman5Text

SSAnne2FRoomsLittleBoyScript:
	jumptextfaceplayer SSAnne2FRoomsLittleBoyText

SSAnne2FRoomsBeautyScript:
	jumptextfaceplayer SSAnne2FRoomsBeautyText
	
SSAnne2FRoomsBrunetteGirlScript:
	jumptextfaceplayer SSAnne2FRoomsBrunetteGirlText

SSAnne2FRoomsGrampsScript:
	jumptextfaceplayer SSAnne2FRoomsGrampsText

SSAnne2FTrainerGentleman1:
	trainer GENTLEMAN, BROOKS, EVENT_BEAT_SS_ANNE_9_TRAINER_0, SSAnne2FRoomsGentleman1BattleText, SSAnne2FRoomsGentleman1EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnne2FRoomsGentleman1AfterBattleText
	waitbutton
	closetext
	end

SSAnne2FTrainerFisher:
	trainer FISHER, DALE2, EVENT_BEAT_SS_ANNE_9_TRAINER_1, SSAnne2FRoomsFisherBattleText, SSAnne2FRoomsFisherEndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnne2FRoomsFisherAfterBattleText
	waitbutton
	closetext
	end

SSAnne2FTrainerGentleman2:
	trainer GENTLEMAN, LAMAR, EVENT_BEAT_SS_ANNE_9_TRAINER_2, SSAnne2FRoomsGentleman2BattleText, SSAnne2FRoomsGentleman2EndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnne2FRoomsGentleman2AfterBattleText
	waitbutton
	closetext
	end

SSAnne2FTrainerCooltrainerF:
	trainer LASS, DAWN2, EVENT_BEAT_SS_ANNE_9_TRAINER_3, SSAnne2FRoomsCooltrainerFBattleText, SSAnne2FRoomsCooltrainerFEndBattleText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SSAnne2FRoomsCooltrainerFAfterBattleText
	waitbutton
	closetext
	end

SSAnne2FRoomsGentleman3Script:
	faceplayer
	opentext
	writetext SSAnne2FRoomsGentleman3Text
	setval SNORLAX
	special ShowPokedexEntry
	closetext
	end


SSAnne2FRoomsGentleman3Text:
	text "In all my travels"
	line "I've never seen"
	cont "any #MON sleep"
	cont "like this one!"

	para "It was something"
	line "like this!"
	prompt

SSAnne2FRoomsGentleman4Text:
	text "Ah yes, I have"
	line "seen some #MON"
	cont "ferry people"
	cont "across the water!"
	done

SSAnne2FRoomsGrampsText:
	text "#MON can CUT"
	line "down small bushes."
	done

SSAnne2FRoomsGentleman5Text:
	text "Have you gone to"
	line "the SAFARI ZONE"
	cont "in FUCHSIA CITY?"

	para "It had many rare"
	line "kinds of #MON!!"
	done

SSAnne2FRoomsLittleBoyText:
	text "Me and my Daddy"
	line "think the SAFARI"
	cont "ZONE is awesome!"
	done

SSAnne2FRoomsBrunetteGirlText:
	text "The CAPTAIN looked"
	line "really sick and"
	cont "pale!"
	done

SSAnne2FRoomsBeautyText:
	text "I hear many people"
	line "get seasick!"
	done

SSAnne2FRoomsGentleman1BattleText:
	text "Competing against"
	line "the young keeps"
	cont "me youthful."
	done

SSAnne2FRoomsGentleman1EndBattleText:
	text "Good fight! Ah, I"
	line "feel young again!"
	prompt

SSAnne2FRoomsGentleman1AfterBattleText:
	text "15 years ago, I"
	line "would have won!"
	done

SSAnne2FRoomsFisherBattleText:
	text "Check out what I"
	line "fished up!"
	done

SSAnne2FRoomsFisherEndBattleText:
	text "I'm all out!"
	prompt

SSAnne2FRoomsFisherAfterBattleText:
	text "Party?"

	para "The cruise ship's"
	line "party should be"
	cont "over by now."
	done

SSAnne2FRoomsGentleman2BattleText:
	text "Which do you like,"
	line "a strong or a"
	cont "rare #MON?"
	done

SSAnne2FRoomsGentleman2EndBattleText:
	text "I must salute you!"
	prompt

SSAnne2FRoomsGentleman2AfterBattleText:
	text "I prefer strong"
	line "and rare #MON."
	done

SSAnne2FRoomsCooltrainerFBattleText:
	text "I never saw you"
	line "at the party."
	done

SSAnne2FRoomsCooltrainerFEndBattleText:
	text "Take it easy!"
	prompt

SSAnne2FRoomsCooltrainerFAfterBattleText:
	text "Oh, I adore your"
	line "strong #MON!"
	done
	
SSAnne2FRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1
	warp_event  3,  5, SS_ANNE_2F, 1
	warp_event 12,  5, SS_ANNE_2F, 2
	warp_event 13,  5, SS_ANNE_2F, 2
	warp_event 22,  5, SS_ANNE_2F, 3
	warp_event 23,  5, SS_ANNE_2F, 3
	warp_event  2, 15, SS_ANNE_2F, 4
	warp_event  3, 15, SS_ANNE_2F, 4
	warp_event 12, 15, SS_ANNE_2F, 5
	warp_event 13, 15, SS_ANNE_2F, 5
	warp_event 22, 15, SS_ANNE_2F, 6
	warp_event 23, 15, SS_ANNE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_GENTLEMAN, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SSAnne2FTrainerGentleman1, -1
	object_event 13,  4, SPRITE_FISHER, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, SSAnne2FTrainerFisher, -1
	object_event  0, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, SSAnne2FTrainerGentleman2, -1
	object_event  2, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, SSAnne2FTrainerCooltrainerF, -1
	object_event  1,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsGentleman3Script, -1
	object_event 12,  1, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneMaxEther, EVENT_SS_ANNE_MAX_ETHER
	object_event 21,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsGentleman4Script, -1
	object_event 22,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsGrampsScript, -1
	object_event  0, 12, SPRITE_POKE_BALL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRareCandy, EVENT_SS_ANNE_RARE_CANDY
	object_event 12, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsGentleman5Script, -1
	object_event 11, 14, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsLittleBoyScript, -1
	object_event 22, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsBrunetteGirlScript, -1 ; placeholder for SPRITE_BRUNETTE_GIRL
	object_event 20, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FRoomsBeautyScript, -1