/obj/structure/salvageable
	name = "broken macninery"
	desc = "Broken beyond repair, but looks like you can still salvage something from this."
	icon = 'icons/obj/salvageable.dmi'
	density = TRUE
	anchored = TRUE
	var/salvageable_parts = list()

/obj/structure/salvageable/proc/dismantle()
	new /obj/machinery/constructable_frame/machine_frame (src.loc)
	for(var/path in salvageable_parts)
		if(prob(salvageable_parts[path]))
			new path (loc)
	return

/obj/structure/salvageable/attackby(obj/item/I, mob/user)
	if(iscrowbar(I))
		to_chat(user, SPAN_NOTICE("You start salvage anything useful from \the [src]."))
		if(iscrowbar(I))
			dismantle()
			qdel(src)
			return

//Types themself, use them, but not the parent object

/obj/structure/salvageable/machine
	name = "broken machine"
	icon_state = "machine"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 80,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/capacitor = 40,
		/obj/item/weapon/stock_parts/capacitor = 40,
		/obj/item/weapon/stock_parts/scanning_module = 40,
		/obj/item/weapon/stock_parts/scanning_module = 40,
		/obj/item/weapon/stock_parts/manipulator = 40,
		/obj/item/weapon/stock_parts/manipulator = 40,
		/obj/item/weapon/stock_parts/micro_laser = 40,
		/obj/item/weapon/stock_parts/micro_laser = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/capacitor/adv = 20,
		/obj/item/weapon/stock_parts/scanning_module/adv = 20,
		/obj/item/weapon/stock_parts/manipulator/nano = 20,
		/obj/item/weapon/stock_parts/micro_laser/high = 20,
		/obj/item/weapon/stock_parts/matter_bin/adv = 20,
		/obj/item/weapon/stock_parts/manipulator/pico = 5,
		/obj/item/weapon/stock_parts/matter_bin/super = 5,
		/obj/item/weapon/stock_parts/micro_laser/ultra = 5,
		/obj/item/weapon/stock_parts/scanning_module/phasic = 5
	)

/obj/structure/salvageable/machine/Initialize()
	. = ..()
	icon_state = "machine[rand(0,6)]"

/obj/structure/salvageable/computer
	name = "broken computer"
	icon_state = "computer"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/capacitor = 60,
		/obj/item/weapon/stock_parts/capacitor = 60,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/capacitor/adv = 30,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 20,
		/obj/item/weapon/stock_parts/capacitor/super = 5
	)
obj/structure/salvageable/computer/Initialize()
	. = ..()
	icon_state = "computer[rand(0,7)]"

/obj/structure/salvageable/autolathe
	name = "broken autolathe"
	icon_state = "autolathe"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 80,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/capacitor = 40,
		/obj/item/weapon/stock_parts/scanning_module = 40,
		/obj/item/weapon/stock_parts/manipulator = 40,
		/obj/item/weapon/stock_parts/micro_laser = 40,
		/obj/item/weapon/stock_parts/micro_laser = 40,
		/obj/item/weapon/stock_parts/micro_laser = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/matter_bin = 40,
		/obj/item/weapon/stock_parts/capacitor/adv = 20,
		/obj/item/weapon/stock_parts/micro_laser/high = 20,
		/obj/item/weapon/stock_parts/micro_laser/high = 20,
		/obj/item/weapon/stock_parts/matter_bin/adv = 20,
		/obj/item/weapon/stock_parts/matter_bin/adv = 20,
		/obj/item/weapon/stock_parts/circuitboard/autolathe = 5,
		/obj/item/stack/material/steel{amount = 20} = 40,
		/obj/item/stack/material/glass{amount = 20} = 40,
		/obj/item/stack/material/plastic{amount = 20} = 40,
		/obj/item/stack/material/plasteel{amount = 10} = 40,
		/obj/item/stack/material/silver{amount = 10} = 20,
		/obj/item/stack/material/gold{amount = 10} = 20,
		/obj/item/stack/material/phoron{amount = 10} = 20,
		/obj/item/stack/material/uranium{amount = 3} = 5,
		/obj/item/stack/material/diamond{amount = 1} = 1
	)

