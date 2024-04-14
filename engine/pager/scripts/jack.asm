JackPagerCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue .NotMonday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checktime MORN
	iftrue JackMondayMorning

.NotMonday:
	farsjump JackPagerTipsScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	farsjump JackWantsBattleScript

JackPagerPagerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	farscall PagerScript_GreetPager_Male
	farscall PagerScript_Random2
	ifequal 0, JackBattleTrivia
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue .WaitingForBattle
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue .WaitingForBattle
	farscall PagerScript_Random2
	ifequal 0, JackWantsToBattle

.WaitingForBattle:
	farscall PagerScript_Random3
	ifequal 0, JackFindsRare
	farsjump Pager_GenericCall_Male

JackMondayMorning:
	setflag ENGINE_JACK_MONDAY_MORNING

JackWantsToBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	setflag ENGINE_JACK_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

JackFindsRare:
	farsjump Pager_CheckIfUnseenRare_Male

JackBattleTrivia:
	farsjump JackTriviaScript
