	object_const_def
	const CERULEAN_BIKE_SHOP_CLERK
	const CERULEAN_BIKE_SHOP_MIDDLE_AGED_WOMAN
	const CERULEAN_BIKE_SHOP_YOUNGSTER
	

CeruleanBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks
	
BikeShopClerkWelcomeText:
	text "Hi! Welcome to"
	line "our BIKE SHOP."

	para "Have we got just"
	line "the BIKE for you!"
	prompt

BikeShopClerkDoYouLikeItText:
	text "It's a cool BIKE!"
	line "Do you want it?"
	done

BikeShopCantAffordText:
	text "Sorry! You can't"
	line "afford it!"
	prompt

BikeShopClerkOhThatsAVoucherText:
	text "Oh, that's..."

	para "A BIKE VOUCHER!"

	para "OK! Here you go!"
	prompt

BikeShopExchangedVoucherText:
	text "<PLAYER> exchanged"
	line "the BIKE VOUCHER"
	cont "for a BICYCLE."
	done

BikeShopComeAgainText:
	text "Come back again"
	line "some time!"
	done

BikeShopClerkHowDoYouLikeYourBicycleText:
	text "How do you like"
	line "your new BICYCLE?"

	para "You can take it"
	line "on CYCLING ROAD"
	cont "and in caves!"
	done

BikeShopBagFullText:
	text "You better make"
	line "room for this!"
	done

BikeShopMiddleAgedWomanText:
	text "A plain city BIKE"
	line "is good enough"
	cont "for me!"

	para "You can't put a"
	line "shopping basket"
	cont "on an MTB!"
	done

BikeShopYoungsterTheseBikesAreExpensiveText:
	text "These BIKEs are"
	line "cool, but they're"
	cont "way expensive!"
	done

BikeShopYoungsterCoolBikeText:
	text "Wow. Your BIKE is"
	line "really cool!"
	done


CeruleanBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 8
	warp_event  3,  7, CERULEAN_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	
