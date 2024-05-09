Script_BattleWhiteout::
	callasm BattleBGMap
	sjump Script_Whiteout

OverworldWhiteoutScript::
	reanchormap
	callasm OverworldBGMap

Script_Whiteout:
	writetext .BlackedOutText
	special FadeOutToBlack
	pause 40
	special HealParty
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue .bug_contest
	callasm HalveMoney
	callasm GetWhiteoutSpawn
	farscall Script_AbortBugContest
	special WarpToSpawnPoint
	newloadmap MAPSETUP_WARP
	endall

.bug_contest
	jumpstd BugContestResultsWarpScript

.BlackedOutText:
	text_far _BlackedOutText
	text_end

OverworldBGMap:
	farcall FadeOutToWhite
	xor a
	ldh [hMapAnims], a
	call ClearTilemap
	call ClearSprites
	ld a, CGB_PLAIN
	call GetSGBLayout
	jmp SetDefaultBGPAndOBP

BattleBGMap:
	ld b, SCGB_BATTLE_GRAYSCALE
	call GetSGBLayout
	jmp SetDefaultBGPAndOBP

HalveMoney:
	farcall StubbedTrainerRankings_WhiteOuts

; Halve the player's money.
	xor a
	ld [wSpinning], a
	ld hl, wMoney
	ld a, [hl]
	srl a
	ld [hli], a
	ld a, [hl]
	rra
	ld [hli], a
	ld a, [hl]
	rra
	ld [hl], a
	ret

GetWhiteoutSpawn:
	ld a, [wLastSpawnMapGroup]
	ld d, a
	ld a, [wLastSpawnMapNumber]
	ld e, a
	farcall IsSpawnPoint
	ld a, c
	jr c, .yes
	ld a, SPAWN_PALLET ; Player's house

.yes
	ld [wDefaultSpawnpoint], a
	ret
