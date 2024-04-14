PagerScript_Random2:
	random 2
	end

PagerScript_Random3:
	random 3
	end

PagerScript_Random4:
	random 4
	end

PagerScript_Random5:
	random 5
	end

PagerScript_Random11:
	random 11
	end

PagerScript_AnswerPager_Male:
	checktime DAY
	iftrue PagerScript_AnswerPager_Male_Day
	checktime NITE
	iftrue PagerScript_AnswerPager_Male_Nite
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
	farwritetext JackAnswerPagerText
	promptbutton
	end

.Huey:
	farwritetext HueyAnswerPagerText
	promptbutton
	end

.Gaven:
	farwritetext GavenAnswerPagerText
	promptbutton
	end

.Jose:
	farwritetext JoseAnswerPagerText
	promptbutton
	end

.Joey:
	farwritetext JoeyAnswerPagerText
	promptbutton
	end

.Wade:
	farwritetext WadeAnswerPagerText
	promptbutton
	end

.Ralph:
	farwritetext RalphAnswerPagerText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyAnswerPagerText
	promptbutton
	end

.Todd:
	farwritetext ToddAnswerPagerText
	promptbutton
	end

.Irwin:
	farwritetext IrwinAnswerPagerText
	promptbutton
	end

.Arnie:
	farwritetext ArnieAnswerPagerText
	promptbutton
	end

.Alan:
	farwritetext AlanAnswerPagerText
	promptbutton
	end

.Chad:
	farwritetext ChadAnswerPagerText
	promptbutton
	end

.Derek:
	farwritetext DerekAnswerPagerText
	promptbutton
	end

.Tully:
	farwritetext TullyAnswerPagerText
	promptbutton
	end

.Brent:
	farwritetext BrentAnswerPagerText
	promptbutton
	end

.Vance:
	farwritetext VanceAnswerPagerText
	promptbutton
	end

.Wilton:
	farwritetext WiltonAnswerPagerText
	promptbutton
	end

.Kenji:
	farwritetext KenjiAnswerPagerText
	promptbutton
	end

.Parry:
	farwritetext ParryAnswerPagerText
	promptbutton
	end

PagerScript_AnswerPager_Male_Day:
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
	farwritetext JackAnswerPagerDayText
	promptbutton
	end

.Huey:
	farwritetext HueyAnswerPagerDayText
	promptbutton
	end

.Gaven:
	farwritetext GavenAnswerPagerDayText
	promptbutton
	end

.Jose:
	farwritetext JoseAnswerPagerDayText
	promptbutton
	end

.Joey:
	farwritetext JoeyAnswerPagerDayText
	promptbutton
	end

.Wade:
	farwritetext WadeAnswerPagerDayText
	promptbutton
	end

.Ralph:
	farwritetext RalphAnswerPagerDayText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyAnswerPagerDayText
	promptbutton
	end

.Todd:
	farwritetext ToddAnswerPagerDayText
	promptbutton
	end

.Irwin:
	farwritetext IrwinAnswerPagerDayText
	promptbutton
	end

.Arnie:
	farwritetext ArnieAnswerPagerDayText
	promptbutton
	end

.Alan:
	farwritetext AlanAnswerPagerDayText
	promptbutton
	end

.Chad:
	farwritetext ChadAnswerPagerDayText
	promptbutton
	end

.Derek:
	farwritetext DerekAnswerPagerDayText
	promptbutton
	end

.Tully:
	farwritetext TullyAnswerPagerDayText
	promptbutton
	end

.Brent:
	farwritetext BrentAnswerPagerDayText
	promptbutton
	end

.Vance:
	farwritetext VanceAnswerPagerDayText
	promptbutton
	end

.Wilton:
	farwritetext WiltonAnswerPagerDayText
	promptbutton
	end

.Kenji:
	farwritetext KenjiAnswerPagerDayText
	promptbutton
	end

.Parry:
	farwritetext ParryAnswerPagerDayText
	promptbutton
	end

PagerScript_AnswerPager_Male_Nite:
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
	farwritetext JackAnswerPagerNiteText
	promptbutton
	end

.Huey:
	farwritetext HueyAnswerPagerNiteText
	promptbutton
	end

.Gaven:
	farwritetext GavenAnswerPagerNiteText
	promptbutton
	end

.Jose:
	farwritetext JoseAnswerPagerNiteText
	promptbutton
	end

.Joey:
	farwritetext JoeyAnswerPagerNiteText
	promptbutton
	end

