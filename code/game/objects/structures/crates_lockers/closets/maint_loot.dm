//Closets full of loot, they should be placed in maints

/obj/structure/closet/random_miscellaneous
	name = "\improper forgotten closet"
	desc = "Old and rusty closet, probably older than you."
	icon_state = "oldstyle"
	old_chance = 50

/obj/structure/closet/random_miscellaneous/WillContain()
	return list(
		/obj/random/contraband/low_chance,
		/obj/random/contraband/low_chance,
		/obj/random/junk,
		/obj/random/junk,
		/obj/random/junk,
		/obj/random/lowkeyrandom,
		/obj/random/lowkeyrandom,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/pack/tech_loot/low_chance,
		/obj/random/pack/cloth/low_chance,
		/obj/random/pack/cloth/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance)




/obj/structure/closet/random_tech
	name = "\improper technical closet"
	desc = "Somewhat old closet with wrench sign on it."
	icon_state = "eng"
	closet_appearance = /decl/closet_appearance/secure_closet/engineering
	old_chance = 10

/obj/structure/closet/random_tech/WillContain()
	return list(
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/pack/tech_loot,
		/obj/random/pack/tech_loot,
		/obj/random/pack/tech_loot,
		/obj/random/pack/tech_loot,
		/obj/random/pack/tech_loot/low_chance,
		/obj/random/pack/tech_loot/low_chance)




/obj/structure/closet/random_spareparts
	name = "\improper spare parts closet"
	desc = "Somewhat old closet with spare parts in it."
	icon_state = "eng"
	closet_appearance = /decl/closet_appearance/secure_closet/engineering
	old_chance = 10

/obj/structure/closet/random_tech/WillContain()
	return list(
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/techpart,
		/obj/random/techpart,
		/obj/random/techpart,
		/obj/random/techpart,
		/obj/random/techpart,
		/obj/random/techpart,
	//new /obj/random/tool_upgrade(src)
	//new /obj/random/tool_upgrade(src)
	//new /obj/random/tool_upgrade(src)    ERIS STUFF THAT MAY GET PORTED SOON
	//new /obj/random/lathe_disk(src)
	//new /obj/random/lathe_disk/low_chance(src)
		/obj/random/pack/tech_loot/low_chance,
		/obj/random/pack/tech_loot/low_chance)





/obj/structure/closet/random_milsupply
	name = "\improper military supply closet"
	desc = "Why is this here?"
	icon_state = "syndicate"
	old_chance = 10

/obj/structure/closet/random_milsupply/WillContain()
	return list(
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
//	new /obj/random/pack/rare(src)
		/obj/random/pack/gun_loot,
		/obj/random/pack/gun_loot,
		/obj/random/pack/gun_loot,
		/obj/random/pack/gun_loot,
		/obj/random/pack/gun_loot,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/pack/gun_loot/low_chance,
		/obj/random/medical/low_chance,
		/obj/random/medical/low_chance,
		/obj/random/medical/low_chance)





/obj/structure/closet/random_medsupply
	name = "\improper medical supply closet"
	desc = "Abandoned medical supply."
	icon_state = "freezer"
	old_chance = 10

/obj/structure/closet/random_medsupply/WillContain()
	return list(
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/lowkeyrandom/low_chance,
		/obj/random/medical_lowcost,
		/obj/random/medical_lowcost,
		/obj/random/medical_lowcost,
		/obj/random/medical_lowcost,
		/obj/random/medical,
		/obj/random/medical,
		/obj/random/medical,
		/obj/random/medical/low_chance,
		/obj/random/medical/low_chance)






//Closet with unfair bullshit inside
///obj/structure/closet/random_hostilemobs
//	name = "\improper forgotten closet"
//	desc = "Old and rusty closet, probably older than you."
//	icon_state = "oldstyle"
//	old_chance = 70
//
///obj/structure/closet/random_hostilemobs/populate_contents()
//	new /obj/random/pack/rare(src) //To reward players for fighting this bullshit
//	new /obj/random/pack/rare(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/lowkeyrandom/low_chance(src)              eris roach closets
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/rations(src)
//	new /obj/random/rations(src)
//	new /obj/random/rations(src)
//	new /obj/random/cluster/roaches(src)


//im 50/50 on importing the scrap beacon, either way a job for latter.

// Used for scrap beacon
//obj/structure/closet/random_hostilemobs/beacon/populate_contents()
//	new /obj/random/pack/rare(src) //To reward players for fighting this bullshit
//	new /obj/random/pack/rare(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/lowkeyrandom/low_chance(src)
//	new /obj/random/rations(src)
//	new /obj/random/rations(src)
//	new /obj/random/rations(src)
//	new /obj/random/cluster/roaches/beacon(src)
