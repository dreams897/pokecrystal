	object_const_def
	const VICTORYROADGATE_OFFICER

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadGateNoop1Scene, SCENE_VICTORYROADGATE_BADGE_CHECK
	scene_script VictoryRoadGateNoop2Scene, SCENE_VICTORYROADGATE_NOOP

	def_callbacks

VictoryRoadGateNoop1Scene:
	end

VictoryRoadGateNoop2Scene:
	end

VictoryRoadGateBadgeCheckScript:
	sjump _VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
_VictoryRoadGateBadgeCheckScript:
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .HaveBoulderBadge
	writetext VictoryRoadGateGuardNoBoulderbadgeText
	playsound SFX_DENIED_1
	waitbutton
	writetext VictoryRoadGateGuardICantLetYouPassText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepDownMovement
	end
	
.HaveBoulderBadge:
	writetext VictoryRoadGateGuardGoRightAheadText
	waitbutton
	closetext
	setscene SCENE_VICTORYROADGATE_NOOP
	end

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end
	
BoulderBadgePassScript:
	jumptext VictoryRoadGateGuardGoRightAheadText
	
VictoryRoadGateGuardNoBoulderbadgeText:
	text "Only truly skilled"
	line "trainers are"
	cont "allowed through."

	para "You don't have the"
	line "BOULDERBADGE yet!"
	done

VictoryRoadGateGuardICantLetYouPassText:
	text "The rules are"
	line "rules. I can't"
	cont "let you pass."
	done

VictoryRoadGateGuardGoRightAheadText:
	text "Oh! That is the"
	line "BOULDERBADGE!"
	cont "Go right ahead!"
	done

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_22, 1
	warp_event  5,  7, ROUTE_22, 1
	warp_event  4,  0, VICTORY_ROAD, 1
	warp_event  5,  0, VICTORY_ROAD, 1

	def_coord_events
	coord_event 4, 2, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript
	coord_event 5, 2, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