.Wade:
	farwritetext WadeAnswerPagerNiteText
	promptbutton
	end

.Ralph:
	farwritetext RalphAnswerPagerNiteText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyAnswerPagerNiteText
	promptbutton
	end

.Todd:
	farwritetext ToddAnswerPagerNiteText
	promptbutton
	end

.Irwin:
	farwritetext IrwinAnswerPagerNiteText
	promptbutton
	end

.Arnie:
	farwritetext ArnieAnswerPagerNiteText
	promptbutton
	end

.Alan:
	farwritetext AlanAnswerPagerNiteText
	promptbutton
	end

.Chad:
	farwritetext ChadAnswerPagerNiteText
	promptbutton
	end

.Derek:
	farwritetext DerekAnswerPagerNiteText
	promptbutton
	end

.Tully:
	farwritetext TullyAnswerPagerNiteText
	promptbutton
	end

.Brent:
	farwritetext BrentAnswerPagerNiteText
	promptbutton
	end

.Vance:
	farwritetext VanceAnswerPagerNiteText
	promptbutton
	end

.Wilton:
	farwritetext WiltonAnswerPagerNiteText
	promptbutton
	end

.Kenji:
	farwritetext KenjiAnswerPagerNiteText
	promptbutton
	end

.Parry:
	farwritetext ParryAnswerPagerNiteText
	promptbutton
	end

PagerScript_AnswerPager_Female:
	checktime DAY
	iftrue PagerScript_AnswerPager_Female_Day
	checktime NITE
	iftrue PagerScript_AnswerPager_Female_Nite
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
	farwritetext BeverlyAnswerPagerText
	promptbutton
	end

.Beth:
	farwritetext BethAnswerPagerText
	promptbutton
	end

.Reena:
	farwritetext ReenaAnswerPagerText
	promptbutton
	end

.Liz:
	farwritetext LizAnswerPagerText
	promptbutton
	end

.Gina:
	farwritetext GinaAnswerPagerText
	promptbutton
	end

.Dana:
	farwritetext DanaAnswerPagerText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyAnswerPagerText
	promptbutton
	end

.Erin:
	farwritetext ErinAnswerPagerText
	promptbutton
	end

PagerScript_AnswerPager_Female_Day:
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
	farwritetext BeverlyAnswerPagerDayText
	promptbutton
	end

.Beth:
	farwritetext BethAnswerPagerDayText
	promptbutton
	end

.Reena:
	farwritetext ReenaAnswerPagerDayText
	promptbutton
	end

.Liz:
	farwritetext LizAnswerPagerDayText
	promptbutton
	end

.Gina:
	farwritetext GinaAnswerPagerDayText
	promptbutton
	end

.Dana:
	farwritetext DanaAnswerPagerDayText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyAnswerPagerDayText
	promptbutton
	end

.Erin:
	farwritetext ErinAnswerPagerDayText
	promptbutton
	end

PagerScript_AnswerPager_Female_Nite:
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
	farwritetext BeverlyAnswerPagerNiteText
	promptbutton
	end

.Beth:
	farwritetext BethAnswerPagerNiteText
	promptbutton
	end

.Reena:
	farwritetext ReenaAnswerPagerNiteText
	promptbutton
	end

.Liz:
	farwritetext LizAnswerPagerNiteText
	promptbutton
	end

.Gina:
	farwritetext GinaAnswerPagerNiteText
	promptbutton
	end

.Dana:
	farwritetext DanaAnswerPagerNiteText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyAnswerPagerNiteText
	promptbutton
	end

.Erin:
	farwritetext ErinAnswerPagerNiteText
	promptbutton
	end

PagerScript_GreetPager_Male:
	checktime DAY
	iftrue PagerScript_GreetPager_Male_Day
	checktime NITE
	iftrue PagerScript_GreetPager_Male_Nite
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
	farwritetext JackGreetText
	promptbutton
	end

.Huey:
	farwritetext HueyGreetText
	promptbutton
	end

.Gaven:
	farwritetext GavenGreetText
	promptbutton
	end

.Jose:
	farwritetext JoseGreetText
	promptbutton
	end

.Joey:
	farwritetext JoeyGreetText
	promptbutton
	end

.Wade:
	farwritetext WadeGreetText
	promptbutton
	end

.Ralph:
	farwritetext RalphGreetText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyGreetText
	promptbutton
	end

.Todd:
	farwritetext ToddGreetText
	promptbutton
	end

