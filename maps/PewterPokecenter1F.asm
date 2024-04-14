	object_const_def
	const PEWTERPOKECENTER_NURSE
	const PEWTERPOKECENTER_JIGGLYPUFF
	const PEWTERPOKECENTER_GENTLEMAN
	const PEWTERPOKECENTER_BENCHGUY
	const PEWTERPOKECENTER_LINK_RECEPTIONIST

PewterPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PokeCenterPCScriptPewter:
	opentext
	special PokemonCenterPC
	closetext
	end

PewterPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

PewterJigglypuff:
	opentext
	writetext PewterPokecenterJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end
	
PewterPokecenterBenchGuyScript:
	faceplayer
	opentext
	writetext PewterPokecenterBenchGuyText
	waitbutton
	closetext
	turnobject CERULEANPOKECENTER_BENCH_GUY, RIGHT
	end
	
PewterPokecenterLinkScript:
	jumptext PewterPokecenterLinkText
	
PewterPokecenterGentlemanScript:
	faceplayer
	opentext
	writetext PewterPokecenterGentlemanText
	waitbutton
	closetext
	turnobject PEWTERPOKECENTER_GENTLEMAN, LEFT
	end

PewterPokecenterGentlemanText:
	text "What!?"

	para "TEAM ROCKET is"
	line "at MT.MOON? Huh?"
	cont "I'm on the pager!"

	para "Scram!"
	done

PewterPokecenterJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu!"
	done
	
PewterPokecenterLinkText:
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done
	
PewterPokecenterBenchGuyText:
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

PewterPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 7
	warp_event  4,  7, PEWTER_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  13,  3, BGEVENT_UP, PokeCenterPCScriptPewter

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FNurseScript, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterJigglypuff, -1
	object_event 11,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterPokecenterGentlemanScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterPokecenterBenchGuyScript, -1
	object_event  11, 2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterPokecenterLinkScript, -1
