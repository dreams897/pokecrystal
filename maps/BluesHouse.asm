	object_const_def
	const BLUESHOUSE_DAISY
	const BLUESHOUSE_MAP

BluesHouse_MapScripts:
	def_scene_scripts
	scene_script BluesHouseNoop1Scene, SCENE_BLUES_HOUSE_NOOP
	scene_script BluesHouseNoop2Scene, SCENE_BLUES_HOUSE_NOOP2

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BluesHouseMapCallback
	callback MAPCALLBACK_OBJECTS, BluesHouseDaisyCallback
	
BluesHouseNoop1Scene:
	end

BluesHouseNoop2Scene:
	end
	
BluesHouseMapCallback:
	checkscene
	ifequal SCENE_BLUES_HOUSE_NOOP2, .HideMap
	endcallback
	
.HideMap:
	disappear BLUESHOUSE_MAP
	endcallback
	
BluesHouseDaisyCallback:
	checkscene
	ifequal SCENE_BLUES_HOUSE_NOOP2, .DaisyWander
	endcallback
	
.DaisyWander
	setval SPRITE_DAISY, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1
    	writemem wMap3ObjectMovement

DaisyScript:
	faceplayer
	opentext
	checkevent EVENT_OAK_GOT_PARCEL
	iffalse .BlueInOaksLab
	checkevent EVENT_GOT_POKEDEX
	iftrue .OfferTownMap
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	end
	
.BlueInOaksLab
	writetext BluesHouseDaisyRivalAtLabText
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	end
	
.OfferTownMap
	checkevent EVENT_GOT_TOWN_MAP
	iftrue .PokemonAreLivingThings
	writetext BluesHouseDaisyOfferMapText
	waitsfx
	writetext GotMapText
	playsound SFX_GET_KEY_ITEM_1
	waitsfx
	disappear BLUESHOUSE_MAP
	writetext BluesHouseDaisyUseMapText
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	setscene SCENE_BLUES_HOUSE_NOOP2
	setevent EVENT_GOT_TOWN_MAP
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
	end
	
.PokemonAreLivingThings
	writetext BluesHouseDaisyWalkingText
	waitbutton
	closetext
	end
	
TownMapText:
	opentext
	writetext BluesHouseTownMapText
	waitbutton
	closetext
	end

BluesHouseDaisyRivalAtLabText:
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

BluesHouseDaisyOfferMapText:
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

GotMapText:
	text "<PLAYER> got a"
	line "TOWN MAP!"
	done

BluesHouseDaisyBagFullText:
	text "You have too much"
	line "stuff with you."
	done

BluesHouseDaisyUseMapText:
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

BluesHouseDaisyWalkingText:
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

BluesHouseTownMapText:
	text "It's a big map!"
	line "This is useful!"
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
	object_event  3,  3, SPRITE_TOWN_MAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TownMapText, EVENT_GOT_TOWN_MAP
