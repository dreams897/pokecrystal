BrentPagerCalleeScript:
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue .NotMonday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checktime MORN
	iftrue BrentMondayMorning

.NotMonday:
	farsjump BrentHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_43
	farsjump BrentReminderScript

BrentPagerPagerScript:
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	farscall PagerScript_GreetPager_Male
	farscall PagerScript_Random2
	ifequal 0, BrentBillTrivia
	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_BRENT_MONDAY_MORNING
	iftrue .Generic
	farscall PagerScript_Random2
	ifequal 0, BrentWantsBattle

.Generic:
	farsjump Pager_GenericCall_Male

BrentMondayMorning:
	setflag ENGINE_BRENT_MONDAY_MORNING

BrentWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_43
	setflag ENGINE_BRENT_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

BrentBillTrivia:
	farsjump BrentBillTriviaScript
