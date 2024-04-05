	object_const_def

MtMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
MtMoon1FHikerBattleText:
	text "WHOA! You shocked"
	line "me! Oh, you're"
	cont "just a kid!"
	done

MtMoon1FHikerEndBattleText:
	text "Wow!"
	line "Shocked again!"
	prompt

MtMoon1FHikerAfterBattleText:
	text "Kids like you"
	line "shouldn't be"
	cont "here!"
	done

MtMoon1FYoungster1BattleText:
	text "Did you come to"
	line "explore too?"
	done

MtMoon1FYoungster1EndBattleText:
	text "Losing"
	line "stinks!"
	prompt

MtMoon1FYoungster1AfterBattleText:
	text "I came down here"
	line "to show off to"
	cont "girls."
	done

MtMoon1FCooltrainerF1BattleText:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

MtMoon1FCooltrainerF1EndBattleText:
	text "Oh!"
	line "I lost it!"
	prompt

MtMoon1FCooltrainerF1AfterBattleText:
	text "How do you get"
	line "out of here?"
	done

MtMoon1FSuperNerdBattleText:
	text "What! Don't sneak"
	line "up on me!"
	done

MtMoon1FSuperNerdEndBattleText:
	text "My"
	line "#MON won't do!"
	prompt

MtMoon1FSuperNerdAfterBattleText:
	text "I have to find"
	line "stronger #MON."
	done

MtMoon1FCooltrainerF2BattleText:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

MtMoon1FCooltrainerF2EndBattleText:
	text "I lost?"
	prompt

MtMoon1FCooltrainerF2AfterBattleText:
	text "I heard there are"
	line "some very rare"
	cont "fossils here."
	done

MtMoon1FYoungster2BattleText:
	text "Suspicious men"
	line "are in the cave."
	cont "What about you?"
	done

MtMoon1FYoungster2EndBattleText:
	text "You"
	line "got me!"
	prompt

MtMoon1FYoungster2AfterBattleText:
	text "I saw them! I'm"
	line "sure they're from"
	cont "TEAM ROCKET!"
	done

MtMoon1FYoungster3BattleText:
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

MtMoon1FYoungster3EndBattleText:
	text "I"
	line "lost."
	prompt

MtMoon1FYoungster3AfterBattleText:
	text "ZUBAT is tough!"
	line "But, it can be"
	cont "useful if you"
	cont "catch one."
	done

MtMoon1FBewareZubatSign:
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done

MtMoon1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 35, ROUTE_4, 2
	warp_event 15, 35, ROUTE_4, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4

	def_coord_events

	def_bg_events

	def_object_events
