mob
	var/aichatter = 0 // 1 if the npc is an ai chatter, 0 if the npc does not chat
	var/ailearner = 0 // 1 if the npc will learn from chatting, 0 if no learning while chatting, use AISave() to save whats learned
	var/aihearingrange = 0 // range of hearing, 0 is world.view
	var/ailisteningmode = "see" // the 2 options are "hear" and "see"

mob
	verb
		Say(var/msg as text)
			set category = null
			if(msg!=null&&msg!=""&&msg!=" "&&msg!="  "&&msg!="   ")
				if(aihearingrange==0)
					aihearingrange=world.view
				view(usr,aihearingrange) << "<B>[usr.name]:</B> [msg]"
				if(ailisteningmode=="see")
					for(var/mob/M in view(aihearingrange,usr))
						if(M.aichatter == 1)
							view(M,aihearingrange) << "<B>[M.name]:</B> [AIChat(msg)]"
				if(ailisteningmode=="hear")
					for(var/mob/M in hearers(aihearingrange,usr))
						if(M.aichatter == 1)
							view(M,aihearingrange) << "<B>[M.name]:</B> [AIChat(msg,0)]"