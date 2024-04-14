AddPagerNumber::
	call _CheckCellNum
	jr c, .cant_add
	call Pager_FindOpenSlot
	jr nc, .cant_add
	ld [hl], c
	xor a
	ret

.cant_add
	scf
	ret

DelCellNum::
	call _CheckCellNum
	jr nc, .not_in_list
	xor a
	ld [hl], a
	ret

.not_in_list
	scf
	ret

CheckCellNum::
	jp _CheckCellNum ; useless

_CheckCellNum:
	ld hl, wPagerList
	ld b, CONTACT_LIST_SIZE
.loop
	ld a, [hli]
	cp c
	jr z, .got_it
	dec b
	jr nz, .loop
	xor a
	ret

.got_it
	dec hl
	scf
	ret

Pager_FindOpenSlot:
	call GetRemainingSpaceInPagerList
	ld b, a
	ld hl, wPagerList
.loop
	ld a, [hli]
	and a
	jr z, .FoundOpenSpace
	dec b
	jr nz, .loop
	xor a
	ret

.FoundOpenSpace:
	dec hl
	scf
	ret

GetRemainingSpaceInPagerList:
	xor a
	ld [wRegisteredPagerNumbers], a
	ld hl, PermanentNumbers
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	cp c
	jr z, .continue

	push bc
	push hl
	ld c, a
	call _CheckCellNum
	jr c, .permanent
	ld hl, wRegisteredPagerNumbers
	inc [hl]
.permanent
	pop hl
	pop bc

.continue
	jr .loop

.done
	ld a, CONTACT_LIST_SIZE
	ld hl, wRegisteredPagerNumbers
	sub [hl]
	ret

INCLUDE "data/pager/permanent_numbers.asm"

CheckPagerCall::
; Check if the pager is ringing in the overworld.

	call CheckStandingOnEntrance
	jr z, .no_call

	call .timecheck
	nop
	jr nc, .no_call

	; 50% chance for a call
	call Random
	ld b, a
	and %01111111
	cp b
	jr nz, .no_call

	call GetMapPagerService
	and a
	jr nz, .no_call

	call GetAvailablePagers
	call ChooseRandomPager
	jr nc, .no_call

	ld e, a
	call LoadPagerScript
	ld a, BANK(Script_ReceivePagerCall)
	ld hl, Script_ReceivePagerCall
	call CallScript
	scf
	ret

.no_call
	xor a
	ret

.timecheck
	farcall CheckReceiveCallTimer
	ret

CheckPagerContactTimeOfDay:
	push hl
	push bc
	push de
	push af

	farcall CheckTime
	pop af
	and ANYTIME
	and c

	pop de
	pop bc
	pop hl
	ret

ChooseRandomPager:
; If no one is available to call, don't return anything.
	ld a, [wNumAvailablePagers]
	and a
	jr z, .NothingToSample

; Store the number of available callers in c.
	ld c, a
; Sample a random number between 0 and 31.
	call Random
	ldh a, [hRandomAdd]
	swap a
	and $1f
; Compute that number modulo the number of available callers.
	call SimpleDivide
; Return the caller ID you just sampled.
	ld c, a
	ld b, 0
	ld hl, wAvailablePagers
	add hl, bc
	ld a, [hl]
	scf
	ret

.NothingToSample:
	xor a
	ret

GetAvailablePagers:
	farcall CheckTime
	ld a, c
	ld [wCheckedTime], a
	ld hl, wNumAvailablePagers
	ld bc, CONTACT_LIST_SIZE + 1
	xor a
	call ByteFill
	ld de, wPagerList
	ld a, CONTACT_LIST_SIZE

.loop
	ld [wPagerListIndex], a
	ld a, [de]
	and a
	jr z, .not_good_for_call
	ld hl, PagerContacts + PAGER_CONTACT_SCRIPT2_TIME
	ld bc, PAGER_CONTACT_SIZE
	call AddNTimes
	ld a, [wCheckedTime]
	and [hl]
	jr z, .not_good_for_call
	ld bc, PAGER_CONTACT_MAP_GROUP - PAGER_CONTACT_SCRIPT2_TIME
	add hl, bc
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .different_map
	inc hl
	ld a, [wMapNumber]
	cp [hl]
	jr z, .not_good_for_call
.different_map
	ld a, [wNumAvailablePagers]
	ld c, a
	ld b, 0
	inc a
	ld [wNumAvailablePagers], a
	ld hl, wAvailablePagers
	add hl, bc
	ld a, [de]
	ld [hl], a
.not_good_for_call
	inc de
	ld a, [wPagerListIndex]
	dec a
	jr nz, .loop
	ret

CheckSpecialPagerCall::
	ld a, [wSpecialPagerCallID]
	and a
	jr z, .NoPagerCall

	dec a
	ld c, a
	ld b, 0
	ld hl, SpecialPagerCallList
	ld a, SPECIALCALL_SIZE
	call AddNTimes
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call _hl_
	jr nc, .NoPagerCall

	call .DoSpecialPagerCall
	inc hl
	inc hl
	ld a, [hli]
	ld e, a
	push hl
	call LoadPagerScript
	pop hl
	ld de, wPagerContact + PAGER_CONTACT_SCRIPT2_BANK
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, BANK(.script)
	ld hl, .script
	call CallScript
	scf
	ret
