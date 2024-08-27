// Chili plants/variants.
/datum/seed/chili
	name = "chili"
	seed_name = "chili"
	display_name = "chili plants"
	chems = list(/datum/reagent/capsaicin = list(3,5), /datum/reagent/nutriment = list(1,25))
	mutants = list("icechili")
	kitchen_tag = "chili"

/datum/seed/chili/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_PRODUCT_ICON,"chili")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ed3300")
	set_trait(TRAIT_PLANT_ICON,"bush2")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 7)

/datum/seed/chili/ice
	name = "icechili"
	seed_name = "chilly pepper"
	display_name = "chilly pepper plants"
	mutants = null
	chems = list(/datum/reagent/frostoil = list(3,5), /datum/reagent/nutriment = list(1,50))
	kitchen_tag = "icechili"

/datum/seed/chili/ice/New()
	..()
	set_trait(TRAIT_MATURATION,4)
	set_trait(TRAIT_PRODUCTION,4)
	set_trait(TRAIT_PRODUCT_COLOUR,"#00edc6")

// Berry plants/variants.
/datum/seed/berry
	name = "berries"
	seed_name = "berry"
	display_name = "berry bush"
	mutants = list("glowberries","poisonberries","blueberries")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/berry = list(10,10))
	kitchen_tag = "berries"

/datum/seed/berry/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"berry")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fa1616")
	set_trait(TRAIT_PLANT_ICON,"bush")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/berry/blue
	name = "blueberries"
	seed_name = "blueberry"
	display_name = "blueberry bush"
	mutants = list("berries","poisonberries","glowberries")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/berry = list(10,10))
	kitchen_tag = "blueberries"

/datum/seed/berry/blue/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_COLOUR,"#1c225c")
	set_trait(TRAIT_WATER_CONSUMPTION, 5)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.2)

/datum/seed/berry/glow
	name = "glowberries"
	seed_name = "glowberry"
	display_name = "glowberry bush"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/uranium = list(3,5))

/datum/seed/berry/glow/New()
	..()
	set_trait(TRAIT_SPREAD,1)
	set_trait(TRAIT_BIOLUM,1)
	set_trait(TRAIT_BIOLUM_COLOUR,"#006622")
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_COLOUR,"#c9fa16")
	set_trait(TRAIT_WATER_CONSUMPTION, 3)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.25)

/datum/seed/berry/poison
	name = "poisonberries"
	seed_name = "poison berry"
	display_name = "poison berry bush"
	mutants = list("deathberries")
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/toxin = list(3,5), /datum/reagent/toxin/poisonberryjuice = list(10,5))

/datum/seed/berry/poison/New()
	..()
	set_trait(TRAIT_PRODUCT_COLOUR,"#6dc961")
	set_trait(TRAIT_WATER_CONSUMPTION, 3)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.25)

/datum/seed/berry/poison/death
	name = "deathberries"
	seed_name = "death berry"
	display_name = "death berry bush"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/toxin = list(3,3), /datum/reagent/lexorin = list(1,5))

/datum/seed/berry/poison/death/New()
	..()
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,50)
	set_trait(TRAIT_PRODUCT_COLOUR,"#7a5454")
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.35)

// Nettles/variants.
/datum/seed/nettle
	name = "nettle"
	seed_name = "nettle"
	display_name = "nettles"
	mutants = list("deathnettle")
	chems = list(/datum/reagent/nutriment = list(1,50), /datum/reagent/acid = list(0,1))
	kitchen_tag = "nettle"
	kitchen_tag = "nettle"

/datum/seed/nettle/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_STINGS,1)
	set_trait(TRAIT_PLANT_ICON,"bush5")
	set_trait(TRAIT_PRODUCT_ICON,"nettles")
	set_trait(TRAIT_PRODUCT_COLOUR,"#728a54")

/datum/seed/nettle/death
	name = "deathnettle"
	seed_name = "death nettle"
	display_name = "death nettles"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,50), /datum/reagent/acid/polyacid = list(0,1))
	kitchen_tag = "deathnettle"

/datum/seed/nettle/death/New()
	..()
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_PRODUCT_COLOUR,"#8c5030")
	set_trait(TRAIT_PLANT_COLOUR,"#634941")

//Tomatoes/variants.
/datum/seed/tomato
	name = "tomato"
	seed_name = "tomato"
	display_name = "tomato plant"
	mutants = list("bluetomato","bloodtomato")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/tomato = list(10,10))
	kitchen_tag = "tomato"

/datum/seed/tomato/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"tomato")
	set_trait(TRAIT_PRODUCT_COLOUR,"#d10000")
	set_trait(TRAIT_PLANT_ICON,"bush3")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.25)

/datum/seed/tomato/blood
	name = "bloodtomato"
	seed_name = "blood tomato"
	display_name = "blood tomato plant"
	mutants = list("killer")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/blood = list(1,5))
	splat_type = /obj/effect/decal/cleanable/blood/splatter

/datum/seed/tomato/blood/New()
	..()
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_PRODUCT_COLOUR,"#ff0000")

/datum/seed/tomato/killer
	name = "killertomato"
	seed_name = "killer tomato"
	display_name = "killer tomato plant"
	mutants = null
	can_self_harvest = 1
	has_mob_product = /mob/living/simple_animal/tomato

/datum/seed/tomato/killer/New()
	..()
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_PRODUCT_COLOUR,"#a86747")

/datum/seed/tomato/blue
	name = "bluetomato"
	seed_name = "blue tomato"
	display_name = "blue tomato plant"
	mutants = list("bluespacetomato")
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/lube = list(1,5))

/datum/seed/tomato/blue/New()
	..()
	set_trait(TRAIT_PRODUCT_COLOUR,"#4d86e8")
	set_trait(TRAIT_PLANT_COLOUR,"#070aad")

/datum/seed/tomato/blue/teleport
	name = "bluespacetomato"
	seed_name = "bluespace tomato"
	display_name = "bluespace tomato plant"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/ethanol/singulo = list(10,5))

/datum/seed/tomato/blue/teleport/New()
	..()
	set_trait(TRAIT_TELEPORTING,1)
	set_trait(TRAIT_PRODUCT_COLOUR,"#00e5ff")
	set_trait(TRAIT_BIOLUM,1)
	set_trait(TRAIT_BIOLUM_COLOUR,"#4da4a8")

//Eggplants/varieties.
/datum/seed/eggplant
	name = "eggplant"
	seed_name = "eggplant"
	display_name = "eggplants"
	mutants = list("realeggplant")
	chems = list(/datum/reagent/nutriment = list(1,10))
	kitchen_tag = "eggplant"

/datum/seed/eggplant/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_PRODUCT_ICON,"eggplant")
	set_trait(TRAIT_PRODUCT_COLOUR,"#892694")
	set_trait(TRAIT_PLANT_ICON,"bush4")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 7)

//Apples/varieties.
/datum/seed/apple
	name = "apple"
	seed_name = "apple"
	display_name = "apple tree"
	mutants = list("poisonapple","goldapple")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/apple = list(10,10))
	kitchen_tag = "apple"

/datum/seed/apple/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"apple")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ff540a")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_FLESH_COLOUR,"#e8e39b")
	set_trait(TRAIT_IDEAL_LIGHT, 4)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/apple/poison
	name = "poisonapple"
	mutants = null
	chems = list(/datum/reagent/toxin/cyanide = list(1,5))

