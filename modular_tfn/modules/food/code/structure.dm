/obj/food_cart
	name = "food cart"
	desc = "Ding-aling ding dong. Get your cholesterine!"
	icon = 'code/modules/wod13/32x48.dmi'
	icon_state = "vat1"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_MOB_LAYER

/obj/food_cart/Initialize()
	. = ..()
	icon_state = "vat[rand(1, 3)]"

/obj/machinery/reagentgrinder/kitchen
	name = "kitchen mixer"
	beaker_type = /obj/item/reagent_containers/glass/mixing_bowl

/obj/structure/reagent_dispensers/typhonkeg
	name = "Typhon's Brew Keg"
	desc = "A brew for those with a more refined palate, courtesy of Ministry Monks Brewing Services LLC."
	icon_state = "TyphonKeg"
	reagent_id = /datum/reagent/consumable/ethanol/beer/typhon

/obj/structure/reagent_dispensers/typhonkeg/blob_act(obj/structure/blob/B)
	explosion(src.loc,0,3,5,7,10)
	if(!QDELETED(src))
		qdel(src)
