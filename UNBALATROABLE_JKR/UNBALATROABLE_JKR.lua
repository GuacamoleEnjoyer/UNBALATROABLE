--- STEAMODDED HEADER
--- MOD_NAME: BalatroxUNBEATABLE Joker reskin
--- MOD_ID: BalatrUNBEATABLE_JKR
--- prefix: UNBEATJKR
--- MOD_AUTHOR: [HeroOfYore]
--- MOD_DESCRIPTION: Adds reskins of jokers. Very WIP.
--UNBALATROABLEJKR = SMODS.current_mod
---UNBALATROABLE_config_JKR = SMODS.current_mod.config
----UNBALATROABLE_config.gameset_toggle = true;    
    jokers = {
        j_8_ball = {pos = 0},
        j_mr_bones = {pos = 1},
        j_invisible = {pos = 2},
        j_stencil = {pos = 3},
        j_wee = {pos = 4},
        j_photograph = {pos = 5},
        j_diet_cola = {pos = 6},
        j_ice_cream = {pos = 7},
        j_gros_michel = {pos = 8},
        j_castle = {pos = 9},
        j_cavendish = {pos = 10},
        j_seltzer = {pos = 11},
        j_hanging_chad = {pos = 12},
        j_scary_face = {pos = 13},
        j_acrobat = {pos = 14},
        j_abstract = {pos = 15},
        j_hack = {pos = 16},
        j_ride_the_bus = {pos = 17},
        j_blueprint = {pos = 18},
        j_drivers_license = {pos = 19},
        j_devious = {pos = 20},
        j_luchador = {pos = 21},
        j_matador = {pos = 22}
    }



    SMODS.Atlas {
        key = "agglomeration",
        path = "AGGLOMERATION.png",
        px = 71, 
        py = 95
    }
    ---if not UNBALATROABLE_config.disabled then
        for jkr, data in pairs(jokers) do
            SMODS["Joker"]:take_ownership(jkr, {atlas = "agglomeration",
            pos = {x = 0 + data.pos, y = 0},
            soul_pos = {x = 0 + data.pos, y = 1}}, true)
        end
    ---end
    animated_jokers = {
        j_lucky_cat = {row = 0},
        j_smeared = {row = 1},
        j_baseball = {row = 2},
        j_ramen = {row = 3},
        j_flower_pot = {row = 4},
        j_gift = {row = 5},
        j_egg = {row = 6},
        j_todo_list = {row = 7}
    }

    SMODS.Atlas {
        key = "j_lucky_cat_anim",
        path = "UNSCOOPABLE.png", 
        atlas_table = 'ANIMATION_ATLAS',
        frames = 3,
        px = 71, 
        py = 95,
    }

    SMODS.Atlas {
        key = "j_smeared_anim",
        path = "UNSCOOPABLE.png",
        atlas_table = 'ANIMATION_ATLAS',
        frames = 9,
        px = 71,
        py = 95,
    }

    SMODS.Atlas {
        key = "j_baseball_anim",
        path = "UNSCOOPABLE.png",
        atlas_table = 'ANIMATION_ATLAS',
        frames = 38,
        px = 71,
        py = 95,
    }

    SMODS.Atlas {
        key = "j_ramen_anim",
        path = "UNSCOOPABLE.png",
        atlas_table  = 'ANIMATION_ATLAS',
        frames = 7,
        fps = 5,
        px = 71,
        py = 95,
    }

    SMODS.Atlas {
        key = "j_flower_pot_anim",
        path = "UNSCOOPABLE.png",
        atlas_table  = 'ANIMATION_ATLAS',
        frames = 8,
        fps = 5,
        px = 71,
        py = 95,
    }

    SMODS.Atlas{
        key = "j_gift_anim",
        path = "UNSCOOPABLE.png",
        atlas_table  = 'ANIMATION_ATLAS',
        frames = 5,
        px = 71,
        py = 95,
    }

    SMODS.Atlas{
        key = "j_egg_anim",
        path = "UNSCOOPABLE.png",
        atlas_table  = 'ANIMATION_ATLAS',
        frames = 13,
        px = 71,
        py = 95,
    }

    SMODS.Atlas{
        key = "j_todo_list_anim",
        path = "UNSCOOPABLE.png",
        atlas_table  = 'ANIMATION_ATLAS',
        frames = 34,
        px = 71,
        py = 95,
    }

        for jkr, data in pairs(animated_jokers) do
            SMODS["Joker"]:take_ownership(jkr, {atlas = jkr .. "_anim",
            pos = {x = 0, y = 0 + data.row},
            --soul_pos = {x = 0, y = 1}
        }, true)
        end

    SMODS.Atlas {
        key = "SHOOTABLE",
        path = "UNSHOOTABLE.png",
        px = 71,
        py = 95
    }
    SMODS.Sound({
        key = 'BANG',
        path = 'BANG.ogg',
        replace = 'slice1'
    })
        
        SMODS["Joker"]:take_ownership("j_ceremonial", {atlas = "SHOOTABLE",
        pos = {x = 0, y = 0},
        }, true)