/datum/seed/apple/gold
	name = "goldapple"
	seed_name = "golden apple"
	display_name = "gold apple tree"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/gold = list(1,5))
	kitchen_tag = "goldapple"

/datum/seed/apple/gold/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,10)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffdd00")
	set_trait(TRAIT_PLANT_COLOUR,"#d6b44d")

//Ambrosia/varieties.
/datum/seed/ambrosia
	name = "ambrosia"
	seed_name = "ambrosia vulgaris"
	display_name = "ambrosia vulgaris"
	mutants = list("ambrosiadeus")
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/space_drugs = list(1,8), /datum/reagent/kelotane = list(1,8,1), /datum/reagent/bicaridine = list(1,10,1), /datum/reagent/toxin = list(1,10))
	kitchen_tag = "ambrosia"

/datum/seed/ambrosia/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"ambrosia")
	set_trait(TRAIT_PRODUCT_COLOUR,"#9fad55")
	set_trait(TRAIT_PLANT_ICON,"ambrosia")
	set_trait(TRAIT_IDEAL_LIGHT, 6)

/datum/seed/ambrosia/deus
	name = "ambrosiadeus"
	seed_name = "ambrosia deus"
	display_name = "ambrosia deus"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/bicaridine = list(1,8), /datum/reagent/synaptizine = list(1,8,1), /datum/reagent/hyperzine = list(1,10,1), /datum/reagent/space_drugs = list(1,10))
	kitchen_tag = "ambrosiadeus"

/datum/seed/ambrosia/deus/New()
	..()
	set_trait(TRAIT_PRODUCT_COLOUR,"#a3f0ad")
	set_trait(TRAIT_PLANT_COLOUR,"#2a9c61")

//Mushrooms/varieties.
/datum/seed/mushroom
	name = "mushrooms"
	seed_name = "chanterelle"
	seed_noun = SEED_NOUN_SPORES
	display_name = "chanterelle mushrooms"
	mutants = list("reishi","amanita","plumphelmet")
	chems = list(/datum/reagent/nutriment = list(1,25))
	splat_type = /obj/effect/vine
	kitchen_tag = "mushroom"

/datum/seed/mushroom/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,1)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom4")
	set_trait(TRAIT_PRODUCT_COLOUR,"#dbda72")
	set_trait(TRAIT_PLANT_COLOUR,"#d9c94e")
	set_trait(TRAIT_PLANT_ICON,"mushroom")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_IDEAL_HEAT, 288)
	set_trait(TRAIT_LIGHT_TOLERANCE, 6)

/datum/seed/mushroom/mold
	name = "mold"
	seed_name = "brown mold"
	display_name = "brown mold"
	mutants = null

/datum/seed/mushroom/mold/New()
	..()
	set_trait(TRAIT_SPREAD,1)
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_YIELD,-1)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom5")
	set_trait(TRAIT_PRODUCT_COLOUR,"#7a5f20")
	set_trait(TRAIT_PLANT_COLOUR,"#7a5f20")
	set_trait(TRAIT_PLANT_ICON,"mushroom9")

/datum/seed/mushroom/plump
	name = "plumphelmet"
	seed_name = "plump helmet"
	display_name = "plump helmet mushrooms"
	mutants = list("walkingmushroom","towercap")
	chems = list(/datum/reagent/nutriment = list(2,10))
	kitchen_tag = "plumphelmet"

/datum/seed/mushroom/plump/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,2)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom10")
	set_trait(TRAIT_PRODUCT_COLOUR,"#b57bb0")
	set_trait(TRAIT_PLANT_COLOUR,"#9e4f9d")
	set_trait(TRAIT_PLANT_ICON,"mushroom2")
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.35)

/datum/seed/mushroom/plump/walking
	name = "walkingmushroom"
	seed_name = "walking mushroom"
	display_name = "walking mushrooms"
	mutants = null
	can_self_harvest = 1
	has_mob_product = /mob/living/simple_animal/mushroom

/datum/seed/mushroom/plump/walking/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_YIELD,1)
	set_trait(TRAIT_PRODUCT_COLOUR,"#fac0f2")
	set_trait(TRAIT_PLANT_COLOUR,"#c4b1c2")

/datum/seed/mushroom/hallucinogenic
	name = "reishi"
	seed_name = "reishi"
	display_name = "reishi"
	mutants = list("libertycap","glowshroom")
	chems = list(/datum/reagent/nutriment = list(1,50), /datum/reagent/psilocybin = list(3,5))

/datum/seed/mushroom/hallucinogenic/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,15)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom11")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffb70f")
	set_trait(TRAIT_PLANT_COLOUR,"#f58a18")
	set_trait(TRAIT_PLANT_ICON,"mushroom6")

/datum/seed/mushroom/hallucinogenic/strong
	name = "libertycap"
	seed_name = "liberty cap"
	display_name = "liberty cap mushrooms"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/soporific = list(3,3), /datum/reagent/space_drugs = list(1,25))

/datum/seed/mushroom/hallucinogenic/strong/New()
	..()
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_POTENCY,15)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom8")
	set_trait(TRAIT_PRODUCT_COLOUR,"#f2e550")
	set_trait(TRAIT_PLANT_COLOUR,"#d1ca82")
	set_trait(TRAIT_PLANT_ICON,"mushroom3")

/datum/seed/mushroom/poison
	name = "amanita"
	seed_name = "fly amanita"
	display_name = "fly amanita mushrooms"
	mutants = list("destroyingangel","plastic")
	chems = list(/datum/reagent/nutriment = list(1), /datum/reagent/toxin/amatoxin = list(3,3), /datum/reagent/psilocybin = list(1,25))

/datum/seed/mushroom/poison/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ff4545")
	set_trait(TRAIT_PLANT_COLOUR,"#e0ddba")
	set_trait(TRAIT_PLANT_ICON,"mushroom4")

/datum/seed/mushroom/poison/death
	name = "destroyingangel"
	seed_name = "destroying angel"
	display_name = "destroying angel mushrooms"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,50), /datum/reagent/toxin/amatoxin = list(13,3), /datum/reagent/psilocybin = list(1,25))

/datum/seed/mushroom/poison/death/New()
	..()
	set_trait(TRAIT_MATURATION,12)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,35)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom3")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ede8ea")
	set_trait(TRAIT_PLANT_COLOUR,"#e6d8dd")
	set_trait(TRAIT_PLANT_ICON,"mushroom5")

/datum/seed/mushroom/towercap
	name = "towercap"
	seed_name = "tower cap"
	display_name = "tower caps"
	chems = list(/datum/reagent/woodpulp = list(10,1))
	mutants = null

/datum/seed/mushroom/towercap/New()
	..()
	set_trait(TRAIT_MATURATION,15)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom7")
	set_trait(TRAIT_PRODUCT_COLOUR,"#79a36d")
	set_trait(TRAIT_PLANT_COLOUR,"#857f41")
	set_trait(TRAIT_PLANT_ICON,"mushroom8")

/datum/seed/mushroom/glowshroom
	name = "glowshroom"
	seed_name = "glowshroom"
	display_name = "glowshrooms"
	mutants = null
	chems = list(/datum/reagent/radium = list(1,20))

