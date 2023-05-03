


minetest.register_craftitem("rangedweapons:tec9_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:tec9",
	load_sound = "rangedweapons_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_tec9.png",
})



	minetest.register_craftitem("rangedweapons:tec9", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
		description = "" ..core.colorize("#35cdff","TEC-9\n") ..core.colorize("#FFFFFF", "Gun damage: 1\n") ..core.colorize("#FFFFFF", "accuracy: 75%\n") ..core.colorize("#FFFFFF", "Gun knockback: 0\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 9%\n") ..core.colorize("#FFFFFF", "Gun Critical efficiency: 1.9x\n") ..core.colorize("#FFFFFF", "Reload delay: 1.0\n") ..core.colorize("#FFFFFF", "Clip size: 50\n")   ..core.colorize("#FFFFFF", "Ammunition: 9x19mm parabellum\n")  ..core.colorize("#FFFFFF", "Rate of fire: 0.2\n") ..core.colorize("#FFFFFF", "Gun type: machine pistol\n") ..core.colorize("#FFFFFF", "Bullet velocity: 20"),
	range = 0,
	inventory_image = "rangedweapons_tec9.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=10,knockback=2},
		gun_crit = 9,
		gun_critEffc = 1.9,
		suitable_ammo =  {{"rangedweapons:9mm",70},{"rangedweapons:10mm",70},{"rangedweapons:762mm",82}},
		gun_skill = {"mp_skill",80},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_tec9_icon.png",
		gun_unloaded = "rangedweapons:tec9_r",
		gun_velocity = 40,
		gun_accuracy = 95,
		gun_cooldown = 0.1,
		gun_reload = 0.5,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1100,
		gun_smokeSize = 2,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_machine_pistol",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

