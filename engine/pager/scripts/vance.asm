VancePagerCalleeScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue .NotWednesday
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, .NotWednesday
	checktime NITE
	iftrue VanceWednesdayNight

.NotWednesday:
	farsjump VanceLookingForwardScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	farsjump VanceHurryHurryScript

VancePagerPagerScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_VANCE_WEDNESDAY_NIGHT
	iftrue .WantsBattle
	farscall PagerScript_Random3
	ifequal 0, VanceWantsRematch
	ifequal 1, VanceWantsRematch

.WantsBattle:
	farsjump Pager_GenericCall_Male

VanceWednesdayNight:
	setflag ENGINE_VANCE_WEDNESDAY_NIGHT

VanceWantsRematch:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_44
	setflag ENGINE_VANCE_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male