/datum/seed/mushroom/glowshroom/New()
	..()
	set_trait(TRAIT_SPREAD,1)
	set_trait(TRAIT_MATURATION,15)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,30)
	set_trait(TRAIT_BIOLUM,1)
	set_trait(TRAIT_BIOLUM_COLOUR,"#006622")
	set_trait(TRAIT_PRODUCT_ICON,"mushroom2")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ddfab6")
	set_trait(TRAIT_PLANT_COLOUR,"#efff8a")
	set_trait(TRAIT_PLANT_ICON,"mushroom7")

/datum/seed/mushroom/plastic
	name = "plastic"
	seed_name = "plastellium"
	display_name = "plastellium"
	mutants = null
	chems = list(/datum/reagent/toxin/plasticide = list(1,10))

/datum/seed/mushroom/plastic/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom6")
	set_trait(TRAIT_PRODUCT_COLOUR,"#e6e6e6")
	set_trait(TRAIT_PLANT_COLOUR,"#e6e6e6")
	set_trait(TRAIT_PLANT_ICON,"mushroom10")

/datum/seed/mushroom/maintshroom
	name = "fungoartiglieria"
	seed_name = "Fungo di Artiglieria mushroom"
	display_name = "Fungo di Artiglieria"
	mutants = null

/datum/seed/mushroom/maintshroom/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,10)
	set_trait(TRAIT_POTENCY,12)//
	set_trait(TRAIT_REQUIRES_NUTRIENTS, FALSE)
	set_trait(TRAIT_REQUIRES_WATER, FALSE)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom3")
	set_trait(TRAIT_WALL_HUGGER,1)

	set_trait(TRAIT_PLANT_ICON,"fungoartiglieria")
	set_trait(TRAIT_SPREAD, 2)
	set_trait(TRAIT_CHEMS, 1)
	set_trait(TRAIT_CHEM_SPRAYER, TRUE)

	chems = list()

	var/list/possible_chems = list(
		/datum/reagent/toxin/blattedin,
		/datum/reagent/toxin/plasticide,
		/datum/reagent/toxin/cyanide,
		/datum/reagent/toxin,
		/datum/reagent/blood,
		/datum/reagent/water,
		/datum/reagent/acetone,
		/datum/reagent/hydrazine,
		/datum/reagent/mercury,
		/datum/reagent/potassium,
		/datum/reagent/radium,
		/datum/reagent/sugar,
		/datum/reagent/nutriment/honey,
		/datum/reagent/inaprovaline,
		/datum/reagent/bicaridine,
		/datum/reagent/dermaline,
		/datum/reagent/dexalin,
		/datum/reagent/cryoxadone,
		/datum/reagent/tramadol,
		/datum/reagent/synaptizine,
		/datum/reagent/alkysine,
		/datum/reagent/peridaxon,
		/datum/reagent/ryetalyn,
		/datum/reagent/hyperzine,
		/datum/reagent/ethylredoxrazine,
		/datum/reagent/hyronalin,
		/datum/reagent/paroxetine,
		/datum/reagent/rezadone,
		/datum/reagent/thermite,
		/datum/reagent/cryptobiolin,
		/datum/reagent/impedrezene,
		/datum/reagent/drink/juice/banana,
		/datum/reagent/capsaicin,
		/datum/reagent/chloralhydrate,
		/datum/reagent/frostoil,
		/datum/reagent/mindbreaker,
		/datum/reagent/mutagen,
		/datum/reagent/slimejelly,
		/datum/reagent/space_drugs,
		/datum/reagent/soporific,
		/datum/reagent/woodpulp
		//could not locate "mutationtoxin" and "amutationtoxin"
			//gonna port them in soon
		)

	var/list/firstnames = list (
		"bleak", "bog", "bum", "candy", "coarse", "corpse", "cramp", "club", "demon", "dog", "dung", "felt", "fly", "goblin", "grave", "greasy", "hypoxylon", "jelly", "junk", "icky", "imp", "ling", "lung", "maggot", "monkey", "mottled", "pixie", "poached", "powder", "pterula", "ramularia", "radiant", "rat", "roach", "rock", "scruffy", "serbian", "shaggy", "slimy", "smelly", "smoky", "space", "spider", "spiky", "splash", "stag", "stinky", "tumbling", "undulate", "vagabond", "veiled", "wall", "web"
		)
	var/list/secondnames = list(
		"amanita", "bane", "beacon", "bolete", "bonnet", "bulgar", "cap", "cone", "conocybe", "coral", "clown", "cremini", "crepidotus", "cup", "cushion", "entoloma", "ear", "fungus", "gill", "heart", "horn", "hydnum", "leafspot", "leoninus", "lichen", "micellium", "morsel", "moss", "mushroom", "ori", "oyster", "panellus", "polypore", "panus", "porcini", "porridge", "puffball", "rod", "rot", "russula", "scale", "smut", "spots", "stem", "stool", "tail", "tears", "tongue", "trumpet", "truffle",  "urn", "vase", "wort"
		)

	shuffle(firstnames)
	shuffle(secondnames)
	var/list/names = list()
	for (var/i = 1; i <= min(firstnames.len, secondnames.len); i++)
		names += "[firstnames[i]] [secondnames[i]]"

	var/random = 0
	random = rand(1, possible_chems.len)
	var/new_chem = possible_chems[random]
	chems[new_chem] = list(rand(1,5),rand(5,10))

	//Give the maintshroom the name
	var generated_name = ""
	if (random <= names.len)
		generated_name = names[random]
	else
		generated_name = names[1]
	name = "[generated_name]"
	seed_name = "[generated_name]"
	display_name = "[generated_name]"

	//Set the maintshroom to the hue of the chem
	var/datum/reagent/chem = GLOB.chemical_reagents_list[new_chem]
	var/color = chem.color

	//Color Wizardry
	//We will take the color's hue completely
	//We will cap its saturation to a low value, giving more of a pastel shade
	//We will hard set the brightness to max
	var/list/HSV = ReadHSV(RGBtoHSV(color))
	color = set_HSV(color, list(null, min(HSV[2],100), 255))

	if (chem)
		set_trait(TRAIT_PLANT_COLOUR,color)
		set_trait(TRAIT_PRODUCT_COLOUR,color)

//Flowers/varieties
/datum/seed/flower
	name = "harebells"
	seed_name = "harebell"
	display_name = "harebells"
	chems = list(/datum/reagent/nutriment = list(1,20))

/datum/seed/flower/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_PRODUCT_ICON,"flower5")
	set_trait(TRAIT_PRODUCT_COLOUR,"#c492d6")
	set_trait(TRAIT_PLANT_COLOUR,"#6b8c5e")
	set_trait(TRAIT_PLANT_ICON,"flower")
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/flower/poppy
	name = "poppies"
	seed_name = "poppy"
	display_name = "poppies"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/tramadol = list(1,10))
	kitchen_tag = "poppy"

/datum/seed/flower/poppy/New()
	..()
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_PRODUCT_ICON,"flower3")
	set_trait(TRAIT_PRODUCT_COLOUR,"#b33715")
	set_trait(TRAIT_PLANT_ICON,"flower3")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/flower/sunflower
	name = "sunflowers"
	seed_name = "sunflower"
	display_name = "sunflowers"

