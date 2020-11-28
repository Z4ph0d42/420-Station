/obj/random
	name = "random object"
	desc = "This item type is used to spawn random objects at round-start."
	icon = 'icons/misc/mark.dmi'
	icon_state = "rup"
	var/spawn_nothing_percentage = 0 // this variable determines the likelyhood that this random object will not spawn anything
	var/min_amount = 1
	var/max_amount = 1
	var/spread_range = 0
	var/has_postspawn = FALSE
	invisibility = INVISIBILITY_MAXIMUM
	var/spawn_method = /obj/random/proc/spawn_item

// creates a new object and deletes itself
/obj/random/Initialize()
	..()
	if(!prob(spawn_nothing_percentage))
		var/list/spawns = spawn_item()
		if (has_postspawn && spawns.len)
			post_spawn(spawns)

	return INITIALIZE_HINT_QDEL

// this function should return a specific item to spawn
/obj/random/proc/item_to_spawn()
	return

// this function should return a specific item to spawn
/obj/random/proc/post_spawn(var/list/spawns)
	return

// creates the random item
/obj/random/proc/spawn_item()
	if(prob(spawn_nothing_percentage))
		return

	if(isnull(loc))
		return

	var/build_path = pickweight(spawn_choices())

	var/atom/A = new build_path(src.loc)
	if(pixel_x || pixel_y)
		A.pixel_x = pixel_x
		A.pixel_y = pixel_y

	return A

// Returns an associative list in format path:weight
/obj/random/proc/spawn_choices()
	return list()

/obj/random/single
	name = "randomly spawned object"
	desc = "This item type is used to randomly spawn a given object at round-start."
	icon_state = "x3"
	spawn_nothing_percentage = 50
	var/spawn_object = null

/obj/random/single/spawn_choices()
	return list(spawn_object)

/obj/randomcatcher
	name = "Random Catcher Object"
	desc = "You should not see this."
	icon = 'icons/misc/mark.dmi'
	icon_state = "rup"

/obj/randomcatcher/proc/get_item(type)
	new type(src)
	if (contents.len)
		. = pick(contents)
	else
		return null

/obj/randomcatcher/proc/get_items(type)
	new type(src)
	if (contents.len)
		return contents
	else
		return null

/obj/random/tool
	name = "random tool"
	desc = "This is a random tool."
	icon = 'icons/obj/tools.dmi'
	icon_state = "welder"

/obj/random/tool/spawn_choices()
	return list(/obj/item/weapon/screwdriver,
				/obj/item/weapon/wirecutters,
				/obj/item/weapon/weldingtool,
				/obj/item/weapon/weldingtool/largetank,
				/obj/item/weapon/crowbar,
				/obj/item/weapon/wrench,
				/obj/item/device/flashlight)

/obj/random/technology_scanner
	name = "random scanner"
	desc = "This is a random technology scanner."
	icon = 'icons/obj/device.dmi'
	icon_state = "atmos"

/obj/random/technology_scanner/spawn_choices()
	return list(/obj/item/device/t_scanner = 5,
				/obj/item/device/radio = 2,
				/obj/item/device/scanner/gas = 5)

/obj/random/powercell
	name = "random powercell"
	desc = "This is a random powercell."
	icon = 'icons/obj/power.dmi'
	icon_state = "hcell"

/obj/random/powercell/spawn_choices()
	return list(/obj/item/weapon/cell/crap = 1,
				/obj/item/weapon/cell/standard = 8,
				/obj/item/weapon/cell/high = 5,
				/obj/item/weapon/cell/super = 2,
				/obj/item/weapon/cell/hyper = 1,
				/obj/item/weapon/cell/device/standard = 7,
				/obj/item/weapon/cell/device/high = 5)

/obj/random/bomb_supply
	name = "bomb supply"
	desc = "This is a random bomb supply."
	icon = 'icons/obj/assemblies/new_assemblies.dmi'
	icon_state = "signaller"

/obj/random/bomb_supply/spawn_choices()
	return list(/obj/item/device/assembly/igniter,
				/obj/item/device/assembly/prox_sensor,
				/obj/item/device/assembly/signaler,
				/obj/item/device/assembly/timer,
				/obj/item/device/multitool)

/obj/random/toolbox
	name = "random toolbox"
	desc = "This is a random toolbox."
	icon = 'icons/obj/storage.dmi'
	icon_state = "red"

/obj/random/toolbox/spawn_choices()
	return list(/obj/item/weapon/storage/toolbox/mechanical = 30,
				/obj/item/weapon/storage/toolbox/electrical = 20,
				/obj/item/weapon/storage/toolbox/emergency = 20,
				/obj/item/weapon/storage/toolbox/syndicate = 1)

/obj/random/tech_supply
	name = "random tech supply"
	desc = "This is a random piece of technology supplies."
	icon = 'icons/obj/power.dmi'
	icon_state = "cell"
	spawn_nothing_percentage = 50

/obj/random/tech_supply/spawn_choices()
	return list(/obj/random/powercell = 3,
				/obj/random/technology_scanner = 2,
				/obj/item/stack/package_wrap/twenty_five = 1,
				/obj/item/weapon/hand_labeler = 1,
				/obj/random/bomb_supply = 2,
				/obj/item/weapon/extinguisher = 1,
				/obj/item/clothing/gloves/insulated/cheap = 1,
				/obj/item/stack/cable_coil/random = 2,
				/obj/random/toolbox = 2,
				/obj/item/weapon/storage/belt/utility = 2,
				/obj/item/weapon/storage/belt/utility/atmostech = 1,
				/obj/random/tool = 5,
				/obj/item/weapon/tape_roll = 2)

/obj/random/medical
	name = "Random Medical equipment"
	desc = "This is a random medical item."
	icon = 'icons/obj/items.dmi'
	icon_state = "medrandom"

/obj/random/medical/spawn_choices()
	return list(/obj/random/medical/lite = 21,
				/obj/item/bodybag = 2,
				/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline = 2,
				/obj/item/weapon/reagent_containers/glass/bottle/antitoxin = 2,
				/obj/item/weapon/storage/pill_bottle = 2,
				/obj/item/weapon/storage/pill_bottle/tramadol = 1,
				/obj/item/weapon/storage/pill_bottle/citalopram = 2,
				/obj/item/weapon/storage/pill_bottle/dexalin_plus = 1,
				/obj/item/weapon/storage/pill_bottle/dermaline = 1,
				/obj/item/weapon/storage/pill_bottle/bicaridine = 1,
				/obj/item/weapon/reagent_containers/syringe/antitoxin = 2,
				/obj/item/weapon/reagent_containers/syringe/antiviral = 1,
				/obj/item/weapon/reagent_containers/syringe/inaprovaline = 2,
				/obj/item/weapon/storage/box/freezer = 1,
				/obj/item/stack/nanopaste = 1)

/obj/random/medical/lite
	name = "Random Medicine"
	desc = "This is a random simple medical item."
	icon = 'icons/obj/items.dmi'
	icon_state = "medrandom"
	spawn_nothing_percentage = 25

/obj/random/medical/lite/spawn_choices()
	return list(/obj/item/stack/medical/bruise_pack = 4,
				/obj/item/stack/medical/ointment = 4,
				/obj/item/weapon/storage/pill_bottle/antidexafen = 2,
				/obj/item/weapon/storage/pill_bottle/paracetamol = 2,
				/obj/item/stack/medical/advanced/bruise_pack = 2,
				/obj/item/stack/medical/advanced/ointment = 2,
				/obj/item/stack/medical/splint = 1,
				/obj/item/weapon/reagent_containers/hypospray/autoinjector = 3,
				/obj/item/weapon/storage/pill_bottle/kelotane = 2,
				/obj/item/weapon/storage/pill_bottle/antitox = 2,
				/obj/item/weapon/storage/med_pouch/trauma = 2,
				/obj/item/weapon/storage/med_pouch/burn = 2,
				/obj/item/weapon/storage/med_pouch/toxin = 2,
				/obj/item/weapon/storage/med_pouch/radiation = 2,
				/obj/item/weapon/storage/med_pouch/oxyloss = 2)

/obj/random/belt
	name = "Random Belt"
	desc = "This is a belt"
	icon = 'icons/obj/clothing/obj_belt.dmi'
	icon_state = "utility"
	spawn_nothing_percentage = 50

obj/random/belt/spawn_choices()
	return list (
				/obj/item/weapon/storage/belt/utility,
				/obj/item/weapon/storage/belt/medical/emt,
				/obj/item/weapon/storage/belt/medical,
				/obj/item/weapon/storage/belt/holster/security,
				/obj/item/weapon/storage/belt/security,
				/obj/item/weapon/storage/belt/general,
				/obj/item/weapon/storage/belt/janitor,
				/obj/item/weapon/storage/belt/holster/general,
				/obj/item/weapon/storage/belt/holster/forensic,
				/obj/item/weapon/storage/belt/forensic,
				/obj/item/weapon/storage/belt/holster/machete,
				/obj/item/weapon/storage/belt/holster/security/tactical,
				/obj/item/weapon/storage/belt/waistpack,
				/obj/item/weapon/storage/belt/waistpack/big)

/obj/random/firstaid
	name = "Random First Aid Kit"
	desc = "This is a random first aid kit."
	icon = 'icons/obj/storage.dmi'
	icon_state = "firstaid"

/obj/random/firstaid/spawn_choices()
	return list(/obj/item/weapon/storage/firstaid/regular = 4,
				/obj/item/weapon/storage/firstaid/trauma = 3,
				/obj/item/weapon/storage/firstaid/toxin = 3,
				/obj/item/weapon/storage/firstaid/o2 = 3,
				/obj/item/weapon/storage/firstaid/stab = 2,
				/obj/item/weapon/storage/firstaid/adv = 2,
				/obj/item/weapon/storage/firstaid/combat = 1,
				/obj/item/weapon/storage/firstaid/empty = 2,
				/obj/item/weapon/storage/firstaid/fire = 3)

/obj/random/cloth/under
	name = "Ramdom clothes"
	desc = "This is a pile of random clothes"
	icon = 'icons/obj/clothing/obj_under.dmi'
	icon_state = "jumpsuit"

obj/random/cloth/under/spawn_choices()
   return list(
	/obj/item/clothing/under/color/white,
	/obj/item/clothing/under/color/black,
	/obj/item/clothing/under/color/grey,
	/obj/item/clothing/under/color/blue,
	/obj/item/clothing/under/color/pink,
	/obj/item/clothing/under/color/red,
	/obj/item/clothing/under/color/green,
	/obj/item/clothing/under/color/yellow,
	/obj/item/clothing/under/color/lightpurple,
	/obj/item/clothing/under/color/brown)


/obj/random/cloth/armor
	name = "Random bits of armor"
	desc  = "This is some random armor"
	icon = 'icons/obj/clothing/obj_suit_modular_armor.dmi'
	icon_state = "pcarrier"

/obj/random/cloth/armor/spawn_choices()
	return list(/obj/item/clothing/suit/armor/vest = 20,
				/obj/item/clothing/suit/armor/vest/press = 15,
				/obj/item/clothing/suit/armor/vest/detective  = 10,
				/obj/item/clothing/suit/storage/vest = 2,
				/obj/item/clothing/suit/armor/vest/pcrc = 5,
				/obj/item/clothing/suit/armor/bulletproof = 10,
				/obj/item/clothing/suit/armor/bulletproof/vest = 2,
				/obj/item/clothing/suit/armor/laserproof = 2,
				/obj/item/clothing/suit/armor/pcarrier/light = 2,
				/obj/item/clothing/suit/armor/pcarrier/medium = 2,
				/obj/item/clothing/suit/armor/heavy = 2,
				/obj/item/clothing/suit/armor/reactive = 2,
				/obj/item/clothing/suit/storage/vest/merc = 2)