.NoPagerCall:
	xor a
	ret

.script
	pause 30
	sjump Script_ReceivePagerCall

.DoSpecialPagerCall:
	ld a, [wSpecialPagerCallID]
	dec a
	ld c, a
	ld b, 0
	ld hl, SpecialPagerCallList
	ld a, SPECIALCALL_SIZE
	call AddNTimes
	ret

SpecialCallOnlyWhenOutside:
	ld a, [wEnvironment]
	cp TOWN
	jr z, .outside
	cp ROUTE
	jr z, .outside
	xor a
	ret

.outside
	scf
	ret

SpecialCallWhereverYouAre:
	scf
	ret

UsePagerFromPokegear:
	; Don't do the call if you're in a link communication
	ld a, [wLinkMode]
	and a
	jr nz, .OutOfArea
	; If you're in an area without pager service, don't do the call
	call GetMapPagerService
	and a
	jr nz, .OutOfArea
	; If the person can't take a call at that time, don't do the call
	ld a, b
	ld [wCurPager], a
	ld hl, PagerContacts
	ld bc, PAGER_CONTACT_SIZE
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, PAGER_CONTACT_SCRIPT1_TIME
	add hl, de
	ld a, [hl]
	call CheckPagerContactTimeOfDay
	jr z, .OutOfArea
	; If we're in the same map as the person we're calling,
	; use the "Just talk to that person" script.
	ld hl, PAGER_CONTACT_MAP_GROUP
	add hl, de
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .GetPagerScript
	ld hl, PAGER_CONTACT_MAP_NUMBER
	add hl, de
	ld a, [wMapNumber]
	cp [hl]
	jr nz, .GetPagerScript
	ld b, BANK(PagerScript_JustTalkToThem)
	ld hl, PagerScript_JustTalkToThem
	jr .DoPagerCall

.GetPagerScript:
	ld hl, PAGER_CONTACT_SCRIPT1_BANK
	add hl, de
	ld b, [hl]
	ld hl, PAGER_CONTACT_SCRIPT1_ADDR
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr .DoPagerCall

.OutOfArea:
	ld b, BANK(LoadOutOfAreaScript)
	ld de, LoadOutOfAreaScript
	call ExecuteCallbackScript
	ret

.DoPagerCall:
	ld a, b
	ld [wPagerScriptBank], a
	ld a, l
	ld [wPagerPager], a
	ld a, h
	ld [wPagerPager + 1], a
	ld b, BANK(LoadPagerScriptBank)
	ld de, LoadPagerScriptBank
	call ExecuteCallbackScript
	ret

LoadPagerScriptBank:
	memcall wPagerScriptBank
	endcallback

LoadOutOfAreaScript:
	scall PagerOutOfAreaScript
	endcallback

LoadPagerScript:
	nop
	nop
	ld a, e
	ld [wCurPager], a
	and a
	jr nz, .actualcaller
	ld a, BANK(WrongNumber)
	ld hl, WrongNumber
	jr .proceed

.actualcaller
	ld hl, PagerContacts
	ld bc, PAGER_CONTACT_SIZE
	ld a, e
	call AddNTimes
	ld a, BANK(PagerContacts)
.proceed
	ld de, wPagerContact
	ld bc, PAGER_CONTACT_SIZE
	call FarCopyBytes
	ret

WrongNumber:
	db TRAINER_NONE, PAGER_00
	dba .script
.script
	writetext .PagerWrongNumberText
	end
.PagerWrongNumberText:
	text_far _PagerWrongNumberText
	text_end

Script_ReceivePagerCall:
	reanchormap
	callasm RingTwice_StartCall
	memcall wPagerContact + PAGER_CONTACT_SCRIPT2_BANK
	waitbutton
	callasm HangUp
	closetext
	callasm InitCallReceiveDelay
	end

Script_SpecialBillCall::
	callasm .LoadBillScript
	sjump Script_ReceivePagerCall

.LoadBillScript:
	ld e, PAGER_BILL
	jp LoadPagerScript

.LoadElmScript:
	ld e, PAGER_ELM
	jp LoadPagerScript

RingTwice_StartCall:
	call .Ring
	call .Ring
	farcall StubbedTrainerRankings_PagerCalls
	ret

.Ring:
	call Pager_StartRinging
	call Pager_Wait20Frames
	call .PagerTextboxWithName
	call Pager_Wait20Frames
	call Pager_PagerTextbox
	call Pager_Wait20Frames
	call .PagerTextboxWithName
	ret

.PagerTextboxWithName:
	ld a, [wCurPager]
	ld b, a
	call Pager_TextboxWithName
	ret

PagerCall::
	ld a, b
	ld [wPagerScriptBank], a
	ld a, e
	ld [wPagerPager], a
	ld a, d
	ld [wPagerPager + 1], a
	call .Ring
	call .Ring
	farcall StubbedTrainerRankings_PagerCalls
	ret