/datum/seed/flower/sunflower/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCT_ICON,"flower2")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fff700")
	set_trait(TRAIT_PLANT_ICON,"flower2")
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/flower/lavender
	name = "lavender"
	seed_name = "lavender"
	display_name = "lavender"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/bicaridine = list(1,10))

/datum/seed/flower/lavender/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"flower6")
	set_trait(TRAIT_PRODUCT_COLOUR,"#b57edc")
	set_trait(TRAIT_PLANT_COLOUR,"#6b8c5e")
	set_trait(TRAIT_PLANT_ICON,"flower4")
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.05)
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)

//Grapes/varieties
/datum/seed/grapes
	name = "grapes"
	seed_name = "grape"
	display_name = "grapevines"
	mutants = list("greengrapes")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/sugar = list(1,5), /datum/reagent/drink/juice/grape = list(10,10))

/datum/seed/grapes/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"grapes")
	set_trait(TRAIT_PRODUCT_COLOUR,"#bb6ac4")
	set_trait(TRAIT_PLANT_COLOUR,"#378f2e")
	set_trait(TRAIT_PLANT_ICON,"vine")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/grapes/green
	name = "greengrapes"
	seed_name = "green grape"
	display_name = "green grapevines"
	mutants = list("grapes","whitegrapes")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/sugar = list(1,5), /datum/reagent/drink/juice/grape/green = list(10,10))

/datum/seed/grapes/green/New()
	..()
	set_trait(TRAIT_PRODUCT_COLOUR,"42ed2f")

//Everything else
/datum/seed/peanuts
	name = "peanut"
	seed_name = "peanut"
	display_name = "peanut vines"
	chems = list(/datum/reagent/nutriment = list(1,10))

/datum/seed/peanuts/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"nuts")
	set_trait(TRAIT_PRODUCT_COLOUR,"#c4ae7a")
	set_trait(TRAIT_PLANT_ICON,"bush2")
	set_trait(TRAIT_IDEAL_LIGHT, 6)

/datum/seed/peppercorn
	name = "peppercorn"
	seed_name = "peppercorn"
	display_name = "black pepper"
	chems = list(/datum/reagent/blackpepper = list(10,10))

/datum/seed/peppercorn/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,4)
	set_trait(TRAIT_PRODUCTION,4)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"nuts")
	set_trait(TRAIT_PRODUCT_COLOUR,"#4d4d4d")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_IDEAL_LIGHT, 6)

/datum/seed/cabbage
	name = "cabbage"
	seed_name = "cabbage"
	display_name = "cabbages"
	chems = list(/datum/reagent/nutriment = list(1,7), /datum/reagent/drink/juice/cabbage = list (3, 3))
	kitchen_tag = "cabbage"

/datum/seed/cabbage/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"cabbage")
	set_trait(TRAIT_PRODUCT_COLOUR,"#84bd82")
	set_trait(TRAIT_PLANT_COLOUR,"#6d9c6b")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/banana
	name = "banana"
	seed_name = "banana"
	display_name = "banana tree"
	chems = list(/datum/reagent/drink/juice/banana = list(10,10), /datum/reagent/potassium = list(2,3))
	trash_type = /obj/item/weapon/bananapeel
	kitchen_tag = "banana"

/datum/seed/banana/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_PRODUCT_ICON,"bananas")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffec1f")
	set_trait(TRAIT_PLANT_COLOUR,"#69ad50")
	set_trait(TRAIT_PLANT_ICON,"tree4")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/corn
	name = "corn"
	seed_name = "corn"
	display_name = "ears of corn"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/nutriment/cornoil = list(1,10))
	kitchen_tag = "corn"
	trash_type = /obj/item/weapon/carvable/corncob

/datum/seed/corn/New()
	..()
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_PRODUCT_ICON,"corn")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fff23b")
	set_trait(TRAIT_PLANT_COLOUR,"#87c969")
	set_trait(TRAIT_PLANT_ICON,"corn")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/potato
	name = "potato"
	seed_name = "potato"
	display_name = "potatoes"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/potato = list(10,10))
	kitchen_tag = "potato"

/datum/seed/potato/New()
	..()
	set_trait(TRAIT_PRODUCES_POWER,1)
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"potato")
	set_trait(TRAIT_PRODUCT_COLOUR,"#d4cab4")
	set_trait(TRAIT_PLANT_ICON,"bush2")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/garlic
	name = "garlic"
	seed_name = "garlic"
	display_name = "garlic"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/garlic = list(10,10))
	kitchen_tag = "garlic"

/datum/seed/garlic/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,12)
	set_trait(TRAIT_PRODUCT_ICON,"bulb")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fff8dd")
	set_trait(TRAIT_PLANT_ICON,"stalk")
	set_trait(TRAIT_WATER_CONSUMPTION, 7)

/datum/seed/onion
	name = "onion"
	seed_name = "onion"
	display_name = "onions"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/onion = list(10,10))
	kitchen_tag = "onion"

/datum/seed/onion/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"bulb")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffeedd")
	set_trait(TRAIT_PLANT_ICON,"stalk")
	set_trait(TRAIT_WATER_CONSUMPTION, 5)

/datum/seed/soybean
	name = "soybean"
	seed_name = "soybean"
	display_name = "soybeans"
	chems = list(/datum/reagent/drink/milk/soymilk = list(10,20))
	kitchen_tag = "soybeans"

/datum/seed/soybean/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,4)
	set_trait(TRAIT_PRODUCTION,4)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"bean")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ebe7c0")
	set_trait(TRAIT_PLANT_ICON,"stalk")

/datum/seed/wheat
	name = "wheat"
	seed_name = "wheat"
	display_name = "wheat stalks"
	chems = list(/datum/reagent/nutriment/flour = list(15,15))
	kitchen_tag = "wheat"

/datum/seed/wheat/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"wheat")
	set_trait(TRAIT_PRODUCT_COLOUR,"#dbd37d")
	set_trait(TRAIT_PLANT_COLOUR,"#bfaf82")
	set_trait(TRAIT_PLANT_ICON,"stalk2")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/rice
	name = "rice"
	seed_name = "rice"
	display_name = "rice stalks"
	chems = list(/datum/reagent/nutriment/rice = list(10,15))
	kitchen_tag = "rice"

/datum/seed/rice/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"rice")
	set_trait(TRAIT_PRODUCT_COLOUR,"#d5e6d1")
	set_trait(TRAIT_PLANT_COLOUR,"#8ed17d")
	set_trait(TRAIT_PLANT_ICON,"stalk2")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/carrots
	name = "carrot"
	seed_name = "carrot"
	display_name = "carrots"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/imidazoline = list(3,5), /datum/reagent/drink/juice/carrot = list(10,20))
	kitchen_tag = "carrot"

/datum/seed/carrots/New()
	..()
	set_trait(TRAIT_MATURATION,10)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"carrot")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ff9900")
	set_trait(TRAIT_PLANT_ICON,"carrot")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/weeds
	name = "weeds"
	seed_name = "weed"
	display_name = "weeds"

