/datum/job/assistant
	title = "Vagabond"
	department = "Civilian"
	department_flag = CIV

	total_positions = -1
	spawn_positions = -1
	supervisors = "the Captain"
	economic_power = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	alt_titles = list("Technical Assistant","Medical Intern","Research Assistant","Visitor", "Passenger")
	outfit_type = /decl/hierarchy/outfit/job/assistant
	wage = WAGE_NONE //Get a job ya lazy bum
	

/datum/job/assistant/get_access()
	return list()

/datum/job/clown
	title = "Clown"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	economic_power = 2
	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew)
	minimal_access = list()	//See /datum/job/assistant/get_access()
	minimal_player_age = 4
	outfit_type = /decl/hierarchy/outfit/clown
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	alt_titles = list(
		"Clown", "Jester", "Joker"
		)

/datum/job/clown/get_description_blurb()
	return "Clowning is a profession where you have to be able to adapt to any situation. You need to be flexible, robust and quick-witted. Your job requires you to be creative and have a good sense of humor. A clown's job is not just about making people laugh."
