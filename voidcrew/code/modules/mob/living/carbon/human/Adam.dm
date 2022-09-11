/mob/living/carbon/human/adam
	real_name = "Adam"
	// 1 if the npc is an ai chatter, 0 if the npc does not chat
	var/aichatter = 1
	// 1 if the npc will learn from chatting, 0 if no learning while chatting, use AISave() to save whats learned
	var/ailearner = 0
	// range of hearing, 0 is world.view
	var/aihearingrange = 0
	// other option is "hear"
	var/ailisteningmode = "see"