/datum/seed/weeds/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,-1)
	set_trait(TRAIT_POTENCY,-1)
	set_trait(TRAIT_IMMUTABLE,-1)
	set_trait(TRAIT_PRODUCT_ICON,"flower4")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fceb2b")
	set_trait(TRAIT_PLANT_COLOUR,"#59945a")
	set_trait(TRAIT_PLANT_ICON,"bush6")

/datum/seed/whitebeets
	name = "whitebeet"
	seed_name = "white-beet"
	display_name = "white-beets"
	chems = list(/datum/reagent/nutriment = list(0,20), /datum/reagent/sugar = list(1,5))
	kitchen_tag = "whitebeet"

/datum/seed/whitebeets/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"carrot2")
	set_trait(TRAIT_PRODUCT_COLOUR,"#eef5b0")
	set_trait(TRAIT_PLANT_COLOUR,"#4d8f53")
	set_trait(TRAIT_PLANT_ICON,"carrot2")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/sugarcane
	name = "sugarcane"
	seed_name = "sugarcane"
	display_name = "sugarcanes"
	chems = list(/datum/reagent/sugar = list(4,5))

/datum/seed/sugarcane/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"stalk")
	set_trait(TRAIT_PRODUCT_COLOUR,"#b4d6bd")
	set_trait(TRAIT_PLANT_COLOUR,"#6bbd68")
	set_trait(TRAIT_PLANT_ICON,"stalk3")
	set_trait(TRAIT_IDEAL_HEAT, 298)

/datum/seed/watermelon
	name = "watermelon"
	seed_name = "watermelon"
	display_name = "watermelon vine"
	chems = list(/datum/reagent/nutriment = list(1,6), /datum/reagent/drink/juice/watermelon = list(10,6))

/datum/seed/watermelon/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,1)
	set_trait(TRAIT_PRODUCT_ICON,"vine")
	set_trait(TRAIT_PRODUCT_COLOUR,"#326b30")
	set_trait(TRAIT_PLANT_COLOUR,"#257522")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_FLESH_COLOUR,"#f22c2c")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/pumpkin
	name = "pumpkin"
	seed_name = "pumpkin"
	display_name = "pumpkin vine"
	chems = list(/datum/reagent/nutriment = list(1,6))
	kitchen_tag = "pumpkin"

/datum/seed/pumpkin/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"vine2")
	set_trait(TRAIT_PRODUCT_COLOUR,"#f9ab28")
	set_trait(TRAIT_PLANT_COLOUR,"#bae8c1")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/citrus
	name = "lime"
	seed_name = "lime"
	display_name = "lime trees"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/drink/juice/lime = list(10,20))
	kitchen_tag = "lime"

/datum/seed/citrus/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,15)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#3af026")
	set_trait(TRAIT_PLANT_ICON,"tree")
	set_trait(TRAIT_FLESH_COLOUR,"#3af026")
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/citrus/lemon
	name = "lemon"
	seed_name = "lemon"
	display_name = "lemon trees"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/drink/juice/lemon = list(10,20))
	kitchen_tag = "lemon"

/datum/seed/citrus/lemon/New()
	..()
	set_trait(TRAIT_PRODUCES_POWER,1)
	set_trait(TRAIT_PRODUCT_COLOUR,"#f0e226")
	set_trait(TRAIT_FLESH_COLOUR,"#f0e226")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/citrus/orange
	name = "orange"
	seed_name = "orange"
	display_name = "orange trees"
	kitchen_tag = "orange"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/drink/juice/orange = list(10,20))

/datum/seed/citrus/orange/New()
	..()
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffc20a")
	set_trait(TRAIT_FLESH_COLOUR,"#ffc20a")
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/grass
	name = "grass"
	seed_name = "grass"
	display_name = "grass"
	chems = list(/datum/reagent/nutriment = list(1,20))
	kitchen_tag = "grass"

/datum/seed/grass/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,2)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"grass")
	set_trait(TRAIT_PRODUCT_COLOUR,"#09ff00")
	set_trait(TRAIT_PLANT_COLOUR,"#07d900")
	set_trait(TRAIT_PLANT_ICON,"grass")
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/cocoa
	name = "cocoa"
	seed_name = "cacao"
	display_name = "cacao tree"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/nutriment/coco = list(4,5))

/datum/seed/cocoa/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#cca935")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/cherries
	name = "cherry"
	seed_name = "cherry"
	seed_noun = SEED_NOUN_PITS
	display_name = "cherry tree"
	chems = list(/datum/reagent/nutriment = list(1,15), /datum/reagent/sugar = list(1,15), /datum/reagent/nutriment/cherryjelly = list(10,15))
	kitchen_tag = "cherries"

/datum/seed/cherries/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"cherry")
	set_trait(TRAIT_PRODUCT_COLOUR,"#a80000")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_PLANT_COLOUR,"#2f7d2d")
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/kudzu
	name = "kudzu"
	seed_name = "kudzu"
	display_name = "kudzu vines"
	chems = list(/datum/reagent/nutriment = list(1,50), /datum/reagent/dylovene = list(1,25))

/datum/seed/kudzu/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_SPREAD,2)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#96d278")
	set_trait(TRAIT_PLANT_COLOUR,"#6f7a63")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)

/datum/seed/diona
	name = "diona"
	seed_name = "diona"
	seed_noun = SEED_NOUN_NODES
	display_name = "replicant pods"
	can_self_harvest = 1
	has_mob_product = /mob/living/carbon/alien/diona

/datum/seed/diona/New()
	..()
	set_trait(TRAIT_IMMUTABLE,1)
	set_trait(TRAIT_ENDURANCE,8)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,10)
	set_trait(TRAIT_YIELD,1)
	set_trait(TRAIT_POTENCY,30)
	set_trait(TRAIT_PRODUCT_ICON,"diona")
	set_trait(TRAIT_PRODUCT_COLOUR,"#799957")
	set_trait(TRAIT_PLANT_COLOUR,"#66804b")
	set_trait(TRAIT_PLANT_ICON,"alien4")

/datum/seed/shand
	name = "shand"
	seed_name = "S'randar's hand"
	display_name = "S'randar's hand leaves"
	chems = list(/datum/reagent/bicaridine = list(0,10))
	kitchen_tag = "shand"

/datum/seed/shand/New()
	..()
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"alien3")
	set_trait(TRAIT_PRODUCT_COLOUR,"#378c61")
	set_trait(TRAIT_PLANT_COLOUR,"#378c61")
	set_trait(TRAIT_PLANT_ICON,"tree5")
	set_trait(TRAIT_IDEAL_HEAT, 283)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/mtear
	name = "mtear"
	seed_name = "Messa's tear"
	display_name = "Messa's tear leaves"
	chems = list(/datum/reagent/nutriment/honey = list(1,10), /datum/reagent/kelotane = list(3,5))
	kitchen_tag = "mtear"

/datum/seed/mtear/New()
	..()
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"alien4")
	set_trait(TRAIT_PRODUCT_COLOUR,"#4cc5c7")
	set_trait(TRAIT_PLANT_COLOUR,"#4cc789")
	set_trait(TRAIT_PLANT_ICON,"bush7")
	set_trait(TRAIT_IDEAL_HEAT, 283)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/tobacco
	name = "tobacco"
	seed_name = "tobacco"
	display_name = "tobacco leaves"
	mutants = list("finetobacco", "puretobacco", "badtobacco")
	chems = list(/datum/reagent/tobacco = list(1,10))

