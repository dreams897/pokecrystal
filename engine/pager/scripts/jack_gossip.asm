JackTriviaScript:
	random 11
	ifequal  0, .Thunder
	ifequal  1, .Rollout
	ifequal  2, .Solarbeam
	ifequal  3, .Stomp
	ifequal  4, .Gust
	ifequal  5, .Twister
	ifequal  6, .Earthquake
	ifequal  7, .Magnitude
	ifequal  8, .Sandstorm
	ifequal  9, .SunnyDay
	ifequal 10, .RainDance

.Thunder:
	farwritetext JackThunderTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Rollout:
	farwritetext JackRolloutTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Solarbeam:
	farwritetext JackSolarbeamTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Stomp:
	farwritetext JackStompTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Gust:
	farwritetext JackGustTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Twister:
	farwritetext JackTwisterTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Earthquake:
	farwritetext JackEarthquakeTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Magnitude:
	farwritetext JackMagnitudeTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.Sandstorm:
	farwritetext JackSandstormTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.SunnyDay:
	farwritetext JackSunnyDayTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male

.RainDance:
	farwritetext JackRainDanceTriviaText
	promptbutton
	sjump PagerScript_HangUpText_Male
