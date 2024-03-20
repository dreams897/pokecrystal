	object_const_def

MtMoonB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoonB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, MT_MOON_1F, 3
	warp_event 17, 11, MT_MOON_B2F, 1
	warp_event 25,  9, MT_MOON_1F, 4
	warp_event 25, 15, MT_MOON_1F, 5
	warp_event 21, 17, MT_MOON_B2F, 2
	warp_event 13, 27, MT_MOON_B2F, 3
	warp_event 23,  3, MT_MOON_B2F, 4
	warp_event 27,  3, ROUTE_4, 3

	def_coord_events

	def_bg_events

	def_object_events