/obj/random/cloth/masks
	name = "Random masks"
	desc = "This is a ramdom mask."
	icon = 'icons/obj/clothing/obj_mask.dmi'
	icon_state = "bandred"

obj/random/cloth/masks/spawn_choices()
	return list(/obj/item/clothing/mask/balaclava = 15,
				/obj/item/clothing/mask/balaclava/tactical = 20,
				/obj/item/clothing/mask/bandana = 2,
				/obj/item/clothing/mask/bandana/blue = 1,
				/obj/item/clothing/mask/bandana/botany = 1,
				/obj/item/clothing/mask/bandana/camo = 1,
				/obj/item/clothing/mask/bandana/gold = 1,
				/obj/item/clothing/mask/bandana/green = 1,
				/obj/item/clothing/mask/bandana/orange = 1,
				/obj/item/clothing/mask/bandana/purple = 1,
				/obj/item/clothing/mask/bandana/red = 1,
				/obj/item/clothing/mask/bandana/skull = 1,
				/obj/item/clothing/mask/breath = 20,
				/obj/item/clothing/mask/breath/medical = 5,
				/obj/item/clothing/mask/gas = 20,
				/obj/item/clothing/mask/gas/clown_hat = 10,
				/obj/item/clothing/mask/gas/swat = 2,
				/obj/item/clothing/mask/gas/half = 2,
				/obj/item/clothing/mask/luchador = 2,
				/obj/item/clothing/mask/luchador/rudos = 2,
				/obj/item/clothing/mask/luchador/tecnicos = 2,
				/obj/item/clothing/mask/muzzle = 2,
				/obj/item/clothing/mask/ai= 2,
				/obj/item/clothing/mask/rubber/species/skrell = 1,
				/obj/item/clothing/mask/rubber/species/cat = 1,
				/obj/item/clothing/mask/greenscarf,
				/obj/item/clothing/mask/ninjascarf= 2,
				/obj/item/clothing/mask/redscarf = 2,
				/obj/item/clothing/mask/bluescarf = 2,
				/obj/item/clothing/mask/pig = 2,
				/obj/item/clothing/mask/horsehead = 2,
				/obj/item/clothing/mask/surgical = 8)


/obj/random/pouches
	name = "Random storage pouches"
	desc = "This is a random storage pouch."
	icon = 'icons/pouches.dmi'
	icon_state = "medium_generic"

/obj/random/pouches/spawn_choices()
	return list(/obj/item/weapon/storage/pouch/small_generic = 4,
				/obj/item/weapon/storage/pouch/medium_generic,
				/obj/item/weapon/storage/pouch/large_generic = 3,
				/obj/item/weapon/storage/pouch/medical_supply = 3,
				/obj/item/weapon/storage/pouch/engineering_tools= 2,
				/obj/item/weapon/storage/pouch/engineering_supply = 2,
				/obj/item/weapon/storage/pouch/ammo = 1,
				/obj/item/weapon/storage/pouch/tubular/vial= 1,
				/obj/item/weapon/storage/pouch/pistol_holster = 3)

/obj/random/material_ore
	name = "Random raw ores"
	desc = "This is a random raw ore."
	icon = 'icons/obj/materials/ore.dmi'
	icon_state = "lump"

/obj/random/material_ore/spawn_choices()
	return list(/obj/item/weapon/ore/coal = 4,\
				/obj/item/weapon/ore/glass = 5,
				/obj/item/weapon/ore/gold = 3,
				/obj/item/weapon/ore/hydrogen = 2,
				/obj/item/weapon/ore/iron = 4,
				/obj/item/weapon/ore/osmium = 2,
				/obj/item/weapon/ore/silver = 2,
				/obj/item/weapon/ore/uranium = 1,
				/obj/item/weapon/ore/diamond = 1)

/obj/random/surgery_tool
	name = "Ramdom surgery tools"
	desc = "This is some random surgery tools"
	icon =  'icons/obj/surgery.dmi'
	icon_state = "scalpel"


/obj/random/surgery_tool/spawn_choices()
	return list(/obj/item/weapon/bonesetter,
				/obj/item/weapon/scalpel,
				/obj/item/weapon/scalpel/laser1,
				/obj/item/weapon/scalpel/laser2,
				/obj/item/weapon/surgicaldrill,
				/obj/item/weapon/cautery,
				/obj/item/weapon/retractor,
				/obj/item/weapon/circular_saw,
				/obj/item/weapon/hemostat)

/obj/random/science
	name = "Random Science tools"
	desc = "These are some random science tools"
	icon = 'icons/obj/chemical.dmi'
	icon_state = "dropper0"

/obj/random/science/spawn_choices()
	return list(/obj/item/device/scanner/reagent = 6,
	/obj/item/device/scanner/reagent/adv= 3,
	/obj/item/weapon/reagent_containers/dropper = 2,
	/obj/item/weapon/reagent_containers/glass/beaker/vial = 3,
	/obj/item/weapon/reagent_containers/glass/beaker/vial/random = 2,
	/obj/item/weapon/reagent_containers/glass/beaker/vial/random/toxin = 2,
	/obj/item/weapon/reagent_containers/glass/beaker/insulated = 2,
	/obj/item/weapon/stock_parts/scanning_module/adv = 3,
	/obj/item/weapon/stock_parts/manipulator/nano = 3,
	/obj/item/weapon/stock_parts/matter_bin/adv = 2,
	/obj/item/weapon/stock_parts/micro_laser/high = 2,
	/obj/item/weapon/stock_parts/computer/hard_drive/portable = 5,
	/obj/item/weapon/stock_parts/computer/hard_drive/portable/advanced = 1,
	/obj/item/weapon/rig/hazmat = 2,
	/obj/item/weapon/rig/hazmat/equipped = 1
	)


/obj/random/cloth/hazmatsuit
	name = "Ramdom Protective clothing"
	desc = "Random protective clothing"
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "rad"
	spawn_nothing_percentage = 90

/obj/random/cloth/hazmatsuit/spawn_choices()
	return list (/obj/item/clothing/suit/radiation,
			/obj/item/clothing/head/radiation,

	)
obj/random/cloth/holster
	name = "Random small arms holsters"
	desc = "some random holsters"
	icon = 'icons/obj/clothing/obj_belt.dmi'
	icon_state = "holsterout"
	spawn_nothing_percentage = 75

obj/random/cloth/holster/spawn_choices()
	return list (
				/obj/item/clothing/accessory/storage/bandolier = 1,
				/obj/item/clothing/accessory/storage/holster/thigh = 1,
				/obj/item/clothing/accessory/storage/holster/hip = 1,
				/obj/item/clothing/accessory/storage/holster/waist = 1,
				/obj/item/clothing/accessory/storage/holster/armpit = 1,
				/obj/item/weapon/storage/belt/holster/security = 2,
				/obj/item/weapon/storage/belt/holster/security/tactical = 1,
				/obj/item/weapon/storage/belt/holster/security/tactical = 2,
				/obj/item/weapon/storage/belt/holster/machete = 3,
	)

obj/random/knife
	name = "Random knives"
	desc = "Random knives"
	icon = 'icons/obj/knife.dmi'
	icon_state = "knife"

obj/random/knife/spawn_choices()
	return list (
				/obj/item/weapon/material/knife/combat = 1,
				/obj/item/weapon/material/knife/folding = 1,
				/obj/item/weapon/material/knife/folding/wood = 1,
				/obj/item/weapon/material/knife/folding/combat/balisong = 2,
				/obj/item/weapon/material/knife/folding/combat/switchblade = 1
	)


/obj/random/circuitbaord
	name = "random circuitboard"
	desc = "random cicutboards"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"

obj/random/circuitboard/spawn_choices()
	return list (
			/obj/random/pack/rare,
			/obj/item/weapon/stock_parts/circuitboard/message_monitor,
			/obj/item/weapon/stock_parts/circuitboard/aiupload,
			/obj/item/weapon/stock_parts/circuitboard/borgupload,
			/obj/item/weapon/stock_parts/circuitboard/teleporter,
			/obj/item/weapon/stock_parts/circuitboard/atmos_alert,
			/obj/item/weapon/stock_parts/circuitboard/robotics,
			/obj/item/weapon/stock_parts/circuitboard/drone_control,
			/obj/item/weapon/stock_parts/circuitboard/arcade/battle,
			/obj/item/weapon/stock_parts/circuitboard/arcade/orion_trail,
			/obj/item/weapon/stock_parts/circuitboard/turbine_control,
			/obj/item/weapon/stock_parts/circuitboard/solar_control,
			/obj/item/weapon/stock_parts/circuitboard/powermonitor,
			/obj/item/weapon/stock_parts/circuitboard/prisoner,
			/obj/item/weapon/stock_parts/circuitboard/rdservercontrol,
			/obj/item/weapon/stock_parts/circuitboard/crew,
			/obj/item/weapon/stock_parts/circuitboard/operating,
			/obj/item/weapon/stock_parts/circuitboard/helm,
			/obj/item/weapon/stock_parts/circuitboard/engine,
			/obj/item/weapon/stock_parts/circuitboard/nav,
			/obj/item/weapon/stock_parts/circuitboard/nav/tele,
			/obj/item/weapon/stock_parts/circuitboard/sensors,
			/obj/item/weapon/stock_parts/circuitboard/area_atmos,
			/obj/item/weapon/stock_parts/circuitboard/rcon_console,
			/obj/item/weapon/stock_parts/circuitboard/account_database,
			/obj/item/weapon/stock_parts/circuitboard/guestpass
	)

/obj/random/contraband
	name = "Random Illegal Item"
	desc = "Hot Stuff."
	icon = 'icons/obj/items.dmi'
	icon_state = "purplecomb"
	spawn_nothing_percentage = 50

/obj/random/contraband/spawn_choices()
	return list(/obj/item/weapon/haircomb = 4,
				/obj/item/weapon/storage/pill_bottle/tramadol = 3,
				/obj/item/weapon/storage/pill_bottle/happy = 2,
				/obj/item/weapon/storage/pill_bottle/zoom = 2,
				/obj/item/weapon/reagent_containers/glass/beaker/vial/random/toxin = 1,
				/obj/item/weapon/reagent_containers/glass/beaker/sulphuric = 1,
				/obj/item/weapon/contraband/poster = 5,
				/obj/item/weapon/material/butterflyblade = 3,
				/obj/item/weapon/material/butterflyhandle = 3,
				/obj/item/weapon/melee/baton/cattleprod = 1,
				/obj/item/weapon/material/knife/combat = 1,
				/obj/item/weapon/material/knife/folding = 1,
				/obj/item/weapon/material/knife/folding/wood = 1,
				/obj/item/weapon/material/knife/folding/combat/balisong = 2,
				/obj/item/weapon/material/knife/folding/combat/switchblade = 1,
				/obj/item/weapon/storage/secure/briefcase/money = 1,
				/obj/item/weapon/storage/box/syndie_kit/cigarette = 1,
				/obj/item/stack/telecrystal = 1,
				/obj/item/clothing/under/syndicate = 2,
				/obj/item/weapon/reagent_containers/syringe = 3,
				/obj/item/weapon/reagent_containers/syringe/steroid = 2,
				/obj/item/weapon/reagent_containers/syringe/drugs = 1,
				/obj/item/weapon/reagent_containers/food/snacks/egg/lizard = 3)

