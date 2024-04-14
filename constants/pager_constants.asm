; PagerContacts indexes (see data/pager/pager_contacts.asm)
	const_def
	const PAGER_00
	const PAGER_MOM
	const PAGER_OAK
	const PAGER_BILL
	const PAGER_ELM
	const PAGER_SCHOOLBOY_JACK
	const PAGER_POKEFAN_BEVERLY
	const PAGER_SAILOR_HUEY
	const_skip
	const_skip
	const_skip
	const PAGER_COOLTRAINERM_GAVEN
	const PAGER_COOLTRAINERF_BETH
	const PAGER_BIRDKEEPER_JOSE
	const PAGER_COOLTRAINERF_REENA
	const PAGER_YOUNGSTER_JOEY
	const PAGER_BUG_CATCHER_WADE
	const PAGER_FISHER_RALPH
	const PAGER_PICNICKER_LIZ
	const PAGER_HIKER_ANTHONY
	const PAGER_CAMPER_TODD
	const PAGER_PICNICKER_GINA
	const PAGER_JUGGLER_IRWIN
	const PAGER_BUG_CATCHER_ARNIE
	const PAGER_SCHOOLBOY_ALAN
	const_skip
	const PAGER_LASS_DANA
	const PAGER_SCHOOLBOY_CHAD
	const PAGER_POKEFANM_DEREK
	const PAGER_FISHER_TULLY
	const PAGER_POKEMANIAC_BRENT
	const PAGER_PICNICKER_TIFFANY
	const PAGER_BIRDKEEPER_VANCE
	const PAGER_FISHER_WILTON
	const PAGER_BLACKBELT_KENJI
	const PAGER_HIKER_PARRY
	const PAGER_PICNICKER_ERIN
	const PAGER_BUENA
DEF NUM_PAGER_CONTACTS EQU const_value - 1

; SpecialPagerCallList indexes (see data/pager/special_calls.asm)
	const_def
	const SPECIALCALL_NONE
	const SPECIALCALL_POKERUS
	const SPECIALCALL_ROBBED
	const SPECIALCALL_ASSISTANT
	const SPECIALCALL_WEIRDBROADCAST
	const SPECIALCALL_SSTICKET
	const SPECIALCALL_BIKESHOP
	const SPECIALCALL_WORRIED
	const SPECIALCALL_MASTERBALL
DEF NUM_SPECIALCALLS EQU const_value - 1
DEF SPECIALCALL_SIZE EQU 6

; pager struct members
rsreset
DEF PAGER_CONTACT_TRAINER_CLASS  rb
DEF PAGER_CONTACT_TRAINER_NUMBER rb
DEF PAGER_CONTACT_MAP_GROUP      rb
DEF PAGER_CONTACT_MAP_NUMBER     rb
DEF PAGER_CONTACT_SCRIPT1_TIME   rb
DEF PAGER_CONTACT_SCRIPT1_BANK   rb
DEF PAGER_CONTACT_SCRIPT1_ADDR   rw
DEF PAGER_CONTACT_SCRIPT2_TIME   rb
DEF PAGER_CONTACT_SCRIPT2_BANK   rb
DEF PAGER_CONTACT_SCRIPT2_ADDR   rw
DEF PAGER_CONTACT_SIZE EQU _RS

; maximum number of pokegear contacts
DEF CONTACT_LIST_SIZE EQU 10
