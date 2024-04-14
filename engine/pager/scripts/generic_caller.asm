Pager_GenericCall_Male:
	special RandomPagerMon
	farscall PagerScript_Random2
	ifequal 0, .Bragging
	farscall PagerScript_Generic_Male
	farsjump Pager_FoundAMon_Male

.Bragging:
	farsjump Pager_BraggingCall_Male

Pager_GenericCall_Female:
	special RandomPagerMon
	farscall PagerScript_Random2
	ifequal 0, .Bragging
	farscall PagerScript_Generic_Female
	farsjump Pager_FoundAMon_Female

.Bragging:
	farsjump Pager_BraggingCall_Female

Pager_BraggingCall_Male:
	farscall Pager_WhosBragging_Male
	farsjump Pager_FoundAMon_Male

Pager_BraggingCall_Female:
	farscall Pager_WhosBragging_Female
	farsjump Pager_FoundAMon_Female

Pager_FoundAMon_Male:
	special RandomPagerWildMon
	farscall PagerScript_Random2
	ifequal 0, .GotAway
	farscall Pager_WhoDefeatedMon_Male
	farsjump PagerScript_HangUpText_Male

.GotAway:
	farsjump Pager_GotAwayCall_Male

Pager_FoundAMon_Female:
	special RandomPagerWildMon
	farscall PagerScript_Random2
	ifequal 0, .GotAway
	farscall Pager_WhoDefeatedMon_Female
	farsjump PagerScript_HangUpText_Female

.GotAway:
	farsjump Pager_GotAwayCall_Female

Pager_GotAwayCall_Male:
	farscall Pager_WhoLostAMon_Male
	farsjump PagerScript_HangUpText_Male

Pager_GotAwayCall_Female:
	farscall Pager_WhoLostAMon_Female
	farsjump PagerScript_HangUpText_Female

Pager_WhosBragging_Male:
	readvar VAR_CALLERID
	ifequal PAGER_SCHOOLBOY_JACK, .Jack
	ifequal PAGER_COOLTRAINERM_GAVEN, .Gaven
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_YOUNGSTER_JOEY, .Joey
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_FISHER_RALPH, .Ralph
	ifequal PAGER_HIKER_ANTHONY, .Anthony
	ifequal PAGER_CAMPER_TODD, .Todd
	ifequal PAGER_BUG_CATCHER_ARNIE, .Arnie
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_SCHOOLBOY_CHAD, .Chad
	ifequal PAGER_POKEFANM_DEREK, .Derek
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_POKEMANIAC_BRENT, .Brent
	ifequal PAGER_BIRDKEEPER_VANCE, .Vance
	ifequal PAGER_FISHER_WILTON, .Wilton
	ifequal PAGER_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackIntelligenceKeepsRisingText
	promptbutton
	end

.Gaven:
	farwritetext GavenMonGreaterThanImaginedText
	promptbutton
	end

.Jose:
	farwritetext JoseMonsStickHasADeliciousAromaText
	promptbutton
	end

.Joey:
	farwritetext JoeyMonLookingSharperText
	promptbutton
	end

.Wade:
	farwritetext WadeAreYourMonGrowingText
	promptbutton
	end

.Ralph:
	farwritetext RalphNeglectingKidsText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyMonAteSomeBerriesText
	promptbutton
	end

.Todd:
	farwritetext ToddLooksCuteLikeMeText
	promptbutton
	end

.Arnie:
	farwritetext ArnieMonIsSoCuteText
	promptbutton
	end

.Alan:
	farwritetext AlanGettingStrongerText
	promptbutton
	end

.Chad:
	farwritetext ChadObservingWildText
	promptbutton
	end

.Derek:
	farwritetext DerekCheekPinchingText
	promptbutton
	end

.Tully:
	farwritetext TullyMonHasGrownText
	promptbutton
	end

.Brent:
	farwritetext BrentRareTradeText
	promptbutton
	end

.Vance:
	farwritetext VanceMonHasBecomeTougherText
	promptbutton
	end

.Wilton:
	farwritetext WiltonMonHasGrownText
	promptbutton
	end

.Parry:
	farwritetext ParryNothingCanMatchText
	promptbutton
	end

