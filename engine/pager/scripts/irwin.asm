IrwinPagerCalleeScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	farsjump IrwinRandomTextScript

.Rockets:
	farsjump IrwinRocketRumorScript

IrwinPagerPagerScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	farsjump IrwinRumorScript

.Rockets:
	farsjump IrwinRocketRumorScript
