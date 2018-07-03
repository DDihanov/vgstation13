

/mob/proc/rightandwrong(var/summon_type) //0 = Summon Guns, 1 = Summon Magic, 2 = Summon Swords
	to_chat(usr, "<B>You summoned [summon_type]!</B>")
	message_admins("[key_name_admin(usr, 1)] summoned [summon_type]!")
	log_game("[key_name(usr)] summoned [summon_type]!")
	for(var/mob/living/carbon/human/H in player_list)
		if(H.stat == DEAD || !(H.client))
			continue
		if(summon_type && iswizard(H))
			continue
		/* TODO - READD THIS
		if(prob(35) && !is_special_character(H))
			ticker.mode.traitors += H.mind
			H.mind.special_role = "traitor"
			var/datum/objective/survive/survive = new
			survive.owner = H.mind
			H.mind.objectives += survive
			var/survivor_type = "survivor"
			if(summon_type == "swords") //snowflake survivor name
				survivor_type = "crusader"
			else if(summon_type == "magic")
				survivor_type = "magician"
			else
				survivor_type = "survivor"
			H.attack_log += "\[[time_stamp()]\] <font color='red'>Was made into a [survivor_type], and trusts no one!</font>"
			to_chat(H, "<B>You are a [survivor_type]! Your own safety matters above all else, trust no one and kill anyone who gets in your way. However, armed as you are, now would be the perfect time to settle that score or grab that pair of yellow gloves you've been eyeing...</B>")
			var/obj_count = 1
			for(var/datum/objective/OBJ in H.mind.objectives)
				to_chat(H, "<B>Objective #[obj_count]</B>: [OBJ.explanation_text]")
				obj_count++*/
		var/randomizeguns = pick("taser","stunrevolver","egun","laser","retro","laserak","revolver","detective","smg","nuclear","deagle","gyrojet","pulse","silenced","cannon","doublebarrel","shotgun","combatshotgun","mateba","smg","uzi","crossbow","saw","hecate","osipr","gatling","bison","ricochet","spur","nagant","obrez","beegun","beretta","usp","glock","luger","colt","plasmapistol")
		var/randomizemagic = pick("fireball","smoke","blind","mindswap","forcewall","knock","horsemask","blink","disorient","staffchange","armor","scrying", "clowncurse", "mimecurse", "shoesnatch", "robesummon")
		var/randomizeswords = pick("unlucky", "misc", "glass", "throw", "armblade", "pickaxe", "pcutter", "esword", "alt-esword", "machete", "kitchen", "spear", "katana", "axe", "venom", "boot", "saw", "scalpel", "bottle", "switchtool")
		var/randomizeknightcolor = pick("green", "yellow", "blue", "red", "templar")
		if(summon_type == "guns")
			switch (randomizeguns)
				if("taser")
					new /obj/item/weapon/gun/energy/taser(get_turf(H))
				if("stunrevolver")
					new /obj/item/weapon/gun/energy/stunrevolver(get_turf(H))
				if("egun")
					new /obj/item/weapon/gun/energy/gun(get_turf(H))
				if("laser")
					new /obj/item/weapon/gun/energy/laser(get_turf(H))
				if("retro")
					new /obj/item/weapon/gun/energy/laser/retro(get_turf(H))
				if("laserak")
					new /obj/item/weapon/gun/energy/laser/LaserAK(get_turf(H))
				if("plasmapistol")
					new /obj/item/weapon/gun/energy/plasma/pistol(get_turf(H))
				if("revolver")
					new /obj/item/weapon/gun/projectile(get_turf(H))
				if("detective")
					new /obj/item/weapon/gun/projectile/detective(get_turf(H))
				if("smg")
					new /obj/item/weapon/gun/projectile/automatic/c20r(get_turf(H))
				if("nuclear")
					new /obj/item/weapon/gun/energy/gun/nuclear(get_turf(H))
				if("deagle")
					new /obj/item/weapon/gun/projectile/deagle/camo(get_turf(H))
				if("gyrojet")
					new /obj/item/weapon/gun/projectile/gyropistol(get_turf(H))
				if("pulse")
					new /obj/item/weapon/gun/energy/pulse_rifle(get_turf(H))
				if("silenced")
					new /obj/item/weapon/gun/projectile/pistol(get_turf(H))
					new /obj/item/gun_part/silencer(get_turf(H))
				if("cannon")
					new /obj/item/weapon/gun/energy/laser/cannon(get_turf(H))
				if("doublebarrel")
					new /obj/item/weapon/gun/projectile/shotgun/pump/(get_turf(H))
				if("shotgun")
					new /obj/item/weapon/gun/projectile/shotgun/pump/(get_turf(H))
				if("combatshotgun")
					new /obj/item/weapon/gun/projectile/shotgun/pump/combat(get_turf(H))
				if("mateba")
					new /obj/item/weapon/gun/projectile/mateba(get_turf(H))
				if("smg")
					new /obj/item/weapon/gun/projectile/automatic(get_turf(H))
				if("uzi")
					new /obj/item/weapon/gun/projectile/automatic/mini_uzi(get_turf(H))
				if("crossbow")
					new /obj/item/weapon/gun/energy/crossbow(get_turf(H))
				if("saw")
					new /obj/item/weapon/gun/projectile/automatic/l6_saw(get_turf(H))
				if("hecate")
					new /obj/item/weapon/gun/projectile/hecate(get_turf(H))
					new /obj/item/ammo_casing/BMG50(get_turf(H))//can't give a full box of such deadly bullets. 3 shots is plenty.
					new /obj/item/ammo_casing/BMG50(get_turf(H))
				if("osipr")
					new /obj/item/weapon/gun/osipr(get_turf(H))
				if("gatling")
					new /obj/item/weapon/gun/gatling(get_turf(H))
				if("bison")
					new /obj/item/weapon/gun/energy/bison(get_turf(H))
				if("ricochet")
					new /obj/item/weapon/gun/energy/ricochet(get_turf(H))
				if("spur")
					new /obj/item/weapon/gun/energy/polarstar(get_turf(H))
					new /obj/item/device/modkit/spur_parts(get_turf(H))
				if("nagant")
					new /obj/item/weapon/gun/projectile/nagant(get_turf(H))
				if("obrez")
					new /obj/item/weapon/gun/projectile/nagant/obrez(get_turf(H))
				if("beegun")
					new /obj/item/weapon/gun/gatling/beegun(get_turf(H))
				if("beretta")
					new /obj/item/weapon/gun/projectile/beretta(get_turf(H))
				if("usp")
					new /obj/item/weapon/gun/projectile/NTUSP/fancy(get_turf(H))
				if("glock")
					new /obj/item/weapon/gun/projectile/sec/fancy(get_turf(H))
				if("luger")
					new /obj/item/weapon/gun/projectile/luger(get_turf(H))
				if("colt")
					new /obj/item/weapon/gun/projectile/colt(get_turf(H))
			playsound(H,'sound/effects/summon_guns.ogg', 50, 1)

		else if(summon_type == "magic")
			switch (randomizemagic)
				if("fireball")
					new /obj/item/weapon/spellbook/oneuse/fireball(get_turf(H))
				if("smoke")
					new /obj/item/weapon/spellbook/oneuse/smoke(get_turf(H))
				if("blind")
					new /obj/item/weapon/spellbook/oneuse/blind(get_turf(H))
				if("mindswap")
					new /obj/item/weapon/spellbook/oneuse/mindswap(get_turf(H))
				if("forcewall")
					new /obj/item/weapon/spellbook/oneuse/forcewall(get_turf(H))
				if("knock")
					new /obj/item/weapon/spellbook/oneuse/knock(get_turf(H))
				if("horsemask")
					new /obj/item/weapon/spellbook/oneuse/horsemask(get_turf(H))
				if("blink")
					new /obj/item/weapon/spellbook/oneuse/teleport/blink(get_turf(H))
				if("disorient")
					new /obj/item/weapon/spellbook/oneuse/disorient(get_turf(H))
				if("clowncurse")
					new /obj/item/weapon/spellbook/oneuse/clown(get_turf(H))
				if("mimecurse")
					new /obj/item/weapon/spellbook/oneuse/mime(get_turf(H))
				if("shoesnatch")
					new /obj/item/weapon/spellbook/oneuse/shoesnatch(get_turf(H))
				if("robesummon")
					new /obj/item/weapon/spellbook/oneuse/robesummon(get_turf(H))
				/* TODO: Port /tg/ guncode.
				if("wandnothing")
					new /obj/item/weapon/gun/magic/wand(get_turf(H))
				if("wanddeath")
					new /obj/item/weapon/gun/magic/wand/death(get_turf(H))
				if("wandresurrection")
					new /obj/item/weapon/gun/magic/wand/resurrection(get_turf(H))
				if("wandpolymorph")
					new /obj/item/weapon/gun/magic/wand/polymorph(get_turf(H))
				if("wandteleport")
					new /obj/item/weapon/gun/magic/wand/teleport(get_turf(H))
				if("wanddoor")
					new /obj/item/weapon/gun/magic/wand/door(get_turf(H))
				if("staffhealing")
					new /obj/item/weapon/gun/magic/staff/healing(get_turf(H))
				*/
				if("staffchange")
					new /obj/item/weapon/gun/energy/staff(get_turf(H))
				if("armor")
					new /obj/item/clothing/suit/space/rig/wizard(get_turf(H))
					new /obj/item/clothing/head/helmet/space/rig/wizard(get_turf(H))
				if("scrying")
					new /obj/item/weapon/scrying(get_turf(H))
					if (!(M_XRAY in H.mutations))
						H.mutations.Add(M_XRAY)
						H.change_sight(adding = SEE_MOBS|SEE_OBJS|SEE_TURFS)
						H.see_in_dark = 8
						H.see_invisible = SEE_INVISIBLE_LEVEL_TWO
						to_chat(H, "<span class='notice'>The walls suddenly disappear.</span>")

		else if(summon_type == "swords")
			switch (randomizeknightcolor) //everyone gets some armor as well
				if("green")
					new /obj/item/clothing/suit/armor/knight(get_turf(H))
					new /obj/item/clothing/head/helmet/knight(get_turf(H))
				if("yellow")
					new /obj/item/clothing/suit/armor/knight/yellow(get_turf(H))
					new /obj/item/clothing/head/helmet/knight/yellow(get_turf(H))
				if("blue")
					new /obj/item/clothing/suit/armor/knight/blue(get_turf(H))
					new /obj/item/clothing/head/helmet/knight/blue(get_turf(H))
				if("red")
					new /obj/item/clothing/suit/armor/knight/red(get_turf(H))
					new /obj/item/clothing/head/helmet/knight/red(get_turf(H))
				if("templar")
					new /obj/item/clothing/suit/armor/knight/templar(get_turf(H))
					new /obj/item/clothing/head/helmet/knight/templar(get_turf(H))

			switch (randomizeswords)
				if("unlucky") //so the chance to get an unlucky item does't clutter the main pool of swords
					var/noluck = pick(/obj/item/weapon/kitchen/utensil/knife/plastic, /obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters, /obj/item/toy/foamblade, /obj/item/toy/sword)
					new noluck(get_turf(H))
				if("misc")
					var/miscpick = pick(/obj/item/weapon/scythe, /obj/item/weapon/harpoon, /obj/item/weapon/sword, /obj/item/weapon/sword/executioner, /obj/item/weapon/claymore, /obj/item/weapon/sord)
					new miscpick(get_turf(H))
				if("glass")
					if(prob(50))
						new /obj/item/weapon/shard(get_turf(H))
					else
						new /obj/item/weapon/shard/plasma(get_turf(H))
				if("throw")
					if(prob(20))
						new /obj/item/weapon/kitchen/utensil/knife/nazi(get_turf(H))
					else
						new /obj/item/weapon/hatchet(get_turf(H))
				if("armblade") // good luck getting it off. Maybe cut your own arm off :^)
					new /obj/item/weapon/armblade(get_turf(H))
				if("pickaxe")
					var/pickedaxe = pick(/obj/item/weapon/pickaxe, /obj/item/weapon/pickaxe/silver, /obj/item/weapon/pickaxe/gold, /obj/item/weapon/pickaxe/diamond)
					new pickedaxe(get_turf(H))
				if("pcutter")
					new /obj/item/weapon/pickaxe/plasmacutter(get_turf(H))
				if("esword")
					new /obj/item/weapon/melee/energy/sword(get_turf(H))
					if(prob(70)) //chance for a second one to make a double esword
						new /obj/item/weapon/melee/energy/sword(get_turf(H))
				if("alt-esword")
					if(prob(75))
						new /obj/item/weapon/melee/energy/sword/pirate(get_turf(H))
						if(prob(70))
							new /obj/item/weapon/melee/energy/sword/pirate(get_turf(H))
					else //hope you're the clown
						new /obj/item/weapon/melee/energy/sword/bsword(get_turf(H))
						if(prob(70))
							new /obj/item/weapon/melee/energy/sword/bsword(get_turf(H))
				if("machete")
					new /obj/item/weapon/melee/energy/hfmachete(get_turf(H))
					if(prob(70))
						new /obj/item/weapon/melee/energy/hfmachete(get_turf(H))
				if("kitchen")
					if(prob(60))
						if(prob(25))
							new /obj/item/weapon/kitchen/utensil/knife/large(get_turf(H))
						else
							new /obj/item/weapon/kitchen/utensil/knife/large/butch(get_turf(H))
					else
						new /obj/item/weapon/kitchen/utensil/knife/large/butch/meatcleaver(get_turf(H))
				if("spear")
					if(prob(50))
						new /obj/item/weapon/spear(get_turf(H))
					else
						new /obj/item/weapon/melee/lance(get_turf(H))
				if("katana")
					new /obj/item/weapon/katana(get_turf(H))
					//No fun allowed, maybe nerf later and readd
					/*
					if(prob(5))
						new /obj/item/weapon/katana/hfrequency(get_turf(H))
					else
						new /obj/item/weapon/katana(get_turf(H))
					*/
				if("axe")
					if(prob(50))
						if(prob(5))
							new /obj/item/weapon/melee/energy/axe(get_turf(H))
						else
							new /obj/item/weapon/melee/energy/axe/rusty(get_turf(H))
					else
						new /obj/item/weapon/fireaxe(get_turf(H))
				if("venom")
					new /obj/item/weapon/sword/venom(get_turf(H))
				if("boot")
					if(prob(50))
						new /obj/item/clothing/accessory/holster/knife/boot/preloaded/tactical(get_turf(H))
					else
						new /obj/item/clothing/accessory/holster/knife/boot/preloaded/skinning(get_turf(H))
				if("saw")
					if(prob(40))
						new /obj/item/weapon/circular_saw/plasmasaw(get_turf(H))
					else
						new /obj/item/weapon/circular_saw(get_turf(H))
				if("scalpel")
					if(prob(60))
						if(prob(50))
							new /obj/item/weapon/scalpel/laser(get_turf(H))
						else
							new /obj/item/weapon/scalpel/laser/tier2(get_turf(H))
					else
						new /obj/item/weapon/scalpel(get_turf(H))
				if("bottle")
					new /obj/abstract/map/spawner/space/drinks(get_turf(H))
				if("switchtool")
					if(prob(40))
						if(prob(50))
							new /obj/item/weapon/switchtool(get_turf(H))
						else
							new /obj/item/weapon/switchtool/surgery(get_turf(H))
					else
						new /obj/item/weapon/switchtool/swiss_army_knife(get_turf(H))
			playsound(H,'sound/items/zippo_open.ogg', 50, 1)
