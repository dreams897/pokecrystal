BillPagerCalleeScript:
	checktime DAY
	iftrue .daygreet
	checktime NITE
	iftrue .nitegreet
	farwritetext BillPagerMornGreetingText
	promptbutton
	sjump .main

.daygreet
	farwritetext BillPagerDayGreetingText
	promptbutton
	sjump .main

.nitegreet
	farwritetext BillPagerNiteGreetingText
	promptbutton
	sjump .main

.main
	farwritetext BillPagerGenericText
	promptbutton
	readvar VAR_BOXSPACE
	getnum STRING_BUFFER_3
	ifequal 0, .full
	ifless PARTY_LENGTH, .nearlyfull
	farwritetext BillPagerNotFullText
	end

.nearlyfull
	farwritetext BillPagerNearlyFullText
	end

.full
	farwritetext BillPagerFullText
	end

BillPagerPagerScript:
	farwritetext BillPagerNewlyFullText
	waitbutton
	end
