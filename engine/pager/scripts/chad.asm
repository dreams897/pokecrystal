ChadPagerCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue .NotFriday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checktime MORN
	iftrue ChadFridayMorning

.NotFriday:
	farsjump ChadHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump ChadReminderScript

ChadPagerPagerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, CHAD1
	farscall PagerScript_GreetPager_Male
	farscall PagerScript_Random2
	ifequal 0, ChadOakGossip
	checkflag ENGINE_CHAD_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_CHAD_FRIDAY_MORNING
	iftrue .Generic
	farscall PagerScript_Random2
	ifequal 0, ChadWantsBattle

.Generic:
	farscall PagerScript_Random3
	ifequal 0, ChadFoundRare
	farsjump Pager_GenericCall_Male

ChadFridayMorning:
	setflag ENGINE_CHAD_FRIDAY_MORNING

ChadWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	setflag ENGINE_CHAD_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

ChadFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male

ChadOakGossip:
	farsjump ChadOakGossipScript
