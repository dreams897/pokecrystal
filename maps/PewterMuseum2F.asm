PewterMuseum2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PewterMuseum2FSpaceShuttleSignpostScript:
	jumptext Museum2FSpaceShuttleSignText
	
Museum2FMoonStoneSignScript:
	refreshscreen
	trainerpic MOON_STONE_T
	waitbutton
	closepokepic
	opentext
	writetext Museum2FMoonStoneSignText
	waitbutton
	closetext
	end
	
PewterMuseum2FGrampsScript:
	faceplayer
	opentext
	writetext Museum2FGrampsText
	waitbutton
	closetext
	end
	
PewterMuseum2FYoungsterScript:
	faceplayer
	opentext
	writetext Museum2FYoungsterText
	waitbutton
	closetext
	end
	
PewterMuseum2FScientistScript:
	faceplayer
	opentext
	writetext Museum2FScientistText
	waitbutton
	closetext
	end
	
PewterMuseum2FHikerScript:
	faceplayer
	opentext
	trade NPC_TRADE_BOB
	waitbutton
	closetext
	end
	
PewterMuseum2FLassScript:
	faceplayer
	opentext
	writetext Museum2FBrunetteGirlText
	waitbutton
	closetext
	end
	
Museum2FYoungsterText:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

Museum2FGrampsText:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

Museum2FScientistText:
	text "We have a space"
	line "exhibit now."
	done

Museum2FBrunetteGirlText:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done
	
Museum2FHikerAfterTradeText:
	text "Hello there! Your"
	line "old PIKACHU is"
	cont "magnificent!"
	done

Museum2FSpaceShuttleSignText:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

Museum2FMoonStoneSignText:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 7,  PEWTER_MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event 11,  2, BGEVENT_READ, PewterMuseum2FSpaceShuttleSignpostScript
	bg_event  2,  5, BGEVENT_READ, Museum2FMoonStoneSignScript

	def_object_events
	object_event  0, 5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FGrampsScript, -1
	object_event  1, 7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FYoungsterScript, -1
	object_event  7, 5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FScientistScript, -1
	object_event 11, 5, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FLassScript, -1
	object_event 12, 5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FHikerScript, -1
