	object_const_def
	const CERULEANBERRYSPEECHHOUSE_HIKER

CeruleanBerrySpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBerrySpeechHouseHikerScript:
	end

CeruleanBerrySpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanBerrySpeechHouseHikerScript, -1
