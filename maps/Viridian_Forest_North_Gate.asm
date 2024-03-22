	object_const_def
	const VIRIDIAN_FOREST_NORTH_GATE_SUPER_NERD
	const VIRIDIAN_FOREST_NORTH_GATE_GRAMPS

ViridianForestNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks
	
ViridianForestNorthGateSuperNerdScript:
	jumptextfaceplayer ViridianForestNorthGateSuperNerdText
	
ViridianForestNorthGateGrampsScript:
	jumptextfaceplayer ViridianForestNorthGateGrampsText
	
ViridianForestNorthGateSuperNerdText:
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestNorthGateGrampsText:
	text "Have you noticed"
	line "the bushes on the"
	cont "roadside?"

	para "They can be cut"
	line "down by a special"
	cont "#MON move."
	done

ViridianForestNorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 2
	warp_event  5,  0, ROUTE_2, 2
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGateSuperNerdScript, -1
	object_event  2,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGateGrampsScript, -1
