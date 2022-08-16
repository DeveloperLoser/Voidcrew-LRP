/datum/crafting_recipe/kepori_satchel
	name = "Kepori Satchel"
	result = /obj/item/storage/backpack/satchel/kepori
	time = 50
	reqs = list(/obj/item/stack/sheet/leather = 4,
				/obj/item/stack/sheet/sinew = 1)
	tools = list(TOOL_WIRECUTTER, TOOL_SCREWDRIVER)
	category = CAT_PRIMAL

/datum/crafting_recipe/miningcore_filled
	name = "Filled Bluespace Mining Core"
	result = /obj/item/bluespace_parts/miningcore_filled
	time = 50
	reqs = list(/obj/item/bluespace_parts/miningcore_shell = 1,
				/obj/item/gibtonite = 1)
	tools = list(TOOL_SCREWDRIVER)
	category = CAT_MISC

/datum/crafting_recipe/spickaxe
	name = "Improvised Pickaxe"
	reqs = list(
		   /obj/item/crowbar = 1,
		   /obj/item/kitchen/knife = 1,
		   /obj/item/restraints/handcuffs/cable/sinew = 1)
	result = /obj/item/pickaxe/improvised/sinew
	category = CAT_MISC

/datum/crafting_recipe/shutters
	name = "Shutters"
	reqs = list(/obj/item/stack/sheet/plasteel = 10,
				/obj/item/stack/cable_coil = 10,
				/obj/item/electronics/airlock = 1
				)
	result = /obj/machinery/door/poddoor/shutters/preopen
	tools = list(TOOL_SCREWDRIVER, TOOL_MULTITOOL, TOOL_WIRECUTTER, TOOL_WELDER)
	time = 15 SECONDS
	category = CAT_MISC

/datum/crafting_recipe/blast_doors
	name = "Blast Door"
	reqs = list(/obj/item/stack/sheet/plasteel = 15,
				/obj/item/stack/cable_coil = 15,
				/obj/item/electronics/airlock = 1
				)
	result = /obj/machinery/door/poddoor/preopen
	tools = list(TOOL_SCREWDRIVER, TOOL_MULTITOOL, TOOL_WIRECUTTER, TOOL_WELDER)
	time = 30 SECONDS
	category = CAT_MISC
