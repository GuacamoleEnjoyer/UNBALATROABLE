
function SMODS.INIT.JOKERRESKIN()
    
    jokers = {
        j_8_ball = { pos = 0}
    }

    SMODS.Atlas {
        key = "8ballable",
        path = "UNBEATA8BALL.png",
        px = 71, 
        py = 95
    }
    ---if not UNBALATROABLE_config.disabled then
        for jkr, data in pairs(jokers) do
            SMODS["Joker"]:take_ownership(jkr, {atlas = "8ballable",
            pos = {x = 0 + data.pos, y = 0},
            soul_pos = {x = 0 + data.pos, y = 1}}, true)
        end
    ---end
end