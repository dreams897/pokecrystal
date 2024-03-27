	object_const_def
	const VIRIDIANNICKNAMESPEECHHOUSE_POKEFAN_M
	const VIRIDIANNICKNAMESPEECHHOUSE_LASS
	const VIRIDIANNICKNAMESPEECHHOUSE_SPEARY
	const VIRIDIANNICKNAMESPEECHHOUSE_RATTEY

ViridianNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
ViridianNicknameHouseSpearySignScript:
	jumptext ViridianNicknameHouseSpearySignText

ViridianNicknameHouseBaldingGuyScript:
	jumptextfaceplayer ViridianNicknameHouseBaldingGuyText

ViridianNicknameHouseLittleGirlScript:
	jumptextfaceplayer ViridianNicknameHouseLittleGirlText

Speary:
	opentext
	writetext ViridianNicknameHouseSpearowText
	cry SPEAROW
	waitbutton
	closetext
	end

Rattey:
	opentext
	writetext RatteyText
	cry RATTATA
	waitbutton
	closetext
	end

RatteyText:
	text "RATTEY: Kikiii!"
	done

ViridianNicknameHouseBaldingGuyText:
	text "Coming up with"
	line "nicknames is fun,"
	cont "but hard."

	para "Simple names are"
	line "the easiest to"
	cont "remember."
	done

ViridianNicknameHouseLittleGirlText:
	text "My Daddy loves"
	line "#MON too."
	done

ViridianNicknameHouseSpearowText:
	text "SPEARY: Tetweet!"
	done

ViridianNicknameHouseSpearySignText:
	text "SPEAROW"
	line "Name: SPEARY"
	done


ViridianNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 2
	warp_event  3,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouseBaldingGuyScript, -1
	object_event  1,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouseLittleGirlScript, -1
	object_event  5,  5, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Speary, -1
	object_event  6,  3, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Rattey, -1
	object_event  4,  0, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianNicknameHouseSpearySignScript, -1
