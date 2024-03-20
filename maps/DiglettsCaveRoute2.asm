	object_const_def
	const DIGLETTS_CAVE_ROUTE_2_FISHER

DiglettsCaveRoute2_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveRoute2FisherScript:
	jumptextfaceplayer DiglettsCaveRoute2FisherText

DiglettsCaveRoute2FisherText:
	text "A bunch of DIGLETT"
	line "popped out of the"

	para "ground! That was"
	line "shocking."
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
	object_event  2, 3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveRoute2FisherScript, -1