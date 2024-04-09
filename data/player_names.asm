RedNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "RED@"
	db "ASH@"
	db "JACK@"
	db "JOHN@"
	db 2 ; title indent
	db " NAME @" ; title

GreenNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "GREEN@"
	db "LEAF@"
	db "AMANDA@"
	db "JODI@"
	db 2 ; title indent
	db " NAME @" ; title
	
EnbyNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .OtherNames
	db 1 ; ????
	db 0 ; default option

.OtherNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
EnbyPlayerNameArray:
	db "PURPLE@"
	db "JORDAN@"
	db "REMY@"
	db "WEST@"
	db 2 ; title indent
	db " NAME @" ; title