Pager_WhosBragging_Female:
	readvar VAR_CALLERID
	ifequal PAGER_POKEFAN_BEVERLY, .Beverly
	ifequal PAGER_COOLTRAINERF_BETH, .Beth
	ifequal PAGER_COOLTRAINERF_REENA, .Reena
	ifequal PAGER_PICNICKER_LIZ, .Liz
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany
	ifequal PAGER_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyMadeMonEvenCuterText
	promptbutton
	end

.Beth:
	farwritetext BethExhilaratingRideText
	promptbutton
	end

.Reena:
	farwritetext ReenaMonsIsAPerfectMatchText
	promptbutton
	end

.Liz:
	farwritetext LizMonAlwaysWantsToNuzzleText
	promptbutton
	end

.Gina:
	farwritetext GinaGettingInSyncWithMonText
	promptbutton
	end

.Dana:
	farwritetext DanaTakingPhotosText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyMonIsAdorableText
	promptbutton
	end

.Erin:
	farwritetext ErinMonIsMuchStrongerText
	promptbutton
	end

Pager_WhoDefeatedMon_Male:
	readvar VAR_CALLERID
	ifequal PAGER_SCHOOLBOY_JACK, .Jack
	ifequal PAGER_COOLTRAINERM_GAVEN, .Gaven
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_YOUNGSTER_JOEY, .Joey
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_FISHER_RALPH, .Ralph
	ifequal PAGER_HIKER_ANTHONY, .Anthony
	ifequal PAGER_CAMPER_TODD, .Todd
	ifequal PAGER_BUG_CATCHER_ARNIE, .Arnie
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_SCHOOLBOY_CHAD, .Chad
	ifequal PAGER_POKEFANM_DEREK, .Derek
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_POKEMANIAC_BRENT, .Brent
	ifequal PAGER_BIRDKEEPER_VANCE, .Vance
	ifequal PAGER_FISHER_WILTON, .Wilton
	ifequal PAGER_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackDefeatedMonText
	promptbutton
	end

.Gaven:
	farwritetext GavenDefeatedMonText
	promptbutton
	end

.Jose:
	farwritetext JoseDefeatedMonText
	promptbutton
	end

.Joey:
	farwritetext JoeyDefeatedMonText
	promptbutton
	end

.Wade:
	farwritetext WadeDefeatedMonText
	promptbutton
	end

.Ralph:
	farwritetext RalphDefeatedMonText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyDefeatedMonText
	promptbutton
	end

.Todd:
	farwritetext ToddDefeatedMonText
	promptbutton
	end

.Arnie:
	farwritetext ArnieDefeatedMonText
	promptbutton
	end

.Alan:
	farwritetext AlanDefeatedMonText
	promptbutton
	end

.Chad:
	farwritetext ChadDefeatedMonText
	promptbutton
	end

.Derek:
	farwritetext DerekDefeatedMonText
	promptbutton
	end

.Tully:
	farwritetext TullyDefeatedMonText
	promptbutton
	end

.Brent:
	farwritetext BrentDefeatedMonText
	promptbutton
	end

.Vance:
	farwritetext VanceDefeatedMonText
	promptbutton
	end

.Wilton:
	farwritetext WiltonDefeatedMonText
	promptbutton
	end

.Parry:
	farwritetext ParryDefeatedMonText
	promptbutton
	end

Pager_WhoDefeatedMon_Female:
	readvar VAR_CALLERID
	ifequal PAGER_POKEFAN_BEVERLY, .Beverly
	ifequal PAGER_COOLTRAINERF_BETH, .Beth
	ifequal PAGER_COOLTRAINERF_REENA, .Reena
	ifequal PAGER_PICNICKER_LIZ, .Liz
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany
	ifequal PAGER_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyDefeatedMonText
	promptbutton
	end

.Beth:
	farwritetext BethDefeatedMonText
	promptbutton
	end

.Reena:
	farwritetext ReenaDefeatedMonText
	promptbutton
	end

.Liz:
	farwritetext LizDefeatedMonText
	promptbutton
	end

.Gina:
	farwritetext GinaDefeatedMonText
	promptbutton
	end

.Dana:
	farwritetext DanaDefeatedMonText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyDefeatedMonText
	promptbutton
	end

.Erin:
	farwritetext ErinDefeatedMonText
	promptbutton
	end

