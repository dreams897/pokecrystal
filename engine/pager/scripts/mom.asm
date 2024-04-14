MomPagerCalleeScript:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .started_quest
	checkevent EVENT_DUDE_TALKED_TO_YOU
	iftrue MomPagerLectureScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue MomPagerNoGymQuestScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue MomPagerNoPokedexScript
	sjump MomPagerNoPokemonScript

.started_quest
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPagerHangUpScript
	farwritetext MomPagerGreetingText
	promptbutton
	getcurlandmarkname STRING_BUFFER_3
	readvar VAR_ENVIRONMENT
	ifequal TOWN, MomPagerInTown
	ifequal ROUTE, MomPagerOnRoute
	sjump MomPagerOther

MomPagerLandmark:
	farwritetext MomPagerLandmarkText
	promptbutton
	sjump MomSavingMoney

MomPagerInTown:
	readvar VAR_MAPGROUP
	ifequal GROUP_NEW_BARK_TOWN, .newbark
	ifequal GROUP_CHERRYGROVE_CITY, .cherrygrove
	ifequal GROUP_VIOLET_CITY, .violet
	ifequal GROUP_AZALEA_TOWN, .azalea
	ifequal GROUP_GOLDENROD_CITY, .goldenrod
	farwritetext MomPagerGenericAreaText
	promptbutton
	sjump MomSavingMoney

.newbark
	farwritetext MomPagerNewBarkText
	promptbutton
	sjump MomSavingMoney

.cherrygrove
	farwritetext MomPagerCherrygroveText
	promptbutton
	sjump MomSavingMoney

.violet
	getlandmarkname STRING_BUFFER_4, LANDMARK_SPROUT_TOWER
	sjump MomPagerLandmark
.azalea
	getlandmarkname STRING_BUFFER_4, LANDMARK_SLOWPOKE_WELL
	sjump MomPagerLandmark
.goldenrod
	getlandmarkname STRING_BUFFER_4, LANDMARK_RADIO_TOWER
	sjump MomPagerLandmark

MomPagerOnRoute:
	farwritetext MomOtherAreaText
	promptbutton
	sjump MomSavingMoney

MomPagerOther:
	farwritetext MomDeterminedText
	promptbutton
	sjump MomSavingMoney

MomSavingMoney:
	checkflag ENGINE_MOM_SAVING_MONEY
	iffalse .NotSaving
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .SavingHasMoney
	sjump .SavingNoMoney

.NotSaving:
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .HasMoney
	sjump .NoMoney

.SavingHasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomCheckBalanceText
	yesorno
	iftrue MomPagerSaveMoneyScript
	sjump MomPagerWontSaveMoneyScript

.SavingNoMoney:
	farwritetext MomImportantToSaveText
	yesorno
	iftrue MomPagerSaveMoneyScript
	sjump MomPagerWontSaveMoneyScript

.NoMoney:
	farwritetext MomYoureNotSavingText
	yesorno
	iftrue MomPagerSaveMoneyScript
	sjump MomPagerWontSaveMoneyScript

.HasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomYouveSavedText
	yesorno
	iftrue MomPagerSaveMoneyScript
	sjump MomPagerWontSaveMoneyScript

MomPagerSaveMoneyScript:
	setflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomOKIllSaveText
	promptbutton
	sjump MomPagerHangUpScript

MomPagerWontSaveMoneyScript:
	clearflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomPagerWontSaveMoneyText
	promptbutton
	sjump MomPagerHangUpScript

MomPagerHangUpScript:
	farwritetext MomPagerHangUpText
	end

MomPagerNoPokemonScript:
	farwritetext MomPagerNoPokemonText
	end

MomPagerNoPokedexScript:
	farwritetext MomPagerNoPokedexText
	end

MomPagerNoGymQuestScript:
	farwritetext MomPagerNoGymQuestText
	end

MomPagerLectureScript:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	setflag ENGINE_MOM_ACTIVE
	specialpagercall SPECIALCALL_NONE
	farwritetext MomPagerLectureText
	yesorno
	iftrue MomPagerSaveMoneyScript
	sjump MomPagerWontSaveMoneyScript
