PewterMuseum2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
PewterMuseum2FSpaceShuttleSignpostText:
	text "Space Shuttle"
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 7,  PEWTER_MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event 11,  2, BGEVENT_READ, PewterMuseum2FSpaceShuttleSignpostText

	def_object_events

