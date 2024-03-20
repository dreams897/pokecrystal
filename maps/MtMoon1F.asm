	object_const_def

MtMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoon1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 35, ROUTE_4, 2
	warp_event 15, 35, ROUTE_4, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4

	def_coord_events

	def_bg_events

	def_object_events