.Ring:
	call Pager_StartRinging
	call Pager_Wait20Frames
	call .PagerTextboxWithName
	call Pager_Wait20Frames
	call Pager_PagerTextbox
	call Pager_Wait20Frames
	call .PagerTextboxWithName
	ret

.PagerTextboxWithName:
	call Pager_PagerTextbox
	hlcoord 1, 2
	ld [hl], "☎"
	inc hl
	inc hl
	ld a, [wPagerPager]
	ld e, a
	ld a, [wPagerPager + 1]
	ld d, a
	ld a, [wPagerScriptBank]
	call PlaceFarString
	ret

Pager_NoSignal:
	ld de, SFX_NO_SIGNAL
	call PlaySFX
	jr Pager_CallEnd

HangUp::
	call HangUp_Beep
	call HangUp_Wait20Frames
Pager_CallEnd:
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	ret

HangUp_ShutDown: ; unreferenced
	ld de, SFX_SHUT_DOWN_PC
	call PlaySFX
	ret

HangUp_Beep:
	ld hl, PagerClickText
	call PrintText
	ld de, SFX_HANG_UP
	call PlaySFX
	ret

PagerClickText:
	text_far _PagerClickText
	text_end

HangUp_BoopOn:
	ld hl, PagerEllipseText
	call PrintText
	ret

PagerEllipseText:
	text_far _PagerEllipseText
	text_end

HangUp_BoopOff:
	call SpeechTextbox
	ret

Pager_StartRinging:
	call WaitSFX
	ld de, SFX_CALL
	call PlaySFX
	call Pager_PagerTextbox
	call UpdateSprites
	farcall PagerRing_CopyTilemapAtOnce
	ret

HangUp_Wait20Frames:
	jr Pager_Wait20Frames

Pager_Wait20Frames:
	ld c, 20
	call DelayFrames
	farcall PagerRing_CopyTilemapAtOnce
	ret

Pager_TextboxWithName:
	push bc
	call Pager_PagerTextbox
	hlcoord 1, 1
	ld [hl], "☎"
	inc hl
	inc hl
	ld d, h
	ld e, l
	pop bc
	call GetPagerClassAndName
	ret

Pager_PagerTextbox:
	hlcoord 0, 0
	ld b, 2
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ret

GetPagerClassAndName:
	ld h, d
	ld l, e
	ld a, b
	call GetPagerTrainerClass
	call GetPagerName
	ret

CheckCanDeletePagerNumber:
	ld a, c
	call GetPagerTrainerClass
	ld a, c
	; and a
	ret nz
	ld a, b
	cp PAGERCONTACT_MOM
	ret z
	cp PAGERCONTACT_ELM
	ret z
	ld c, $1
	ret

GetPagerTrainerClass:
	push hl
	ld hl, PagerContacts + PAGER_CONTACT_TRAINER_CLASS
	ld bc, PAGER_CONTACT_SIZE
	call AddNTimes
	ld a, [hli]
	ld b, [hl]
	ld c, a
	pop hl
	ret

GetPagerName:
	ld a, c
	and a
	jr z, .NotTrainer

	call Pager_GetTrainerName
	push hl
	push bc
	call PlaceString
	ld a, ":"
	ld [bc], a
	pop bc
	pop hl
	ld de, SCREEN_WIDTH + 3
	add hl, de
	call Pager_GetTrainerClassName
	call PlaceString
	ret

.NotTrainer:
	push hl
	ld c, b
	ld b, 0
	ld hl, NonTrainerPagerNames
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	call PlaceString
	ret

INCLUDE "data/pager/non_trainer_names.asm"

Pager_GetTrainerName:
	push hl
	push bc
	farcall GetTrainerName
	pop bc
	pop hl
	ret

Pager_GetTrainerClassName:
	push hl
	push bc
	farcall GetTrainerClassName
	pop bc
	pop hl
	ret

GetPagerLocation:
	ld a, [wCurPager]
	call GetPagerTrainerClass
	ld d, c
	ld e, b
	push de
	ld a, [wCurPager]
	ld hl, PagerContacts + PAGER_CONTACT_MAP_GROUP
	ld bc, PAGER_CONTACT_SIZE
	call AddNTimes
	ld b, [hl]
	inc hl
	ld c, [hl]
	push bc
	call GetWorldMapLocation
	ld e, a
	farcall GetLandmarkName
	pop bc
	pop de
	ret

INCLUDE "data/pager/pager_contacts.asm"

INCLUDE "data/pager/special_calls.asm"

PagerOutOfAreaScript:
	writetext PagerOutOfAreaText
	end

PagerOutOfAreaText:
	text_far _PagerOutOfAreaText
	text_end

PagerScript_JustTalkToThem:
	writetext PagerJustTalkToThemText
	end

PagerJustTalkToThemText:
	text_far _PagerJustTalkToThemText
	text_end

PagerThankYouText:
	text_far _PagerThankYouText
	text_end
