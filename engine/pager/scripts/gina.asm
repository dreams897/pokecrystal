GinaPagerCalleeScript:
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_GINA_SUNDAY_AFTERNOON
	iftrue .NotSunday
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue .HasLeafStone
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, .NotSunday
	checktime DAY
	iftrue GinaSundayDay

.NotSunday:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	farsjump GinaHangUpScript

.Rockets:
	farsjump GinaRocketRumorScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	farsjump GinaReminderScript

.HasLeafStone:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	farsjump GinaComePickUpScript

GinaPagerPagerScript:
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue GinaRockets
	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_GINA_SUNDAY_AFTERNOON
	iftrue .Generic
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue .Generic
	farscall PagerScript_Random2
	ifequal 0, GinaHasLeafStone

.GaveLeafStone:
	farscall PagerScript_Random11
	ifequal 0, GinaHasLeafStone
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .Generic
	farscall PagerScript_Random3
	ifequal 0, GinaWantsBattle

.Generic:
	farsjump Pager_GenericCall_Female

GinaSundayDay:
	setflag ENGINE_GINA_SUNDAY_AFTERNOON

GinaWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	setflag ENGINE_GINA_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Female

GinaRockets:
	farsjump GinaRocketRumorScript

GinaHasLeafStone:
	setflag ENGINE_GINA_HAS_LEAF_STONE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	farsjump PagerScript_FoundItem_Female
