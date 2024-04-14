NonTrainerPagerNames:
; entries correspond to PAGERCONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2, NonTrainerPagerNames
	dw .none
	dw .mom
	dw .bikeshop
	dw .bill
	dw .elm
	dw .buena
	assert_table_length NUM_NONTRAINER_PAGERCONTACTS + 1

.none:     db "----------@"
.mom:      db "MOM:@"
.bill:     db "BILL:@"
.elm:      db "PROF.ELM:@"
.bikeshop: db "BIKE SHOP:@"
.buena:    db "BUENA:<LF>   DISC JOCKEY@"