/obj/structure/salvageable/implant_container
	name = "old container"
	icon_state = "implant-container"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 80,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/implant/death_alarm = 15,
		/obj/item/weapon/implant/explosive = 10,
		/obj/item/weapon/implant/freedom = 5,
		/obj/item/weapon/implant/tracking = 10,
		/obj/item/weapon/implant/chem = 10,
		/datum/robolimb/bishop = 20,
		/datum/robolimb/bishop/rook = 20,
		/datum/robolimb/bishop/alt = 20,
		/datum/robolimb/bishop/alt/monitor = 20,
		/datum/robolimb/hephaestus = 20,
		/datum/robolimb/hephaestus/alt = 10,
		/datum/robolimb/hephaestus/titan = 10,
		/datum/robolimb/hephaestus/alt/monitor = 20,
		/obj/item/weapon/implantcase = 30,
		/obj/item/weapon/implanter = 30,
		/obj/item/stack/material/steel{amount = 10} = 30,
		/obj/item/stack/material/glass{amount = 10} = 30,
		/obj/item/stack/material/silver{amount = 10} = 30
	)

obj/structure/salvageable/implant_container/Initialize()
	. = ..()
	icon_state = "implant_container[rand(0,1)]"

/obj/structure/salvageable/data
	name = "broken data storage"
	icon_state = "data"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/advanced = 30,
		/obj/item/weapon/stock_parts/computer/hard_drive/advanced = 30,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 20
	)

obj/structure/salvageable/data/Initialize()
	. = ..()
	icon_state = "data[rand(0,1)]"

/obj/structure/salvageable/server
	name = "broken server"
	icon_state = "server"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/network_card = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 40,
		/obj/item/weapon/stock_parts/subspace/amplifier = 40,
		/obj/item/weapon/stock_parts/subspace/amplifier = 40,
		/obj/item/weapon/stock_parts/subspace/analyzer = 40,
		/obj/item/weapon/stock_parts/subspace/analyzer = 40,
		/obj/item/weapon/stock_parts/subspace/ansible = 40,
		/obj/item/weapon/stock_parts/subspace/ansible = 40,
		/obj/item/weapon/stock_parts/subspace/transmitter = 40,
		/obj/item/weapon/stock_parts/subspace/transmitter = 40,
		/obj/item/weapon/stock_parts/subspace/crystal = 30,
		/obj/item/weapon/stock_parts/subspace/crystal = 30,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 20
	)

obj/structure/salvageable/server/Initialize()
	. = ..()
	icon_state = "server[rand(0,1)]"

/obj/structure/salvageable/personal
	name = "personal terminal"
	icon_state = "personal"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/integrated_circuit/output/led = 40,
		/obj/item/stack/material/glass{amount = 5} = 70,
		/obj/item/trash/material/circuit = 60,
		/obj/item/trash/material/metal = 60,
		/obj/item/weapon/stock_parts/computer/network_card = 60,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 40,
		/obj/item/weapon/stock_parts/computer/network_card/wired = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit = 60,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 50,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic/small = 30,
		/obj/item/weapon/stock_parts/computer/hard_drive = 60,
		/obj/item/weapon/stock_parts/computer/hard_drive/advanced = 40
		//obj/random/lathe_disk = 40,
		//obj/random/lathe_disk/advanced = 10,
	)

obj/structure/salvageable/personal/Initialize()
	. = ..()
	icon_state = "personal[rand(0,12)]"
	new /obj/structure/table/reinforced (loc)

/obj/structure/salvageable/bliss
	name = "strange terminal"
	icon_state = "bliss"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 60,
		/obj/item/weapon/stock_parts/computer/hard_drive/cluster = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/advanced = 40,
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/super = 10,
		/obj/item/weapon/stock_parts/capacitor/super = 5,
		/obj/item/weapon/stock_parts/scanning_module/phasic = 5,
		/obj/item/weapon/stock_parts/manipulator/nano = 5,
		/obj/item/weapon/stock_parts/micro_laser/high = 5
	)

