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
