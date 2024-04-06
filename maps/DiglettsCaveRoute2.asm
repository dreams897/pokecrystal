	object_const_def
	const DIGLETTS_CAVE_ROUTE_2_FISHER

DiglettsCaveRoute2_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveRoute2FisherScript:
	jumptextfaceplayer DiglettsCaveRoute2FishingGuruText

DiglettsCaveRoute2FishingGuruText:
	text "I went to ROCK"
	line "TUNNEL, but it's"
	cont "dark and scary."

	para "If a #MON's"
	line "FLASH could light"
	cont "it up..."
	done

DiglettsCaveRoute2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 1
	warp_event  3,  7, ROUTE_2, 1
	warp_event  4,  4, DIGLETTS_CAVE, 1

	def_coord_events
	
	def_bg_events

	def_object_events
	object_event  3, 3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveRoute2FisherScript, -1
