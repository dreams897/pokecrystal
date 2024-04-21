	object_const_def
	const VERMILIONPIDGEYHOUSE_GENTLEMAN

VermilionPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPidgeyHouseGentlemanScript:
	jumptextfaceplayer VermilionPidgeyHouseGentlemanText

VermilionPidgeyHouseGentlemanText:
	text "Over many years,"
	line "DIGLETT dug a"
	cont "large tunnel."

	para "That tunnel goes"
	line "to a distant town."
	done

VermilionPidgeyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouseGentlemanScript, -1
