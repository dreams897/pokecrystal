	object_const_def
	const ROCKTUNNELPOKECENTER_NURSE
	const ROCKTUNNELPOKECENTER_GENTLEMAN
	const ROCKTUNNELPOKECENTER_GYM_GUIDE
	const ROCKTUNNELPOKECENTER_COOLTRAINER_F

RockTunnelPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelPokecenterNurseScript:
	jumpstd PokecenterNurseScript

RockTunnelPokecenterGentlemanScript:
	jumptextfaceplayer RockTunnelPokecenterGentlemanText

RockTunnelPokecenterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext RockTunnelPokecenterGymGuideText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext RockTunnelPokecenterGymGuideText_ReturnedMachinePart
	waitbutton
	closetext
	end

RockTunnelPokecenterCooltrainerFScript:
	jumptextfaceplayer RockTunnelPokecenterCooltrainerFText

RockTunnelPokecenterGentlemanText:
	text "A #MON CENTER"
	line "near a cave?"

	para "That's mighty"
	line "convenient."
	done

RockTunnelPokecenterGymGuideText:
	text "The POWER PLANT's"
	line "MANAGER is looking"

	para "for a strong #-"
	line "MON trainer."

	para "He needs help"
	line "getting back"

	para "something that"
	line "was stolen."
	done

RockTunnelPokecenterGymGuideText_ReturnedMachinePart:
	text "I hear TEAM ROCKET"
	line "got back together"

	para "in JOHTO but fell"
	line "apart right away."

	para "I didn't know any-"
	line "thing about that."
	done

RockTunnelPokecenterCooltrainerFText:
	text "When you go out-"
	line "side, you can see"

	para "the roof of a big"
	line "building."

	para "That's the POWER"
	line "PLANT."
	done

RockTunnelPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_10, 1
	warp_event  4,  7, ROUTE_10, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterNurseScript, -1
	object_event  7,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterGentlemanScript, -1
	object_event  7,  2, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterGymGuideScript, -1
	object_event  1,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterCooltrainerFScript, -1