/obj/random/contraband/low_chance
	name = "low chance random illegal item"
	icon_state = "box-red-low"
	spawn_nothing_percentage = 60

/obj/random/drinkbottle
	name = "random drink"
	desc = "This is a random drink."
	icon = 'icons/obj/drinks.dmi'
	icon_state = "whiskeybottle"

/obj/random/drinkbottle/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/gin,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/specialwhiskey,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/tequilla,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/absinthe,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/wine,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/cognac,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/rum,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/patron)


/obj/random/energy
	name = "Random Energy Weapon"
	desc = "This is a random energy weapon."
	icon = 'icons/obj/guns/energy_gun.dmi'
	icon_state = "energykill100"

/obj/random/energy/spawn_choices()
	return list(/obj/item/weapon/gun/energy/laser = 4,
				/obj/item/weapon/gun/energy/gun = 3,
				/obj/item/weapon/gun/energy/retro = 2,
				/obj/item/weapon/gun/energy/lasercannon = 2,
				/obj/item/weapon/gun/energy/xray = 3,
				/obj/item/weapon/gun/energy/sniperrifle = 1,
				/obj/item/weapon/gun/energy/gun/nuclear = 1,
				/obj/item/weapon/gun/energy/ionrifle = 2,
				/obj/item/weapon/gun/energy/toxgun = 3,
				/obj/item/weapon/gun/energy/taser = 4,
				/obj/item/weapon/gun/energy/crossbow/largecrossbow = 2,
				/obj/item/weapon/gun/energy/stunrevolver = 4)

/obj/random/exosuit_equipment
	name = "Random Exosuit equitment"
	desc = "This is a random exosuit equitment."
	icon = 'icons/obj/guns/energy_gun.dmi'
	icon_state = "mech_clamp"

/obj/random/exosuit_equitment/spawn_choices()
	return list(
		/obj/item/mech_equipment/sleeper,
		/obj/item/mech_equipment/clamp,
		/obj/item/mech_equipment/drill,
		/obj/item/mech_equipment/mounted_system/extinguisher,
		/obj/item/mech_equipment/mounted_system/rcd,
		/obj/item/mech_equipment/catapult,
		/obj/item/robot_parts/robot_component/armour/exosuit,
		/obj/item/robot_parts/robot_component/armour/exosuit/radproof,
		/obj/item/robot_parts/robot_component/armour/exosuit/em,
		/obj/item/robot_parts/robot_component/armour/exosuit/combat,
		/obj/item/mech_equipment/mounted_system/taser/laser,
		/obj/item/mech_equipment/mounted_system/taser/ion,
		/obj/item/mech_equipment/mounted_system/taser

)
//last coder turned these off idk why. could be ballance issuses, just moved them down out of the main code segment above
//		/obj/item/mech_equipment/tool/ai_holder,
//		/obj/item/mech_equipment/cable_layer,
//		/obj/item/mech_equipment/syringe_gun,
//		/obj/item/mech_equipment/thruster = 2,
//		/obj/item/mech_equipment/drill/diamonddrill,
//		/obj/item/mech_equipment/wormhole_generator,
//		/obj/item/mech_equipment/gravcatapult,
//		obj/item/mech_equipment/repair_droid,
//		/obj/item/mech_equipment/tesla_energy_relay,
//		/obj/item/mech_equipment/generator,
//		/obj/item/mech_equipment/generator/nuclear,
//		/obj/item/mech_equipment/tool/safety_clamp,
//		/obj/item/mech_equipment/tool/passenger,
//		/obj/item/mech_equipment/thruster,
//		/obj/item/mech_equipment/weapon/energy/pulse,
//		/obj/item/mech_equipment/weapon/ballistic/scattershot,
//		/obj/item/mech_equipment/weapon/ballistic/lmg,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/flare,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/explosive,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/flashbang


/obj/random/ammo/shotgun
	name = "Rnadom Shotgun ammo"
	desc = "Some random ammo for a shotgun"
	icon = 'icons/obj/guns/shotguns.dmi'
	icon_state = "shotgun"

/obj/random/ammo/shotgun/spawn_choices()
		return list(
			/datum/uplink_item/item/ammo/shotgun_slugs,
			/datum/uplink_item/item/ammo/shotgun_slugs,
			/datum/uplink_item/item/ammo/empslug,
			/datum/uplink_item/item/ammo/shotgun_shells
			)

/obj/random/shotgun
	name = "random shotguns"
	desc = "A bunch of random shotguns"
	icon = 'icons/obj/guns/shotguns.dmi'
	icon_state = "shotgun"

/obj/random/shotgun/spawn_choices()
	return list(/obj/item/weapon/gun/projectile/shotgun/pump/combat,
				/obj/item/weapon/gun/projectile/shotgun/doublebarrel,
				/obj/item/weapon/gun/projectile/shotgun/doublebarrel/pellet,
				/obj/item/weapon/gun/projectile/shotgun/doublebarrel/flare
					)


/obj/random/projectile
	name = "Random Projectile Weapon"
	desc = "This is a random projectile weapon."
	icon = 'icons/obj/guns/revolvers.dmi'
	icon_state = "revolver"

/obj/random/projectile/spawn_choices()
	return list(/obj/item/weapon/gun/projectile/heavysniper/boltaction = 4,
				/obj/item/weapon/gun/projectile/shotgun/pump = 3,
				/obj/item/weapon/gun/projectile/automatic/merc_smg = 2,
				/obj/item/weapon/gun/projectile/automatic/assault_rifle = 2,
				/obj/item/weapon/gun/projectile/automatic/bullpup_rifle = 2,
				/obj/item/weapon/gun/projectile/pistol/military/alt = 3,
				/obj/item/weapon/gun/projectile/pistol/sec = 4,
				/obj/item/weapon/gun/projectile/pistol/holdout = 4,
				/obj/item/weapon/gun/projectile/pirate = 5,
				/obj/item/weapon/gun/projectile/revolver = 2,
				/obj/item/weapon/gun/projectile/automatic/sec_smg = 3,
				/obj/item/weapon/gun/projectile/revolver/holdout = 4,
				/obj/item/weapon/gun/projectile/revolver = 2,
				/obj/item/weapon/gun/projectile/shotgun/doublebarrel = 4,
				/obj/item/weapon/gun/projectile/shotgun/doublebarrel/sawn = 3,
				/obj/item/weapon/gun/projectile/heavysniper = 1,
				/obj/item/weapon/gun/projectile/shotgun/pump/combat = 2,
				/obj/item/weapon/gun/projectile/pistol/throwback = 1)

/obj/random/handgun
	name = "Random Handgun"
	desc = "This is a random sidearm."
	icon = 'icons/obj/guns/pistol.dmi'
	icon_state = "secguncomp"

/obj/random/handgun/spawn_choices()
	return list(/obj/item/weapon/gun/projectile/pistol/sec = 3,
				/obj/item/weapon/gun/energy/gun = 2,
				/obj/item/weapon/gun/projectile/pistol/military/alt = 1,
				/obj/item/weapon/gun/projectile/pistol/holdout = 2,
				/obj/item/weapon/gun/energy/retro = 1,
				/obj/item/weapon/gun/projectile/pistol/throwback = 1)

/obj/random/ammo
	name = "Random Ammunition"
	desc = "This is random ammunition."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "magnum"

/obj/random/ammo/spawn_choices()
	return list(/obj/item/weapon/storage/box/ammo/beanbags = 6,
				/obj/item/weapon/storage/box/ammo/shotgunammo = 2,
				/obj/item/weapon/storage/box/ammo/shotgunshells = 4,
				/obj/item/weapon/storage/box/ammo/stunshells = 1,
				/obj/item/ammo_magazine/pistol = 2,
				/obj/item/ammo_magazine/smg_top = 2,
				/obj/item/ammo_magazine/smg_top/rubber = 6,
				/obj/item/ammo_magazine/pistol/throwback = 1)

obj/random/gun_cheap
	name = "Random Cheap guns"
	desc = "Random Cheap guns"
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "zipgun"

obj/random/gun_cheap/spawn_choices()
	return list(
		/obj/item/weapon/gun/projectile/pirate

	)


obj/random/ammo_lowcost
	name = "Random Cheap ammo"
	desc = "Random Cheap ammo"
	icon = 'icons/obj/guns/zipgun.dmi'
	icon_state = "zipgun"

obj/random/gun_cheap/spawn_choices()
	return list(
		/obj/item/ammo_casing/pistol/rubber,
		/obj/item/ammo_casing/pistol,
		/obj/item/ammo_casing/pistol/practice,
		/obj/item/ammo_casing/pistol/small,
		/obj/item/ammo_casing/pistol/small/rubber,
		/obj/item/ammo_casing/pistol/small/practice,
		/obj/item/ammo_casing/pistol/magnum,
		/obj/item/ammo_casing/shotgun/beanbag,
		/obj/item/ammo_casing/shotgun/practice
	)


/obj/random/gun_normal
	name = "Random fireamrs"
	desc = "Random small arms"
	icon = 'icons/obj/guns/assault_rifle.dmi'
	icon_state = "arifle"

obj/random/gun_normal/spawn_choices()
	return list(/obj/item/weapon/gun/projectile/automatic/assault_rifle,
	/obj/item/weapon/gun/projectile/automatic/bullpup_rifle,
	/obj/item/weapon/gun/projectile/automatic/sec_smg,
	/obj/item/weapon/gun/projectile/automatic/l6_saw
	)


obj/random/prothesis
	name = "Random prothetics"
	desc = "This a random prothetic body part."
	icon = 'icons/mob/human_races/cyberlimbs/bishop/bishop_main.dmi'
	icon_state = "arm" //missing icon state couldnt find it so i guessed here
obj/random/prothesis/spawn_choices()
	return list(
		/datum/robolimb/bishop,
		/datum/robolimb/bishop/rook,
		/datum/robolimb/bishop/alt,
		/datum/robolimb/bishop/alt/monitor,
		/datum/robolimb/hephaestus,
		/datum/robolimb/hephaestus/alt,
		/datum/robolimb/hephaestus/titan,
		/datum/robolimb/hephaestus/alt/monitor,
		/datum/robolimb/zenghu,
		/datum/robolimb/zenghu/spirit,
		/datum/robolimb/xion,
		/datum/robolimb/xion/econo,
		/datum/robolimb/xion/alt,
		/datum/robolimb/xion/alt/monitor,
		/datum/robolimb/nanotrasen,
		/datum/robolimb/wardtakahashi,
		/datum/robolimb/economy,
		/datum/robolimb/wardtakahashi/alt,
		/datum/robolimb/wardtakahashi/alt/monitor,
		/datum/robolimb/morpheus,
		/datum/robolimb/morpheus/alt
)

/obj/random/action_figure
	name = "random action figure"
	desc = "This is a random action figure."
	icon = 'icons/obj/toy.dmi'
	icon_state = "assistant"

