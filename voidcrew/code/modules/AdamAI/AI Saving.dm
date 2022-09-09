var/global/cleanup = list()
var/global/con1 = list()
var/global/con2 = list()


proc/Auto_Load()
	sleep(10)
	world << "<FONT COLOR=#770077><B>AI: Loading quick save \"default.brain\""

	if(fexists("savefile/brain.sav"))
		var/savefile/F = new("savefile/brain.sav")
		var/mob/m = new/mob()
		m.Read(F,1)
		F["Brain"] >> global.brain
		F["Context Version"] >> global.contextversion
		contextversiontest()
		sleep(20)
		world << "<FONT COLOR=#770077><B>AI: Using AI Chat Nostalgia brain.sav file."
		del(m)
	else if(fexists("brain.sav"))
		var/savefile/F = new("brain.sav")
		var/mob/m = new/mob()
		m.Read(F,1)
		F["Brain"] >> global.brain
		F["Context Version"] >> global.contextversion
		contextversiontest()
		sleep(20)
		world << "<FONT COLOR=#770077><B>AI: Using AI Chat Nostalgia brain.sav file."
		del(m)
	else if(fexists("savefile/default.brain"))
		var/savefile/F = new("savefile/default.brain")
		var/mob/m = new/mob()
		m.Read(F,1)
		F["Brain"] >> global.brain
		F["Context Version"] >> global.contextversion
		contextversiontest()
		sleep(20)
		world << "<FONT COLOR=#770077><B>AI: Using AI Chat Nostalgia default.brain file."
		del(m)
	else
		if(fexists("default.brain"))
			var/savefile/F = new("default.brain")
			var/mob/m = new/mob()
			m.Read(F,1)
			F["Brain"] >> global.brain
			F["Context Version"] >> global.contextversion
			contextversiontest()
			sleep(20)
			world << "<FONT COLOR=#770077><B>AI: Using AI Chat Nostalgia default.brain file."
			del(m)
		else
			sleep(20)
			world << "<FONT COLOR=#770077><B>AI: No AIChat Nostalgia brain file found!"
proc/Auto_Update_AI_Smart()
	set category = null
	world<<"<B>This file is version is not compatable with the plugin version of AIChat"
	world<<"<B>This file now will be updated for this plugin version then saved..."
	sleep(30)
	for(var/obj/Folder/O in global.brain)
		O.aismart = Context(O.name)
		O.count = 1
		for(var/obj/File/F in O.contain)
			F.aismart = Context(F.name)
			if(F.count<1)
				F.count=1
			world<<"<u>File: [F.name]"
			world<<"Decompressing: [F.count] file(s)"
			while(F.count>1)
				var/obj/File/FFF = new/obj/File()
				FFF.name = F.name
				FFF.count = 1
				FFF.aismart = F.aismart
				O.contain += F
				F.count -= 1
				sleep(-1)
			sleep(-1)
		sleep(-1)
	world<<"<B>AI: Update Complete"
	var/savefile/F
	F = new("safefile/default.brain")

	F["Brain"] << global.brain
	F["Context Version"] << 0

	var/mob/m = new/mob()
	m.Write(F,1)
	world << "<FONT COLOR=#770077><B>AI: Auto saving file \"savefile/default.brain\""
	del(m)
proc/AISave()
	var/savefile/F
	F = new("savefile/default.brain")

	F["Brain"] << global.brain
	F["Context Version"] << global.contextversion

	var/mob/m = new/mob()
	m.Write(F,1)
	world << "<FONT COLOR=#770077><B>AI: Saved file \"savefile/default.brain\""
	del(m)

var/global/contextversion = 0

proc/contextversiontest()
	if(global.contextversion!=0)
		sleep(10)
		Auto_Update_AI_Smart()
		global.contextversion=0
world
	New()
		global.contextversion=0
		spawn() Auto_Load()
		return ..()

proc
	Context(var/msg as text)
		return msg
