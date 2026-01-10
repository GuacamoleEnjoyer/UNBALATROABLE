--- STEAMODDED HEADER
--- MOD_NAME: BalatroxUNBEATABLE Joker reskin
--- MOD_ID: BalatrUNBEATABLE_JKR
--- prefix: UNBEATJKR
--- MOD_AUTHOR: [HeroOfYore]
--- MOD_DESCRIPTION: Adds reskins of jokers. Very WIP.

if not UNBALATROABLE_JKR then
    UNBALATROABLE_JKR = {}
end
local mod_path = "" .. SMODS.current_mod.path
UNBALATROABLE_JKR.path = mod_path
---UNBALATROABLE_config_JKR = SMODS.current_mod.config
----UNBALATROABLE_config.gameset_toggle = true;
function SMODS.INIT.JOKERRESKIN()
    
    jokers = {
        j_8_ball = {pos = 0}
        j_mr_bones = {pos = 1}
        j_invisible = {pos = 2}
        j_stencil = {pos = 3}
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
end