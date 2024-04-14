WiltonPagerCalleeScript:
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_WILTON_THURSDAY_MORNING
	iftrue .NotThursday
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue .HasItem
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, .NotThursday
	checktime MORN
	iftrue WiltonThursdayMorning

.NotThursday:
	farsjump WiltonHaventFoundAnythingScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	farsjump WiltonNotBitingScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	farsjump WiltonWantThisScript

WiltonPagerPagerScript:
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .GenericCall
	checkflag ENGINE_WILTON_THURSDAY_MORNING
	iftrue .GenericCall
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue .GenericCall
	farscall PagerScript_Random2
	ifequal 0, WiltonWantsBattle
	farscall PagerScript_Random2
	ifequal 0, WiltonHasItem

.GenericCall:
	farsjump Pager_GenericCall_Male

WiltonThursdayMorning:
	setflag ENGINE_WILTON_THURSDAY_MORNING

WiltonWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	setflag ENGINE_WILTON_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

WiltonHasItem:
	setflag ENGINE_WILTON_HAS_ITEM
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	clearevent EVENT_WILTON_HAS_ULTRA_BALL
	clearevent EVENT_WILTON_HAS_GREAT_BALL
	clearevent EVENT_WILTON_HAS_POKE_BALL
	random 5
	ifequal 0, .UltraBall
	random 3
	ifequal 0, .GreatBall
	sjump .PokeBall

.UltraBall:
	setevent EVENT_WILTON_HAS_ULTRA_BALL
	sjump .FoundItem

.GreatBall:
	setevent EVENT_WILTON_HAS_GREAT_BALL
	sjump .FoundItem

.PokeBall:
	setevent EVENT_WILTON_HAS_POKE_BALL

.FoundItem:
	farsjump PagerScript_FoundItem_Male
