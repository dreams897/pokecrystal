	object_const_def
	const ROUTE_22_BLUE

Route22_MapScripts:
	def_scene_scripts
	scene_script Route22NoopScene, SCENE_ROUTE_22_NOOP
	scene_script Route22RivalScene1, SCENE_ROUTE_22_RIVAL_1
	scene_script Route22RivalScene2, SCENE_ROUTE_22_RIVAL_2

	def_callbacks
	
Route22NoopScene:
	disappear ROUTE_22_BLUE
	end
	
Route22RivalScene1:
	end
	
Route22RivalScene2:
	end

VictoryRoadEntranceSign:
	jumptext Route22PokemonLeagueSignText
	
Route22Rival1Script:
	variablesprite SPRITE_OAK_BLUE, SPRITE_BLUE
	special LoadUsedSpritesGFX
	appear ROUTE_22_BLUE
	playmusic MUSIC_MEET_RIVAL
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .RivalWalksFromTop
        ifequal 5, .RivalWalksFromBottom
        
.RivalWalksFromTop:
	applymovement ROUTE_22_BLUE, ROUTE_22_Rival_Movement_Top
	turnobject PLAYER, DOWN
	opentext
	writetext Route22RivalBeforeBattleText1
	waitbutton
	closetext
	sjump Rival1ScriptCont
	
.RivalWalksFromBottom:
	applymovement ROUTE_22_BLUE, ROUTE_22_Rival_Movement_Bottom
	opentext
	writetext Route22RivalBeforeBattleText1
	waitbutton
	closetext
	sjump Rival1ScriptCont
	
ROUTE_22_Rival_Movement_Top:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	turn_head UP
	step_end
	
ROUTE_22_Rival_Movement_Bottom:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end
	
Rival1ScriptCont:
	checkevent EVENT_GOT_A_CHARMANDER_FROM_OAK
	iftrue RivalHasSquirtleBattle1
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	iftrue RivalHasBulbasaurBattle1
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	iftrue RivalHasCharmanderBattle1
	
RivalHasCharmanderBattle1:
	winlosstext Route22Rival1DefeatedText, Route22AmIGreatOrWhatText
	loadtrainer BLUE2, BLUE2_CHARMANDER
	startbattle
	reloadmapafterbattle
	opentext
	writetext Route22RivalAfterBattleText1
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 4, RivalLeavesFromTop
        ifequal 5, RivalLeavesFromBottom
	
RivalHasSquirtleBattle1:
	winlosstext Route22Rival1DefeatedText, Route22AmIGreatOrWhatText
	loadtrainer BLUE2, BLUE2_SQUIRTLE
	startbattle
	reloadmapafterbattle
	opentext
	writetext Route22RivalAfterBattleText1
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 4, RivalLeavesFromTop
        ifequal 5, RivalLeavesFromBottom
	
RivalHasBulbasaurBattle1:
	winlosstext Route22Rival1DefeatedText, Route22AmIGreatOrWhatText
	loadtrainer BLUE2, BLUE2_BULBASAUR
	startbattle
	reloadmapafterbattle
	opentext
	writetext Route22RivalAfterBattleText1
	waitbutton
	closetext
	playmusic MUSIC_MEET_RIVAL_ALT
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 4, RivalLeavesFromTop
        ifequal 5, RivalLeavesFromBottom
        
RivalLeavesFromTop:
	applymovement ROUTE_22_BLUE, Route22RivalLeaveMovementTop1
	disappear ROUTE_22_BLUE
	special RestartMapMusic
	setevent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	setscene SCENE_ROUTE_22_NOOP
	end
	
RivalLeavesFromBottom:
	applymovement ROUTE_22_BLUE, Route22RivalLeaveMovementBottom1
	disappear ROUTE_22_BLUE
	special RestartMapMusic
	setevent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	setscene SCENE_ROUTE_22_NOOP
	end
	
Route22RivalLeaveMovementTop1:
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end
	
Route22RivalLeaveMovementBottom1:
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end
	
Route22RivalBeforeBattleText1:
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGEs!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

Route22RivalAfterBattleText1:
	text "I heard #MON"
	line "LEAGUE has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22Rival1DefeatedText:
	text "<RIVAL>: Awww!"
	line "You just lucked"
	cont "out!"
	prompt

Route22Rival1VictoryText:
	text "<RIVAL>: What?"
	line "Why do I have 2"
	cont "#MON?"

	para "You should catch"
	cont "some more too!"
	prompt
	
Route22AmIGreatOrWhatText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

Route22RivalBeforeBattleText2:
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going to"
	line "#MON LEAGUE?"

	para "You collected all"
	line "the BADGEs too?"
	cont "That's cool!"

	para "Then I'll whip you"
	line "<PLAYER> as a"
	cont "warm up for"
	cont "#MON LEAGUE!"

	para "Come on!"
	done

Route22RivalAfterBattleText2:
	text "That loosened me"
	line "up! I'm ready for"
	cont "#MON LEAGUE!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

Route22Rival2DefeatedText:
	text "What!?"

	para "I was just"
	line "careless!"
	prompt

Route22Rival2VictoryText:
	text "<RIVAL>: Hahaha!"
	line "<PLAYER>! That's"
	cont "your best? You're"
	cont "nowhere near as"
	cont "good as me, pal!"

	para "Go train some"
	line "more! You loser!"
	prompt

Route22PokemonLeagueSignText:
	text "#MON LEAGUE"
	line "Front Gate"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, VICTORY_ROAD_GATE, 1

	def_coord_events
	coord_event  29,  4, SCENE_ROUTE_22_RIVAL_1, Route22Rival1Script
	coord_event  29,  5, SCENE_ROUTE_22_RIVAL_1, Route22Rival1Script
	
	def_bg_events
	bg_event  7, 11, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
	object_event  24,  5, SPRITE_OAK_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Rival1Script, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
