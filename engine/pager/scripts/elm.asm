ElmPagerCalleeScript:
	readvar VAR_SPECIALPAGERCALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue .discovery
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse .next
	checkevent EVENT_TOGEPI_HATCHED
	iftrue .egghatched
.next
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .eggunhatched
	checkevent EVENT_ELMS_AIDE_IN_LAB
	iftrue .assistant
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .checkingegg
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .stolen
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue .sawmrpokemon
	farwritetext ElmPagerHealYourMonText
	end

.sawmrpokemon
	farwritetext ElmPagerSawMrPokemonText
	end

.stolen
	farwritetext ElmPagerPokemonStolenText
	end

.checkingegg
	farwritetext ElmPagerCheckingTheEggText
	end

.assistant
	farwritetext ElmPagerAssistantText
	end

.eggunhatched
	farwritetext ElmPagerHowIsTheEggText
	end

.egghatched
	farwritetext ElmPagerEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PAGER
	end

.discovery
	random 2
	ifequal 0, .nextdiscovery
	farwritetext ElmPagerDiscoveredHatchTimeText
	end

.nextdiscovery
	farwritetext ElmPagerInvestigatingEggMovesText
	end

.pokerus
	farwritetext ElmPagerDiscoveredPokerusText
	specialpagercall SPECIALCALL_NONE
	end

ElmPagerPagerScript:
	readvar VAR_SPECIALPAGERCALL
	ifequal SPECIALCALL_ROBBED, .disaster
	ifequal SPECIALCALL_ASSISTANT, .assistant
	ifequal SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPagerDiscoveredPokerusText
	specialpagercall SPECIALCALL_NONE
	end

.disaster
	farwritetext ElmPagerDisasterText
	specialpagercall SPECIALCALL_NONE
	setevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant
	farwritetext ElmPagerEggAssistantText
	specialpagercall SPECIALCALL_NONE
	clearevent EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_ELMS_AIDE_IN_LAB
	end

.rocket
	farwritetext ElmPagerRadioTowerRocketTakeoverText
	specialpagercall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPagerGiftText
	specialpagercall SPECIALCALL_NONE
	end

.neat ; unreferenced
	farwritetext ElmPagerGotAholdOfSomethingNeatText
	specialpagercall SPECIALCALL_NONE
	end
