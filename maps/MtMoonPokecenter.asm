DEF MT_MOON_POKECENTER_MAGIKARP_PRICE EQU 500
	
	object_const_def
	const MTMOONPOKECENTER_NURSE
	const MTMOONPOKECENTER_YOUNGSTER
	const MTMOONPOKECENTER_GENTLEMAN
	const MTMOONPOKECENTER_MAGIKARP_SALESMAN
	const MTMOONPOKECENTER_CLIPBOARD
	const MTMOONPOKECENTER_LINK_RECEPTIONIST
	const MTMOONPOKECENTER_BENCH_GUY

MtMoonPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks
	
MtMoonPokecenterMagikarpSalesmanScript:
	faceplayer
	opentext
	checkevent EVENT_BOUGHT_MAGIKARP
	iftrue .NoRefunds
	writetext MtMoonPokecenterMagikarpSalesmanIGotADealText
	yesorno
	iffalse .NoSale
	checkmoney YOUR_MONEY, MT_MOON_POKECENTER_MAGIKARP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	waitsfx
	playsound SFX_PURCHASE_1
	waitsfx
	getmonname STRING_BUFFER_3, MAGIKARP
	writetext MtMoonPokecenterGotMagikarpText
	pause 2
	playsound SFX_CAUGHT_MON_RBY
	waitsfx
	promptbutton
	givepoke BLASTOISE, 50
	takemoney YOUR_MONEY, MT_MOON_POKECENTER_MAGIKARP_PRICE
	closetext
	setevent EVENT_BOUGHT_MAGIKARP
	end
	
.NoSale
	writetext MtMoonPokecenterMagikarpSalesmanNoText
	waitbutton
	closetext
	end
	
.NotEnoughMoney
	writetext MtMoonPokecenterMagikarpSalesmanNoMoneyText
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext MtMoonPokecenterMagikarpSalesmanNoRoomText
	waitbutton
	closetext
	end
	
.NoRefunds
	writetext MtMoonPokecenterMagikarpSalesmanNoRefundsText
	waitbutton
	closetext
	end
	
MtMoonPokecenterNurseScript:
	jumpstd PokecenterNurseScript
	
MtMoonPokecenterLinkScript:
	jumptext MtMoonPokecenterLinkText
	
PokeCenterPCScriptMtMoon:
	opentext
	special PokemonCenterPC
	closetext
	end
	
MtMoonPokecenterBenchGuyScript:
	faceplayer
	opentext
	writetext MtMoonPokecenterBenchGuyText
	waitbutton
	closetext
	turnobject MTMOONPOKECENTER_BENCH_GUY, RIGHT
	end
	
MtMoonPokecenterYoungsterScript:
	faceplayer
	opentext
	writetext MtMoonPokecenterYoungsterText
	waitbutton
	closetext
	end
	
MtMoonPokecenterClipboardScript:
	end
	
MtMoonPokecenterGentlemanScript:
	faceplayer
	opentext
	writetext MtMoonPokecenterGentlemanText
	waitbutton
	closetext
	turnobject MTMOONPOKECENTER_GENTLEMAN, UP
	end
	
MtMoonPokecenterYoungsterText:
	text "I've 6 # BALLs"
	line "set in my belt."

	para "At most, you can"
	line "carry 6 #MON."
	done

MtMoonPokecenterGentlemanText:
	text "TEAM ROCKET"
	line "attacks CERULEAN"
	cont "citizens..."

	para "TEAM ROCKET is"
	line "always in the"
	cont "news!"
	done

MtMoonPokecenterMagikarpSalesmanIGotADealText:
	text "MAN: Hello, there!"
	line "Have I got a deal"
	cont "just for you!"

	para "I'll let you have"
	line "a swell MAGIKARP"
	cont "for just ¥500!"
	cont "What do you say?"
	done

MtMoonPokecenterMagikarpSalesmanNoText:
	text "No? I'm only"
	line "doing this as a"
	cont "favor to you!"
	done

MtMoonPokecenterMagikarpSalesmanNoMoneyText:
	text "You'll need more"
	line "money than that!"
	done
	
MtMoonPokecenterMagikarpSalesmanNoRoomText:
	text "Please make room"
	line "For this #MON!"
	
MtMoonPokecenterGotMagikarpText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

MtMoonPokecenterMagikarpSalesmanNoRefundsText:
	text "MAN: Well, I don't"
	line "give refunds!"
	done

MtMoonPokecenterClipboardText:
	text ""
	done
	
MtMoonPokecenterBenchGuyText:
	text "If you have too"
	line "many #MON, you"
	cont "should store them"
	cont "via PC!"
	done
	
MtMoonPokecenterLinkText:
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

MtMoonPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_4, 1
	warp_event  4,  7, ROUTE_4, 1


	def_coord_events

	def_bg_events
	bg_event  13,  3, BGEVENT_UP, PokeCenterPCScriptMtMoon
	

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterNurseScript, -1
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterYoungsterScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterGentlemanScript, -1
	object_event 10,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterMagikarpSalesmanScript, -1
	object_event  7,  2, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterClipboardScript, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterLinkScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenterBenchGuyScript, -1
