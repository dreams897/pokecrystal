; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons VIRIDIAN_FOREST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, WEEDLE, 	  	  3,   5
	db 20, CATERPIE, 	  3,   6
	db 20, KAKUNA, 	  	  4,   6
	db 19, PIDGEY, 	          4,   8
	db 14, METAPOD, 	  4,   6
	db  5, PIKACHU, 	  3,   5
	db  2, PIDGEOTTO, 	  9,   9
	; day
	db 18, WEEDLE, 	  	  3,   5
	db 18, CATERPIE, 	  3,   6
	db 18, KAKUNA, 	  	  4,   6
	db 16, METAPOD, 	  4,   6
	db 13, METAPOD, 	  4,   6
	db 12, PIDGEY, 	          4,   8
	db  5, PIKACHU, 	  3,   5
	; nite
	db 20, WEEDLE, 	  	  3,   5
	db 20, KAKUNA, 	          4,   6
	db 20, METAPOD,   	  4,   6
	db 19, CATERPIE,  	  3,   6
	db 14, KAKUNA, 	  	  4,   6
	db  5, VENONAT,   	  3,   5
	db  2, ZUBAT, 	  	  3,   5
	end_grass_wildmons

	def_grass_wildmons DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db  5, DUGTRIO, 	 29,  31
	; day
	db 20, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db  5, DUGTRIO, 	 29,  31
	; nite
	db 20, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db 15, DIGLETT, 	 15,  22
	db  5, DUGTRIO, 	 29,  31
	end_grass_wildmons

	def_grass_wildmons MT_MOON_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, ZUBAT, 	  	  6,  11
	db 25, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db  5, PARAS, 	  	  8,   8
	db  4, SANDSHREW, 	 12,  12
	db  1, CLEFAIRY, 	  8,  11
	; day
	;  %, species,		min, max
	db 25, ZUBAT, 	  	  6,  11
	db 25, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db  5, PARAS, 	  	  8,   8
	db  4, SANDSHREW, 	 12,  12
	db  1, CLEFAIRY, 	  8,  11
	; nite
	;  %, species,		min, max
	db 25, ZUBAT, 	  	  6,  11
	db 25, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db 20, GEODUDE, 	  8,  10
	db  5, PARAS, 	  	  8,   8
	db  4, SANDSHREW, 	 12,  12
	db  1, CLEFAIRY, 	  8,  11
	end_grass_wildmons
	
	def_grass_wildmons MT_MOON_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, ZUBAT, 	  	  7,  11
	db 20, GEODUDE, 	  7,  11
	db 16, GEODUDE, 	  7,   9
	db 14, GEODUDE, 	 10,  11
	db 11, PARAS, 	  	  9,  11
	db  9, PARAS, 	  	 10,  10
	db  5, CLEFAIRY, 	  9,  12
	; day
	db 25, ZUBAT, 	  	  7,  11
	db 20, GEODUDE, 	  7,  11
	db 16, GEODUDE, 	  7,   9
	db 14, GEODUDE, 	 10,  11
	db 11, PARAS, 	  	  9,  11
	db  9, PARAS, 	  	 10,  10
	db  5, CLEFAIRY, 	  9,  12
	; nite
	db 25, ZUBAT, 	  	  7,  11
	db 20, GEODUDE, 	  7,  11
	db 16, GEODUDE, 	  7,   9
	db 14, GEODUDE, 	 10,  11
	db 11, PARAS, 	  	  9,  11
	db  9, PARAS, 	  	 10,  10
	db  5, CLEFAIRY, 	  9,  12
	end_grass_wildmons
	
	def_grass_wildmons MT_MOON_B2F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, ZUBAT, 	  	 10,  13
	db 20, ZUBAT, 	  	  9,  12
	db 16, GEODUDE, 	  9,  10
	db 14, GEODUDE, 	 11,  11
	db 11, PARAS, 	  	 10,  12
	db  9, PARAS, 	  	 13,  13
	db  5, CLEFAIRY, 	  9,  13
	; day
	db 25, ZUBAT, 	  	 10,  13
	db 20, ZUBAT, 	  	  9,  12
	db 16, GEODUDE, 	  9,  10
	db 14, GEODUDE, 	 11,  11
	db 11, PARAS, 	  	 10,  12
	db  9, PARAS, 	  	 13,  13
	db  5, CLEFAIRY, 	  9,  13
	; nite
	db 25, ZUBAT, 	  	 10,  13
	db 20, ZUBAT, 	  	  9,  12
	db 16, GEODUDE, 	  9,  10
	db 14, GEODUDE, 	 11,  11
	db 11, PARAS, 	  	 10,  12
	db  9, PARAS, 	  	 13,  13
	db  5, CLEFAIRY, 	  9,  13
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ; TODO
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	 	 11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	; day
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	 	 11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	; nite
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	 	 11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ; TODO
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	         11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	; day
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	 	 11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	; nite
	db 25, ZUBAT, 	  	 10,  13
	db 20, GEODUDE, 	  9,  12
	db 16, MACHOP, 	  	  9,  10
	db 14, ZUBAT, 	 	 11,  11
	db 11, ONIX, 	  	 10,  12
	db  9, ONIX, 	  	 13,  13
	db  5, ONIX, 	 	  9,  13
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, GRAVELER, 	 34,  34
	db 20, RHYHORN, 	 32,  32
	db 16, ONIX, 	  	 33,  33
	db 14, GOLBAT, 	 	 34,  34
	db 11, SANDSLASH, 	 35,  35
	db  9, RHYDON, 	  	 35,  35
	db  5, RHYDON, 	 	 35,  35
	; day
	db 25, GRAVELER, 	 34,  34
	db 20, RHYHORN, 	 32,  32
	db 16, ONIX, 	  	 33,  33
	db 14, GOLBAT, 	 	 34,  34
	db 11, SANDSLASH, 	 35,  35
	db  9, RHYDON, 	  	 35,  35
	db  5, RHYDON, 	 	 35,  35
	; nite
	db 25, GRAVELER, 	 34,  34
	db 20, RHYHORN, 	 32,  32
	db 16, ONIX, 	  	 33,  33
	db 14, GOLBAT, 	         34,  34
	db 11, SANDSLASH, 	 35,  35
	db  9, RHYDON, 	  	 35,  35
	db  5, RHYDON, 	 	 35,  35
	end_grass_wildmons

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, PIDGEY, 	           2,  5
	db 25, RATTATA, 	   2,  4
	db 15, PIDGEY, 	           2,  4
	db 15, RATTATA, 	   2,  4
	db 10, RATTATA, 	   2,  4
	db  5, PIDGEY, 	           2,  7
	db  5, PIDGEY, 	           2,  7
	; day
	db 25, PIDGEY, 	           2,  5
	db 25, RATTATA, 	   2,  4
	db 15, PIDGEY, 	           2,  4
	db 15, RATTATA, 	   2,  4
	db 10, RATTATA, 	   2,  4
	db  5, PIDGEY, 	           2,  7
	db  5, PIDGEY, 	           2,  7
	; nite
	db 25, PIDGEY, 	           2,  5
	db 25, RATTATA, 	   2,  4
	db 15, PIDGEY, 	           2,  4
	db 15, RATTATA, 	   2,  4
	db 10, RATTATA, 	   2,  4
	db  5, PIDGEY, 	           2,  7
	db  5, PIDGEY, 	           2,  7
	end_grass_wildmons

	def_grass_wildmons ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, PIDGEY, 	           3,  5
	db 20, RATTATA, 	   3,  7
	db 15, CATERPIE, 	   3,  5
	db 15, WEEDLE, 	   	   3,  5
	db 15, RATTATA, 	   2,  5
	db  7, NIDORAN_M, 	   4,  6
	db  3, NIDORAN_F, 	   4,  6
	; day
	db 25, PIDGEY, 	           3,  5
	db 20, RATTATA, 	   3,  7
	db 15, CATERPIE, 	   3,  5
	db 15, WEEDLE, 	   	   3,  5
	db 15, RATTATA, 	   2,  5
	db  5, NIDORAN_M, 	   4,  6
	db  5, NIDORAN_F, 	   4,  6
	; nite
	db 25, PIDGEY, 	           3,  5
	db 20, RATTATA, 	   3,  7
	db 15, CATERPIE, 	   3,  5
	db 15, WEEDLE, 	   	   3,  5
	db 15, RATTATA, 	   2,  5
	db  7, NIDORAN_F, 	   4,  6
	db  3, NIDORAN_M, 	   4,  6
	end_grass_wildmons

	def_grass_wildmons ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		 min, max
	db 30, SPEAROW, 	   8,  12
	db 20, PIDGEY, 	   	   6,   8
	db 15, RATTATA, 	  10,  12
	db 15, SANDSHREW, 	   8,  10
	db 10, JIGGLYPUFF, 	   3,   7
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	; day
	db 30, SPEAROW, 	   8,  12
	db 20, PIDGEY, 	   	   6,   8
	db 15, RATTATA, 	  10,  12
	db 15, SANDSHREW, 	   8,  10
	db 10, JIGGLYPUFF, 	   3,   7
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	; nite
	db 30, SPEAROW, 	   8,  12
	db 20, PIDGEY, 	   	   6,   8
	db 20, RATTATA, 	  10,  12
	db 15, SANDSHREW, 	   8,  10
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	db  5, JIGGLYPUFF, 	   4,   7
	end_grass_wildmons

	def_grass_wildmons ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		 min, max
	db 30, SPEAROW, 	   8,  12
	db 20, EKANS, 	  	   6,  12
	db 15, SANDSHREW, 	   6,  12
	db 15, RATTATA, 	   8,  12
	db 10, RATTATA, 	  10,  12
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	; day
	db 30, SPEAROW, 	   8,  12
	db 20, EKANS, 	  	   6,  12
	db 15, SANDSHREW, 	   6,  12
	db 15, RATTATA, 	   8,  12
	db 10, RATTATA, 	  10,  12
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	; nite
	db 30, SPEAROW, 	   8,  12
	db 20, EKANS, 	  	   6,  12
	db 15, SANDSHREW, 	   6,  12
	db 15, RATTATA, 	   8,  12
	db 10, RATTATA, 	  10,  12
	db  5, MANKEY, 	   	   9,   9
	db  5, MANKEY, 	   	   9,   9
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_10 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_14 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ; TODO
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; day
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	; nite
	db 30, RATTATA, 	  3,   6
	db 30, RATTATA, 	  3,   6
	db 20, RATTATA, 	  3,   6
	db 10, RATTATA, 	  3,   6
	db  5, RATTATA, 	  3,   6
	db  4, RATTATA, 	  3,   6
	db  1, RATTATA, 	  3,   6
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, RATTATA, 	   2,  4
	db 20, SPEAROW, 	   2,  6
	db 15, MANKEY, 	   	   3,  5
	db 15, NIDORAN_M, 	   2,  4
	db 15, RATTATA, 	   2,  5
	db  5, NIDORAN_F, 	   2,  4
	db  5, NIDORAN_F, 	   2,  4
	; day
	db 25, RATTATA, 	   2,  4
	db 20, SPEAROW, 	   2,  6
	db 15, MANKEY, 	   	   3,  5
	db 15, NIDORAN_F, 	   2,  4
	db 15, RATTATA, 	   2,  5
	db  5, NIDORAN_M, 	   2,  4
	db  5, NIDORAN_M, 	   2,  4
	; nite
	db 25, RATTATA, 	   2,  4
	db 20, SPEAROW, 	   2,  6
	db 15, MANKEY, 	   	   3,  5
	db 15, MANKEY, 	   	   2,  4
	db 15, RATTATA, 	   2,  5
	db  5, NIDORAN_M, 	   2,  4
	db  5, NIDORAN_F, 	   2,  4
	end_grass_wildmons

	def_grass_wildmons ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		  min, max
	db 25, ODDISH, 	   	   12,  14
	db 20, PIDGEY, 	   	   12,  15
	db 18, WEEDLE, 	            7,   7
	db 15, BELLSPROUT, 	   12,  14
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	            8,  12
	db  2, PIDGEOTTO, 	   15,  17
	; day
	db 20, ODDISH, 	   	   12,  14
	db 15, PIDGEY, 	   	   12,  15
	db 15, WEEDLE, 	            7,   7
	db 15, KAKUNA, 	   	    8,   8
	db 15, BELLSPROUT, 	   12,  14
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	            8,  12
	; nite
	db 25, ODDISH, 	   	   12,  14
	db 20, BELLSPROUT, 	   12,  14
	db 15, WEEDLE, 	            7,   7
	db 15, KAKUNA, 	   	    8,   8
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	            8,  12
	db  5, ABRA, 	            8,  12
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ; TODO
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		  min, max
	db 25, ODDISH, 	   	   12,  14
	db 20, BELLSPROUT, 	   12,  14
	db 18, PIDGEY, 	           13,  17
	db 15, WEEDLE, 	            8,   8
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	           10,  12
	db  2, PIDGEOTTO, 	   15,  17
	; day
	db 20, ODDISH, 	   	   12,  14
	db 15, BELLSPROUT, 	   12,  14
	db 15, CATERPIE, 	    8,   8
	db 15, KAKUNA, 	   	    8,   8
	db 15, BELLSPROUT, 	   12,  14
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	           10,  12
	; nite
	db 25, ODDISH, 	   	   12,  14
	db 20, BELLSPROUT, 	   12,  14
	db 15, WEEDLE, 	            8,   8
	db 15, KAKUNA, 	   	    8,   8
	db 15, METAPOD, 	    8,   8
	db  5, ABRA, 	           10,  10
	db  5, ABRA, 	           12,  12
	end_grass_wildmons

	db -1 ; end
