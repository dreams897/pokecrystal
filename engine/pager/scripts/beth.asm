BethPagerCalleeScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_BETH_FRIDAY_AFTERNOON
	iftrue .NotFriday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checktime DAY
	iftrue BethFridayAfternoon

.NotFriday:
	farsjump BethHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	farsjump BethBattleReminderScript

BethPagerPagerScript:
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_BETH_FRIDAY_AFTERNOON
	iftrue .Generic
	farscall PagerScript_Random2
	ifequal 0, BethWantsBattle

.Generic:
	farsjump Pager_GenericCall_Female

BethFridayAfternoon:
	setflag ENGINE_BETH_FRIDAY_AFTERNOON

BethWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_26
	setflag ENGINE_BETH_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Female