.Irwin:
	farwritetext IrwinGreetText
	promptbutton
	end

.Arnie:
	farwritetext ArnieGreetText
	promptbutton
	end

.Alan:
	farwritetext AlanGreetText
	promptbutton
	end

.Chad:
	farwritetext ChadGreetText
	promptbutton
	end

.Derek:
	farwritetext DerekGreetText
	promptbutton
	end

.Tully:
	farwritetext TullyGreetText
	promptbutton
	end

.Brent:
	farwritetext BrentGreetText
	promptbutton
	end

.Vance:
	farwritetext VanceGreetText
	promptbutton
	end

.Wilton:
	farwritetext WiltonGreetText
	promptbutton
	end

.Kenji:
	farwritetext KenjiGreetText
	promptbutton
	end

.Parry:
	farwritetext ParryGreetText
	promptbutton
	end

PagerScript_GreetPager_Male_Day:
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
	farwritetext JackGreetDayText
	promptbutton
	end

.Huey:
	farwritetext HueyGreetDayText
	promptbutton
	end

.Gaven:
	farwritetext GavenGreetDayText
	promptbutton
	end

.Jose:
	farwritetext JoseGreetDayText
	promptbutton
	end

.Joey:
	farwritetext JoeyGreetDayText
	promptbutton
	end

.Wade:
	farwritetext WadeGreetDayText
	promptbutton
	end

.Ralph:
	farwritetext RalphGreetDayText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyGreetDayText
	promptbutton
	end

.Todd:
	farwritetext ToddGreetDayText
	promptbutton
	end

.Irwin:
	farwritetext IrwinGreetDayText
	promptbutton
	end

.Arnie:
	farwritetext ArnieGreetDayText
	promptbutton
	end

.Alan:
	farwritetext AlanGreetDayText
	promptbutton
	end

.Chad:
	farwritetext ChadGreetDayText
	promptbutton
	end

.Derek:
	farwritetext DerekGreetDayText
	promptbutton
	end

.Tully:
	farwritetext TullyGreetDayText
	promptbutton
	end

.Brent:
	farwritetext BrentGreetDayText
	promptbutton
	end

.Vance:
	farwritetext VanceGreetDayText
	promptbutton
	end

.Wilton:
	farwritetext WiltonGreetDayText
	promptbutton
	end

.Kenji:
	farwritetext KenjiGreetDayText
	promptbutton
	end

.Parry:
	farwritetext ParryGreetDayText
	promptbutton
	end

PagerScript_GreetPager_Male_Nite:
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
	farwritetext JackGreetNiteText
	promptbutton
	end

.Huey:
	farwritetext HueyGreetNiteText
	promptbutton
	end

.Gaven:
	farwritetext GavenGreetNiteText
	promptbutton
	end

.Jose:
	farwritetext JoseGreetNiteText
	promptbutton
	end

.Joey:
	farwritetext JoeyGreetNiteText
	promptbutton
	end

.Wade:
	farwritetext WadeGreetNiteText
	promptbutton
	end

.Ralph:
	farwritetext RalphGreetNiteText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyGreetNiteText
	promptbutton
	end

.Todd:
	farwritetext ToddGreetNiteText
	promptbutton
	end

.Irwin:
	farwritetext IrwinGreetNiteText
	promptbutton
	end

.Arnie:
	farwritetext ArnieGreetNiteText
	promptbutton
	end

.Alan:
	farwritetext AlanGreetNiteText
	promptbutton
	end

.Chad:
	farwritetext ChadGreetNiteText
	promptbutton
	end

.Derek:
	farwritetext DerekGreetNiteText
	promptbutton
	end

.Tully:
	farwritetext TullyGreetNiteText
	promptbutton
	end

.Brent:
	farwritetext BrentGreetNiteText
	promptbutton
	end

.Vance:
	farwritetext VanceGreetNiteText
	promptbutton
	end

.Wilton:
	farwritetext WiltonGreetNiteText
	promptbutton
	end

.Kenji:
	farwritetext KenjiGreetNiteText
	promptbutton
	end

.Parry:
	farwritetext ParryGreetNiteText
	promptbutton
	end

PagerScript_GreetPager_Female:
	checktime DAY
	iftrue PagerScript_GreetPager_Female_Day
	checktime NITE
	iftrue PagerScript_GreetPager_Female_Nite
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
	farwritetext BeverlyGreetText
	promptbutton
	end

