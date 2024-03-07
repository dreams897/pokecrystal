	object_const_def
	const PEWTERMUSEUM_RECEPTIONIST
	const PEWTERMUSEUM_GAMBLER
	const PEWTERMUSEUM_SCIENTIST2
	const PEWTERMUSEUM_SCIENTIST3
	const PEWTERMUSEUM_OLD_AMBER

PewterMuseum1F_MapScripts:
	def_scene_scripts
	scene_script PewterMuseum1FEnterScript, SCENE_PEWTER_MUSEUM_1F_ENTER
	scene_script PewterMuseum1FNoopScene,   SCENE_PEWTER_MUSEUM1F_NOOP

	def_callbacks
	
PewterMuseum1FEnterScript:
	done
	
PewterMuseum1FNoopScene:
	end
	
PewterMuseum1FFossil1:
	done
	
PewterMuseum1FFossil2:
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 7,  PEWTER_MUSEUM_2F, 1
	warp_event  10, 7, PEWTER_CITY, 6
	warp_event  11, 7, PEWTER_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, PewterMuseum1FFossil1
	bg_event  2,  6, BGEVENT_READ, PewterMuseum1FFossil2

	def_object_events
	object_event  12, 4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FEnterScript, -1
	object_event  1,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FEnterScript, -1
	object_event  15, 2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FEnterScript, -1
	object_event  17, 4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FEnterScript, -1
	object_event  16, 2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FEnterScript, -1
