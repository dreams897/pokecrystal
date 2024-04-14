LizGossipRandomScript:
	random 10
	ifequal 0, .RuinsOfAlph
	ifequal 1, .Falkner
	ifequal 2, .Earl
	ifequal 3, .SurfPikachu
	ifequal 4, .MooMooMilk
	ifequal 5, .Salon
	ifequal 6, .Whitney
	ifequal 7, .BugCatchingContest
	ifequal 8, .BeautifulTrainer
	ifequal 9, .Forgot

.RuinsOfAlph:
	farwritetext LizRuinsOfAlphGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.Falkner:
	farwritetext LizFalknerGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.Earl:
	farwritetext LizEarlGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.SurfPikachu:
	farwritetext LizSurfPikachuGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.MooMooMilk:
	farwritetext LizMooMooMilkGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.Salon:
	farwritetext LizSalonGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.Whitney:
	farwritetext LizWhitneyGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.BugCatchingContest:
	farwritetext LizBugCatchingContestGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.BeautifulTrainer:
	farwritetext LizBeautifulTrainerGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female

.Forgot:
	farwritetext LizForgotGossipText
	promptbutton
	sjump PagerScript_HangUpText_Female