.Beth:
	farwritetext BethGreetText
	promptbutton
	end

.Reena:
	farwritetext ReenaGreetText
	promptbutton
	end

.Liz:
	farwritetext LizGreetText
	promptbutton
	end

.Gina:
	farwritetext GinaGreetText
	promptbutton
	end

.Dana:
	farwritetext DanaGreetText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyGreetText
	promptbutton
	end

.Erin:
	farwritetext ErinGreetText
	promptbutton
	end

PagerScript_GreetPager_Female_Day:
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
	farwritetext BeverlyGreetDayText
	promptbutton
	end

.Beth:
	farwritetext BethGreetDayText
	promptbutton
	end

.Reena:
	farwritetext ReenaGreetDayText
	promptbutton
	end

.Liz:
	farwritetext LizGreetDayText
	promptbutton
	end

.Gina:
	farwritetext GinaGreetDayText
	promptbutton
	end

.Dana:
	farwritetext DanaGreetDayText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyGreetDayText
	promptbutton
	end

.Erin:
	farwritetext ErinGreetDayText
	promptbutton
	end

PagerScript_GreetPager_Female_Nite:
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
	farwritetext BeverlyGreetNiteText
	promptbutton
	end

.Beth:
	farwritetext BethGreetNiteText
	promptbutton
	end

.Reena:
	farwritetext ReenaGreetNiteText
	promptbutton
	end

.Liz:
	farwritetext LizGreetNiteText
	promptbutton
	end

.Gina:
	farwritetext GinaGreetNiteText
	promptbutton
	end

.Dana:
	farwritetext DanaGreetNiteText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyGreetNiteText
	promptbutton
	end

.Erin:
	farwritetext ErinGreetNiteText
	promptbutton
	end

PagerScript_Generic_Male:
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
	farwritetext JackGenericText
	promptbutton
	end

.Unknown: ; unreferenced
	farwritetext UnknownGenericText
	promptbutton
	end

.Gaven:
	farwritetext GavenGenericText
	promptbutton
	end

.Jose:
	farwritetext JoseGenericText
	promptbutton
	end

.Joey:
	farwritetext JoeyGenericText
	promptbutton
	end

.Wade:
	farwritetext WadeGenericText
	promptbutton
	end

.Ralph:
	farwritetext RalphGenericText
	promptbutton
	end

.Anthony:
	farwritetext AnthonyGenericText
	promptbutton
	end

.Todd:
	farwritetext ToddGenericText
	promptbutton
	end

.Arnie:
	farwritetext ArnieGenericText
	promptbutton
	end

.Alan:
	farwritetext AlanGenericText
	promptbutton
	end

.Chad:
	farwritetext ChadGenericText
	promptbutton
	end

.Derek:
	farwritetext DerekGenericText
	promptbutton
	end

.Tully:
	farwritetext TullyGenericText
	promptbutton
	end

.Brent:
	farwritetext BrentGenericText
	promptbutton
	end

.Vance:
	farwritetext VanceGenericText
	promptbutton
	end

.Wilton:
	farwritetext WiltonGenericText
	promptbutton
	end

.Parry:
	farwritetext ParryGenericText
	promptbutton
	end

PagerScript_Generic_Female:
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
	farwritetext BeverlyGenericText
	promptbutton
	end

.Beth:
	farwritetext BethGenericText
	promptbutton
	end

.Reena:
	farwritetext ReenaGenericText
	promptbutton
	end

.Liz:
	farwritetext LizGenericText
	promptbutton
	end

.Gina:
	farwritetext GinaGenericText
	promptbutton
	end

.Dana:
	farwritetext DanaGenericText
	promptbutton
	end

.Tiffany:
	farwritetext TiffanyGenericText
	promptbutton
	end

.Erin:
	farwritetext ErinGenericText
	promptbutton
	end

PagerScript_MonFlavorText:
	special RandomPagerMon
	farscall PagerScript_Random2
	ifequal $0, .TooEnergetic
	farwritetext UnknownGenericText
	promptbutton
	farsjump PagerScript_HangUpText_Male

.TooEnergetic:
	farsjump .unnecessary

.unnecessary
	farwritetext UnknownTougherThanEverText
	promptbutton
	farsjump PagerScript_HangUpText_Male

GrandmaString: db "Grandma@"
GrandpaString: db "Grandpa@"
MomString: db "Mom@"
DadString: db "Dad@"
SisterString: db "Sister@"
BrotherString: db "Brother@"
