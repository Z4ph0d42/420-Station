/mob/living/carbon/superior_animal/roach
	name = "Kampfer Roach"
	desc = "A monstrous, dog-sized cockroach. These huge mutants can be everywhere where humans are, on ships, planets and stations."

	icon_state = "roach"

	mob_size = MOB_SMALL

	density = FALSE //Swarming roaches! They also more robust that way.

	attack_sound = 'sound/voice/insect_battle_bite.ogg'
	emote_see = list("chirps loudly.", "cleans its whiskers with forelegs.")
	turns_per_move = 4
	turns_since_move = 0

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/roachmeat
	meat_amount = 2

	maxHealth = 10
	health = 10

	var/blattedin_revives_left = 1 // how many times blattedin can get us back to life (as num for adminbus fun).

	melee_damage_lower = 1
	melee_damage_upper = 4

	min_breath_required_type = 3
	min_air_pressure = 15 //below this, brute damage is dealt

	faction = "roach"
	pass_flags = PASS_FLAG_TABLE
	acceptableTargetDistance = 3 //consider all targets within this range equally
	randpixel = 12
	overkill_gib = 16



	//spawn_values
	//spawn_tags = SPAWN_TAG_ROACH
	rarity_value = 5

	var/atom/eat_target // target that the roach wants to eat
	var/fed = 0 // roach gets fed after eating a corpse
	var/probability_egg_laying = 25 // probability to lay an egg

//When roaches die near a leader, the leader may call for reinforcements
/mob/living/carbon/superior_animal/roach/death()
	.=..()
	if (.)
		for (var/mob/living/carbon/superior_animal/roach/fuhrer/F in range(src,8))
			F.distress_call()

//roach spawners
/obj/random/roaches
	name = "random roach"
	spawn_nothing_percentage = 30
	var/spawn_object = /mob/living/carbon/superior_animal/roach

/obj/random/roaches/low_chance
	name = "low chance random roach"
	spawn_nothing_percentage = 60

/obj/random/roaches/cluster
	name = "cluster of roaches"
	alpha = 128
	min_amount = 3
	max_amount = 9
	spread_range = 0

/obj/random/roaches/cluster/low_chance
	name = "low chance cluster of roaches"
	spawn_nothing_percentage = 60

// For Scrap Beacon
/obj/random/roaches/cluster/beacon
	spawn_object = /mob/living/carbon/superior_animal/roach/nanite