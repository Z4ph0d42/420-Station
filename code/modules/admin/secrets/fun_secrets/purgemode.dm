/datum/admin_secret_item/fun_secret/purge_mode
	name = "Purge Mode(Everyone is an antagonist)"

/datum/admin_secret_item/fun_secret/purge_mode/execute(var/mob/user)
	. = ..()
	if(.)
		var/Continue = alert(usr,"This will turn all players in to random Antagonists. Continue?","Purge Mode","Yes","No")
		if(Continue != "Yes")
			return
		var/list/antag_types = list()
		for(var/antag_type in GLOB.all_antag_types_)
			var/datum/antagonist/antag = GLOB.all_antag_types_[antag_type]
			if(antag)
				antag_types += antag
		if(antag_types.len)
			for(var/datum/mind/M in SSticker.minds)
				if(M.current && istype(M.current,/mob/living/carbon/human))
					var/datum/antagonist/antag = pick(antag_types)
					antag.add_antagonist(M, 1, 0, 0, 0, 0)