/datum/seed/tobacco/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"tobacco")
	set_trait(TRAIT_PRODUCT_COLOUR,"#749733")
	set_trait(TRAIT_PLANT_COLOUR,"#749733")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_IDEAL_HEAT, 299)
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/tobacco/finetobacco
	name = "finetobacco"
	seed_name = "fine tobacco"
	display_name = "fine tobacco leaves"
	chems = list(/datum/reagent/tobacco/fine = list(1,10))

/datum/seed/tobacco/finetobacco/New()
	..()
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_PRODUCT_COLOUR,"#33571b")
	set_trait(TRAIT_PLANT_COLOUR,"#33571b")
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.20)

/datum/seed/tobacco/puretobacco //provides the pure nicotine reagent
	name = "puretobacco"
	seed_name = "succulent tobacco"
	display_name = "succulent tobacco leaves"
	chems = list(/datum/reagent/nicotine = list(1,10))

/datum/seed/tobacco/puretobacco/New()
	..()
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_PRODUCT_COLOUR,"#b7c61a")
	set_trait(TRAIT_PLANT_COLOUR,"#b7c61a")
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.30)

/datum/seed/tobacco/bad
	name = "badtobacco"
	seed_name = "low-grade tobacco"
	display_name = "low-grade tobacco leaves"
	mutants = list("tobacco")
	chems = list(/datum/reagent/tobacco/bad = list(1,10))

/datum/seed/algae
	name = "algae"
	seed_name = "algae"
	display_name = "algae"
	chems = list(
		/datum/reagent/nutriment = list(2,12),
		/datum/reagent/toxin/bromide = list(3,8)
	)
	kitchen_tag = "algae"
	exude_gasses = list(GAS_METHYL_BROMIDE = 3)

/datum/seed/algae/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"algae")
	set_trait(TRAIT_PRODUCT_COLOUR,"#84bd82")
	set_trait(TRAIT_PLANT_COLOUR,"#6d9c6b")
	set_trait(TRAIT_PLANT_ICON,"algae")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/bamboo
	name = "bamboo"
	seed_name = "bamboo"
	display_name = "bamboo"
	chems = list(/datum/reagent/bamboo = list(6,1))
	mutants = null

/datum/seed/bamboo/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,1)
	set_trait(TRAIT_PRODUCT_ICON,"stalk")
	set_trait(TRAIT_PRODUCT_COLOUR, WOOD_COLOR_GENERIC)
	set_trait(TRAIT_PLANT_COLOUR,"#99bc20")
	set_trait(TRAIT_PLANT_ICON,"stalk3")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

// Fruit Expansion

/datum/seed/melon
	name = "melon"
	seed_name = "melon"
	display_name = "melon vine"
	chems = list(/datum/reagent/nutriment = list(1,6), /datum/reagent/drink/juice/melon = list(10,6))

/datum/seed/melon/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,1)
	set_trait(TRAIT_PRODUCT_ICON,"vine")
	set_trait(TRAIT_PRODUCT_COLOUR,"#d4dc26")
	set_trait(TRAIT_PLANT_COLOUR,"#cad72a")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_FLESH_COLOUR,"#f2b32c")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/coffee
	name = "coffee"
	seed_name = "coffee bean"
	display_name = "coffee plant"
	chems = list(/datum/reagent/nutriment/coffee = list(10,10))

/datum/seed/coffee/New()
	..()
	set_trait(TRAIT_MATURATION,4)
	set_trait(TRAIT_PRODUCTION,4)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"nuts")
	set_trait(TRAIT_PRODUCT_COLOUR,"#71503e")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_IDEAL_LIGHT, 7)

/datum/seed/grapes/white
	name = "whitegrapes"
	seed_name = "white grape seeds"
	display_name = "white grapevines"
	mutants = list("grapes","greengrapes")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/sugar = list(1,5), /datum/reagent/drink/juice/grape/white = list(10,10))

/datum/seed/grapes/white/New()
	..()
	set_trait(TRAIT_PRODUCT_ICON,"grapes")
	set_trait(TRAIT_PRODUCT_COLOUR,"#f5efd4")
	set_trait(TRAIT_PLANT_COLOUR,"#378f2e")

/datum/seed/vanilla
	name = "vanilla"
	seed_name = "vanilla flower"
	display_name = "vanilla flower"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/syrup_vanilla = list(4,5))

/datum/seed/vanilla/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffffda")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/pineapple
	name = "pineapples"
	seed_name = "pineapple"
	display_name = "pineapple plant"
	chems = list(/datum/reagent/drink/juice/pineapple = list(10,10), /datum/reagent/enzyme = list(1,5),/datum/reagent/nutriment = list(1,10))
	trash_type = /obj/item/weapon/carvable/corncob/hollowpineapple

/datum/seed/pineapple/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"pineapple")
	set_trait(TRAIT_PRODUCT_COLOUR,"#f6e12d")
	set_trait(TRAIT_PLANT_ICON,"tree4")
	set_trait(TRAIT_FLESH_COLOUR,"#f6ce79")
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/pear
	name = "pears"
	seed_name = "pear"
	display_name = "pear tree"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/juice/pear = list(10,10))

/datum/seed/pear/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"apple")
	set_trait(TRAIT_PRODUCT_COLOUR,"#e1e463")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_FLESH_COLOUR,"#e8e39b")
	set_trait(TRAIT_IDEAL_LIGHT, 4)
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/coconut
	name = "coconuts"
	seed_name = "coconut"
	display_name = "coconut trees"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/drink/coconut = list(10,20))
	trash_type = /obj/item/weapon/carvable/corncob/hollowcoconut

/datum/seed/coconut/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,15)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#a36b09")
	set_trait(TRAIT_PLANT_ICON,"tree4")
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/cinnamon
	name = "cinnamon"
	seed_name = "cinnamon"
	display_name = "cinnamon"
	chems = list(/datum/reagent/cinnamon = list(10,20))

/datum/seed/cinnamon/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"stalk")
	set_trait(TRAIT_PRODUCT_COLOUR,"#cd6139")
	set_trait(TRAIT_PLANT_ICON,"tree2")
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.05)
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)

/datum/seed/olives
	name = "olives"
	seed_name = "olives"
	display_name = "olive tree"
	chems = list(/datum/reagent/nutriment = list(1,20), /datum/reagent/oliveoil = list(10,20))

/datum/seed/olives/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"grapes")
	set_trait(TRAIT_PRODUCT_COLOUR,"#87a46e")
	set_trait(TRAIT_PLANT_COLOUR,"#378f2e")
	set_trait(TRAIT_PLANT_ICON,"vine")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)


// Exotic Edibles

/datum/seed/gukhe
	name = "gukhe"
	seed_name = "gukhe bloom"
	display_name = "gukhe bloom"
	chems = list(/datum/reagent/nutriment = list(2,12), /datum/reagent/capsaicin = list(10,10))
	kitchen_tag = "algae"

/datum/seed/gukhe/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"algae")
	set_trait(TRAIT_PRODUCT_COLOUR,"#e93e1c")
	set_trait(TRAIT_PLANT_COLOUR,"#6d9c6b")
	set_trait(TRAIT_PLANT_ICON,"algae")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/hrukhza
	name = "hrukhza"
	seed_name = "hrukhza flower"
	display_name = "hrukhza flower"
	chems = list(/datum/reagent/drink/alien/unathijuice = list(10,10), /datum/reagent/nutriment = list(5,5))

