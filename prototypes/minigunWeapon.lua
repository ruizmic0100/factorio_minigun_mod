--Author: GhostrunnerMods

local submachinegun = table.deepcopy(data.raw["gun"]["submachine-gun"])

a = 100;

data:extend({

    {
        type = "recipe",
        name = "minigun-mk1",
        enabled = true,
        energy_required = 5,
        ingredients = {{"iron-plate", 20}, {"electronic-circuit", 5}, {"steel-plate", 2}, {"iron-gear-wheel", 10}},
        result = "minigun-mk1"
    },
    {
        type = "gun",
        name = "minigun-mk1",
        subgroup = "gun",
        icons = {
            {
                icon = submachinegun.icon,
                icon_size=64,
                icon_mipmaps = 4,
                tint = {a=1, r=0.2, g=0.56, b=0.8}
            }
        },
        attack_parameters = {
            type = "projectile",
            ammo_category = "bullet",
            cooldown = 4,
            movement_slow_down_factor = 0.65,
            range = 30,
            projectile_creation_distance = 1.4,
            damage_modifier = 1.35,
            ammo_consumption_modifier = 5,
            shell_particle = {
                name = "shell-particle",
                direction_deviation = 0.2,
                speed = 0.2,
                speed_deviation = 0.06,
                center = {0, 0.2},
                height_deviation = 0.1,
                creation_distance = -0.2,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            sound = {
                {
                    filename = "__base__/sound/fight/submachine-gunshot-1.ogg",
                    volume = 1
                },
                {
                    filename = "__base__/sound/fight/heavy-gunshot-2.ogg",
                    volume = 0.8
                },
                {
                    filename = "__base__/sound/fight/submachine-gunshot-3.ogg",
                    volume = 1
                },
                {
                    filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
                    volume = 0.6
                }
            }
        },
        stack_size = 1
    }
})