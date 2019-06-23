/*
These are used by machines when created to initialize their components to nonstandard configurations.
They are abstracted from machines to potentially share code and simplify inheritance.
Do not work with lazy-initialized parts.
*/

/obj/machinery
	var/list/stock_part_presets  // Format: assotiative list of decl path -> number to apply.

/decl/stock_part_preset
	var/expected_part_type

/decl/stock_part_preset/proc/apply(obj/machinery/machine, obj/item/weapon/stock_parts/part)
	part.on_uninstall(machine)
	do_apply(machine, part)
	part.on_install(machine)

/decl/stock_part_preset/proc/do_apply(obj/machinery/machine, obj/item/weapon/stock_parts/part)

// Base subtypes. Will generally be enough to modify vars on subtypes of these.

/decl/stock_part_preset/radio
	expected_part_type = /obj/item/weapon/stock_parts/radio
	var/frequency
	var/filter
	var/encryption
	var/id_tag_modifier  // Will be appended to the machine's id_tag, if any.

/decl/stock_part_preset/radio/do_apply(obj/machinery/machine, obj/item/weapon/stock_parts/radio/part)
	if(frequency || filter)
		part.set_frequency(frequency || part.frequency, filter || part.filter)
	if(encryption)
		part.encryption = encryption
	if(id_tag_modifier)
		part.id_tag += id_tag_modifier

/decl/stock_part_preset/radio/basic_transmitter
	expected_part_type = /obj/item/weapon/stock_parts/radio/transmitter/basic
	var/transmit_on_change
	var/transmit_on_tick

/decl/stock_part_preset/radio/basic_transmitter/do_apply(obj/machinery/machine, obj/item/weapon/stock_parts/radio/transmitter/basic/part)
	..()
	if(transmit_on_change)
		part.transmit_on_change = list()
		for(var/key in transmit_on_change)
			part.transmit_on_change[key] = decls_repository.get_decl(transmit_on_change[key])

	if(transmit_on_tick)
		part.transmit_on_tick = list()
		for(var/key in transmit_on_tick)
			part.transmit_on_tick[key] = decls_repository.get_decl(transmit_on_tick[key])

/decl/stock_part_preset/radio/event_transmitter
	expected_part_type = /obj/item/weapon/stock_parts/radio/transmitter/on_event
	var/event
	var/transmit_on_event

/decl/stock_part_preset/radio/event_transmitter/do_apply(obj/machinery/machine, obj/item/weapon/stock_parts/radio/transmitter/on_event/part)
	..()

	if(event)
		part.event = decls_repository.get_decl(event)

	if(transmit_on_event)
		part.transmit_on_event = list()
		for(var/key in transmit_on_event)
			part.transmit_on_event[key] = decls_repository.get_decl(transmit_on_event[key])

/decl/stock_part_preset/radio/receiver
	expected_part_type = /obj/item/weapon/stock_parts/radio/receiver
	var/receive_and_write
	var/receive_and_call

/decl/stock_part_preset/radio/receiver/do_apply(obj/machinery/machine, obj/item/weapon/stock_parts/radio/receiver/part)
	..()

	if(receive_and_write)
		part.receive_and_write = list()
		for(var/key in receive_and_write)
			part.receive_and_write[key] = decls_repository.get_decl(receive_and_write[key])

	if(receive_and_call)
		part.receive_and_call = list()
		for(var/key in receive_and_call)
			part.receive_and_call[key] = decls_repository.get_decl(receive_and_call[key])