/datum/seed/hrukhza/New()
	..()
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"tobacco")
	set_trait(TRAIT_PRODUCT_COLOUR,"#126028")
	set_trait(TRAIT_PLANT_COLOUR,"#749733")
	set_trait(TRAIT_PLANT_ICON,"vine2")
	set_trait(TRAIT_IDEAL_HEAT, 299)
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/okrri
	name = "okrri"
	seed_name = "o'krri mushroom"
	seed_noun = SEED_NOUN_SPORES
	display_name = "o'krri mushrooms"
	chems = list(/datum/reagent/nutriment = list(1,25), /datum/reagent/psilocybin = list(1,3))
	splat_type = /obj/effect/vine
	kitchen_tag = "mushroom"

/datum/seed/okrri/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_POTENCY,1)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom4")
	set_trait(TRAIT_PRODUCT_COLOUR,"#e0e926")
	set_trait(TRAIT_PLANT_COLOUR,"#caa859")
	set_trait(TRAIT_PLANT_ICON,"mushroom")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_IDEAL_HEAT, 288)
	set_trait(TRAIT_LIGHT_TOLERANCE, 4)

/datum/seed/ximikoa
	name = "ximikoa"
	seed_name = "ximi'koa stalks"
	display_name = "ximi'koa"
	chems = list(/datum/reagent/nutriment = list(1,2), /datum/reagent/sugar = list(4,5))

/datum/seed/ximikoa/New()
	..()
	set_trait(TRAIT_MATURATION,7)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,5)
	set_trait(TRAIT_PRODUCT_ICON,"flower6")
	set_trait(TRAIT_PRODUCT_COLOUR,"#e12626")
	set_trait(TRAIT_PLANT_COLOUR,"#c54646")
	set_trait(TRAIT_PLANT_ICON,"flower4")
	set_trait(TRAIT_IDEAL_LIGHT, 7)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.05)
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)

/datum/seed/qokkloa
	name = "qokkloa"
	seed_name = "qokk'loa moss"
	display_name = "qokk'loa moss"
	chems = list(/datum/reagent/space_drugs = list(1,25), /datum/reagent/ethanol/alien/qokkloa = list(10,10) )

/datum/seed/qokkloa/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,3)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"alien3")
	set_trait(TRAIT_PRODUCT_COLOUR,"#8c4637")
	set_trait(TRAIT_PLANT_COLOUR,"#37808c")
	set_trait(TRAIT_PLANT_ICON,"tree5")
	set_trait(TRAIT_IDEAL_HEAT, 283)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/aghrassh
	name = "aghrassh"
	seed_name = "aghrassh"
	display_name = "aghrassh trees"
	chems = list(/datum/reagent/nutriment = list(1,20))

/datum/seed/aghrassh/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,15)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#866523")
	set_trait(TRAIT_PLANT_ICON,"tree")
	set_trait(TRAIT_PHOTOSYNTHESIS, 1)

/datum/seed/gummen
	name = "gummen"
	seed_name = "gummen"
	display_name = "gummen beans"
	chems = list(/datum/reagent/nutriment = list(10,20))

/datum/seed/gummen/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,4)
	set_trait(TRAIT_PRODUCTION,4)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"bean")
	set_trait(TRAIT_PRODUCT_COLOUR,"#36a32f")
	set_trait(TRAIT_PLANT_ICON,"stalk")

/datum/seed/flower/affelerin
	name = "affelerin"
	seed_name = "affelerin"
	display_name = "affelerin flower"
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/drink/affelerin = list(10,10))

/datum/seed/flower/affelerin/New()
	..()
	set_trait(TRAIT_POTENCY,20)
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,6)
	set_trait(TRAIT_PRODUCT_ICON,"flower3")
	set_trait(TRAIT_PRODUCT_COLOUR,"#31d496")
	set_trait(TRAIT_PLANT_ICON,"flower3")
	set_trait(TRAIT_FLESH_COLOUR,"#ac43e0")
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 0.5)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

/datum/seed/berry/iridast
	name = "iridast"
	seed_name = "iridast"
	display_name = "iridast bush"
	mutants = list("berries","glowberries","poisonberries","blueberries")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/ethanol/iridast = list(10,10), /datum/reagent/psilocybin = list(1,3))
	kitchen_tag = "berries"

/datum/seed/berry/iridast/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_JUICY,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"berry")
	set_trait(TRAIT_PRODUCT_COLOUR,"#fa68ff")
	set_trait(TRAIT_PLANT_ICON,"bush")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)

//Dude, weed lmao
/datum/seed/cannabis
	name = "cannabis"
	seed_name = "cannabis"
	mutants = list("crimson kush", "blueberry chronic", "emerald dream", "purple haze", "ghost og", "blunt relief", "aurora borealis", "thunder punch", "stardust sativa", "galactic glue")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(5,8))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

//I'm color blind please feel free to tweak this color
/datum/seed/cannabis/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_PRODUCT_ICON,"cannabis")
	set_trait(TRAIT_PRODUCT_COLOUR,"#09da09")
	set_trait(TRAIT_PLANT_ICON,"tree3")
	set_trait(TRAIT_PLANT_COLOUR,"#06a306")
	set_trait(TRAIT_IDEAL_HEAT, 298)
	set_trait(TRAIT_IDEAL_LIGHT, 6)
	set_trait(TRAIT_WATER_CONSUMPTION, 6)

/datum/seed/cannabis/crimson_kush
	name = "crimson kush"
	seed_name = "crimson kush"
	mutants = list("scarlet stinger","ruby rush")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,5), /datum/reagent/paracetamol = list(1,4))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
//red means pain killer

/datum/seed/cannabis/crimson_kush/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10.5)
	set_trait(TRAIT_PRODUCT_COLOUR,"#b13e0d")
	set_trait(TRAIT_PLANT_COLOUR,"#a44404")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.2)

//Scarlet Stinger
/datum/seed/cannabis/scarlet_stinger
    name = "scarlet stinger"
    seed_name = "scarlet stinger"
    mutants = null
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,6), /datum/reagent/tramadol = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/scarlet_stinger/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,3)
    set_trait(TRAIT_POTENCY,10.7)
    set_trait(TRAIT_PRODUCT_COLOUR,"#cc2e1b")
    set_trait(TRAIT_PLANT_COLOUR,"#b22716")
    set_trait(TRAIT_WATER_CONSUMPTION, 6.4)

//Ruby Rush
/datum/seed/cannabis/ruby_rush
    name = "ruby rush"
    seed_name = "ruby rush"
    mutants = null
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,7), /datum/reagent/deletrathol = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/ruby_rush/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,3)
    set_trait(TRAIT_POTENCY,10.8)
    set_trait(TRAIT_PRODUCT_COLOUR,"#d92323")
    set_trait(TRAIT_PLANT_COLOUR,"#c41212")
    set_trait(TRAIT_WATER_CONSUMPTION, 6.5)

