

minetest.register_node("rangedweapons:Ammo_Maker", {
		description = "" ..core.colorize("#35cdff","Ammo Maker\n")..core.colorize("#FFFFFF", "AMMO Maker"),
	tiles = {
		"rangedweapons_ammobox_top.png",
                "rangedweapons_generator_bottom.png",
		"rangedweapons_ammobox_side.png",
		"rangedweapons_ammobox_side.png",
                "rangedweapons_ammobox_side.png",
                "rangedweapons_ammobox_side.png"
	},

	paramtype = "light",
	light_source = 5,
	groups = {choppy = 2},
	on_timer = function(pos, elapsed)
		minetest.get_node_timer(pos):start(3)
	local nodemeta = minetest.get_meta(pos)
if nodemeta:get_int("power_generated") < 250 then
	nodemeta:set_int("power_generated",nodemeta:get_int("power_generated")+10)
	nodemeta:set_string("infotext", "Ammo Generated:"..nodemeta:get_int("power_generated"))
end
	end,
	on_punch = function(pos, node, puncher)
local nodemeta = minetest.get_meta(pos)
local inv = puncher:get_inventory()
inv:add_item("main", "rangedweapons:ammo "..nodemeta:get_int("power_generated"))
nodemeta:set_int("power_generated",0)
nodemeta:set_string("infotext", "Ammo in Box:"..nodemeta:get_int("power_generated"))
	end,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(3)
	end,
	sounds = default.node_sound_wood_defaults(),
})

----------------------------------------------------------------

minetest.register_node("rangedweapons:7mm_Maker", {
		description = "" ..core.colorize("#35cdff","7mm Maker\n")..core.colorize("#FFFFFF", "7mm Maker"),
	tiles = {
		"rangedweapons_ammobox_top.png",
		"rangedweapons_generator_bottom.png",
		"rangedweapons_ammobox_side_7mm.png",
		"rangedweapons_ammobox_side_7mm.png",
		"rangedweapons_ammobox_side_7mm.png",
		"rangedweapons_ammobox_side_7mm.png"
	},

	paramtype = "light",
	light_source = 5,
	groups = {choppy = 2},
	on_timer = function(pos, elapsed)
		minetest.get_node_timer(pos):start(3)
	local nodemeta = minetest.get_meta(pos)
if nodemeta:get_int("power_generated") < 250 then
	nodemeta:set_int("power_generated",nodemeta:get_int("power_generated")+20)
	nodemeta:set_string("infotext", "7mm Generated:"..nodemeta:get_int("power_generated"))
end
	end,
	on_punch = function(pos, node, puncher)
local nodemeta = minetest.get_meta(pos)
local inv = puncher:get_inventory()
inv:add_item("main", "rangedweapons:762mm "..nodemeta:get_int("power_generated"))
nodemeta:set_int("power_generated",0)
nodemeta:set_string("infotext", "7mm in Box:"..nodemeta:get_int("power_generated"))
	end,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(3)
	end,
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("rangedweapons:9mm_Maker", {
		description = "" ..core.colorize("#35cdff","9mm Maker\n")..core.colorize("#FFFFFF", "9mm maker"),
	tiles = {
		"rangedweapons_ammobox_top.png",
                "rangedweapons_generator_bottom.png",
		"rangedweapons_ammobox_side_9mm.png",
		"rangedweapons_ammobox_side_9mm.png",
		"rangedweapons_ammobox_side_9mm.png",
		"rangedweapons_ammobox_side_9mm.png"
	},

	paramtype = "light",
	light_source = 5,
	groups = {choppy = 2},
	on_timer = function(pos, elapsed)
		minetest.get_node_timer(pos):start(3)
	local nodemeta = minetest.get_meta(pos)
if nodemeta:get_int("power_generated") < 500 then
	nodemeta:set_int("power_generated",nodemeta:get_int("power_generated")+20)
	nodemeta:set_string("infotext", "9mm Generated:"..nodemeta:get_int("power_generated"))
end
	end,
	on_punch = function(pos, node, puncher)
local nodemeta = minetest.get_meta(pos)
local inv = puncher:get_inventory()
inv:add_item("main", "rangedweapons:9mm "..nodemeta:get_int("power_generated"))
nodemeta:set_int("power_generated",0)
nodemeta:set_string("infotext", "9mm in Box:"..nodemeta:get_int("power_generated"))
	end,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(3)
	end,
	sounds = default.node_sound_wood_defaults(),
})



minetest.register_node("rangedweapons:Shell_Maker", {
		description = "" ..core.colorize("#35cdff","shell Maker\n")..core.colorize("#FFFFFF", "Shell maker"),
	tiles = {
		"rangedweapons_ammobox_top.png",
                "rangedweapons_generator_bottom.png",
		"rangedweapons_ammobox_side_shells.png",
		"rangedweapons_ammobox_side_shells.png",
		"rangedweapons_ammobox_side_shells.png",
		"rangedweapons_ammobox_side_shells.png"
	},

	paramtype = "light",
	light_source = 5,
	groups = {choppy = 2},
	on_timer = function(pos, elapsed)
		minetest.get_node_timer(pos):start(3)
	local nodemeta = minetest.get_meta(pos)
if nodemeta:get_int("power_generated") < 200 then
	nodemeta:set_int("power_generated",nodemeta:get_int("power_generated")+10)
	nodemeta:set_string("infotext", "Shells Generated:"..nodemeta:get_int("power_generated"))
end
	end,
	on_punch = function(pos, node, puncher)
local nodemeta = minetest.get_meta(pos)
local inv = puncher:get_inventory()
inv:add_item("main", "rangedweapons:shell "..nodemeta:get_int("power_generated"))
nodemeta:set_int("power_generated",0)
nodemeta:set_string("infotext", "Shells in Box:"..nodemeta:get_int("power_generated"))
	end,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(3)
	end,
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("rangedweapons:10mm_Maker", {
		description = "" ..core.colorize("#35cdff","10mm Maker\n")..core.colorize("#FFFFFF", "10mm Maker"),
	tiles = {
		"rangedweapons_ammobox_top.png",
                "rangedweapons_generator_bottom.png",
		"rangedweapons_ammobox_side_10mm.png",
		"rangedweapons_ammobox_side_10mm.png",
		"rangedweapons_ammobox_side_10mm.png",
		"rangedweapons_ammobox_side_10mm.png"
	},

	paramtype = "light",
	light_source = 5,
	groups = {choppy = 2},
	on_timer = function(pos, elapsed)
		minetest.get_node_timer(pos):start(3)
	local nodemeta = minetest.get_meta(pos)
if nodemeta:get_int("power_generated") < 400 then
	nodemeta:set_int("power_generated",nodemeta:get_int("power_generated")+20)
	nodemeta:set_string("infotext", "10mm Generated:"..nodemeta:get_int("power_generated"))
end
	end,
	on_punch = function(pos, node, puncher)
local nodemeta = minetest.get_meta(pos)
local inv = puncher:get_inventory()
inv:add_item("main", "rangedweapons:10mm "..nodemeta:get_int("power_generated"))
nodemeta:set_int("power_generated",0)
nodemeta:set_string("infotext", "10mm in Box:"..nodemeta:get_int("power_generated"))
	end,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(3)
	end,
	sounds = default.node_sound_wood_defaults(),
})
