	object_const_def
	const DIGLETTS_CAVE_ROUTE_11_GAMBLER

DiglettsCaveRoute11_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveRoute11GamblerScript:
	jumptextfaceplayer DiglettsCaveRoute11GamblerText

DiglettsCaveRoute11HiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE

DiglettsCaveRoute11GamblerText:
	text "What a surprise!"
	line "DIGLETTs dug this"
	cont "long tunnel!"

	para "It goes right to"
	line "VIRIDIAN CITY!"
	done

DiglettsCaveRoute11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_11, 1
	warp_event  3,  7, ROUTE_11, 1
	warp_event  4,  4, DIGLETTS_CAVE, 2

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_ITEM, DiglettsCaveRoute11HiddenMaxRevive

	def_object_events
	object_event  2, 3, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveRoute11GamblerScript, -1
