	object_const_def
	const VIRIDIANMART_CLERK
	const VIRIDIANMART_COOLTRAINER_M
	const VIRIDIANMART_YOUNGSTER

ViridianMart_MapScripts:
	def_scene_scripts
	scene_script ViridianMartOaksParcelScene,   SCENE_VIRIDIANMART_OAKS_PARCEL
	scene_script ViridianMartNoop1Scene,   SCENE_VIRIDIANMART_NOOP

	def_callbacks
	
ViridianMartOaksParcelScene:
	sdefer ViridianMartParcelScript
	end
	
ViridianMartNoop1Scene:
	end
	
ViridianMartClerkScript:
	checkevent EVENT_OAK_GOT_PARCEL
	iffalse .Skip
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
	closetext
	end
.Skip
	jumptext ViridianMartClerkSayHiToOakText

ViridianMartParcelScript:
	turnobject VIRIDIANMART_CLERK, DOWN
	opentext
	writetext ViridianMartClerkYouCameFromPalletTownText
	pause 15
	closetext
	applymovement PLAYER, ViridianMartClerkMovement
	turnobject VIRIDIANMART_CLERK, RIGHT
	opentext
	writetext ViridianMartClerkParcelQuestText
	giveitem OAKS_PARCEL
	promptbutton
	waitsfx
	writetext ViridianMartGotParcelText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	closetext
	setevent EVENT_GOT_OAKS_PARCEL
	setscene SCENE_VIRIDIANMART_NOOP
	end
	
ViridianMartClerkMovement:
	step UP
	step UP
	step LEFT
	step_end
	
ViridianMartYoungsterScript:
	jumptextfaceplayer ViridianMartYoungsterText

ViridianMartCooltrainerMScript:
	jumptextfaceplayer ViridianMartCooltrainerMText
	
ViridianMartClerkYouCameFromPalletTownText:
	text "Hey! You came from"
	line "PALLET TOWN?"
	done
	
ViridianMartClerkParcelQuestText:
	text "You know PROF."
	line "OAK, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
	done
	
ViridianMartClerkSayHiToOakText:
	text "Okay! Say hi to"
	line "PROF.OAK for me!"
	done

ViridianMartYoungsterText:
	text "This shop sells"
	line "many ANTIDOTEs."
	done

ViridianMartCooltrainerMText:
	text "No! POTIONs are"
	line "all sold out."
	done
	
ViridianMartGotParcelText:
	text "<PLAYER> received"
	line "OAK's PARCEL!"
	done

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events
	coord_event  3,  7, SCENE_VIRIDIANMART_OAKS_PARCEL, ViridianMartParcelScript

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartCooltrainerMScript, -1
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartYoungsterScript, -1
