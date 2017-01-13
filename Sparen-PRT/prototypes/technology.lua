data:extend({
    {
        type = "technology",
        name = "prttech",
        icon = "__Sparen-PRT__/graphics/technology/icon_prt_tech.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "prt-straight-rail"
            },
            {
                type = "unlock-recipe",
                recipe = "prt-curved-rail"
            },
            {
                type = "unlock-recipe",
                recipe = "prt-block-signal"
            },
            {
                type = "unlock-recipe",
                recipe = "prt-chain-signal"
            },
            {
                type = "unlock-recipe",
                recipe = "prt-bridge"
            },
            {
                type = "unlock-recipe",
                recipe = "prt-pod"
            }
        },
        prerequisites = {
            "automated-rail-transportation", 
            "electric-engine", 
            "electric-energy-accumulators-1", 
            "solar-energy"
        },
        unit = {
            count = 200,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 20
        },
        order = "c-g-d",
    }
})