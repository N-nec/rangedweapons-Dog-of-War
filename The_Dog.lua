------------reload--------------------

  
----------------- SWORD --------------

minetest.register_tool("rangedweapons:The_Dog", {
                description = "" ..core.colorize("#35cdff","The Dog\n"),
        
        range = 2,


-------------- ADDED SWORD FUNCTION -------------------------------
  tool_capabilities = {
        full_punch_interval = 1.0,
        damage_groups = {fleshy=50},
        --20% higher than Draconic Steel
        --uses = 1800,
        --18 Diamonds gets us 4854 actual uses at a value of 180
        maxlevel = 3,
        max_drop_level = 1,
    },

-------------------------- GUN FUNCTION -------------------------------
      
        wield_scale = {x=1.50,y=1.60,z=1.15},
        inventory_image = "rangedweapons_sword.png",
        RW_powergun_capabilities = {
                automatic_gun = 1,
                power_damage = {fleshy=32},
                power_crit = 15,
                power_critEffc = 2.0,
                power_skill = {"",1}, 
                power_velocity = 70,
                power_accuracy = 100,
                power_cooldown = 0.2,
                power_projectiles = 1,
                power_durability = 52500,
                power_glass_breaking = 0,
                power_door_breaking = 0,
                power_dps = 100,
                power_mob_penetration = 50,
                power_node_penetration = 60,
                --power_dps = 0,
                power_consumption = 25,
                power_entity = "rangedweapons:shot_bullet",
                power_visual = "sprite",
                power_texture = "rangedweapons_bullet2.png",
                power_projectile_size = 0.5,
                has_sparks = 0,
                ignites_explosives = 0,
                power_sound = "rangedweapons_machine_pistol",
        },

 
})
