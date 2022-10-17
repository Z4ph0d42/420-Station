/obj/random/exosuit
	name = "random exosuit"
	icon_state = "x4"
	var/list/randsuits = list(
		/mob/living/exosuit/premade/powerloader = 7,
		/mob/living/exosuit/premade/powerloader = 4,
		/mob/living/exosuit/premade/light = 6,
		/mob/living/exosuit/premade/combat = 1,//comes unarmed
		)

/obj/random/exosuit/item_to_spawn()
	return pickweight(randsuits)

/obj/random/exosuit/low_chance
	name = "low chance random lathe disk"
	icon_state = "x4"
	spawn_nothing_percentage = 60



/obj/random/exosuit/damaged
	name = "random damaged exosuit"
	icon_state = "x4"
	has_postspawn = TRUE

/obj/random/exosuit/damaged/post_spawn(var/list/things)
	for (var/obj/a in things)
		a.make_old()

/obj/random/exosuit/damaged/low_chance
	name = "low chance random damaged exosuit"
	icon_state = "x4"
	spawn_nothing_percentage = 60





/obj/random/exosuit_equipment
	name = "random exosuit equipment"
	icon_state = "x4"

/obj/random/exosuit_equipment/item_to_spawn()
	return pickweight(list(
//		/obj/item/mech_equipment/tool/ai_holder,
		/obj/item/mech_equipment/sleeper = 2,
//		/obj/item/mech_equipment/cable_layer,
//		/obj/item/mech_equipment/syringe_gun,
//		/obj/item/mech_equipment/thruster = 2,
		/obj/item/mech_equipment/clamp = 5,
		/obj/item/mech_equipment/drill = 4,
//		/obj/item/mech_equipment/drill/diamonddrill,
		/obj/item/mech_equipment/mounted_system/extinguisher = 6,
		/obj/item/mech_equipment/mounted_system/rcd = 1,
		/obj/item/mech_equipment/catapult = 1,
//		/obj/item/mech_equipment/wormhole_generator,
//		/obj/item/mech_equipment/gravcatapult,
		/obj/item/robot_parts/robot_component/armour/exosuit = 5,
		/obj/item/robot_parts/robot_component/armour/exosuit/radproof = 2,
		/obj/item/robot_parts/robot_component/armour/exosuit/em = 1,
		/obj/item/robot_parts/robot_component/armour/exosuit/combat = 2,
//		/obj/item/mech_equipment/repair_droid,
//		/obj/item/mech_equipment/tesla_energy_relay,
//		/obj/item/mech_equipment/generator,
//		/obj/item/mech_equipment/generator/nuclear,
//		/obj/item/mech_equipment/tool/safety_clamp,
//		/obj/item/mech_equipment/tool/passenger,
//		/obj/item/mech_equipment/thruster,
		/obj/item/mech_equipment/mounted_system/taser/laser = 1,
		/obj/item/mech_equipment/mounted_system/taser/ion = 2,
//		/obj/item/mech_equipment/weapon/energy/pulse,
		/obj/item/mech_equipment/mounted_system/taser = 2,
//		/obj/item/mech_equipment/weapon/ballistic/scattershot,
//		/obj/item/mech_equipment/weapon/ballistic/lmg,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/flare,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/explosive,
//		/obj/item/mech_equipment/weapon/ballistic/missile_rack/flashbang
		)
	)

/obj/random/exosuit/mech_equipment/low_chance
	name = "low chance random exosuit equipment"
	icon_state = "x4"
	spawn_nothing_percentage = 90
