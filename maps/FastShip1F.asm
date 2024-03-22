	object_const_def

FastShip1F_MapScripts:
	def_scene_scripts

	def_callbacks

FastShip1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  1, FAST_SHIP_1F, -1
	warp_event 27,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 1
	warp_event 23,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 2
	warp_event 19,  8, FAST_SHIP_CABINS_NNW_NNE_NE, 3
	warp_event 15,  8, FAST_SHIP_CABINS_SW_SSW_NW, 1
	warp_event 15, 15, FAST_SHIP_CABINS_SW_SSW_NW, 2
	warp_event 19, 15, FAST_SHIP_CABINS_SW_SSW_NW, 4
	warp_event 23, 15, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 1
	warp_event 27, 15, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 3
	warp_event  3, 13, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 5
	warp_event  6, 12, FAST_SHIP_B1F, 1
	warp_event 30, 14, FAST_SHIP_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
