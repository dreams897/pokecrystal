ToddPagerCalleeScript:
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	checkflag ENGINE_TODD_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_TODD_SATURDAY_MORNING
	iftrue .NotSaturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checktime MORN
	iftrue ToddSaturdayMorning

.NotSaturday:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleOn
	farsjump ToddNoItemScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	farsjump ToddForwardScript

.SaleOn:
	farsjump ToddHurryScript

ToddPagerPagerScript:
	gettrainername STRING_BUFFER_3, CAMPER, TODD1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_TODD_READY_FOR_REMATCH
	iftrue .TryForSale
	checkflag ENGINE_TODD_SATURDAY_MORNING
	iftrue .TryForSale
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .NoGoldenrod
	farscall PagerScript_Random2
	ifequal 0, ToddWantsBattle

.TryForSale:
	farscall PagerScript_Random2
	ifequal 0, ToddDeptStoreSale

.NoGoldenrod:
	farscall PagerScript_Random3
	ifequal 0, ToddFoundRare
	farsjump Pager_GenericCall_Male

ToddSaturdayMorning:
	setflag ENGINE_TODD_SATURDAY_MORNING

ToddWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_34
	setflag ENGINE_TODD_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

ToddFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male

ToddDeptStoreSale:
	setflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	farsjump ToddItemScript
