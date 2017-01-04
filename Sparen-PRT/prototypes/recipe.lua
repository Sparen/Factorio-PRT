data:extend(
    {
        {
            type = "recipe",
            name = "prt-straight-rail",
            enabled = "false"
            ingredients = {
                {"concrete", 2},
                {"steel-plate", 1}
            },
            result = "prt-straight-rail",
            result_count = 2
        },
        {
            type = "recipe",
            name = "prt-block-signal",
            enabled = "false"
            ingredients = {
                {"electronic-circuit", 1},
                {"iron-plate", 5}
            },
            result = "prt-block-signal"
        },
        {
            type = "recipe",
            name = "prt-chain-signal",
            enabled = "false"
            ingredients = {
                {"electronic-circuit", 1},
                {"iron-plate", 5}
            },
            result = "prt-chain-signal"
        },
        {
            type = "recipe",
            name = "prt-bridge",
            enabled = "false"
            ingredients = {
                {"concrete", 4},
                {"steel-plate", 8}
            },
            result = "prt-bridge"
        },
        {
            type = "recipe-with-entity-data",
            name = "prt-pod",
            enabled = "false"
            ingredients = {
                {"steel-plate", 16},
                {"advanced-circuit", 10},
                {"electric-engine", 2},
                {"solar-panel", 5},
                {"accumulator", 5}
            },
            result = "prt-pod"
        }
    }
)