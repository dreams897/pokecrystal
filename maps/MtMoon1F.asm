	object_const_def
	const MT_MOON_1F_ITEM_BALL_WATER_GUN
	const MT_MOON_1F_ITEM_BALL_POTION1
	const MT_MOON_1F_TRAINER_YOUNGSTER1
	const MT_MOON_1F_TRAINER_COOLTRAINERF1
	const MT_MOON_1F_ITEM_BALL_POTION2
	const MT_MOON_1F_TRAINER_SUPERNERD
	const MT_MOON_1F_TRAINER_YOUNGSTER2
	const MT_MOON_1F_ITEM_BALL_RARE_CANDY
	const MT_MOON_1F_ITEM_BALL_ESCAPE_ROPE
	const MT_MOON_1F_TRAINER_COOLTRAINERF2
	const MT_MOON_1F_TRAINER_YOUNGSTER3
	const MT_MOON_1F_TRAINER_HIKER
	const MT_MOON_1F_ITEM_BALL_MOON_STONE

MtMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
MtMoon1FTrainerBugCatcher1:
	trainer BUG_CATCHER, KEN2, EVENT_BEAT_MT_MOON_1F_BUG_CATCHER_KEN, MtMoon1FYoungster2BattleText, MtMoon1FYoungster2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FYoungster2AfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FCooltrainerF2:
	trainer LASS, LAURA2, EVENT_BEAT_MT_MOON_1F_LASS_LAURA, MtMoon1FCooltrainerF2BattleText, MtMoon1FCooltrainerF2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FCooltrainerF2AfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FTrainerSuperNerd:
	trainer SUPER_NERD, DAVE, EVENT_BEAT_MT_MOON_1F_SUPER_NERD_DAVE, MtMoon1FSuperNerdBattleText, MtMoon1FSuperNerdEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FSuperNerdAfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FTrainerBugCatcher2:
	trainer BUG_CATCHER, BENNY2, EVENT_BEAT_MT_MOON_1F_BUG_CATCHER_BENNY, MtMoon1FYoungster3BattleText, MtMoon1FYoungster3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FYoungster3AfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FCooltrainerF1:
	trainer LASS, SHANNON2, EVENT_BEAT_MT_MOON_1F_LASS_SHANNON, MtMoon1FCooltrainerF1BattleText, MtMoon1FCooltrainerF1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FCooltrainerF1AfterBattleText
	waitbutton
	closetext
	end

MtMoon1FTrainerYoungster:
	trainer YOUNGSTER, SAMUEL2, EVENT_BEAT_MT_MOON_1F_YOUNGSTER_SAMUEL, MtMoon1FYoungster1BattleText, MtMoon1FYoungster1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FYoungster1AfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FTrainerHiker:
	trainer HIKER, RUSSELL2, EVENT_BEAT_MT_MOON_1F_HIKER_RUSSELL, MtMoon1FHikerBattleText, MtMoon1FHikerEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MtMoon1FHikerAfterBattleText
	waitbutton
	closetext
	end
	
MtMoon1FZubatSign:
	jumptext MtMoon1FBewareZubatSign

MtMoon1FWaterGun:
	itemball TM_WATER_GUN
	
MtMoon1FPotion1:
	itemball POTION
	
MtMoon1FPotion2:
	itemball POTION
	
MtMoon1FRareCandy:
	itemball RARE_CANDY
	
MtMoon1FEscapeRope:
	itemball ESCAPE_ROPE
	
MtMoon1FMoonStone:
	itemball MOON_STONE
	
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
	text "Losing stinks!"
	done

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
	text "My #MON"
	line "won't do!"
	done

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
	done

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
	text "You got me!"
	done

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
	text "I lost."
	done

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
	bg_event   15,  23, BGEVENT_READ, MtMoon1FZubatSign

	def_object_events
	object_event 5,  32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FWaterGun, EVENT_MT_MOON_1F_TM_WATER_GUN
	object_event 2,  20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FPotion1, EVENT_MT_MOON_1F_POTION1
	object_event 7,  22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtMoon1FTrainerBugCatcher1, -1
	object_event 16, 23, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtMoon1FCooltrainerF2, -1
	object_event 20, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FPotion2, EVENT_MT_MOON_1F_POTION2
	object_event 24, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoon1FTrainerSuperNerd, -1
	object_event 30, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtMoon1FTrainerBugCatcher2, -1
	object_event 35, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FRareCandy, EVENT_MT_MOON_1F_RARE_CANDY
	object_event 36, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FEscapeRope, EVENT_MT_MOON_1F_ESCAPE_ROPE
	object_event 30,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, MtMoon1FCooltrainerF1, -1
	object_event 12, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtMoon1FTrainerYoungster, -1
	object_event  5,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoon1FTrainerHiker, -1
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FMoonStone, EVENT_MT_MOON_1F_MOON_STONE
