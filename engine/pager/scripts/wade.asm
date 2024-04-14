WadePagerCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue .NotTuesday
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .HasItem
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NotTuesday
	checktime NITE
	iftrue WadeTuesdayNight

.NotTuesday:
	farscall PagerScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	farsjump WadeNoBerriesScript

.ContestToday:
	farsjump PagerScript_BugCatchingContest

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeQuickBattleScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeComeQuickScript

WadePagerPagerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	farscall PagerScript_GreetPager_Male
	farscall PagerScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .next
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue .next
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .next
	farscall PagerScript_Random2
	ifequal 0, WadeHasItem2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .next
	farscall PagerScript_Random2
	ifequal 0, WadeWantsBattle2

.next:
	farscall PagerScript_Random3
	ifequal 0, WadeFoundRare
	farsjump Pager_GenericCall_Male

.ContestToday:
	farsjump PagerScript_BugCatchingContest

WadeTuesdayNight:
	setflag ENGINE_WADE_TUESDAY_NIGHT

WadeWantsBattle2:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	setflag ENGINE_WADE_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

WadeFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male

WadeHasItem2:
	setflag ENGINE_WADE_HAS_ITEM
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	clearevent EVENT_WADE_HAS_BERRY
	clearevent EVENT_WADE_HAS_PECHA_BERRY
	clearevent EVENT_WADE_HAS_CHERI_BERRY
	clearevent EVENT_WADE_HAS_PERSIM_BERRY
	random 4
	ifequal 0, .Berry
	ifequal 1, .PechaBerry
	ifequal 2, .CheriBerry
	ifequal 3, .Bitterberry

.Berry:
	setevent EVENT_WADE_HAS_BERRY
	sjump .FoundBerry

.PechaBerry:
	setevent EVENT_WADE_HAS_PECHA_BERRY
	sjump .FoundBerry

.CheriBerry:
	setevent EVENT_WADE_HAS_CHERI_BERRY
	sjump .FoundBerry

.Bitterberry:
	setevent EVENT_WADE_HAS_PERSIM_BERRY

.FoundBerry:
	farsjump PagerScript_FoundItem_Male
