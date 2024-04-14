DerekPagerCalleeScript:
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK1
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_DEREK_HAS_NUGGET
	iftrue .Nugget
	farscall PagerScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	farsjump DerekHangUpScript

.ContestToday:
	farsjump PagerScript_BugCatchingContest

.Nugget:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_39
	farsjump DerekComePickUpScript

DerekPagerPagerScript:
	gettrainername STRING_BUFFER_3, POKEFANM, DEREK1
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
	farscall PagerScript_Random4
	ifequal 0, .Nugget
	farsjump Pager_GenericCall_Male

.ContestToday:
	farsjump PagerScript_BugCatchingContest

.Nugget:
	setflag ENGINE_DEREK_HAS_NUGGET
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_39
	farsjump PagerScript_FoundItem_Male
