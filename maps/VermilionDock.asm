	object_const_def

VermilionDock_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionDockFlypointCallback

VermilionDockFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionDock_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  0, VERMILION_CITY, 6
	warp_event 14,  2, SS_ANNE_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
