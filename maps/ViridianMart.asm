	object_const_def
	const VIRIDIANMART_CLERK
	const VIRIDIANMART_COOLTRAINER_M
	const VIRIDIANMART_YOUNGSTER

ViridianMart_MapScripts:
	def_scene_scripts
	scene_script ViridianCityMartNoop1Scene,   SCENE_VIRIDIAN_CITY_MART_PARCEL
	scene_script ViridianCityMartSayHiToOakScene,   SCENE_VIRIDIAN_CITY_MART_SAY_HI

	def_callbacks
	
ViridianCityMartNoop1Scene:
	end
	
ViridianCityMartSayHiToOakScene:
	end

ViridianMartClerkScript:
	checkevent EVENT_GOT_OAKS_PARCEL
	iftrue .viridian_mart_trade
	opentext
	writetext ViridianMartClerkYouCameFromPalletTownText
	closetext
	applymovement PLAYER, ViridianMartClerkMovement
	opentext
	writetext ViridianMartClerkParcelQuestText
	verbosegiveitem OAKS_PARCEL
	closetext
	setevent EVENT_GOT_OAKS_PARCEL
	setscene SCENE_VIRIDIAN_CITY_MART_SAY_HI
	end
	
.viridian_mart_trade:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
	closetext
	end
	
ViridianMartClerkParcelQuestText:
	text "You know PROF."
	line "OAK, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
	
	
ViridianCityMartSayHiToOakSceneScript:
	opentext
	writetext ViridianMartClerkSayHiToOakText
	closetext
	end
	
ViridianMartClerkSayHiToOakText:
	text "Okay! Say hi to"
	line "PROF.OAK for me!"
	done
	
	
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

ViridianMartYoungsterText:
	text "This shop sells"
	line "many ANTIDOTEs."
	done

ViridianMartCooltrainerMText:
	text "No! POTIONs are"
	line "all sold out."
	done

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events
	coord_event  3,  7, SCENE_VIRIDIAN_CITY_MART_PARCEL, ViridianMartClerkScript
	coord_event  0,  5, SCENE_VIRIDIAN_CITY_MART_SAY_HI, ViridianCityMartSayHiToOakSceneScript

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartCooltrainerMScript, -1
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartYoungsterScript, -1
