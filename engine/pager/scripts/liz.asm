LizPagerCalleeScript:
	gettrainername STRING_BUFFER_3, PICNICKER, LIZ1
	checkflag ENGINE_LIZ_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PagerScript_AnswerPager_Female
	checkflag ENGINE_LIZ_THURSDAY_AFTERNOON
	iftrue .NotThursday
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, .NotThursday
	checktime DAY
	iftrue LizThursdayAfternoon

.NotThursday:
	special RandomPagerMon
	farsjump LizHangUpScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	farsjump LizReminderScript

LizPagerPagerScript:
	gettrainername STRING_BUFFER_3, PICNICKER, LIZ1
	farscall PagerScript_Random4
	ifequal 0, LizWrongNumber
	farscall PagerScript_GreetPager_Female
	checkflag ENGINE_LIZ_READY_FOR_REMATCH
	iftrue .next
	checkflag ENGINE_LIZ_THURSDAY_AFTERNOON
	iftrue .next

.next:
	farscall PagerScript_Random2
	ifequal 0, LizGossip
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .Generic
	farscall PagerScript_Random2
	ifequal 0, LizWantsBattle

.Generic:
	farsjump Pager_GenericCall_Female

LizThursdayAfternoon:
	setflag ENGINE_LIZ_THURSDAY_AFTERNOON

LizWantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_32
	setflag ENGINE_LIZ_READY_FOR_REMATCH
	farsjump PagerScript_WantsToBattle_Female

LizWrongNumber:
	farsjump LizWrongNumberScript

LizGossip:
	random 9
	ifequal 0, .CoolTrainerM
	ifequal 1, .Beauty
	ifequal 2, .Grunt
	ifequal 3, .Teacher
	ifequal 4, .SwimmerF
	ifequal 5, .KimonoGirl
	ifequal 6, .Skier
	ifequal 7, .Medium
	ifequal 8, .PokefanM

.CoolTrainerM:
	gettrainerclassname STRING_BUFFER_4, COOLTRAINERM
	sjump LizGossipScript

.Beauty:
	gettrainerclassname STRING_BUFFER_4, BEAUTY
	sjump LizGossipScript

.Grunt:
	gettrainerclassname STRING_BUFFER_4, GRUNTM
	sjump LizGossipScript

.Teacher:
	gettrainerclassname STRING_BUFFER_4, TEACHER
	sjump LizGossipScript

.SwimmerF:
	gettrainerclassname STRING_BUFFER_4, SWIMMERF
	sjump LizGossipScript

.KimonoGirl:
	gettrainerclassname STRING_BUFFER_4, KIMONO_GIRL
	sjump LizGossipScript

.Skier:
	gettrainerclassname STRING_BUFFER_4, SKIER
	sjump LizGossipScript

.Medium:
	gettrainerclassname STRING_BUFFER_4, MEDIUM
	sjump LizGossipScript

.PokefanM:
	gettrainerclassname STRING_BUFFER_4, POKEFANM
	sjump LizGossipScript

LizGossipScript:
	farsjump LizGossipRandomScript