Pager_WhoLostAMon_Male:
	readvar VAR_CALLERID
	ifequal PAGER_SCHOOLBOY_JACK, .Jack
	ifequal PAGER_COOLTRAINERM_GAVEN, .Gaven
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_YOUNGSTER_JOEY, .Joey
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_FISHER_RALPH, .Ralph
	ifequal PAGER_HIKER_ANTHONY, .Anthony
	ifequal PAGER_CAMPER_TODD, .Todd
	ifequal PAGER_BUG_CATCHER_ARNIE, .Arnie
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_SCHOOLBOY_CHAD, .Chad
	ifequal PAGER_POKEFANM_DEREK, .Derek
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_POKEMANIAC_BRENT, .Brent
	ifequal PAGER_BIRDKEEPER_VANCE, .Vance
	ifequal PAGER_FISHER_WILTON, .Wilton
	ifequal PAGER_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackLostAMonText
	promptbutton
	end

.Gaven:
	farwritetext GavenLostAMonText
	promptbutton
	end

.Jose:
	farwritetext JoseLostAMonText
	promptbutton
	end

.Joey:
	farwritetext JoeyLostAMonText
	promptbutton
	end

.Wade:
	farwritetext WadeLostAMonText
	promptbutton
	end

.Ralph:
	farwritetext RalphLostAMonText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyLostAMonText
	promptbutton
	end

.Todd:
	farwritetext ToddLostAMonText
	promptbutton
	end

.Arnie:
	farwritetext ArnieLostAMonText
	promptbutton
	end

.Alan:
	farwritetext AlanLostAMonText
	promptbutton
	end

.Chad:
	farwritetext ChadLostAMonText
	promptbutton
	end

.Derek:
	farwritetext DerekLostAMonText
	promptbutton
	end

.Tully:
	farwritetext TullyLostAMonText
	promptbutton
	end

.Brent:
	farwritetext BrentLostAMonText
	promptbutton
	end

.Vance:
	farwritetext VanceLostAMonText
	promptbutton
	end

.Wilton:
	farwritetext WiltonLostAMonText
	promptbutton
	end

.Parry:
	farwritetext ParryLostAMonText
	promptbutton
	end

Pager_WhoLostAMon_Female:
	readvar VAR_CALLERID
	ifequal PAGER_POKEFAN_BEVERLY, .Beverly
	ifequal PAGER_COOLTRAINERF_BETH, .Beth
	ifequal PAGER_COOLTRAINERF_REENA, .Reena
	ifequal PAGER_PICNICKER_LIZ, .Liz
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany
	ifequal PAGER_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyLostAMonText
	promptbutton
	end

.Beth:
	farwritetext BethLostAMonText
	promptbutton
	end

.Reena:
	farwritetext ReenaLostAMonText
	promptbutton
	end

.Liz:
	farwritetext LizLostAMonText
	promptbutton
	end

.Gina:
	farwritetext GinaLostAMonText
	promptbutton
	end

.Dana:
	farwritetext DanaLostAMonText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyLostAMonText
	promptbutton
	end

.Erin:
	farwritetext ErinLostAMonText
	promptbutton
	end

PagerScript_WantsToBattle_Male:
	farscall PagerScript_RematchText_Male
	farsjump PagerScript_HangUpText_Male

PagerScript_WantsToBattle_Female:
	farscall PagerScript_RematchText_Female
	farsjump PagerScript_HangUpText_Female

PagerScript_RematchText_Male:
	readvar VAR_CALLERID
	ifequal PAGER_SCHOOLBOY_JACK, .Jack
	ifequal PAGER_SAILOR_HUEY, .Huey
	ifequal PAGER_COOLTRAINERM_GAVEN, .Gaven
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_YOUNGSTER_JOEY, .Joey
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_FISHER_RALPH, .Ralph
	ifequal PAGER_HIKER_ANTHONY, .Anthony
	ifequal PAGER_CAMPER_TODD, .Todd
	ifequal PAGER_BUG_CATCHER_ARNIE, .Arnie
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_SCHOOLBOY_CHAD, .Chad
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_POKEMANIAC_BRENT, .Brent
	ifequal PAGER_BIRDKEEPER_VANCE, .Vance
	ifequal PAGER_FISHER_WILTON, .Wilton
	ifequal PAGER_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackBattleRematchText
	promptbutton
	end

.Huey:
	farwritetext HueyBattleRematchText
	promptbutton
	end

.Gaven:
	farwritetext GavenBattleRematchText
	promptbutton
	end

.Jose:
	farwritetext JoseBattleRematchText
	promptbutton
	end