/obj/random/action_figure/spawn_choices()
	return list(/obj/item/toy/figure/cmo,
				/obj/item/toy/figure/assistant,
				/obj/item/toy/figure/atmos,
				/obj/item/toy/figure/bartender,
				/obj/item/toy/figure/borg,
				/obj/item/toy/figure/gardener,
				/obj/item/toy/figure/captain,
				/obj/item/toy/figure/cargotech,
				/obj/item/toy/figure/ce,
				/obj/item/toy/figure/chaplain,
				/obj/item/toy/figure/chef,
				/obj/item/toy/figure/chemist,
				/obj/item/toy/figure/clown,
				/obj/item/toy/figure/corgi,
				/obj/item/toy/figure/detective,
				/obj/item/toy/figure/dsquad,
				/obj/item/toy/figure/engineer,
				/obj/item/toy/figure/geneticist,
				/obj/item/toy/figure/hop,
				/obj/item/toy/figure/hos,
				/obj/item/toy/figure/qm,
				/obj/item/toy/figure/janitor,
				/obj/item/toy/figure/agent,
				/obj/item/toy/figure/librarian,
				/obj/item/toy/figure/md,
				/obj/item/toy/figure/mime,
				/obj/item/toy/figure/miner,
				/obj/item/toy/figure/ninja,
				/obj/item/toy/figure/wizard,
				/obj/item/toy/figure/rd,
				/obj/item/toy/figure/roboticist,
				/obj/item/toy/figure/scientist,
				/obj/item/toy/figure/syndie,
				/obj/item/toy/figure/secofficer,
				/obj/item/toy/figure/warden,
				/obj/item/toy/figure/psychologist,
				/obj/item/toy/figure/paramedic,
				/obj/item/toy/figure/ert)


/obj/random/plushie
	name = "random plushie"
	desc = "This is a random plushie."
	icon = 'icons/obj/toy.dmi'
	icon_state = "nymphplushie"

/obj/random/plushie/spawn_choices()
	return list(/obj/item/toy/plushie/nymph,
				/obj/item/toy/plushie/mouse,
				/obj/item/toy/plushie/kitten,
				/obj/item/toy/plushie/lizard)

/obj/random/plushie/large
	name = "random large plushie"
	desc = "This is a random large plushie."
	icon = 'icons/obj/toy.dmi'
	icon_state = "droneplushie"

/obj/random/plushie/large/spawn_choices()
	return list(/obj/structure/plushie/ian,
				/obj/structure/plushie/drone,
				/obj/structure/plushie/carp,
				/obj/structure/plushie/beepsky)

/obj/random/junk //Broken items, or stuff that could be picked up
	has_postspawn = TRUE
	name = "random junk"
	desc = "This is some random junk."
	icon = 'icons/obj/trash.dmi'
	icon_state = "trashbag3"
	var/list/exclusions = list()
	var/list/items = list(
		/obj/item/weapon/material/shard = 5,
		/obj/item/weapon/material/shard/shrapnel = 8,
		/obj/item/weapon/reagent_containers/pill/floorpill = 8,
		/obj/item/stack/material/cardboard = 3,
		/obj/item/weapon/storage/box/lights/mixed = 3,
		/obj/item/weapon/storage/box/matches = 4,
		/obj/item/weapon/folder = 2,
		/obj/item/weapon/folder/blue = 2,
		/obj/item/weapon/folder/red = 2,
		/obj/item/weapon/folder/yellow = 2,
		/obj/item/weapon/folder/nt = 2,
		//obj/item/weapon/circuitboard/broken = 3, eris circuts
		/obj/item/trash/material/metal = 9,
		/obj/item/trash/material/circuit = 6,
		/obj/item/trash/material/device = 5,
		/obj/item/weapon/tape_roll = 3,
		/obj/item/trash/candle = 1,
		/obj/item/trash/candy = 1,
		/obj/item/trash/cheesie = 1,
		/obj/item/trash/chips = 1,
		/obj/item/trash/liquidfood = 1,
		/obj/item/trash/pistachios = 1,
		/obj/item/trash/plate = 1,
		/obj/item/trash/raisins = 1,
		/obj/item/trash/semki = 1,
		/obj/item/trash/snack_bowl = 1,
		/obj/item/trash/sosjerky = 1,
		/obj/item/trash/syndi_cakes = 1,
		/obj/item/trash/tastybread = 1,
		/obj/item/trash/tray = 1,
		/obj/item/trash/waffles = 1,
		/obj/item/weapon/caution = 3,
		/obj/item/weapon/caution/cone = 3,
		/obj/item/weapon/c_tube = 2,
		/obj/item/weapon/wrapping_paper = 2,
		/obj/item/weapon/implanter = 3,
		/obj/item/weapon/newspaper = 5,
		/obj/item/weapon/ore/glass = 3,
		/obj/item/weapon/pen = 3,
		/obj/item/weapon/reagent_containers/glass/beaker = 1,
		/obj/item/weapon/reagent_containers/glass/bucket = 1,
		/obj/item/weapon/reagent_containers/glass/rag = 1,
		/obj/item/weapon/reagent_containers/food/drinks/jar = 1,
		/obj/item/weapon/reagent_containers/food/drinks/flask/barflask = 1,
		/obj/item/weapon/reagent_containers/food/drinks/glass2 = 1,
		/obj/item/weapon/reagent_containers/ivbag = 1,
		/obj/item/weapon/reagent_containers/dropper= 1,
		/obj/item/stack/material/rods = 4,
		/obj/item/weapon/paper = 3,
		/obj/item/remains/robot = 1,
		/obj/item/trash/cigbutt = 3,
		/obj/effect/decal/cleanable/blood/gibs/robot = 1,
		/obj/effect/decal/cleanable/blood/oil = 1,
		/obj/effect/decal/cleanable/blood/oil/streak = 1,
		/obj/effect/decal/cleanable/molten_item = 1,
		/obj/effect/decal/cleanable/spiderling_remains = 1,
		/obj/effect/decal/cleanable/vomit = 1,
		/obj/effect/decal/cleanable/blood/splatter = 1
		)

/obj/random/junk/post_spawn(var/list/stuff)
	for (var/atom/thing in stuff)
		if (prob(30))
			thing.make_old()

/obj/random/junk/item_to_spawn()
	return pickweight(items - exclusions)

/obj/random/junk/nondense
	exclusions = list(/obj/random/scrap/moderate_weighted, /obj/item/remains/robot)

/obj/random/junk/low_chance
	name = "low chance random junk"
	icon_state = "trashbag3"
	spawn_nothing_percentage = 60

/obj/random/trash //Mostly remains and cleanable decals. Stuff a janitor could clean up
	name = "random trash"
	desc = "This is some random trash."
	icon = 'icons/effects/effects.dmi'
	icon_state = "greenglow"

/obj/random/trash/spawn_choices()
	return list(/obj/item/remains/lizard,
				/obj/effect/decal/cleanable/blood/gibs/robot,
				/obj/effect/decal/cleanable/blood/oil,
				/obj/effect/decal/cleanable/blood/oil/streak,
				/obj/effect/decal/cleanable/spiderling_remains,
				/obj/item/remains/mouse,
				/obj/effect/decal/cleanable/vomit,
				/obj/effect/decal/cleanable/blood/splatter,
				/obj/effect/decal/cleanable/ash,
				/obj/effect/decal/cleanable/generic,
				/obj/effect/decal/cleanable/flour,
				/obj/effect/decal/cleanable/dirt,
				/obj/item/remains/robot)


obj/random/closet //A couple of random closets to spice up maint
	name = "random closet"
	desc = "This is a random closet."
	icon = 'icons/obj/closets/bases/closet.dmi'
	icon_state = "base"
	var/vermin_chance = 0.1
	var/list/locker_vermin = list(
		/mob/living/simple_animal/mouse,
		/mob/living/simple_animal/opossum,
		/mob/living/carbon/alien/diona
	)

/obj/random/closet/spawn_choices()
	return list(/obj/structure/closet,
				/obj/structure/closet/firecloset,
				/obj/structure/closet/emcloset,
				/obj/structure/closet/jcloset,
				/obj/structure/closet/athletic_mixed,
				/obj/structure/closet/toolcloset,
				/obj/structure/closet/l3closet/general,
				/obj/structure/closet/cabinet,
				/obj/structure/closet/crate,
				/obj/structure/closet/crate/freezer,
				/obj/structure/closet/crate/freezer/rations,
				/obj/structure/closet/crate/internals,
				/obj/structure/closet/crate/trashcart,
				/obj/structure/closet/crate/medical,
				/obj/structure/closet/boxinggloves,
				/obj/structure/largecrate,
				/obj/structure/closet/wardrobe/xenos,
				/obj/structure/closet/wardrobe/mixed,
				/obj/structure/closet/wardrobe/suit,
				/obj/structure/closet/wardrobe/orange
				)
/obj/random/closet/spawn_item()
	. = ..()
	if(. && length(locker_vermin) && prob(vermin_chance))
		var/vermin_type = pickweight(locker_vermin)
		new vermin_type(.)

/obj/random/coin
	name = "random coin"
	desc = "This is a random coin."
	icon = 'icons/obj/coin.dmi'
	icon_state = "coin1"

/obj/random/coin/spawn_choices()
	return list(/obj/item/weapon/material/coin/gold = 3,
				/obj/item/weapon/material/coin/silver = 4,
				/obj/item/weapon/material/coin/diamond = 2,
				/obj/item/weapon/material/coin/iron = 4,
				/obj/item/weapon/material/coin/uranium = 3,
				/obj/item/weapon/material/coin/platinum = 1,
				/obj/item/weapon/material/coin/phoron = 1)

/obj/random/toy
	name = "random toy"
	desc = "This is a random toy."
	icon = 'icons/obj/toy.dmi'
	icon_state = "ship"

/obj/random/toy/spawn_choices()
	return list(/obj/item/toy/bosunwhistle,
				/obj/item/toy/therapy_red,
				/obj/item/toy/therapy_purple,
				/obj/item/toy/therapy_blue,
				/obj/item/toy/therapy_yellow,
				/obj/item/toy/therapy_orange,
				/obj/item/toy/therapy_green,
				/obj/item/toy/cultsword,
				/obj/item/toy/katana,
				/obj/item/toy/snappop,
				/obj/item/toy/sword,
				/obj/item/toy/water_balloon,
				/obj/item/toy/crossbow,
				/obj/item/toy/blink,
				/obj/item/weapon/reagent_containers/spray/waterflower,
				/obj/item/toy/prize/powerloader,
				/obj/item/toy/prize/fireripley,
				/obj/item/toy/prize/deathripley,
				/obj/item/toy/prize/gygax,
				/obj/item/toy/prize/durand,
				/obj/item/toy/prize/honk,
				/obj/item/toy/prize/marauder,
				/obj/item/toy/prize/seraph,
				/obj/item/toy/prize/mauler,
				/obj/item/toy/prize/odysseus,
				/obj/item/toy/prize/phazon,
				/obj/item/weapon/deck/cards)

/obj/random/tank
	name = "random tank"
	desc = "This is a tank."
	icon = 'icons/obj/tank.dmi'
	icon_state = "canister"

/obj/random/tank/spawn_choices()
	return list(/obj/item/weapon/tank/oxygen = 5,
				/obj/item/weapon/tank/oxygen/yellow = 4,
				/obj/item/weapon/tank/emergency/oxygen/double/red = 4,
				/obj/item/weapon/tank/air = 3,
				/obj/item/weapon/tank/emergency/oxygen = 4,
				/obj/item/weapon/tank/emergency/oxygen/engi = 3,
				/obj/item/weapon/tank/emergency/oxygen/double = 2,
				/obj/item/weapon/tank/emergency/nitrogen = 2,
				/obj/item/weapon/tank/emergency/nitrogen/double = 1,
				/obj/item/weapon/tank/nitrogen = 1,
				/obj/item/device/suit_cooling_unit = 1)

/obj/random/material //Random materials for building stuff
	name = "random material"
	desc = "This is a random material."
	icon = 'icons/obj/materials.dmi'
	icon_state = "sheet"