//Blueberry Chronic
/datum/seed/cannabis/blueberry_chronic
	name = "blueberry chronic"
	seed_name = "blueberry chronic"
 	mutants = list("indigo frost", "sapphire smoke")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,5), /datum/reagent/dexalin = list(1,4))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
//blue means 02 related

/datum/seed/cannabis/blueberry_chronic/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10.6)
	set_trait(TRAIT_PRODUCT_COLOUR,"#150db1")
	set_trait(TRAIT_PLANT_COLOUR,"#0c04a4")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.2)

//Indigo Frost
/datum/seed/cannabis/indigo_frost
    name = "indigo frost"
    seed_name = "indigo frost"
    mutants = null
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,6), /datum/reagent/cryoxadone = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
	//smoke this in space

/datum/seed/cannabis/indigo_frost/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,3)
    set_trait(TRAIT_POTENCY,10.7)
    set_trait(TRAIT_PRODUCT_COLOUR,"#0011ff")
    set_trait(TRAIT_PLANT_COLOUR,"#000ddf")
    set_trait(TRAIT_WATER_CONSUMPTION, 6.4)

//Sapphire Smoke
/datum/seed/cannabis/sapphire_smoke
    name = "sapphire smoke"
    seed_name = "sapphire smoke"
    mutants = null
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,6), /datum/reagent/leporazine = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
	//stabalize body temp

/datum/seed/cannabis/sapphire_smoke/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,2)
    set_trait(TRAIT_POTENCY,10.8)
    set_trait(TRAIT_PRODUCT_COLOUR,"#0f17d4")
    set_trait(TRAIT_PLANT_COLOUR,"#0d14b5")
    set_trait(TRAIT_WATER_CONSUMPTION, 6.3)

//Emerald Dream
/datum/seed/cannabis/emerald_dream
	name = "emerald dream"
	seed_name = "emerald dream"
	mutants = list("jade mist")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,7), /datum/reagent/hyronalin = list(1,3))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
//green is rad heal

/datum/seed/cannabis/emerald_dream/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,3)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10.7)
	set_trait(TRAIT_PRODUCT_COLOUR,"#00b300")
	set_trait(TRAIT_PLANT_COLOUR,"#007a00")
	set_trait(TRAIT_WATER_CONSUMPTION, 5.8)

//Jade Mist
/datum/seed/cannabis/jade_mist
    name = "jade mist"
    seed_name = "jade mist"
    mutants = null
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,6), /datum/reagent/arithrazine = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/jade_mist/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,3)
    set_trait(TRAIT_POTENCY,10.8)
    set_trait(TRAIT_PRODUCT_COLOUR,"#00cc66")
    set_trait(TRAIT_PLANT_COLOUR,"#009a4d")
    set_trait(TRAIT_WATER_CONSUMPTION, 5.9)

//Purple Haze
/datum/seed/cannabis/purple_haze
	name = "purple haze"
	seed_name = "purple haze"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,7), /datum/reagent/inaprovaline = list(1,3))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/purple_haze/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,10.8)
	set_trait(TRAIT_PRODUCT_COLOUR,"#800080")
	set_trait(TRAIT_PLANT_COLOUR,"#660066")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.0)

//Ghost OG
/datum/seed/cannabis/ghost_og
	name = "ghost og"
	seed_name = "ghost og"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(8,6), /datum/reagent/adrenaline = list(1,2))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/ghost_og/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,10.9)
	set_trait(TRAIT_PRODUCT_COLOUR,"#e0e0e0")
	set_trait(TRAIT_PLANT_COLOUR,"#c0c0c0")
	set_trait(TRAIT_WATER_CONSUMPTION, 5.6)

//Blunt Relief
/datum/seed/cannabis/solar_flare
	name = "blunt relief"
	seed_name = "blunt relief"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(5,8), /datum/reagent/bicaridine = list(1,3))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

//blunt truama

/datum/seed/cannabis/solar_flare/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,3)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,11.0)
	set_trait(TRAIT_PRODUCT_COLOUR,"#ff4500")
	set_trait(TRAIT_PLANT_COLOUR,"#cc3700")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.4)

//Aurora Borealis
/datum/seed/cannabis/aurora_borealis
	name = "aurora borealis"
	seed_name = "aurora borealis"
	mutants = list("amethyst cloud")
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,6), /datum/reagent/kelotane = list(1,2))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

	/datum/seed/cannabis/aurora_borealis/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,11.1)
	set_trait(TRAIT_PRODUCT_COLOUR,"#0077b6")
	set_trait(TRAIT_PLANT_COLOUR,"#005f8a")
	set_trait(TRAIT_WATER_CONSUMPTION, 5.9)
// burn heal

//Amethyst Cloud
/datum/seed/cannabis/amethyst_cloud
    name = "amethyst cloud"
    seed_name = "amethyst cloud"
    mutants = list("crimson haze", "violet mist")
    chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,6), /datum/reagent/dermaline = list(1,3))
    kitchen_tag = "cannabis"
    cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/aurora_borealis/amethyst_cloud/New()
    ..()
    set_trait(TRAIT_HARVEST_REPEAT,2)
    set_trait(TRAIT_YIELD,3)
    set_trait(TRAIT_POTENCY,11.0)
    set_trait(TRAIT_PRODUCT_COLOUR,"#9b4f9b")
    set_trait(TRAIT_PLANT_COLOUR,"#6a3f6a")
    set_trait(TRAIT_WATER_CONSUMPTION, 6.0)

	//very burn heal


//Thunder Punch
/datum/seed/cannabis/thunder_punch
	name = "thunder punch"
	seed_name = "thunder punch"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(7,5), /datum/reagent/hyperzine = list(1,2))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint

/datum/seed/cannabis/thunder_punch/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,3)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,11.3)
	set_trait(TRAIT_PRODUCT_COLOUR,"#ffcc00")
	set_trait(TRAIT_PLANT_COLOUR,"#cc9900")
	set_trait(TRAIT_WATER_CONSUMPTION, 5.7)
	//hulk weed

//Stardust Sativa
/datum/seed/cannabis/stardust_sativa
	name = "stardust sativa"
	seed_name = "stardust sativa"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,6), /datum/reagent/antidexafen = list(1,3))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
	//anti cold/flu weed

/datum/seed/cannabis/stardust_sativa/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,11.4)
	set_trait(TRAIT_PRODUCT_COLOUR,"#8a2be2")
	set_trait(TRAIT_PLANT_COLOUR,"#6a1bb5")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.3)

//Galactic Glue
/datum/seed/cannabis/galactic_glue
	name = "galactic glue"
	seed_name = "galactic glue"
	mutants = null
	chems = list(/datum/reagent/nutriment = list(1,10), /datum/reagent/thc = list(6,7), /datum/reagent/hyptricordrazine = list(1,3))
	kitchen_tag = "cannabis"
	cigarette_type = /obj/item/clothing/mask/smokable/cigarette/rolled/joint
//Tricordrazine weed
/datum/seed/cannabis/galactic_glue/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,2)
	set_trait(TRAIT_YIELD,3)
	set_trait(TRAIT_POTENCY,12)
	set_trait(TRAIT_PRODUCT_COLOUR,"#f0f0f0")
	set_trait(TRAIT_PLANT_COLOUR,"#d0d0d0")
	set_trait(TRAIT_WATER_CONSUMPTION, 6.4)
