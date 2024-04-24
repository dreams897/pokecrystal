	object_const_def
	const CERULEANPOKECENTER_NURSE
	const CERULEANPOKECENTER_GENTLEMAN
	const CERULEANPOKECENTER_SUPER_NERD
	const CERULEANPOKECENTER_BENCH_GUY
	const CERULEANPOKECENTER_LINK_RECEPTIONIST

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PokeCenterPCScriptCerulean:
	opentext
	special PokemonCenterPC
	closetext
	end

CeruleanPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
CeruleanPokecenterLinkScript:
	opentext
	writetext CeruleanPokecenterLinkText
	waitbutton
	closetext
	end
	
CeruleanPokecenterGentlemanScript:
	faceplayer
	opentext
	writetext CeruleanPokecenterGentlemanText
	waitbutton
	closetext
	turnobject CERULEANPOKECENTER_GENTLEMAN, DOWN
	end
	
CeruleanPokecenterSuperNerdScript:
	faceplayer
	opentext
	writetext CeruleanPokecenterSuperNerdText
	waitbutton
	closetext
	end
	
CeruleanPokecenterBenchGuyScript:
	faceplayer
	opentext
	writetext CeruleanPokecenterBenchGuyText
	waitbutton
	closetext
	turnobject CERULEANPOKECENTER_BENCH_GUY, RIGHT
	end
	
CeruleanPokecenterBenchGuyText:
	text "BILL has lots of"
	line "#MON!"

	para "He collects rare"
	line "ones too!"
	done

CeruleanPokecenterSuperNerdText:
	text "That BILL!"

	para "I heard that"
	line "he'll do whatever"
	cont "it takes to get"
	cont "rare #MON!"
	done

CeruleanPokecenterGentlemanText:
	text "Have you heard"
	line "about BILL?"

	para "Everyone calls"
	line "him a #MANIAC!"

	para "I think people"
	line "are just jealous"
	cont "of BILL, though."

	para "Who wouldn't want"
	line "to boast about"
	cont "their #MON?"
	done
	
CeruleanPokecenterLinkText:
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 5
	warp_event  4,  7, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  13,  3, BGEVENT_UP, PokeCenterPCScriptCerulean

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event  4,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterGentlemanScript, -1
	object_event 10,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterSuperNerdScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterBenchGuyScript, -1
	object_event  11, 2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterLinkScript, -1