/obj/random/material/spawn_choices()
	return list(/obj/item/stack/material/steel/ten,
				/obj/item/stack/material/glass/ten,
				/obj/item/stack/material/glass/reinforced/ten,
				/obj/item/stack/material/plastic/ten,
				/obj/item/stack/material/wood/ten,
				/obj/item/stack/material/cardboard/ten,
				/obj/item/stack/material/rods/ten,
				/obj/item/stack/material/plasteel/ten,
				/obj/item/stack/material/steel/fifty,
				/obj/item/stack/material/glass/fifty,
				/obj/item/stack/material/glass/reinforced/fifty,
				/obj/item/stack/material/plastic/fifty,
				/obj/item/stack/material/wood/fifty,
				/obj/item/stack/material/cardboard/fifty,
				/obj/item/stack/material/rods/fifty,
				/obj/item/stack/material/plasteel/fifty)

/obj/random/material/steel //Random steel sheets
	name = "random ammount of steel sheets"
	desc = "This is a random ammount of steel sheets."
	icon = 'icons/obj/materials.dmi'
	icon_state = "sheet"

/obj/random/material/steel/spawn_choices()
	return list(/obj/item/stack/material/steel/five,
				/obj/item/stack/material/steel/ten,
				/obj/item/stack/material/steel/twenty)

/obj/random/rods //Random ammounts of rods for the scrap piles
	name = "random rods"
	desc = "This is some rods."
	icon = 'icons/obj/materials.dmi'
	icon_state = "rod-mult"

/obj/random/rods/spawn_choices()
	return list(/obj/item/stack/material/rods/five,
				/obj/item/stack/material/rods/ten,
				/obj/item/stack/material/rods/twenty_five,
				/obj/item/stack/material/rods/fifty)

/obj/random/soap
	name = "Random Cleaning Supplies"
	desc = "This is a random bar of soap. Soap! SOAP?! SOAP!!!"
	icon = 'icons/obj/items.dmi'
	icon_state = "soaprandom"

/obj/random/soap/spawn_choices()
	return list(/obj/item/weapon/soap = 12,
				/obj/item/weapon/reagent_containers/glass/rag = 2,
				/obj/item/weapon/reagent_containers/spray/cleaner = 2,
				/obj/item/weapon/grenade/chem_grenade/cleaner = 1)

obj/random/obstruction //Large objects to block things off in maintenance
	name = "random obstruction"
	desc = "This is a random obstruction."
	icon = 'icons/obj/cult.dmi'
	icon_state = "cultgirder"

obj/random/obstruction/spawn_choices()
	return list(/obj/structure/barricade,
				/obj/structure/girder,
				/obj/structure/girder/displaced,
				/obj/structure/grille,
				/obj/structure/grille/broken,
				/obj/structure/foamedmetal,
				/obj/item/weapon/caution,
				/obj/item/weapon/caution/cone,
				/obj/structure/inflatable/wall,
				/obj/structure/inflatable/door)

/obj/random/assembly
	name = "random assembly"
	desc = "This is a random circuit assembly."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift1"

/obj/random/assembly/spawn_choices()
	return list(/obj/item/device/electronic_assembly,
				/obj/item/device/electronic_assembly/medium,
				/obj/item/device/electronic_assembly/large,
				/obj/item/device/electronic_assembly/drone)

/obj/random/advdevice
	name = "random advanced device"
	desc = "This is a random advanced device."
	icon = 'icons/obj/items.dmi'
	icon_state = "game_kit"

/obj/random/advdevice/spawn_choices()
	return list(/obj/item/device/flashlight/lantern,
				/obj/item/device/flashlight/flare,
				/obj/item/device/flashlight/pen,
				/obj/item/device/toner,
				/obj/item/device/paicard,
				/obj/item/device/destTagger,
				/obj/item/weapon/beartrap,
				/obj/item/weapon/handcuffs,
				/obj/item/weapon/camera_assembly,
				/obj/item/device/camera,
				/obj/item/modular_computer/pda,
				/obj/item/weapon/card/emag_broken,
				/obj/item/device/radio/headset,
				/obj/item/device/flashlight/flare/glowstick/yellow,
				/obj/item/device/flashlight/flare/glowstick/orange,
				/obj/item/weapon/grenade/light,
				/obj/item/device/oxycandle)

/obj/random/smokes
	name = "random smokeable"
	desc = "This is a random smokeable item."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "Bpacket"

/obj/random/smokes/spawn_choices()
	return list(/obj/item/weapon/storage/fancy/cigarettes = 5,
				/obj/item/weapon/storage/fancy/cigarettes/dromedaryco = 4,
				/obj/item/weapon/storage/fancy/cigarettes/killthroat = 1,
				/obj/item/weapon/storage/fancy/cigarettes/luckystars = 3,
				/obj/item/weapon/storage/fancy/cigarettes/jerichos = 3,
				/obj/item/weapon/storage/fancy/cigarettes/menthols = 2,
				/obj/item/weapon/storage/fancy/cigarettes/carcinomas = 3,
				/obj/item/weapon/storage/fancy/cigarettes/professionals = 2,
				/obj/item/weapon/storage/fancy/cigar = 1,
				/obj/item/clothing/mask/smokable/cigarette = 2,
				/obj/item/clothing/mask/smokable/cigarette/menthol = 2,
				/obj/item/clothing/mask/smokable/cigarette/cigar = 1,
				/obj/item/clothing/mask/smokable/cigarette/cigar/cohiba = 1,
				/obj/item/clothing/mask/smokable/cigarette/cigar/havana = 1)

/obj/random/masks
	name = "random mask"
	desc = "This is a random face mask."
	icon = 'icons/obj/clothing/obj_mask.dmi'
	icon_state = "gas_mask"

/obj/random/masks/spawn_choices()
	return list(/obj/item/clothing/mask/gas = 4,
				/obj/item/clothing/mask/gas/half = 5,
				/obj/item/clothing/mask/gas/swat = 1,
				/obj/item/clothing/mask/gas/syndicate = 1,
				/obj/item/clothing/mask/breath = 6,
				/obj/item/clothing/mask/breath/medical = 4,
				/obj/item/clothing/mask/balaclava = 3,
				/obj/item/clothing/mask/balaclava/tactical = 2,
				/obj/item/clothing/mask/surgical = 4)

/obj/random/snack
	name = "random snack"
	desc = "This is a random snack item."
	icon = 'icons/obj/food.dmi'
	icon_state = "sosjerky"

/obj/random/snack/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
				/obj/item/weapon/reagent_containers/food/snacks/candy,
				/obj/item/weapon/reagent_containers/food/drinks/dry_ramen,
				/obj/item/weapon/reagent_containers/food/snacks/chips,
				/obj/item/weapon/reagent_containers/food/snacks/sosjerky,
				/obj/item/weapon/reagent_containers/food/snacks/no_raisin,
				/obj/item/weapon/reagent_containers/food/snacks/spacetwinkie,
				/obj/item/weapon/reagent_containers/food/snacks/cheesiehonkers,
				/obj/item/weapon/reagent_containers/food/snacks/tastybread,
				/obj/item/weapon/reagent_containers/food/snacks/proteinbar,
				/obj/item/weapon/reagent_containers/food/snacks/syndicake,
				/obj/item/weapon/reagent_containers/food/snacks/donut,
				/obj/item/weapon/reagent_containers/food/snacks/donut/cherryjelly,
				/obj/item/weapon/reagent_containers/food/snacks/donut/jelly,
				/obj/item/pizzabox/meat,
				/obj/item/pizzabox/vegetable,
				/obj/item/pizzabox/margherita,
				/obj/item/pizzabox/mushroom,
				/obj/item/weapon/reagent_containers/food/snacks/plumphelmetbiscuit,
				/obj/item/weapon/reagent_containers/food/snacks/skrellsnacks)

/obj/random/junkfood
	name = "random junkfood"
	desc = "This is a random snack item."
	icon = 'icons/obj/food.dmi'
	icon_state = "chips"

/obj/random/junkfood/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/snacks/chips = 3,
				/obj/item/weapon/reagent_containers/food/snacks/candy = 3,
				/obj/item/weapon/reagent_containers/food/snacks/cheesiehonkers = 3,
				/obj/item/weapon/reagent_containers/food/snacks/tastybread = 3,
				/obj/item/weapon/reagent_containers/food/snacks/no_raisin = 3,
				/obj/item/weapon/reagent_containers/food/snacks/spacetwinkie = 3,
				/obj/item/weapon/reagent_containers/food/drinks/dry_ramen = 2,
				/obj/item/weapon/reagent_containers/food/snacks/hotdog = 1,
				/obj/item/weapon/reagent_containers/food/snacks/liquidfood = 2,
				/obj/item/weapon/reagent_containers/food/snacks/pie = 1,
				/obj/item/weapon/reagent_containers/food/snacks/sandwich = 1)



obj/random/backpack
	name = "rancom backpacks"
	desc = "this is a random backpack"
	icon = 'icons/mob/onmob/items/lefthand_backpacks.dmi'
	icon_state = "backpack"

obj/random/backpack/spawn_choices()
	return list(
			/obj/item/weapon/storage/backpack,
			/obj/item/weapon/storage/backpack/holding/duffle,
			/obj/item/weapon/storage/backpack/clown,
			/obj/item/weapon/storage/backpack/medic,
			/obj/item/weapon/storage/backpack/security,
			/obj/item/weapon/storage/backpack/captain,
			/obj/item/weapon/storage/backpack/industrial,
			/obj/item/weapon/storage/backpack/toxins,
			/obj/item/weapon/storage/backpack/rucksack,
			/obj/item/weapon/storage/backpack/rucksack/blue,
			/obj/item/weapon/storage/backpack/rucksack/green,
			/obj/item/weapon/storage/backpack/rucksack/navy,
			/obj/item/weapon/storage/backpack/rucksack/tan,
			/obj/item/weapon/storage/backpack/dufflebag,
			/obj/item/weapon/storage/backpack/satchel,
			/obj/item/weapon/storage/backpack/satchel/leather,
			/obj/item/weapon/storage/backpack/satchel/grey,
			/obj/item/weapon/storage/backpack/satchel/leather/khaki,
			/obj/item/weapon/storage/backpack/satchel/leather/black,
			/obj/item/weapon/storage/backpack/satchel/leather/navy,
			/obj/item/weapon/storage/backpack/satchel/leather/olive,
			/obj/item/weapon/storage/backpack/satchel/leather/reddish,
			/obj/item/weapon/storage/backpack/satchel/pocketbook,
			/obj/item/weapon/storage/backpack/satchel/pocketbook/brown,
			/obj/item/weapon/storage/backpack/satchel/pocketbook/reddish,
			/obj/item/weapon/storage/backpack/messenger,
			/obj/item/weapon/storage/backpack/satchel/flat
	)
/obj/random/storage
	name = "random storage item"
	desc = "This is a storage item."
	icon = 'icons/obj/storage.dmi'
	icon_state = "idOld"

