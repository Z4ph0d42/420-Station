/*
This file contains random spawners of random spawners, and this is ONLY subtype that should do that.
DO NOT use random spawners in other random spawners.
DO NOT use random spawners of random spawners in other random spawners. Yes, that was done once.
Packs are meant to be send mainly to junkpiles, but can be placed on map as well.
They generally give more random result and can provide more divercity in spawn.
*/

/obj/random/pack/cloth
	name = "Random cloth supply"
	icon_state = "armor-red"
	desc = "This is a random cloth supply."

/obj/random/pack/cloth/spawn_choices()
	return pickweight(list(
					/obj/random/cloth/masks = 5,
					/obj/random/cloth/armor = 3,
					/obj/random/cloth/hazmatsuit = 4,
					/obj/random/cloth/under = 7,
					/obj/random/cloth/helmet = 4,
					/obj/random/cloth/head = 5,
					/obj/random/gloves = 5,
					/obj/random/glasses = 4,
					/obj/random/shoes = 6,
					/obj/random/backpack = 4,
					/obj/random/belt = 4,
					/obj/random/cloth/holster = 4,
					/obj/random/pouches = 4
				))

/obj/random/pack/cloth/low_chance
	name = "low chance random cloth"
	icon_state = "armor-red-low"
	spawn_nothing_percentage = 70




//Those are going to the closets, mostly
/obj/random/pack/tech_loot
	name = "Random technical loot"
	icon_state = "tool-red"
	desc = "This is a random technical loot."

/obj/random/pack/tech_loot/spawn_choices()
	return pickweight(list(

					/obj/random/circuitboard = 6,
					/obj/random/knife = 6,
					/obj/random/lowkeyrandom = 8,
					/obj/random/material = 4,
					/obj/random/material_ore = 8,
					/obj/random/exosuit_equipment = 3,
					/obj/random/powercell = 8,
					/obj/random/tool = 20,
					/obj/random/toolbox = 5,
					/obj/random/voidsuit = 3,
				))
//items or fuctions from eris that may be ported in the future just moved them down for now from the above code
				//obj/random/lathe_disk = 2,
				//obj/random/tool_upgrade = 30,
				//obj/random/techpart = 10,
				//obj/random/material_rare = 3,

/obj/random/pack/tech_loot/low_chance
	name = "low chance technical loot"
	icon_state = "tool-red-low"
	spawn_nothing_percentage = 70


/obj/random/pack/tech_loot/super
	name = "Random technical loot"
	icon_state = "tool-red"
	desc = "This is a random technical loot."

/obj/random/pack/tech_loot/super/spawn_choices()
	return pickweight(list(/obj/item/weapon/stock_parts/capacitor/super = 2,
	/obj/item/weapon/stock_parts/scanning_module/phasic = 2,
	/obj/item/weapon/stock_parts/manipulator/pico = 2,
	/obj/item/weapon/stock_parts/micro_laser/ultra = 2,
	/obj/item/weapon/stock_parts/matter_bin/super = 2,
	/obj/random/prothesis/super = 1))


//This will be spawned in rare closets
/obj/random/pack/gun_loot
	name = "Random gun loot"
	icon_state = "gun-red"
	desc = "This is a random technical loot."

/obj/random/pack/gun_loot/spawn_choices()
	return pickweight(list(
					/obj/random/gun_cheap = 8,
					/obj/random/gun_normal = 3,
					/obj/random/gun_energy_cheap = 6,
					/obj/random/shotgun = 5,
					/obj/random/knife = 6,
					/obj/random/ammo = 15,
					/obj/random/ammo/shotgun = 15,
					/obj/random/ammo_ihs = 15,
					/obj/random/ammo_lowcost = 18,
					//obj/random/gun_upgrade = 10,
					/obj/random/cloth/holster = 8
				))

/obj/random/pack/gun_loot/low_chance
	name = "low chance gun loot"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 70




//Rare loot, where we need to be sure that reward is worth it
/obj/random/pack/rare
	name = "rare loot"
	icon_state = "box-orange"

/obj/random/pack/rare/spawn_choices()
	return pickweight(RANDOM_RARE_ITEM) // made into a define so that rare objects can be spawned for mobs too

/obj/random/pack/rare/low_chance
	name = "low chance rare loot"
	icon_state = "box-orange-low"
	spawn_nothing_percentage = 70




//The pack to surpass them all. This pack is meant to be PLACED ON MAP. Not in JUNK CODE, because it CONTAINS JUNK SPAWNER.
//It meant to spawn any large structure, machine or container.
/obj/random/pack/machine
	name = "random machine"
	icon_state = "machine-orange"


/obj/random/pack/machine/spawn_choices()
	return pickweight(list(
					/obj/random/structures = 28, //That one have MUCH MORE important objects for maints inside, that's why the number is hight
					/obj/random/closet_maintloot = 18, //That one is also important part of the maints
					/obj/random/closet_tech = 6,
					/obj/random/closet = 4,
					/obj/random/closet_wardrobe = 2,
					/obj/random/scrap/moderate_weighted = 12, //Our scrap pile. This is basically just a huge spawner.
					/obj/random/exosuit/damaged = 1, //Some dangerous shit can be found there
				))

/obj/random/pack/machine/low_chance
	name = "low chance random structure"
	icon_state = "machine-orange-low"
	spawn_nothing_percentage = 70




//Same pack as above, but it meant to be PLACED TO JUNK CODE. Numbers are a bit different as well
//Those sctuctures can contain more loot or even mobs. Keep that in mind, because I feel it can break in the future
/obj/random/pack/junk_machine
	name = "random junk machine"
	icon_state = "machine-grey"


/obj/random/pack/junk_machine/spawn_choices()
	return pickweight(list(
					/obj/random/structures = 14, //That one have MUCH MORE important objects for maints inside, that's why the number is hight
					/obj/random/closet_maintloot = 18, //That one is also important part of the maints
					/obj/random/closet_tech = 6,
					/obj/random/closet = 4,
					/obj/random/closet_wardrobe = 2,
					/obj/random/exosuit/damaged = 1, //Some dangerous shit can be found there
				))

/obj/random/pack/junk_machine/low_chance
	name = "low chance random junk structure"
	icon_state = "machine-grey-low"
	spawn_nothing_percentage = 70

/obj/random/pack/junk_machine/beacon/spawn_choices()
	return pickweight(list(
					/obj/random/structures = 7, //That one have MUCH MORE important objects for maints inside, that's why the number is hight
					/obj/random/closet_maintloot/beacon = 28, //That one is also important part of the maints
					/obj/random/closet_tech = 3,
					/obj/random/closet = 2,
					/obj/random/closet_wardrobe = 2,
					/obj/random/exosuit/damaged = 1, //Some dangerous shit can be found there
				))
