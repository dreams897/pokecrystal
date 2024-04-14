HueyPagerCalleeScript:
	gettrainername STRING_BUFFER_3, SAILOR, HUEY1
	checkflag ENGINE_HUEY_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_HUEY_WEDNESDAY_NIGHT
	iftrue .NotWednesday
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, .NotWednesday
	checktime NITE
	iftrue HueyWednesdayNight

.NotWednesday:
	special RandomPagerMon
	farsjump HueyHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_LIGHTHOUSE
	farsjump HueyWantsBattleScript

HueyPagerPagerScript:
	gettrainername STRING_BUFFER_3, SAILOR, HUEY1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_HUEY_READY_FOR_REMATCH
	iftrue .Flavor
	checkflag ENGINE_HUEY_WEDNESDAY_NIGHT
	iftrue .Flavor
	farscall PagerScript_Random3
	ifequal 0, HueyWantsBattle
	ifequal 1, HueyWantsBattle

.Flavor:
	farsjump PagerScript_MonFlavorText

HueyWednesdayNight:
	setflag ENGINE_HUEY_WEDNESDAY_NIGHT

HueyWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_LIGHTHOUSE
	setflag ENGINE_HUEY_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male