/obj/random/storage/spawn_choices()
	return list(/obj/item/weapon/storage/secure/briefcase = 2,
				/obj/item/weapon/storage/briefcase = 4,
				/obj/item/weapon/storage/briefcase/inflatable = 3,
				/obj/item/weapon/storage/backpack = 5,
				/obj/item/weapon/storage/backpack/satchel = 5,
				/obj/item/weapon/storage/backpack/dufflebag = 2,
				/obj/item/weapon/storage/box = 5,
				/obj/item/weapon/storage/box/donkpockets = 3,
				/obj/item/weapon/storage/box/sinpockets = 1,
				/obj/item/weapon/storage/box/donut = 2,
				/obj/item/weapon/storage/box/cups = 3,
				/obj/item/weapon/storage/box/mousetraps = 4,
				/obj/item/weapon/storage/box/engineer = 3,
				/obj/item/weapon/storage/box/autoinjectors = 2,
				/obj/item/weapon/storage/box/beakers = 3,
				/obj/item/weapon/storage/box/syringes = 3,
				/obj/item/weapon/storage/box/gloves = 3,
				/obj/item/weapon/storage/box/large = 2,
				/obj/item/weapon/storage/box/glowsticks = 3,
				/obj/item/weapon/storage/wallet = 1,
				/obj/item/weapon/storage/ore = 2,
				/obj/item/weapon/storage/belt/utility/full = 2,
				/obj/item/weapon/storage/belt/medical/emt = 2,
				/obj/item/weapon/storage/belt/medical = 2,
				/obj/item/weapon/storage/belt/holster/security = 2,
				/obj/item/weapon/storage/belt/holster/security/tactical = 1)

/obj/random/shoes
	name = "random footwear"
	desc = "This is a random pair of shoes."
	icon = 'icons/obj/clothing/obj_feet.dmi'
	icon_state = "boots"

/obj/random/shoes/spawn_choices()
	return list(/obj/item/clothing/shoes/workboots = 3,
				/obj/item/clothing/shoes/jackboots = 3,
				/obj/item/clothing/shoes/swat = 1,
				/obj/item/clothing/shoes/combat = 1,
				/obj/item/clothing/shoes/galoshes = 2,
				/obj/item/clothing/shoes/syndigaloshes = 1,
				/obj/item/clothing/shoes/magboots = 1,
				/obj/item/clothing/shoes/laceup = 4,
				/obj/item/clothing/shoes/black = 4,
				/obj/item/clothing/shoes/jungleboots = 3,
				/obj/item/clothing/shoes/desertboots = 3,
				/obj/item/clothing/shoes/dutyboots = 3,
				/obj/item/clothing/shoes/tactical = 1,
				/obj/item/clothing/shoes/dress = 3,
				/obj/item/clothing/shoes/dress/white = 3,
				/obj/item/clothing/shoes/sandal = 3,
				/obj/item/clothing/shoes/brown = 4,
				/obj/item/clothing/shoes/red = 4,
				/obj/item/clothing/shoes/blue = 4,
				/obj/item/clothing/shoes/leather = 4)

/obj/random/gloves
	name = "random gloves"
	desc = "This is a random pair of gloves."
	icon = 'icons/obj/clothing/obj_hands.dmi'
	icon_state = "rainbow"

/obj/random/gloves/spawn_choices()
	return list(/obj/item/clothing/gloves/insulated = 3,
				/obj/item/clothing/gloves/thick = 6,
				/obj/item/clothing/gloves/thick/botany = 5,
				/obj/item/clothing/gloves/latex = 4,
				/obj/item/clothing/gloves/thick/swat = 3,
				/obj/item/clothing/gloves/thick/combat = 3,
				/obj/item/clothing/gloves/white = 5,
				/obj/item/clothing/gloves/rainbow = 1,
				/obj/item/clothing/gloves/thick/duty = 5,
				/obj/item/clothing/gloves/guards = 3,
				/obj/item/clothing/gloves/tactical = 3,
				/obj/item/clothing/gloves/insulated/cheap = 5)

/obj/random/glasses
	name = "random eyewear"
	desc = "This is a random pair of glasses."
	icon = 'icons/obj/clothing/obj_eyes.dmi'
	icon_state = "leforge"

/obj/random/glasses/spawn_choices()
	return list(/obj/item/clothing/glasses/sunglasses = 3,
				/obj/item/clothing/glasses/prescription = 7,
				/obj/item/clothing/glasses/meson = 5,
				/obj/item/clothing/glasses/meson/prescription = 4,
				/obj/item/clothing/glasses/science = 6,
				/obj/item/clothing/glasses/material = 5,
				/obj/item/clothing/glasses/welding = 3,
				/obj/item/clothing/glasses/hud/health = 4,
				/obj/item/clothing/glasses/hud/health/prescription = 3,
				/obj/item/clothing/glasses/hud/security = 4,
				/obj/item/clothing/glasses/hud/security/prescription = 3,
				/obj/item/clothing/glasses/sunglasses/sechud = 2,
				/obj/item/clothing/glasses/sunglasses/sechud/toggle = 3,
				/obj/item/clothing/glasses/sunglasses/sechud/goggles = 1,
				/obj/item/clothing/glasses/tacgoggles = 1)

/obj/random/cloth/helmet
	name = "Random helmets"
	desc = "This is a random helmet"
	icon = 'icons/obj/clothing/obj_head.dmi'
	icon_state = "helmet"

/obj/random/cloth/helmet/spawn_choices()
 	return list(/obj/item/clothing/head/helmet/pcrc,
	 			/obj/item/clothing/head/helmet/tactical,
				/obj/item/clothing/head/helmet/merc,
				/obj/item/clothing/head/helmet/riot,
				/obj/item/clothing/head/helmet/ablative,
				/obj/item/clothing/head/helmet/ballistic,
				/obj/item/clothing/head/helmet/swat,
				/obj/item/clothing/head/helmet/gladiator,
				/obj/item/clothing/head/helmet/augment
	)


/obj/random/cloth/head
	name = "random cloth hats"
	desc = "this is a cloth hat of some kind"
	icon = 'icons/obj/clothing/obj_head.dmi'
	icon_state = "ushankadown"
/obj/random/hat
	name = "random headgear"
	desc = "This is a random hat of some kind."
	icon = 'icons/obj/clothing/obj_head.dmi'
	icon_state = "tophat"

/obj/random/hat/spawn_choices()
	return list(/obj/item/clothing/head/helmet = 2,
				/obj/item/clothing/head/helmet/tactical = 1,
				/obj/item/clothing/head/helmet/space/emergency = 1,
				/obj/item/clothing/head/bio_hood/general = 1,
				/obj/item/clothing/head/hardhat = 4,
				/obj/item/clothing/head/hardhat/orange = 4,
				/obj/item/clothing/head/hardhat/red = 4,
				/obj/item/clothing/head/hardhat/dblue = 4,
				/obj/item/clothing/head/ushanka = 3,
				/obj/item/clothing/head/welding = 2)

/obj/random/suit
	name = "random suit"
	desc = "This is a random piece of outerwear."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "fire"

/obj/random/suit/spawn_choices()
	return list(/obj/item/clothing/suit/storage/hazardvest = 4,
				/obj/item/clothing/suit/storage/toggle/labcoat = 4,
				/obj/item/clothing/suit/space/emergency = 1,
				/obj/item/clothing/suit/armor/vest = 4,
				/obj/item/clothing/suit/storage/vest/tactical = 1,
				/obj/item/clothing/suit/storage/vest = 3,
				/obj/item/clothing/suit/storage/toggle/bomber = 3,
				/obj/item/clothing/suit/chef/classic = 3,
				/obj/item/clothing/suit/surgicalapron = 2,
				/obj/item/clothing/suit/apron/overalls = 3,
				/obj/item/clothing/suit/bio_suit/general = 1,
				/obj/item/clothing/suit/storage/toggle/hoodie/black = 3,
				/obj/item/clothing/suit/storage/toggle/brown_jacket = 3,
				/obj/item/clothing/suit/storage/leather_jacket = 3,
				/obj/item/clothing/suit/apron = 4)

/obj/random/clothing
	name = "random clothes"
	desc = "This is a random piece of clothing."
	icon = 'icons/obj/clothing/obj_under.dmi'
	icon_state = "jumpsuit"

/obj/random/clothing/spawn_choices()
	return list(/obj/item/clothing/under/syndicate/tacticool = 2,
				/obj/item/clothing/under/syndicate/combat = 1,
				/obj/item/clothing/under/hazard = 4,
				/obj/item/clothing/under/sterile = 4,
				/obj/item/clothing/under/casual_pants/camo = 2,
				/obj/item/clothing/under/frontier = 2,
				/obj/item/clothing/under/harness = 2,
				/obj/item/clothing/under/rank/medical/paramedic = 2,
				/obj/item/clothing/under/overalls = 2,
				/obj/item/clothing/ears/earmuffs = 2,
				/obj/item/clothing/under/tactical = 1)

/obj/random/accessory
	name = "random accessory"
	desc = "This is a random utility accessory."
	icon = 'icons/obj/clothing/obj_accessories.dmi'
	icon_state = "horribletie"

/obj/random/accessory/spawn_choices()
	return list(/obj/item/clothing/accessory/storage/webbing = 3,
				/obj/item/clothing/accessory/storage/webbing_large = 3,
				/obj/item/clothing/accessory/storage/black_vest = 2,
				/obj/item/clothing/accessory/storage/brown_vest = 2,
				/obj/item/clothing/accessory/storage/white_vest = 2,
				/obj/item/clothing/accessory/storage/bandolier = 1,
				/obj/item/clothing/accessory/storage/holster/thigh = 1,
				/obj/item/clothing/accessory/storage/holster/hip = 1,
				/obj/item/clothing/accessory/storage/holster/waist = 1,
				/obj/item/clothing/accessory/storage/holster/armpit = 1,
				/obj/item/clothing/accessory/kneepads = 3,
				/obj/item/clothing/accessory/stethoscope = 2)

/obj/random/cash
	name = "random currency"
	desc = "LOADSAMONEY!"
	icon = 'icons/obj/items.dmi'
	icon_state = "spacecash1"

/obj/random/cash/spawn_choices()
	return list(/obj/item/weapon/spacecash/bundle/c1 = 4,
				/obj/item/weapon/spacecash/bundle/c10 = 3,
				/obj/item/weapon/spacecash/bundle/c20 = 3,
				/obj/item/weapon/spacecash/bundle/c50 = 2,
				/obj/item/weapon/spacecash/bundle/c100 = 2,
				/obj/item/weapon/spacecash/bundle/c1000 = 1)

/obj/random/documents // top secret documents for SCG eyes only
	name = "random secret documents"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "docs_generic"

/obj/random/documents/spawn_choices()
	return list (
		/obj/item/documents/scg/verified = 7,
		/obj/item/documents/scg/red =      7,
		/obj/item/documents/scg/blue =     7,
		/obj/item/documents/scg/brains =   7
	)

/obj/random/maintenance //Clutter and loot for maintenance and away missions
	name = "random maintenance item"
	desc = "This is a random maintenance item."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift1"

/obj/random/maintenance/spawn_choices()
	return list(/obj/random/junk = 4,
				/obj/random/trash = 4,
				/obj/random/maintenance/clean = 5)

/obj/random/maintenance/clean
/*Maintenance loot lists without the trash, for use inside things.
Individual items to add to the maintenance list should go here, if you add
something, make sure it's not in one of the other lists.*/
	name = "random clean maintenance item"
	desc = "This is a random clean maintenance item."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift2"

