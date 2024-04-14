KenjiPagerCalleeScript:
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	farscall PagerScript_AnswerPager_Male
	farsjump KenjiAnswerPagerScript

KenjiPagerPagerScript:
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	farscall PagerScript_GreetPager_Male
	farsjump KenjiCallingPagerScript
