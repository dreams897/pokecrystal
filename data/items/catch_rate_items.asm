; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db ITEM_19, LEFTOVERS
	db ITEM_2D, BITTER_BERRY
	db ITEM_32, GOLD_BERRY
	db ITEM_5A, BERRY
	db ITEM_64, BERRY
	db ITEM_78, BERRY
	db ITEM_87, BERRY
	db ITEM_BE, BERRY
	db ITEM_BF, BERRY
	db ITEM_C0, BERRY
	db ITEM_C1, BERRY
	db ITEM_C2, BERRY
	db ITEM_C3, BERRY
	db ITEM_C4, BERRY
	db ITEM_C5, BERRY
	db TM_DYNAMICPUNCH, BERRY ; c6
	db TM_HEADBUTT, BERRY     ; c7
	db TM_CURSE, BERRY        ; c8
	db TM_ROLLOUT, BERRY      ; c9
	db TM_ROAR, BERRY         ; ca
	db TM_TOXIC, BERRY        ; cb
	db TM_ZAP_CANNON, BERRY   ; cc
	db TM_ROCK_SMASH, BERRY   ; cd
	db TM_PSYCH_UP, BERRY     ; ce
	db TM_HIDDEN_POWER, BERRY ; cf
	db TM_SUNNY_DAY, BERRY    ; d0
	db TM_SWEET_SCENT, BERRY  ; d1
	db TM_SNORE, BERRY        ; d2
	db TM_BLIZZARD, BERRY     ; d3
	db TM_HYPER_BEAM, BERRY   ; d4
	db TM_ICY_WIND, BERRY     ; d5
	db TM_PROTECT, BERRY      ; d6
	db TM_RAIN_DANCE, BERRY   ; d7
	db TM_GIGA_DRAIN, BERRY   ; d8
	db TM_ENDURE, BERRY       ; d9
	db TM_FRUSTRATION, BERRY  ; da
	db TM_SOLARBEAM, BERRY    ; db
	db TM_IRON_TAIL, BERRY    ; dc
	db TM_DRAGONBREATH, BERRY ; dd
	db TM_THUNDER, BERRY      ; de
	db TM_EARTHQUAKE, BERRY   ; df
	db TM_RETURN, BERRY       ; e0
	db TM_DIG, BERRY          ; e1
	db TM_PSYCHIC_M, BERRY    ; e2
	db TM_SHADOW_BALL, BERRY  ; e3
	db TM_MUD_SLAP, BERRY     ; e4
	db TM_DOUBLE_TEAM, BERRY  ; e5
	db TM_ICE_PUNCH, BERRY    ; e6
	db TM_SWAGGER, BERRY      ; e7
	db TM_SLEEP_TALK, BERRY   ; e8
	db TM_SLUDGE_BOMB, BERRY  ; e9
	db TM_SANDSTORM, BERRY    ; ea
	db TM_FIRE_BLAST, BERRY   ; eb
	db TM_SWIFT, BERRY        ; ec
	db TM_DEFENSE_CURL, BERRY ; ed
	db TM_THUNDERPUNCH, BERRY ; ee
	db TM_DREAM_EATER, BERRY  ; ef
	db TM_DETECT, BERRY       ; f0
	db TM_REST, BERRY         ; f1
	db TM_ATTRACT, BERRY      ; f2
	db TM_THIEF, BERRY        ; f3
	db TM_STEEL_WING, BERRY   ; f4
	db TM_FIRE_PUNCH, BERRY   ; f5
	db TM_FURY_CUTTER, BERRY  ; f6
	db TM_NIGHTMARE, BERRY    ; f7
	db HM_CUT, BERRY          ; f8
	db HM_FLY, BERRY          ; f9
	db HM_SURF, BERRY         ; fa
	db HM_STRENGTH, BERRY     ; fb
	db HM_FLASH, BERRY        ; fc
	db HM_WHIRLPOOL, BERRY    ; fd
	db HM_WATERFALL, BERRY    ; fe
	db -1, BERRY              ; ff
	db 0, BERRY               ; end