/obj/random/maintenance/clean/spawn_choices()
	return list(/obj/random/tech_supply = 100,
				/obj/random/medical = 40,
				/obj/random/medical/lite = 80,
				/obj/random/firstaid = 20,
				/obj/random/powercell = 50,
				/obj/random/technology_scanner = 80,
				/obj/random/bomb_supply = 80,
				/obj/random/contraband = 1,
				/obj/random/action_figure = 2,
				/obj/random/plushie = 2,
				/obj/random/material = 40,
				/obj/random/coin = 5,
				/obj/random/toy = 20,
				/obj/random/tank = 20,
				/obj/random/soap = 5,
				/obj/random/drinkbottle = 5,
				/obj/random/loot = 1,
				/obj/random/advdevice = 50,
				/obj/random/smokes = 30,
				/obj/random/masks = 10,
				/obj/random/snack = 60,
				/obj/random/storage = 30,
				/obj/random/shoes = 20,
				/obj/random/gloves = 10,
				/obj/random/glasses = 20,
				/obj/random/hat = 10,
				/obj/random/suit = 20,
				/obj/random/clothing = 30,
				/obj/random/accessory = 20,
				/obj/random/cash = 10)

/obj/random/loot /*Better loot for away missions and salvage */
	name = "random loot"
	desc = "This is some random loot."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift3"

/obj/random/loot/spawn_choices()
	return list(/obj/random/energy = 10,
				/obj/random/projectile = 10,
				/obj/random/voidhelmet = 10,
				/obj/random/voidsuit = 10,
				/obj/random/hardsuit = 10,
				/obj/item/clothing/mask/muzzle = 7,
				/obj/item/clothing/mask/gas/vox = 8,
				/obj/item/clothing/mask/gas/syndicate = 10,
				/obj/item/clothing/glasses/night = 3,
				/obj/item/clothing/glasses/thermal = 1,
				/obj/item/clothing/glasses/welding/superior = 7,
				/obj/item/clothing/head/collectable/petehat = 4,
				/obj/item/clothing/suit/storage/vest/merc = 3,
				/obj/item/clothing/suit/straight_jacket = 6,
				/obj/item/clothing/head/helmet/merc = 3,
				/obj/item/stack/material/diamond/ten = 7,
				/obj/item/stack/material/glass/phoronrglass/ten = 7,
				/obj/item/stack/material/marble/ten = 8,
				/obj/item/stack/material/phoron/ten = 7,
				/obj/item/stack/material/gold/ten = 7,
				/obj/item/stack/material/silver/ten = 7,
				/obj/item/stack/material/osmium/ten = 7,
				/obj/item/stack/material/platinum/ten = 8,
				/obj/item/stack/material/tritium/ten = 7,
				/obj/item/stack/material/mhydrogen/ten = 6,
				/obj/item/stack/material/plasteel/ten = 9,
				/obj/item/weapon/storage/box/monkeycubes = 5,
				/obj/item/weapon/storage/box/monkeycubes/neaeracubes = 4,
				/obj/item/weapon/storage/box/monkeycubes/stokcubes = 4,
				/obj/item/weapon/storage/box/monkeycubes/farwacubes = 4,
				/obj/item/weapon/storage/firstaid/surgery = 4,
				/obj/item/weapon/cell/infinite = 1,
				/obj/item/weapon/archaeological_find = 2,
				/obj/machinery/artifact = 1,
				/obj/item/device/multitool/hacktool = 2,
				/obj/item/weapon/surgicaldrill = 7,
				/obj/item/weapon/FixOVein = 7,
				/obj/item/weapon/retractor = 7,
				/obj/item/weapon/hemostat = 7,
				/obj/item/weapon/cautery = 7,
				/obj/item/weapon/bonesetter = 7,
				/obj/item/weapon/bonegel = 7,
				/obj/item/weapon/circular_saw = 7,
				/obj/item/weapon/scalpel = 7,
				/obj/item/weapon/melee/baton/loaded = 9,
				/obj/item/device/radio/headset/syndicate = 6)

/obj/random/voidhelmet
	name = "Random Voidsuit Helmet"
	desc = "This is a random voidsuit helmet."
	icon = 'icons/obj/clothing/obj_head.dmi'
	icon_state = "void"

/obj/random/voidhelmet/spawn_choices()
	return list(/obj/item/clothing/head/helmet/space/void,
				/obj/item/clothing/head/helmet/space/void/engineering,
				/obj/item/clothing/head/helmet/space/void/engineering/alt,
				/obj/item/clothing/head/helmet/space/void/engineering/salvage,
				/obj/item/clothing/head/helmet/space/void/mining,
				/obj/item/clothing/head/helmet/space/void/mining/alt,
				/obj/item/clothing/head/helmet/space/void/security,
				/obj/item/clothing/head/helmet/space/void/security/alt,
				/obj/item/clothing/head/helmet/space/void/atmos,
				/obj/item/clothing/head/helmet/space/void/atmos/alt,
				/obj/item/clothing/head/helmet/space/void/merc,
				/obj/item/clothing/head/helmet/space/void/medical,
				/obj/item/clothing/head/helmet/space/void/medical/alt)

/obj/random/voidsuit
	name = "Random Voidsuit"
	desc = "This is a random voidsuit."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "void"

/obj/random/voidsuit/spawn_choices()
	return list(/obj/item/clothing/suit/space/void,
				/obj/item/clothing/suit/space/void/engineering,
				/obj/item/clothing/suit/space/void/engineering/alt,
				/obj/item/clothing/suit/space/void/engineering/salvage,
				/obj/item/clothing/suit/space/void/mining,
				/obj/item/clothing/suit/space/void/mining/alt,
				/obj/item/clothing/suit/space/void/security,
				/obj/item/clothing/suit/space/void/security/alt,
				/obj/item/clothing/suit/space/void/atmos,
				/obj/item/clothing/suit/space/void/atmos/alt,
				/obj/item/clothing/suit/space/void/merc,
				/obj/item/clothing/suit/space/void/medical,
				/obj/item/clothing/suit/space/void/medical/alt)

/obj/random/hardsuit
	name = "Random Hardsuit"
	desc = "This is a random hardsuit control module."
	icon = 'icons/obj/rig_modules.dmi'
	icon_state = "generic"

/obj/random/hardsuit/spawn_choices()
	return list(/obj/item/weapon/rig/industrial,
				/obj/item/weapon/rig/eva,
				/obj/item/weapon/rig/light/hacker,
				/obj/item/weapon/rig/light/stealth,
				/obj/item/weapon/rig/light,
				/obj/item/weapon/rig/unathi)

/obj/random/hostile
	name = "Random Hostile Mob"
	desc = "This is a random hostile mob."
	icon = 'icons/mob/amorph.dmi'
	icon_state = "standing"
	spawn_nothing_percentage = 80

obj/random/hostile/spawn_choices()
	return list(/mob/living/simple_animal/hostile/viscerator,
				/mob/living/simple_animal/hostile/carp,
				/mob/living/simple_animal/hostile/carp/pike,
				/mob/living/simple_animal/hostile/vagrant/swarm)

/*
	Selects one spawn point out of a group of points with the same ID and asks it to generate its items
*/
var/list/multi_point_spawns

/obj/random_multi
	name = "random object spawn point"
	desc = "This item type is used to spawn random objects at round-start. Only one spawn point for a given group id is selected."
	icon = 'icons/misc/mark.dmi'
	icon_state = "x3"
	invisibility = INVISIBILITY_MAXIMUM
	var/id     // Group id
	var/weight // Probability weight for this spawn point

/obj/random_multi/Initialize()
	. = ..()
	weight = max(1, round(weight))

	if(!multi_point_spawns)
		multi_point_spawns = list()
	var/list/spawnpoints = multi_point_spawns[id]
	if(!spawnpoints)
		spawnpoints = list()
		multi_point_spawns[id] = spawnpoints
	spawnpoints[src] = weight

/obj/random_multi/Destroy()
	var/list/spawnpoints = multi_point_spawns[id]
	spawnpoints -= src
	if(!spawnpoints.len)
		multi_point_spawns -= id
	. = ..()

/obj/random_multi/proc/generate_items()
	return

/obj/random_multi/single_item
	var/item_path  // Item type to spawn

/obj/random_multi/single_item/generate_items()
	new item_path(loc)

/hook/roundstart/proc/generate_multi_spawn_items()
	for(var/id in multi_point_spawns)
		var/list/spawn_points = multi_point_spawns[id]
		var/obj/random_multi/rm = pickweight(spawn_points)
		rm.generate_items()
		for(var/entry in spawn_points)
			qdel(entry)
	return 1

/obj/random_multi/single_item/captains_spare_id
	name = "Multi Point - Captain's Spare"
	id = "Captain's spare id"
	item_path = /obj/item/weapon/card/id/captains_spare

/obj/random_multi/single_item/skelestand
	name = "Multi Point - Medical Skeleton"
	id = "Medical Skeleton"
	item_path = /obj/structure/skele_stand

/obj/random_multi/single_item/skelestand/maint
	name = "Multi Point - Maintenance Skeleton"
	id = "Maint Skeleton"
	item_path = /obj/structure/skele_stand/maint

var/list/random_junk_
var/list/random_useful_
/proc/get_random_useful_type()
	if(!random_useful_)
		random_useful_ = list()
		random_useful_ += /obj/item/weapon/pen/crayon/random
		random_useful_ += /obj/item/weapon/pen
		random_useful_ += /obj/item/weapon/pen/blue
		random_useful_ += /obj/item/weapon/pen/red
		random_useful_ += /obj/item/weapon/pen/multi
		random_useful_ += /obj/item/weapon/storage/box/matches
		random_useful_ += /obj/item/stack/material/cardboard
		random_useful_ += /obj/item/weapon/storage/fancy/cigarettes
		random_useful_ += /obj/item/weapon/deck/cards
	return pick(random_useful_)

/proc/get_random_junk_type()
	if(prob(20)) // Misc. clutter
		return /obj/effect/decal/cleanable/generic

	// 80% chance that we reach here
	if(prob(95)) // Misc. junk
		if(!random_junk_)
			random_junk_ = subtypesof(/obj/item/trash)
			random_junk_ += typesof(/obj/item/trash/cigbutt)
			random_junk_ += /obj/effect/decal/cleanable/spiderling_remains
			random_junk_ += /obj/item/remains/mouse
			random_junk_ += /obj/item/remains/robot
			random_junk_ += /obj/item/weapon/paper/crumpled
			random_junk_ += /obj/item/inflatable/torn
			random_junk_ += /obj/effect/decal/cleanable/molten_item
			random_junk_ += /obj/item/weapon/material/shard
			random_junk_ += /obj/item/weapon/hand/missing_card

			random_junk_ -= /obj/item/trash/plate
			random_junk_ -= /obj/item/trash/snack_bowl
			random_junk_ -= /obj/item/trash/syndi_cakes
			random_junk_ -= /obj/item/trash/tray
		return pick(random_junk_)

	// Misc. actually useful stuff or perhaps even food
	// 4% chance that we reach here
	if(prob(75))
		return get_random_useful_type()

	// 1% chance that we reach here
	var/lunches = lunchables_lunches()
	return lunches[pick(lunches)]

/obj/random/clipboard
	name = "random clipboard"
	desc = "This is a random material clipboard."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "clipboard_preview"

/obj/random/clipboard/spawn_choices()
	return list(/obj/item/weapon/material/clipboard = 300,
				/obj/item/weapon/material/clipboard/steel = 200,
				/obj/item/weapon/material/clipboard/aluminium = 200,
				/obj/item/weapon/material/clipboard/plastic = 200,
				/obj/item/weapon/material/clipboard/glass = 100,
				/obj/item/weapon/material/clipboard/ebony = 10)

//Random MRE stuff

/obj/random/mre
	name = "random MRE"
	desc = "This is a random single MRE."
	icon = 'icons/obj/food.dmi'
	icon_state = "mre"

