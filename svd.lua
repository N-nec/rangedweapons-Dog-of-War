
minetest.register_tool("rangedweapons:svd_uld", {
	stack_max= 1,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	range = 0,
		description = "" ..core.colorize("#35cdff","SVD \n"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd.png",
	s

})


minetest.register_tool("rangedweapons:svd_r", {
	rw_next_reload = "rangedweapons:svd_rld",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_noclip.png",
})


minetest.register_tool("rangedweapons:svd_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	loaded_gun = "rangedweapons:svd",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_rld.png",
})


minetest.register_tool("rangedweapons:svd", {
		description = "" ..core.colorize("#35cdff"," SVD ... takes cheytac ammo\n"),
	range = 0,
	weapon_zoom = 5,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	inventory_image = "rangedweapons_svd.png",
RW_gun_capabilities = {
        automatic_gun = 1,
		gun_damage = {fleshy=22,knockback=20},
		gun_crit = 70,
		gun_critEffc = 3.25,
		suitable_ammo = {{"rangedweapons:408cheytac",10}},
		gun_skill = {"rifle_skill",12},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_svd_icon.png",
		gun_unloaded = "rangedweapons:svd_r",
		--gun_cooling = "rangedweapons:svd_uld",
		gun_velocity = 80,
		gun_accuracy = 100,
		gun_cooldown = 0.6,
		gun_reload = 0.5,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 1000,
		gun_smokeSize = 5,
		gun_dps = 75,
		gun_mob_penetration = 45,
		gun_node_penetration = 35,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_rifle_b",
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
