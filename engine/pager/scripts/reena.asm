ReenaPagerCalleeScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, REENA1
	checkflag ENGINE_REENA_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_REENA_SUNDAY_MORNING
	iftrue .NotSunday
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, .NotSunday
	checktime MORN
	iftrue ReenaSundayMorning

.NotSunday:
	farsjump ReenaForwardScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	farsjump ReenaHurryScript

ReenaPagerPagerScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, REENA1
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_REENA_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_REENA_SUNDAY_MORNING
	iftrue .Generic
	farscall PagerScript_Random2
	ifequal 0, ReenaWantsBattle

.Generic:
	farsjump Pager_GenericCall_Female

ReenaSundayMorning:
	setflag ENGINE_REENA_SUNDAY_MORNING

ReenaWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	setflag ENGINE_REENA_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Female