/obj/random/mre/spawn_choices()
	return list(/obj/item/weapon/storage/mre,
				/obj/item/weapon/storage/mre/menu2,
				/obj/item/weapon/storage/mre/menu3,
				/obj/item/weapon/storage/mre/menu4,
				/obj/item/weapon/storage/mre/menu5,
				/obj/item/weapon/storage/mre/menu6,
				/obj/item/weapon/storage/mre/menu7,
				/obj/item/weapon/storage/mre/menu8,
				/obj/item/weapon/storage/mre/menu9,
				/obj/item/weapon/storage/mre/menu10)


/obj/random/mre/main
	name = "random MRE main course"
	desc = "This is a random main course for MREs."
	icon_state = "pouch_medium"

/obj/random/mre/main/spawn_choices()
	return list(/obj/item/weapon/storage/mrebag,
				/obj/item/weapon/storage/mrebag/menu2,
				/obj/item/weapon/storage/mrebag/menu3,
				/obj/item/weapon/storage/mrebag/menu4,
				/obj/item/weapon/storage/mrebag/menu5,
				/obj/item/weapon/storage/mrebag/menu6,
				/obj/item/weapon/storage/mrebag/menu7,
				/obj/item/weapon/storage/mrebag/menu8)

/obj/random/mre/dessert
	name = "random MRE dessert"
	desc = "This is a random dessert for MREs."
	icon_state = "pouch_medium"

/obj/random/mre/dessert/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/snacks/candy,
				/obj/item/weapon/reagent_containers/food/snacks/proteinbar,
				/obj/item/weapon/reagent_containers/food/snacks/donut/normal,
				/obj/item/weapon/reagent_containers/food/snacks/donut/cherryjelly,
				/obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
				/obj/item/weapon/reagent_containers/food/snacks/cookie,
				/obj/item/weapon/reagent_containers/food/snacks/poppypretzel,
				/obj/item/clothing/mask/chewable/candy/gum)

/obj/random/mre/dessert/vegan
	name = "random vegan MRE dessert"
	desc = "This is a random vegan dessert for MREs."

/obj/random/mre/dessert/vegan/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/snacks/candy,
				/obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
				/obj/item/weapon/reagent_containers/food/snacks/donut/cherryjelly,
				/obj/item/weapon/reagent_containers/food/snacks/plumphelmetbiscuit)

/obj/random/mre/drink
	name = "random MRE drink"
	desc = "This is a random drink for MREs."
	icon_state = "packet_small"

/obj/random/mre/drink/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/coffee,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/tea,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/cocoa,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/grape,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/orange,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/watermelon,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/apple)

/obj/random/mre/spread
	name = "random MRE spread"
	desc = "This is a random spread packet for MREs."
	icon_state = "packet_small"

/obj/random/mre/spread/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/jelly,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/honey)

/obj/random/mre/spread/vegan
	name = "random vegan MRE spread"
	desc = "This is a random vegan spread packet for MREs"

/obj/random/mre/spread/vegan/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/jelly)

/obj/random/mre/sauce
	name = "random MRE sauce"
	desc = "This is a random sauce packet for MREs."
	icon_state = "packet_small"

/obj/random/mre/sauce/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/salt,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/pepper,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/sugar,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/capsaicin,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/ketchup,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/mayo,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/soy)

/obj/random/mre/sauce/vegan/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/salt,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/pepper,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/sugar,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/soy)

/obj/random/mre/sauce/sugarfree/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/salt,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/pepper,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/capsaicin,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/ketchup,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/mayo,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/soy)

/obj/random/mre/sauce/crayon/spawn_choices()
	return list(/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/red,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/orange,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/yellow,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/green,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/blue,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/purple,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/grey,
				/obj/item/weapon/reagent_containers/food/condiment/small/packet/crayon/brown)

/obj/random/vendor
	name = "random vending machine"
	desc = "This is a randomly selected vending machine."
	icon = 'icons/obj/vending.dmi'
	icon_state = ""

/obj/random/vendor/spawn_choices()
	return list(/obj/machinery/vending/weeb,
				/obj/machinery/vending/sol,
				/obj/machinery/vending/snix,
				/obj/machinery/vending/soda
				)

/obj/random/single/playing_cards
	name = "randomly spawned deck of cards"
	icon = 'icons/obj/playing_cards.dmi'
	icon_state = "deck"
	spawn_object = /obj/item/weapon/deck

/obj/random/single/lighter
	name = "randomly spawned lighter"
	icon = 'icons/obj/lighters.dmi'
	icon_state = "lighter"
	spawn_object = /obj/item/weapon/flame/lighter

/obj/random/single/cola
	name = "randomly spawned cola"
	icon = 'icons/obj/drinks.dmi'
	icon_state = "cola"
	spawn_object = /obj/item/weapon/reagent_containers/food/drinks/cans/cola

/obj/random/techpart
	name = "random techpart"
	icon_state = "tech-orange"

/obj/random/techpart/item_to_spawn()
	return pickweight(list(/obj/item/weapon/stock_parts/computer/card_slot = 18,
				/obj/item/weapon/stock_parts/computer/hard_drive = 12,
				/obj/item/weapon/stock_parts/computer/hard_drive/super = 6,
				/obj/item/weapon/stock_parts/computer/hard_drive/cluster = 3,
				/obj/item/weapon/stock_parts/computer/hard_drive/advanced = 4,
				/obj/item/weapon/stock_parts/computer/network_card = 2,
				/obj/item/weapon/stock_parts/computer/network_card/wired = 12,
				/obj/item/weapon/stock_parts/computer/network_card/advanced = 2,
				/obj/item/weapon/stock_parts/computer/processor_unit = 12,
				/obj/item/weapon/stock_parts/computer/processor_unit/small = 12,
				/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 6,
				/obj/item/weapon/stock_parts/computer/processor_unit/photonic/small = 8,
				/obj/item/weapon/stock_parts/computer/tesla_link = 18,
				/obj/item/device/assembly/igniter = 24,
				/obj/item/device/assembly/infra = 24,
				/obj/item/device/assembly/prox_sensor = 24,
				/obj/item/device/assembly/signaler = 24,
				/obj/item/device/assembly/timer = 24,
				/obj/item/device/assembly/voice = 18,
				/obj/item/weapon/stock_parts/console_screen = 30,
				/obj/item/weapon/stock_parts/capacitor = 20,
				/obj/item/weapon/stock_parts/capacitor/adv = 6,
				/obj/item/weapon/stock_parts/manipulator = 30,
				/obj/item/weapon/stock_parts/manipulator/nano = 10,
				/obj/item/weapon/stock_parts/matter_bin = 40,
				/obj/item/weapon/stock_parts/matter_bin/adv = 12,
				/obj/item/weapon/stock_parts/micro_laser = 30,
				/obj/item/weapon/stock_parts/micro_laser/high = 10,
				/obj/item/weapon/stock_parts/scanning_module = 30,
				/obj/item/weapon/stock_parts/scanning_module/adv = 10,
				/obj/item/weapon/stock_parts/subspace/amplifier = 6,
				/obj/item/weapon/stock_parts/subspace/analyzer = 6,
				/obj/item/weapon/stock_parts/subspace/ansible = 6,
				/obj/item/weapon/stock_parts/subspace/crystal = 6,
				/obj/item/weapon/stock_parts/subspace/filter = 6,
				/obj/item/weapon/stock_parts/subspace/transmitter = 6,
				/obj/item/weapon/stock_parts/subspace/treatment = 6
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/misc = 6,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/devices = 6,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/tools = 6,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/components = 6,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/adv_tools = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/circuits = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/conveyors = 10,	All of this is tied to the eris auto late system to be ported later maybe
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/robustcells = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/medical = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/computer = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/nonlethal_ammo = 6,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/lethal_ammo = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/ammo_boxes_smallarms = 4,
				//obj/item/weapon/computer_hardware/hard_drive/portable/design/ammo_boxes_rifle = 4,
				))

/obj/random/techpart/low_chance
	name = "low chance random techpart"
	icon_state = "tech-orange-low"
	spawn_nothing_percentage = 60


/obj/random/medical/low_chance
	name = "low chance random medicine"
	icon_state = "meds-green-low"
	spawn_nothing_percentage = 60

/obj/random/medical_lowcost
	name = "random low tier medicine"
	icon_state = "meds-grey"

/obj/random/medical_lowcost/item_to_spawn()
	return pickweight(list(/obj/item/stack/medical/bruise_pack = 4,\
				/obj/item/stack/medical/ointment = 4,\
				/obj/item/weapon/reagent_containers/syringe/antitoxin = 2,\
				/obj/item/weapon/reagent_containers/syringe/inaprovaline = 2
				//obj/item/weapon/reagent_containers/syringe/tricordrazine = 1
				))

/obj/random/medical_lowcost/low_chance
	name = "low chance random low tier medicine"
	icon_state = "meds-grey-low"
	spawn_nothing_percentage = 60


/obj/random/rations
	name = "random preserved rations"
	icon_state = "food-green"

/obj/random/rations/item_to_spawn()
	return pickweight(list(/obj/item/weapon/reagent_containers/food/snacks/chips = 2,\
				/obj/item/weapon/reagent_containers/food/snacks/candy = 2,\
				/obj/item/weapon/reagent_containers/food/snacks/tastybread = 2,\
				/obj/item/weapon/reagent_containers/food/snacks/no_raisin = 2,\
				/obj/item/weapon/reagent_containers/food/snacks/liquidfood = 4,
				/obj/item/weapon/reagent_containers/food/snacks/donkpocket/sinpocket = 1))

/obj/random/rations/low_chance
	name = "low chance preserved rations"
	icon_state = "food-green-low"
	spawn_nothing_percentage = 60


/obj/random/structures
	name = "random structure"
	icon_state = "machine-black"

/obj/random/structures/item_to_spawn()
	return pickweight(list(/obj/structure/salvageable/machine = 10,\
				/obj/structure/salvageable/autolathe = 10,\
				/obj/structure/salvageable/implant_container = 3,\
				/obj/structure/salvageable/data = 6,\
				/obj/structure/salvageable/server = 6,\
				/obj/structure/salvageable/computer = 6,\
				/obj/structure/salvageable/personal = 5,\
				/obj/structure/salvageable/bliss = 1 ,\
				/obj/machinery/constructable_frame/computerframe = 5,\
				/obj/machinery/constructable_frame/machine_frame = 4,\
				/obj/structure/reagent_dispensers/fueltank = 6,\
				/obj/structure/reagent_dispensers/watertank = 6,\
				/obj/structure/largecrate = 2,\
				/obj/structure/ore_box = 2,\
				/obj/structure/dispenser/oxygen = 1))

/obj/random/structures/low_chance
	name = "low chance random structures"
	icon_state = "machine-black-low"
	spawn_nothing_percentage = 60

/obj/random/structures/os
	name = "random os structure"

/obj/random/structures/os/item_to_spawn()
	return pickweight(list(
				/obj/structure/salvageable/autolathe = 10,\
				/obj/structure/salvageable/implant_container_os = 3,\
				/obj/structure/salvageable/data_os = 6,\
				/obj/structure/salvageable/server_os = 6,\
				/obj/structure/salvageable/computer_os = 6,\
				/obj/structure/salvageable/console_broken_os = 6,\
				/obj/structure/salvageable/console_os = 3,\
				/obj/machinery/constructable_frame/computerframe = 2,\
				/obj/machinery/constructable_frame/machine_frame = 2))