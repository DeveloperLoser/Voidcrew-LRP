/obj/machinery/recycler
	//Contents of the connected ore silo
	var/datum/component/remote_materials/silo_materials

/obj/machinery/recycler/Initialize(mapload)
	AddComponent(/datum/component/butchering/recycler, 1, amount_produced,amount_produced/5)
	AddComponent(/datum/component/material_container, list(/datum/material/iron, /datum/material/glass, /datum/material/silver, /datum/material/plasma, /datum/material/gold, /datum/material/diamond, /datum/material/plastic, /datum/material/uranium, /datum/material/bananium, /datum/material/titanium, /datum/material/bluespace), INFINITY, FALSE, null, null, null, TRUE)
	silo_materials = AddComponent(/datum/component/remote_materials, "recycler", mapload)
	. = ..()
	update_icon()
	req_one_access = get_all_accesses() + get_all_centcom_access()

/obj/machinery/recycler/proc/recycle_item(obj/item/being_recycled)
	var/obj/item/grown/log/wood_log = being_recycled
	if(istype(wood_log))
		var/seed_modifier = 0
		if(wood_log.seed)
			seed_modifier = round(wood_log.seed.potency / 25)
		new wood_log.plank_type(loc, 1 + seed_modifier)
	else if(!silo_materials)
		var/datum/component/material_container/materials = GetComponent(/datum/component/material_container)
		var/material_amount = materials.get_item_material_amount(being_recycled)// Why make this var? Redundent?
		if(!material_amount)
			return
		materials.insert_item(being_recycled, multiplier = (amount_produced / 100))
		materials.retrieve_all()
	else if(istype(silo_materials, /datum/component/remote_materials))
		var/datum/component/material_container/silo_materials = GetComponent(/datum/component/remote_materials)
		var/material_amount = silo_materials.get_item_material_amount(being_recycled)// Why make this var? Redundent?
		if(!material_amount) //^
			return
		silo_materials.insert_item(being_recycled, multiplier = (amount_produced / 100))
