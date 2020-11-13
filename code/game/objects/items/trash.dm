//Items labled as 'trash' for the trash bag.
//TODO: Make this an item var or something...

//Added by Jack Rost
/obj/item/trash
	icon = 'icons/obj/trash.dmi'
	w_class = ITEM_SIZE_SMALL
	desc = "This is rubbish."
	var/age = 0

/obj/item/trash/New(var/newloc, var/_age)
	..(newloc)
	if(!isnull(_age))
		age = _age

/obj/item/trash/Initialize()
	SSpersistence.track_value(src, /datum/persistent/filth/trash)
	. = ..()

/obj/item/trash/Destroy()
	SSpersistence.forget_value(src, /datum/persistent/filth/trash)
	. = ..()

/obj/item/trash/raisins
	name = "\improper 4no raisins"
	icon_state = "4no_raisins"

/obj/item/trash/candy
	name = "candy"
	icon_state = "candy"

/obj/item/trash/proteinbar
	name = "protein bar"
	icon_state = "proteinbar"

/obj/item/trash/cheesie
	name = "\improper Cheesie Honkers"
	icon_state = "cheesie_honkers"

/obj/item/trash/chips
	name = "chips"
	icon_state = "chips"

/obj/item/trash/popcorn
	name = "popcorn"
	icon_state = "popcorn"

/obj/item/trash/sosjerky
	name = "Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"

/obj/item/trash/syndi_cakes
	name = "syndi cakes"
	icon_state = "syndi_cakes"

/obj/item/trash/waffles
	name = "waffles"
	icon_state = "waffles"

/obj/item/trash/plate
	name = "plate"
	icon_state = "plate"

/obj/item/trash/snack_bowl
	name = "snack bowl"
	icon_state	= "snack_bowl"

/obj/item/trash/pistachios
	name = "pistachios pack"
	icon_state = "pistachios_pack"

/obj/item/trash/semki
	name = "semki pack"
	icon_state = "semki_pack"

/obj/item/trash/fishegg
	name = "caviar can"
	icon_state = "fisheggs"

/obj/item/trash/carpegg
	name = "caviar can"
	icon_state = "carpeggs"

/obj/item/trash/salo
	name = "salo pack"
	icon_state = "salo"

/obj/item/trash/croutons
	name = "suhariki pack"
	icon_state = "croutons"

/obj/item/trash/squid
	name = "calamari pack"
	icon_state = "squid"

/obj/item/trash/driedfish
	name = "vobla pack"
	icon_state = "driedfish"

/obj/item/trash/tray
	name = "tray"
	icon_state = "tray"

/obj/item/trash/candle
	name = "candle"
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle4"

/obj/item/trash/liquidfood
	name = "\improper \"LiquidFood\" MRE"
	icon_state = "liquidfood"

/obj/item/trash/tastybread
	name = "bread tube"
	icon_state = "tastybread"

/obj/item/trash/cubewrapper
	name = "discarded wrapper"
	icon_state = "monkeywrap"

/obj/item/trash/beef
	name = "empty can"
	icon_state = "beef"

/obj/item/trash/beans
	name = "empty can"
	icon_state = "beans"

/obj/item/trash/tomato
	name = "empty can"
	icon_state = "tomato"

/obj/item/trash/spinach
	name = "empty can"
	icon_state = "spinach"

/obj/item/trash/cakewrap
	name = "wrapper"
	icon_state = "cakewrap"

/obj/item/trash/mochicakewrap
	name = "wrapper"
	icon_state = "mochicakewrap"

/obj/item/trash/mooncakewrap
	name = "wrapper"
	icon_state = "mooncakewrap"

/obj/item/trash/tidegobs
	name = "tide gob bag"
	icon_state = "tidegobs"

/obj/item/trash/saturno
	name = "\improper saturn-Os bag"
	icon_state = "saturno"

/obj/item/trash/jupiter
	name = "gello cup"
	icon_state = "jupiter"

/obj/item/trash/pluto
	name = "rod bag"
	icon_state = "pluto"

/obj/item/trash/venus
	name = "hot cakes bag"
	icon_state = "venus"

/obj/item/trash/mars
	name = "frouka box"
	icon_state = "mars"

/obj/item/trash/oort
	name = "oort rock bag"
	icon_state = "oort"

/obj/item/trash/weebonuts
	name = "red alert nuts bag"
	icon_state = "weebonuts"

/obj/item/trash/stick
	name = "stick"
	desc = "a stick from some snack food item or a lollipop, not even useful as crafting material."
	icon_state = "stick"

/obj/item/trash/attack(mob/M as mob, mob/living/user as mob)
	return

/obj/item/trash/material
	icon = 'icons/obj/material_trash.dmi'
	matter = list()
	var/matter_chances = list()	//List of lists: list(material_name, chance, amount)


/obj/item/trash/material/Initialize()
	. = ..()
	if(!matter)
		matter = list()

	for(var/list/L in matter_chances)
		if(prob(L[2]))
			matter |= L[1]
			matter[L[1]] += max(0, L[3] + rand(-2,2))




/obj/item/trash/material/metal
	name = "scrap metal"
	desc = "A piece of metal that can be recycled in an autolathe."
	icon_state = "metal0"
	matter_chances = list(
		list(MATERIAL_STEEL, 100, 15),
		list(MATERIAL_STEEL, 50, 10),
		list(MATERIAL_STEEL, 10, 20),
		list(MATERIAL_PLASTEEL, 10, 5),
		list(MATERIAL_PLASTEEL, 5, 10),
		list(MATERIAL_PLATINUM, 4, 2),
	)

/obj/item/trash/material/metal/Initialize()
	. = ..()
	icon_state = "metal[rand(4)]"


/obj/item/trash/material/circuit
	name = "burnt circuit"
	desc = "A burnt circuit that can be recycled in an autolathe."
	w_class = ITEM_SIZE_SMALL
	icon_state = "circuit0"
	matter_chances = list(
		list(MATERIAL_GLASS, 100, 4),
		list(MATERIAL_GLASS, 50, 3),
		list(MATERIAL_PLASTIC, 40, 3),
		list(MATERIAL_SILVER, 18, 3),
		list(MATERIAL_GOLD, 17, 3),
		list(MATERIAL_DIAMOND, 4, 2),
	)

/obj/item/trash/material/circuit/Initialize()
	. = ..()
	icon_state = "circuit[rand(3)]"


/obj/item/trash/material/device
	name = "broken device"
	desc = "A broken device that can be recycled in an autolathe."
	w_class = ITEM_SIZE_SMALL
	icon_state = "device0"
	matter_chances = list(
		list(MATERIAL_STEEL, 100, 10),
		list(MATERIAL_GLASS, 90, 7),
		list(MATERIAL_PLASTIC, 100, 10),
		list(MATERIAL_SILVER, 16, 7),
		list(MATERIAL_GOLD, 15, 5),
		list(MATERIAL_DIAMOND, 5, 2),
	)

/obj/item/trash/material/device/Initialize()
	. = ..()
	icon_state = "device[rand(3)]"
