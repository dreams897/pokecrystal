MACRO pager
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PagerContacts:
; entries correspond to PAGER_* constants
	table_width PAGER_CONTACT_SIZE, PagerContacts
	pager TRAINER_NONE, PAGER_00,              N_A,                       0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager TRAINER_NONE, PAGERCONTACT_MOM,      PLAYERS_HOUSE_1F,          ANYTIME, MomPagerCalleeScript,     0,       UnusedPagerScript
	pager TRAINER_NONE, PAGERCONTACT_BIKESHOP, OAKS_LAB,                  0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager TRAINER_NONE, PAGERCONTACT_BILL,     N_A,                       ANYTIME, BillPagerCalleeScript,    0,       BillPagerPagerScript
	pager TRAINER_NONE, PAGERCONTACT_ELM,      ELMS_LAB,                  ANYTIME, ElmPagerCalleeScript,     0,       ElmPagerPagerScript
	pager SCHOOLBOY,    JACK1,                 NATIONAL_PARK,             ANYTIME, JackPagerCalleeScript,    ANYTIME, JackPagerPagerScript
	pager POKEFANF,     BEVERLY1,              NATIONAL_PARK,             ANYTIME, BeverlyPagerCalleeScript, ANYTIME, BeverlyPagerPagerScript
	pager SAILOR,       HUEY1,                 OLIVINE_LIGHTHOUSE_2F,     ANYTIME, HueyPagerCalleeScript,    ANYTIME, HueyPagerPagerScript
	pager TRAINER_NONE, PAGER_00,              N_A,                       0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager TRAINER_NONE, PAGER_00,              N_A,                       0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager TRAINER_NONE, PAGER_00,              N_A,                       0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager COOLTRAINERM, GAVEN3,                ROUTE_26,                  ANYTIME, GavenPagerCalleeScript,   ANYTIME, GavenPagerPagerScript
	pager COOLTRAINERF, BETH1,                 ROUTE_26,                  ANYTIME, BethPagerCalleeScript,    ANYTIME, BethPagerPagerScript
	pager BIRD_KEEPER,  JOSE2,                 ROUTE_27,                  ANYTIME, JosePagerCalleeScript,    ANYTIME, JosePagerPagerScript
	pager COOLTRAINERF, REENA1,                ROUTE_27,                  ANYTIME, ReenaPagerCalleeScript,   ANYTIME, ReenaPagerPagerScript
	pager YOUNGSTER,    JOEY1,                 ROUTE_30,                  ANYTIME, JoeyPagerCalleeScript,    ANYTIME, JoeyPagerPagerScript
	pager BUG_CATCHER,  WADE1,                 ROUTE_31,                  ANYTIME, WadePagerCalleeScript,    ANYTIME, WadePagerPagerScript
	pager FISHER,       RALPH1,                ROUTE_32,                  ANYTIME, RalphPagerCalleeScript,   ANYTIME, RalphPagerPagerScript
	pager PICNICKER,    LIZ1,                  ROUTE_32,                  ANYTIME, LizPagerCalleeScript,     ANYTIME, LizPagerPagerScript
	pager HIKER,        ANTHONY2,              ROUTE_33,                  ANYTIME, AnthonyPagerCalleeScript, ANYTIME, AnthonyPagerPagerScript
	pager CAMPER,       TODD1,                 ROUTE_34,                  ANYTIME, ToddPagerCalleeScript,    ANYTIME, ToddPagerPagerScript
	pager PICNICKER,    GINA1,                 ROUTE_34,                  ANYTIME, GinaPagerCalleeScript,    ANYTIME, GinaPagerPagerScript
	pager JUGGLER,      IRWIN1,                ROUTE_35,                  ANYTIME, IrwinPagerCalleeScript,   ANYTIME, IrwinPagerPagerScript
	pager BUG_CATCHER,  ARNIE1,                ROUTE_35,                  ANYTIME, ArniePagerCalleeScript,   ANYTIME, ArniePagerPagerScript
	pager SCHOOLBOY,    ALAN1,                 ROUTE_36,                  ANYTIME, AlanPagerCalleeScript,    ANYTIME, AlanPagerPagerScript
	pager TRAINER_NONE, PAGER_00,              N_A,                       0,       UnusedPagerScript,        0,       UnusedPagerScript
	pager LASS,         DANA1,                 ROUTE_38,                  ANYTIME, DanaPagerCalleeScript,    ANYTIME, DanaPagerPagerScript
	pager SCHOOLBOY,    CHAD1,                 ROUTE_38,                  ANYTIME, ChadPagerCalleeScript,    ANYTIME, ChadPagerPagerScript
	pager POKEFANM,     DEREK1,                ROUTE_39,                  ANYTIME, DerekPagerCalleeScript,   ANYTIME, DerekPagerPagerScript
	pager FISHER,       TULLY1,                ROUTE_42,                  ANYTIME, TullyPagerCalleeScript,   ANYTIME, TullyPagerPagerScript
	pager POKEMANIAC,   BRENT1,                ROUTE_43,                  ANYTIME, BrentPagerCalleeScript,   ANYTIME, BrentPagerPagerScript
	pager PICNICKER,    TIFFANY3,              ROUTE_43,                  ANYTIME, TiffanyPagerCalleeScript, ANYTIME, TiffanyPagerPagerScript
	pager BIRD_KEEPER,  VANCE1,                ROUTE_44,                  ANYTIME, VancePagerCalleeScript,   ANYTIME, VancePagerPagerScript
	pager FISHER,       WILTON1,               ROUTE_44,                  ANYTIME, WiltonPagerCalleeScript,  ANYTIME, WiltonPagerPagerScript
	pager BLACKBELT_T,  KENJI3,                ROUTE_45,                  ANYTIME, KenjiPagerCalleeScript,   ANYTIME, KenjiPagerPagerScript
	pager HIKER,        PARRY1,                ROUTE_45,                  ANYTIME, ParryPagerCalleeScript,   ANYTIME, ParryPagerPagerScript
	pager PICNICKER,    ERIN1,                 ROUTE_46,                  ANYTIME, ErinPagerCalleeScript,    ANYTIME, ErinPagerPagerScript
	pager TRAINER_NONE, PAGERCONTACT_BUENA,    GOLDENROD_DEPT_STORE_ROOF, ANYTIME, BuenaPagerCalleeScript,   ANYTIME, BuenaPagerPagerScript
	assert_table_length NUM_PAGER_CONTACTS + 1
