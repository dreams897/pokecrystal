	object_const_def
	const VERMILIONPOKECENTER1F_NURSE
	const VERMILIONPOKECENTER1F_FISHING_GURU
	const VERMILIONPOKECENTER_SAILOR
	const VERMILIONPOKECENTER_BENCH_GUY
	const VERMILIONPOKECENTER1F_LINK_RECEPTIONIST

VermilionPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
VermilionPokecenterLinkScript:
	jumptext VermilionPokecenterLinkText
	
VermilionPokecenterFishingGuruScript:
	jumptextfaceplayer VermilionPokecenterFishingGuruText
	
VermilionPokecenterSailorScript:
	jumptextfaceplayer VermilionPokecenterSailorText
	
VermilionPokecenterBenchGuyScript:
	faceplayer
	opentext
	writetext VermilionPokecenterBenchGuyText
	waitbutton
	closetext
	turnobject VERMILIONPOKECENTER_BENCH_GUY, RIGHT
	end
	
VermilionPokecenterFishingGuruText:
	text "Even if they are"
	line "the same level,"
	cont "#MON can have"
	cont "very different"
	cont "abilities."

	para "A #MON raised"
	line "by a trainer is"
	cont "stronger than one"
	cont "in the wild."
	done

VermilionPokecenterSailorText:
	text "My #MON was"
	line "poisoned! It"
	cont "fainted while we"
	cont "were walking!"
	done

VermilionPokecenterBenchGuyText:
	text "It is true that a"
	line "higher level"
	cont "#MON will be"
	cont "more powerful..."

	para "But, all #MON"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done
	
VermilionPokecenterLinkText:
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

VermilionPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 2
	warp_event  4,  7, VERMILION_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FNurseScript, -1
	object_event  10, 5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterFishingGuruScript, -1
	object_event  5,  4, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterSailorScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterBenchGuyScript, -1
	object_event  11, 2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterLinkScript, -1
