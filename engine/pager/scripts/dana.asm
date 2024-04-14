DanaPagerCalleeScript:
	gettrainername STRING_BUFFER_3, LASS, DANA1
	checkflag ENGINE_DANA_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_DANA_THURSDAY_NIGHT
	iftrue .NotThursday
	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue .HasThunderstone
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, .NotThursday
	checktime NITE
	iftrue DanaThursdayNight

.NotThursday:
	farsjump DanaHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump DanaReminderScript

.HasThunderstone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump DanaComePickUpScript

DanaPagerPagerScript:
	gettrainername STRING_BUFFER_3, LASS, DANA1
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_DANA_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_DANA_THURSDAY_NIGHT
	iftrue .Generic
	checkflag ENGINE_DANA_HAS_THUNDERSTONE
	iftrue .Generic
	farscall PagerScript_Random3
	ifequal 0, DanaWantsBattle
	farscall PagerScript_Random2
	ifequal 0, DanaHasThunderstone

.Thunderstone:
	farscall PagerScript_Random11
	ifequal 0, DanaHasThunderstone

.Generic:
	farscall PagerScript_Random3
	ifequal 0, DanaFoundRare
	farsjump Pager_GenericCall_Female

DanaThursdayNight:
	setflag ENGINE_DANA_THURSDAY_NIGHT

DanaWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	setflag ENGINE_DANA_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Female

DanaFoundRare:
	farsjump Pager_CheckIfUnseenRare_Female

DanaHasThunderstone:
	setflag ENGINE_DANA_HAS_THUNDERSTONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_38
	farsjump PagerScript_FoundItem_Female