.Joey:
	farwritetext JoeyBattleRematchText
	promptbutton
	end

.Wade:
	farwritetext WadeBattleRematchText
	promptbutton
	end

.Ralph:
	farwritetext RalphBattleRematchText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyBattleRematchText
	promptbutton
	end

.Todd:
	farwritetext ToddBattleRematchText
	promptbutton
	end

.Arnie:
	farwritetext ArnieBattleRematchText
	promptbutton
	end

.Alan:
	farwritetext AlanBattleRematchText
	promptbutton
	end

.Chad:
	farwritetext ChadBattleRematchText
	promptbutton
	end

.Tully:
	farwritetext TullyBattleRematchText
	promptbutton
	end

.Brent:
	farwritetext BrentBattleRematchText
	promptbutton
	end

.Vance:
	farwritetext VanceBattleRematchText
	promptbutton
	end

.Wilton:
	farwritetext WiltonBattleRematchText
	promptbutton
	end

.Parry:
	farwritetext ParryBattleRematchText
	promptbutton
	end

PagerScript_RematchText_Female:
	readvar VAR_CALLERID
	ifequal PAGER_COOLTRAINERF_BETH, .Beth
	ifequal PAGER_COOLTRAINERF_REENA, .Reena
	ifequal PAGER_PICNICKER_LIZ, .Liz
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany
	ifequal PAGER_PICNICKER_ERIN, .Erin

.Beth:
	farwritetext BethBattleRematchText
	promptbutton
	end

.Reena:
	farwritetext ReenaBattleRematchText
	promptbutton
	end

.Liz:
	farwritetext LizBattleRematchText
	promptbutton
	end

.Gina:
	farwritetext GinaBattleRematchText
	promptbutton
	end

.Dana:
	farwritetext DanaBattleRematchText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyBattleRematchText
	promptbutton
	end

.Erin:
	farwritetext ErinBattleRematchText
	promptbutton
	end

LizWrongNumberScript:
	farwritetext LizWrongNumberText
	end

TiffanyItsAwful:
	farwritetext TiffanyItsAwfulText
	end

PagerScript_HangUpText_Male:
	readvar VAR_CALLERID
	ifequal PAGER_SCHOOLBOY_JACK, .Jack
	ifequal PAGER_SAILOR_HUEY, .Huey
	ifequal PAGER_COOLTRAINERM_GAVEN, .Gaven
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_YOUNGSTER_JOEY, .Joey
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_FISHER_RALPH, .Ralph
	ifequal PAGER_HIKER_ANTHONY, .Anthony
	ifequal PAGER_CAMPER_TODD, .Todd
	ifequal PAGER_JUGGLER_IRWIN, .Irwin
	ifequal PAGER_BUG_CATCHER_ARNIE, .Arnie
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_SCHOOLBOY_CHAD, .Chad
	ifequal PAGER_POKEFANM_DEREK, .Derek
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_POKEMANIAC_BRENT, .Brent
	ifequal PAGER_BIRDKEEPER_VANCE, .Vance
	ifequal PAGER_FISHER_WILTON, .Wilton
	ifequal PAGER_BLACKBELT_KENJI, .Kenji
	ifequal PAGER_HIKER_PARRY, .Parry

.Jack:
	farwritetext JackHangUpText
	end

.Huey:
	farwritetext HueyHangUpText
	end

.Gaven:
	farwritetext GavenHangUpText
	end

.Jose:
	farwritetext JoseHangUpText
	end

.Joey:
	farwritetext JoeyHangUpText
	end

.Wade:
	farwritetext WadeHangUpText
	end

.Ralph:
	farwritetext RalphHangUpText
	end

.Anthony:
	farwritetext AnthonyHangUpText
	end

.Todd:
	farwritetext ToddHangUpText
	end

.Irwin:
	farwritetext IrwinHangUpText
	end

.Arnie:
	farwritetext ArnieHangUpText
	end

.Alan:
	farwritetext AlanHangUpText
	end

.Chad:
	farwritetext ChadHangUpText
	end

.Derek:
	farwritetext DerekHangUpText
	end

.Tully:
	farwritetext TullyHangUpText
	end

.Brent:
	farwritetext BrentHangUpText
	end

.Vance:
	farwritetext VanceHangUpText
	end

.Wilton:
	farwritetext WiltonHangUpText
	end

.Kenji:
	farwritetext KenjiHangUpText
	end

