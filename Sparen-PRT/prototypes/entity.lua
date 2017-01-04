require ("util")

railpictures = function()
    --Need to adjust this to use only supports and rail bodies instead of all the various components.
    --return railpicturesinternal({{"metals", "metals"}, {"backplates", "backplates"}, {"ties", "ties"}, {"stone_path", "stone-path"}})
end

data:extend(
    {
        type = "straight-rail",
        name = "prt-straight-rail",
        icon = "__base__/graphics/icons/rail.png",
        flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
        minable = {mining_time = 0.5, result = "prt-straight-rail"},
        max_health = 100,
        corpse = "straight-rail-remnants",
        resistances =
        {
          {
            type = "fire",
            percent = 100
          }
        },
        collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
        selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
        rail_category = "regular",
        pictures = railpictures(),
    },
    {
        type = "curved-rail",
        name = "prt-curved-rail",
        icon = "__base__/graphics/icons/curved-rail.png",
        flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
        minable = {mining_time = 0.5, result = "prt-curved-rail"},
        max_health = 200,
        corpse = "curved-rail-remnants",
        resistances =
        {
          {
            type = "fire",
            percent = 100
          }
        },
        collision_box = {{-0.75, -0.55}, {0.75, 1.6}},
        secondary_collision_box = {{-0.65, -2.43}, {0.65, 2.43}},
        selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
        rail_category = "regular",
        pictures = railpictures(),
    },
    {
        {
        type = "locomotive",
        name = "prt-pod",
        icon = "__Sparen-PRT__/graphics/icons/prt-pod-placeholder.png",
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {mining_time = 1, result = "prt-pod"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 1000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-1, -1.5}, {1, 1.5}},
        drawing_box = {{-1, -2}, {1, 1.5}},
        weight = 500,
        max_speed = 4,
        max_power = 1 .. "MW",
        reversing_power_modifier = 1.0,
        braking_force = 24,
        friction_force = 0.10,
        vertical_selection_shift = -0.5,
        air_resistance = 0.0025, -- this is a percentage of current speed that will be subtracted
        connection_distance = 3,
        joint_distance = 4,
        energy_per_hit_point = 5,
        resistances =
        {
          {
            type = "fire",
            decrease = 15,
            percent = 50
          },
          {
            type = "physical",
            decrease = 15,
            percent = 30
          },
          {
            type = "impact",
            decrease = 50,
            percent = 60
          },
          {
            type = "explosion",
            decrease = 15,
            percent = 30
          },
          {
            type = "acid",
            decrease = 10,
            percent = 20
          }
        },
        energy_source =
        {
          type = "burner", --instead of marking it as electric, we use an abstraction instead
          effectivity = 1,
          fuel_inventory_size = 0,
        },
        front_light =
        {
          {
            type = "oriented",
            minimum_darkness = 0.3,
            picture =
            {
              filename = "__core__/graphics/light-cone.png",
              priority = "medium",
              scale = 2,
              width = 200,
              height = 200
            },
            shift = {-0.6, -16},
            size = 2,
            intensity = 0.6
          },
          {
            type = "oriented",
            minimum_darkness = 0.3,
            picture =
            {
              filename = "__core__/graphics/light-cone.png",
              priority = "medium",
              scale = 2,
              width = 200,
              height = 200
            },
            shift = {0.6, -16},
            size = 2,
            intensity = 0.6
          }
        },
        back_light = rolling_stock_back_light(),
        stand_by_light = rolling_stock_stand_by_light(),
        color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
        pictures =
        {
          layers =
          {
            {
              priority = "very-low",
              width = 238,
              height = 230,
              direction_count = 256,
              filenames =
              {
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
              },
              line_length = 4,
              lines_per_file = 8,
              shift = {0.0, -0.5}
            },
            {
              priority = "very-low",
              flags = { "mask" },
              width = 236,
              height = 228,
              direction_count = 256,
              filenames =
              {
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
              },
              line_length = 4,
              lines_per_file = 8,
              shift = {0.0, -0.5},
              apply_runtime_tint = true
            },
            {
              priority = "very-low",
              flags = { "compressed" },
              width = 253,
              height = 212,
              direction_count = 256,
              draw_as_shadow = true,
              filenames =
              {
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
                "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
              },
              line_length = 4,
              lines_per_file = 8,
              shift = {1, 0.3}
            }
          }
        },
        wheels = standard_train_wheels,
        rail_category = "regular",
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/train-engine.ogg",
            volume = 0.4
          },
          match_speed_to_activity = true,
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
        sound_minimum_speed = 0.5;
      }
    }
)