Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 5, .CanWalk
	readvar VAR_XCOORD
	ifgreater 13, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

CyclingRoadSign:
	jumptext CyclingRoadSignText

CyclingRoadSignText:
	text "CYCLING ROAD"

	para "DOWNHILL COASTING"
	line "ALL THE WAY!"
	done

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 17,  5, ROUTE_16_GATE, 3
	warp_event 24,  5, ROUTE_16_GATE, 4
	warp_event 24, 10, ROUTE_16_GATE, 1
	warp_event 17, 10, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5, 17, BGEVENT_READ, CyclingRoadSign

	def_object_events