.Parry:
	farwritetext ParryHangUpText
	end

PagerScript_HangUpText_Female:
	readvar VAR_CALLERID
	ifequal PAGER_POKEFAN_BEVERLY, .Beverly
	ifequal PAGER_COOLTRAINERF_BETH, .Beth
	ifequal PAGER_COOLTRAINERF_REENA, .Reena
	ifequal PAGER_PICNICKER_LIZ, .Liz
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany
	ifequal PAGER_PICNICKER_ERIN, .Erin

.Beverly:
	farwritetext BeverlyHangUpText
	end

.Beth:
	farwritetext BethHangUpText
	end

.Reena:
	farwritetext ReenaHangUpText
	end

.Liz:
	farwritetext LizHangUpText
	end

.Gina:
	farwritetext GinaHangUpText
	end

.Dana:
	farwritetext DanaHangUpText
	end

.Tiffany:
	farwritetext TiffanyHangUpText
	end

.Erin:
	farwritetext ErinHangUpText
	end

Pager_CheckIfUnseenRare_Male:
	scall PagerScriptRareWildMon
	iffalse .HangUp
	farsjump Pager_GenericCall_Male

.HangUp:
	farsjump PagerScript_HangUpText_Male

Pager_CheckIfUnseenRare_Female:
	scall PagerScriptRareWildMon
	iffalse .HangUp
	farsjump Pager_GenericCall_Female

.HangUp:
	farsjump PagerScript_HangUpText_Female

PagerScriptRareWildMon:
	special RandomUnseenWildMon
	end

PagerScript_BugCatchingContest:
	readvar VAR_CALLERID
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_POKEFANM_DEREK, .Derek

.Wade:
	farwritetext WadeBugCatchingContestText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Derek:
	farwritetext DerekBugCatchingContestText
	promptbutton
	sjump PagerScript_HangUpText_Male

IrwinRocketRumorScript:
	farwritetext IrwinRocketTakeoverRumorText
	promptbutton
	sjump PagerScript_HangUpText_Male

GinaRocketRumorScript:
	farwritetext GinaRocketTakeoverRumorText
	promptbutton
	sjump PagerScript_HangUpText_Female

ArnieSwarmScript:
	farwritetext ArnieSwarmText
	promptbutton
	sjump PagerScript_HangUpText_Male

RalphItemScript:
	farwritetext RalphItemText
	promptbutton
	sjump PagerScript_HangUpText_Male

AnthonySwarmScript:
	farwritetext AnthonySwarmText
	promptbutton
	sjump PagerScript_HangUpText_Male

PagerScript_FoundItem_Male:
	readvar VAR_CALLERID
	ifequal PAGER_BIRDKEEPER_JOSE, .Jose
	ifequal PAGER_BUG_CATCHER_WADE, .Wade
	ifequal PAGER_SCHOOLBOY_ALAN, .Alan
	ifequal PAGER_POKEFANM_DEREK, .Derek
	ifequal PAGER_FISHER_TULLY, .Tully
	ifequal PAGER_FISHER_WILTON, .Wilton

.Jose:
	farwritetext JoseFoundItemText
	end

.Wade:
	farwritetext WadeFoundItemText
	end

.Alan:
	farwritetext AlanFoundItemText
	end

.Derek:
	farwritetext DerekFoundItemText
	end

.Tully:
	farwritetext TullyFoundItemText
	end

.Wilton:
	farwritetext WiltonFoundItemText
	end

PagerScript_FoundItem_Female:
	readvar VAR_CALLERID
	ifequal PAGER_POKEFAN_BEVERLY, .Beverly
	ifequal PAGER_PICNICKER_GINA, .Gina
	ifequal PAGER_LASS_DANA, .Dana
	ifequal PAGER_PICNICKER_TIFFANY, .Tiffany

.Beverly:
	farwritetext BeverlyFoundItemText
	end

.Gina:
	farwritetext GinaFoundItemText
	end

.Dana:
	farwritetext DanaFoundItemText
	end

.Tiffany:
	farwritetext TiffanyFoundItemText
	end

ToddItemScript:
	farwritetext ToddDepartmentStoreBargainSaleText
	promptbutton
	sjump PagerScript_HangUpText_Male

KenjiCallingPagerScript:
	farwritetext KenjiRemainDedicatedText
	promptbutton
	sjump PagerScript_HangUpText_Male
