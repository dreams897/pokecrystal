ArniePagerCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue .NotTuesday
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NotTuesday
	checktime MORN
	iftrue ArnieTuesdayMorning

.NotTuesday:
	checkflag ENGINE_YANMA_SWARM
	iftrue .AlreadySwarming
	farsjump ArnieHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump ArnieReminderScript

.AlreadySwarming:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump ArnieHurryScript

ArniePagerPagerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_ARNIE_READY_FOR_REMATCH
	iftrue .Swarm
	checkflag ENGINE_ARNIE_TUESDAY_MORNING
	iftrue .Swarm
	farscall PagerScript_Random2
	ifequal 0, ArnieWantsBattle

.Swarm:
	farscall PagerScript_Random5
	ifequal 0, ArnieYanmaSwarm
	farscall PagerScript_Random3
	ifequal 0, ArnieFoundRare
	farsjump Pager_GenericCall_Male

ArnieTuesdayMorning:
	setflag ENGINE_ARNIE_TUESDAY_MORNING

ArnieWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	setflag ENGINE_ARNIE_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

ArnieYanmaSwarm: ; start swarm
	checkflag ENGINE_YANMA_SWARM
	iftrue ArnieYanmaAlreadySwarming
	setflag ENGINE_YANMA_SWARM
	getmonname STRING_BUFFER_4, YANMA
	swarm SWARM_YANMA, ROUTE_35
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump ArnieSwarmScript

ArnieFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male

ArnieYanmaAlreadySwarming:
	farsjump Pager_GenericCall_Male
