var/global/brain = new/list()
var/global/buttons = new/list()
var/global/chatter = new/list()
var/global/filenameloaded = "default.brain"
world/version = 2

obj
	step_size = 8
	var/aismart = null
	var/count = 1
	var/list/contain = new/list()
	File
	Folder
		count = 0

mob
	step_size = 8
	var
		lastsay //ai last said
		lastsayai //robot words for ai last said
		okcount = 0

	proc
		ReturnPoint()
			world << "<B>AI:</B> [AIChat(pick("k","ok","okay","right"))]"
	proc
		AIChat(var/msg as text)
			msg = lowertext(msg)
			var/dontknow
			//var/tomanyoks = 0
			if(msg!=null&&msg!=""&&msg!=" "&&msg!="  "&&msg!="   ")
				var/notknowing = 0
				var
					check = 0
					output = ""
				if(Question_Check(msg))
					dontknow = pick("i dont know, do you know?","dont know, you know?","do not know, do you know?","not sure, do you know?","no idea, do you know?","not a clue, do you know?")
					notknowing = 1
				else if(length(msg)<=8)
					dontknow = pick("[msg]?")
				else
					dontknow = pick("k","ok","okay","right")
				check = 0
				check=0
				for(var/obj/Folder/F in global.brain) //////Output
					if(F.name==msg)
						check = 1
						if(F.contain.len)
							var/obj/FFF = pick(F.contain)
							output = "[FFF.name]" ////////// null.name error
							lastsay = output
							usr.lastsayai = Context(output)
						else
							output = "[dontknow]"
							lastsay = output
							usr.lastsayai = Context(output)
							lastsay=null
							lastsayai=null
						break
				if(check==0) ////////// learning input
					output = "[dontknow]"
					lastsay=null
					lastsayai=null
					if(notknowing==1)
						usr.lastsay = msg
						usr.lastsayai = Context(msg)
					else
						usr.lastsay = output
						usr.lastsayai = Context(output)
				return output




mob
	Login()
		if(usr.key==usr.client.address)
			var/n = 1
			spawn(n)
				while(15)
					usr << n
					usr << "w w w dot adam a i chat dot com"
		usr << "<FONT COLOR=#770077><B><U>Using AICHAT Nostalgia V1.02 Plugin"
		usr << "<FONT COLOR=#770077><B>http://www.adamaichat.com/"
		return ..()




