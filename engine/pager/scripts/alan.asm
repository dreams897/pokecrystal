AlanPagerCalleeScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
	iftrue .NotWednesday
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue .FireStone
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, .NotWednesday
	checktime DAY
	iftrue AlanWednesdayDay

.NotWednesday:
	farsjump AlanHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	farsjump AlanReminderScript

.FireStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	farsjump AlanComePickUpScript

AlanPagerPagerScript:
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_ALAN_WEDNESDAY_AFTERNOON
	iftrue .Generic
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue .Generic
	farscall PagerScript_Random3
	ifequal 0, AlanWantsBattle
	farscall PagerScript_Random2
	ifequal 0, AlanHasFireStone

.FireStone:
	farscall PagerScript_Random11
	ifequal 0, AlanHasFireStone

.Generic:
	farsjump Pager_GenericCall_Male

AlanWednesdayDay:
	setflag ENGINE_ALAN_WEDNESDAY_AFTERNOON

AlanWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	setflag ENGINE_ALAN_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

AlanHasFireStone:
	setflag ENGINE_ALAN_HAS_FIRE_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_36
	farsjump PagerScript_FoundItem_Male
