data:extend(
    {
        {
            type = "item",
            name = "prt-straight-rail",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-b[prt-straight-rail]",
            place_result = "prt-straight-rail",
            stack_size = 100
        },
        {
            type = "item",
            name = "prt-curved-rail",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-c[prt-curved-rail]",
            place_result = "prt-straight-rail",
            stack_size = 100
        },
        {
            type = "item",
            name = "prt-block-signal",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-q[prt-block-signal]",
            place_result = "prt-block-signal",
            stack_size = 50
        },
        {
            type = "item",
            name = "prt-chain-signal",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-r[prt-chain-signal]",
            place_result = "prt-chain-signal",
            stack_size = 50
        },
        {
            type = "item",
            name = "prt-bridge",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-d[prt-bridge]",
            place_result = "prt-bridge",
            stack_size = 100
        },
        {
            type = "item",
            name = "prt-source-stop",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-k[prt-source-stop]",
            place_result = "prt-source-stop",
            stack_size = 10
        },
        {
            type = "item",
            name = "prt-destination-stop",
            icon = "__Sparen-PRT__/graphics/icons/prt-rail-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-l[prt-destination-stop]",
            place_result = "prt-destination-stop",
            stack_size = 10
        },
        {
            type = "item-with-entity-data",
            name = "prt-pod",
            icon = "__Sparen-PRT__/graphics/icons/prt-pod-placeholder.png",
            flags = {"goes-to-quickbar"},
            subgroup = "transport",
            order = "c[prt-transport]-a[prt-pod]",
            place_result = "prt-pod",
            stack_size = 20
        }
    }
)