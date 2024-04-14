BuenaPagerCalleeScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue BuenaPagerScript_Rocket
	readvar VAR_HOUR
	ifgreater 17, BuenaPagerScript_AfterMidnightCallee
	scall BuenaPagerScript_CheckTimeOfDayCallee
	sjump BuenaPagerScript_RandomCallee

BuenaPagerPagerScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue BuenaPagerScript_Rocket
	scall BuenaPagerScript_CheckTimeOfDayPager
	sjump BuenaPagerScript_RandomPager

BuenaPagerScript_CheckTimeOfDayCallee:
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	writetext BuenaPagerNiteAnswerText
	promptbutton
	end

.morn
	writetext BuenaPagerMorningAnswerText
	promptbutton
	end

.day
	writetext BuenaPagerDayAnswerText
	promptbutton
	end

BuenaPagerScript_AfterMidnightCallee:
	writetext BuenaPagerMidnightAnswerText
	end

BuenaPagerScript_CheckTimeOfDayPager:
	readvar VAR_HOUR
	ifgreater 17, BuenaPagerScript_AfterMidnightPager
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	writetext BuenaPagerNiteText
	promptbutton
	end

.morn
	writetext BuenaPagerMorningText
	promptbutton
	end

.day
	writetext BuenaPagerDayText
	promptbutton
	end

BuenaPagerScript_AfterMidnightPager:
	writetext BuenaPagerMidnightText
	promptbutton
	end

BuenaPagerScript_Rocket:
	writetext BuenaPagerRocketText
	end

BuenaPagerScript_RandomPager:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .PostE4
	random 11
	sjump .Jumptable

.PostE4:
	random 14

.Jumptable:
	ifequal 0, .zero
	ifequal 1, .one
	ifequal 2, .two
	ifequal 3, .three
	ifequal 4, .four
	ifequal 5, .five
	ifequal 6, .six
	ifequal 7, .seven
	ifequal 8, .eight
	ifequal 9, .nine
	ifequal 10, .ten
	ifequal 11, .eleven
	ifequal 12, .twelve
	ifequal 13, .thirteen

.zero
	writetext BuenaPagerWentOutWithBenText
	sjump .finish

.one
	writetext BuenaPagerReceptionistText
	sjump .finish

.two
	writetext BuenaPagerLuckyNumberShowText
	sjump .finish

.three
	writetext BuenaPagerStressedFromWorkText
	sjump .finish

.four
	writetext BuenaPagerProfessorOakText
	sjump .finish

.five
	writetext BuenaPagerGotAColdText
	sjump .finish

.six
	writetext BuenaPagerRadioCardQuestionsText
	sjump .finish

.seven
	writetext BuenaPagerPikachuFanClubText
	sjump .finish

.eight
	writetext BuenaPagerRadioTowerDirectorText
	sjump .finish

.nine
	writetext BuenaPagerWhenDoYouRelaxText
	sjump .finish

.ten
	writetext BuenaPagerStarterPokemonText
	sjump .finish

.eleven
	writetext BuenaPagerCompanyVacationText
	sjump .finish

.twelve
	writetext BuenaPagerBenAndFernText
	sjump .finish

.thirteen
	writetext BuenaPagerGoingShoppingText

.finish
	end

BuenaPagerScript_RandomCallee:
	random 3
	ifequal 0, .zero
	ifequal 1, .one
	ifequal 2, .two

.zero
	writetext BuenaPagerFavoriteSlotMachineAnswerText
	end

.one
	writetext BuenaPagerPokegearAnswerText
	end

.two
	writetext BuenaPagerCoopedUpInRadioTowerAnswerText
	end

INCLUDE "data/pager/text/buena.asm"
