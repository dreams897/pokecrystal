BeverlyPagerCalleeScript:
	gettrainername STRING_BUFFER_3, POKEFANF, BEVERLY1
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue .HasNugget
	farsjump BeverlyHangUpScript

.HasNugget:
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	farsjump BeverlyComePickUpScript

BeverlyPagerPagerScript:
	gettrainername STRING_BUFFER_3, POKEFANF, BEVERLY1
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue .HasNugget
	farscall PagerScript_Random4
	ifequal 0, .FoundNugget

.HasNugget:
	farsjump Pager_GenericCall_Female

.FoundNugget:
	setflag ENGINE_BEVERLY_HAS_NUGGET
	getlandmarkname STRING_BUFFER_5, LANDMARK_NATIONAL_PARK
	farsjump PagerScript_FoundItem_Female
