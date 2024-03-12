	object_const_def
	const ROUTE1_YOUNGSTER_GIVE_POTION
	const ROUTE1_YOUNGSTER_SEE_LEDGES
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route1Youngster1Script:
	end
	
Route1YoungsterGivePotionScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POTION_SAMPLE
	iftrue .AlsoGotPokeballsText
	writetext Route1Youngster1MartSampleText
	verbosegiveitem POTION
	setevent EVENT_GOT_POTION_SAMPLE
	closetext
	end
	
.AlsoGotPokeballsText
	writetext Route1Youngster1AlsoGotPokeballsText
	closetext
	end

Youngster_Give_Potion:
	jumpstd ReceiveItemScript
	end

Route1Youngster2Script:
	end
	
Route1Youngster1MartSampleText:
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt
	end

Route1Youngster1AlsoGotPokeballsText:
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	prompt
	done

Route1Youngster1NoRoomText:
	text "You have too much"
	line "stuff with you!"
	done
	
Route1YoungsterLedgeScript:
	faceplayer
	opentext
	writetext Route1YoungsterLedgeText
	closetext
	end

Route1YoungsterLedgeText:
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	prompt
	done

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  3, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route1YoungsterGivePotionScript, -1
	object_event  15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1YoungsterLedgeScript, -1
	object_event  3,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
