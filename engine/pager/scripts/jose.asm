JosePagerCalleeScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE2
	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Male
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue .NotSaturday
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue .HasItem
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checktime NITE
	iftrue JoseSaturdayNight

.NotSaturday:
	farsjump JoseHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	farsjump JoseReminderScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	farsjump JoseReminderScript

JosePagerPagerScript:
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE2
	farscall PagerScript_GreetPager_Male
	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue .Generic
	checkflag ENGINE_JOSE_SATURDAY_NIGHT
	iftrue .Generic
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue .Generic
	farscall PagerScript_Random3
	ifequal 0, JoseWantsBattle
	farscall PagerScript_Random3
	ifequal 0, JoseHasStarPiece

.Generic:
	farscall PagerScript_Random3
	ifequal 0, JoseFoundRare
	farsjump Pager_GenericCall_Male

JoseSaturdayNight:
	setflag ENGINE_JOSE_SATURDAY_NIGHT

JoseWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	setflag ENGINE_JOSE_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Male

JoseFoundRare:
	farsjump Pager_CheckIfUnseenRare_Male

JoseHasStarPiece:
	setflag ENGINE_JOSE_HAS_STAR_PIECE
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_27
	farsjump PagerScript_FoundItem_Male
