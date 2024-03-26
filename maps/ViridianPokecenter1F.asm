	object_const_def
	const VIRIDIANPOKECENTER1F_NURSE
	const VIRIDIANPOKECENTER1F_COOLTRAINER_M
	const VIRIDIANPOKECENTER1F_GENTLEMAN
	const VIRIDIANPOKECENTER1F_BENCH_GUY
	const VIRIDIANPOKECENTER1F_LINK_RECEPTIONIST

ViridianPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PokeCenterPCScriptViridian:
	opentext
	special PokemonCenterPC
	closetext
	end
	
ViridianPokecenterBenchGuyScript:
	faceplayer
	opentext
	writetext ViridianCityPokecenterBenchGuyText
	waitbutton
	closetext
	turnobject VIRIDIANPOKECENTER1F_BENCH_GUY, RIGHT
	end
	
ViridianPokecenterCooltrainerMScript:
	jumptextfaceplayer ViridianPokecenterCooltrainerMText
	
ViridianPokecenterGentlemanScript:
	jumptextfaceplayer ViridianPokecenterGentlemanText

ViridianPokecenterNurseScript:
	jumpstd PokecenterNurseScript
	
ViridianPokecenterLinkScript:
	jumptext ViridianPokecenterLinkText
	
ViridianCityPokecenterBenchGuyText:
	text "#MON CENTERs"
	line "heal your tired,"
	cont "hurt or fainted"
	cont "#MON!"
	done

ViridianPokecenterGentlemanText:
	text "You can use that"
	line "PC in the corner."

	para "The receptionist"
	line "told me. So kind!"
	done

ViridianPokecenterCooltrainerMText:
	text "There's a #MON"
	line "CENTER in every"
	cont "town ahead."

	para "They don't charge"
	line "any money either!"
	done
	
ViridianPokecenterLinkText:
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

ViridianPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 5
	warp_event  4,  7, VIRIDIAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  13,  3, BGEVENT_UP, PokeCenterPCScriptViridian

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterNurseScript, -1
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterCooltrainerMScript, -1
	object_event  10, 5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterGentlemanScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterBenchGuyScript, -1
	object_event  11, 2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterLinkScript, -1
