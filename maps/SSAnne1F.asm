	object_const_def

SSAnne1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
SSAnne1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  0, VERMILION_DOCK, 2
	warp_event 27,  0, VERMILION_DOCK, 2
	warp_event 31,  8, SS_ANNE_1F_ROOMS, 1
	warp_event 23,  8, SS_ANNE_1F_ROOMS, 2
	warp_event 19,  8, SS_ANNE_1F_ROOMS, 3
	warp_event 15,  8, SS_ANNE_1F_ROOMS, 4
	warp_event 11,  8, SS_ANNE_1F_ROOMS, 5
	warp_event  7,  8, SS_ANNE_1F_ROOMS, 6
	warp_event  2,  6, SS_ANNE_2F, 7
	warp_event 37, 15, SS_ANNE_B1F, 6
	warp_event  3, 16, SS_ANNE_KITCHEN, 1

	def_coord_events

	def_bg_events

	def_object_events
