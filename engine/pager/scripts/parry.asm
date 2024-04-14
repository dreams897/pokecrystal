ParryPagerCalleeScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue .WantsRematch
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .WantsRematch
	checktime DAY
	iftrue ParryFridayDay

.WantsRematch:
	farsjump ParryBattleWithMeScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump ParryHaventYouGottenToScript

ParryPagerPagerScript:
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .GenericCall
	checkflag ENGINE_PARRY_FRIDAY_AFTERNOON
	iftrue .GenericCall
	farscall PagerScript_Random2
	ifequal 0, ParryWantsBattle
	ifequal 1, ParryWantsBattle

.GenericCall:
	farsjump Pager_GenericCall_Male

ParryFridayDay:
	setflag ENGINE_PARRY_FRIDAY_AFTERNOON

ParryWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	setflag ENGINE_PARRY_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male
