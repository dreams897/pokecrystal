MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPagerCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPagerCallList
	specialcall SpecialCallOnlyWhenOutside, PAGERCONTACT_ELM,      ElmPagerPagerScript
	specialcall SpecialCallOnlyWhenOutside, PAGERCONTACT_ELM,      ElmPagerPagerScript
	specialcall SpecialCallOnlyWhenOutside, PAGERCONTACT_ELM,      ElmPagerPagerScript
	specialcall SpecialCallOnlyWhenOutside, PAGERCONTACT_ELM,      ElmPagerPagerScript
	specialcall SpecialCallWhereverYouAre,  PAGERCONTACT_ELM,      ElmPagerPagerScript
	specialcall SpecialCallWhereverYouAre,  PAGERCONTACT_BIKESHOP, BikeShopPagerPagerScript
	specialcall SpecialCallWhereverYouAre,  PAGERCONTACT_MOM,      MomPagerLectureScript
	specialcall SpecialCallOnlyWhenOutside, PAGERCONTACT_ELM,      ElmPagerPagerScript
	assert_table_length NUM_SPECIALCALLS