obj/structure/salvageable/bliss/Initialize()
	. = ..()
	icon_state = "bliss[rand(0,1)]"

/obj/structure/salvageable/bliss/attackby(obj/item/I, mob/user)
	if(iscrowbar(I))
		to_chat(user, SPAN_NOTICE("You start salvage anything useful from \the [src]."))
		if(iscrowbar(I))
			dismantle()
			qdel(src)
			return

/obj/structure/salvageable/computer_os
	name = "broken computer"
	icon_state = "os-computer"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/weapon/stock_parts/capacitor = 60,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 40
	)

/obj/structure/salvageable/implant_container_os
	name = "old container"
	icon_state = "os-container"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 80,
		/obj/item/weapon/implant/death_alarm = 30,
		/obj/item/weapon/implant/explosive = 20,
		/obj/item/weapon/implant/freedom = 20,
		/obj/item/weapon/implant/tracking = 30,
		/obj/item/weapon/implant/chem = 30,
		/datum/robolimb/bishop = 20,
		/datum/robolimb/bishop/rook = 20,
		/datum/robolimb/bishop/alt = 20,
		/datum/robolimb/bishop/alt/monitor = 20,
		/datum/robolimb/hephaestus = 20,
		/datum/robolimb/hephaestus/alt = 10,
		/datum/robolimb/hephaestus/titan = 10,
		/datum/robolimb/hephaestus/alt/monitor = 20,
		/obj/item/weapon/implantcase = 30,
		/obj/item/weapon/implanter = 30
	)

/obj/structure/salvageable/data_os
	name = "broken data storage"
	icon_state = "os-data"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 90,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 60,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/super = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/super = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/cluster = 50,
		/obj/item/weapon/stock_parts/computer/network_card/wired = 40
	)

/obj/structure/salvageable/server_os
	name = "broken server"
	icon_state = "os-server"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/stack/material/glass{amount = 5} = 90,
		/obj/item/weapon/stock_parts/computer/network_card/wired = 40,
		/obj/item/weapon/stock_parts/computer/network_card/wired = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 40,
		/obj/item/weapon/stock_parts/subspace/amplifier = 40,
		/obj/item/weapon/stock_parts/subspace/amplifier = 40,
		/obj/item/weapon/stock_parts/subspace/analyzer = 40,
		/obj/item/weapon/stock_parts/subspace/analyzer = 40,
		/obj/item/weapon/stock_parts/subspace/ansible = 40,
		/obj/item/weapon/stock_parts/subspace/ansible = 40,
		/obj/item/weapon/stock_parts/subspace/transmitter = 40,
		/obj/item/weapon/stock_parts/subspace/transmitter = 40,
		/obj/item/weapon/stock_parts/subspace/crystal = 30,
		/obj/item/weapon/stock_parts/subspace/crystal = 30,
		/obj/item/weapon/stock_parts/computer/network_card/wired = 20
	)

/obj/structure/salvageable/console_os
	name = "pristine console"
	desc = "Despite being in pristine condition this console doesn't respond to anything, but looks like you can still salvage something from this."
	icon_state = "os_console"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/advanced = 90,
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/super = 45,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/weapon/stock_parts/capacitor = 60,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 40
	)

/obj/structure/salvageable/console_broken_os
	name = "broken console"
	icon_state = "os_console_broken"
	salvageable_parts = list(
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/advanced = 50,
		/obj/item/weapon/stock_parts/computer/hard_drive/portable/advanced = 25,
		/obj/item/stack/cable_coil{amount = 5} = 90,
		/obj/item/weapon/stock_parts/console_screen = 80,
		/obj/item/weapon/stock_parts/capacitor = 60,,
		/obj/item/weapon/stock_parts/computer/processor_unit/small = 40,
		/obj/item/weapon/stock_parts/computer/processor_unit/photonic = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/card_slot = 40,
		/obj/item/weapon/stock_parts/computer/network_card/advanced = 40
	)