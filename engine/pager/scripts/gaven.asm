GavenPagerCalleeScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVEN3
	checkflag ENGINE_GAVEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_GAVEN_THURSDAY_MORNING
	iftrue .NotThursday
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, .NotThursday
	checktime MORN
	iftrue GavenThursdayMorningScript

.NotThursday:
	farsjump GavenHangUpNotThursdayScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	farsjump GavenReminderScript

GavenPagerPagerScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVEN3
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_GAVEN_READY_FOR_REMATCH
	iftrue .WaitingForBattle
	checkflag ENGINE_GAVEN_THURSDAY_MORNING
	iftrue .WaitingForBattle
	farscall PagerScript_Random2
	ifequal 0, GavenWantsRematch

.WaitingForBattle:
	farscall PagerScript_Random3
	ifequal 0, GavenFoundRare
	farsjump Pager_GenericCall_Male

GavenThursdayMorningScript:
	setflag ENGINE_GAVEN_THURSDAY_MORNING

GavenWantsRematch:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	setflag ENGINE_GAVEN_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

GavenFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male
