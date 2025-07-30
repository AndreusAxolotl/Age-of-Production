require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-core-miner"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation =  7, main_offset = util.by_pixel(-138.75,  98), shadow_offset = util.by_pixel(-138.75,  98), show_shadow = true },
    { variation =  7, main_offset = util.by_pixel(-138.75,  98), shadow_offset = util.by_pixel(-138.75,  98), show_shadow = true },
    { variation =  7, main_offset = util.by_pixel(-138.75,  98), shadow_offset = util.by_pixel(-138.75,  98), show_shadow = true },
    { variation =  7, main_offset = util.by_pixel(-138.75,  98), shadow_offset = util.by_pixel(-138.75,  98), show_shadow = true },
  }
)

local function animationLayer()
  return {
      priority = "high",
      width = 704,
      height = 704,
      frame_count = 120,
      lines_per_file = 8,
      animation_speed = 1,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/core-miner/core-miner-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/core-miner/core-miner-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 7
          }
      }
  }
end


data:extend{
    {
        name = "aop-core-miner",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/core-miner.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 5,
          results = {{type="item", name="aop-core-miner", amount=1}}
        },
        max_health = 3000,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        surface_conditions =
        {
            {
                property = "deep-crustal-stability",
                min = 3000,
            }
        },
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-core-miner"], 
        collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
        selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
        crafting_categories = {"core-mining"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { west = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.west, position = { -5,  3 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { west = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.west, position = { -5, -3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { west = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.east, position = { 5, 3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { west = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.east, position = { 5, -3 } } }
        },
      },
      fluid_boxes_off_when_no_fluid_recipe = false,
        crafting_speed = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 100 },
          drain = "5MW",
        },
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        energy_usage = "250MW",
        heating_energy = "2000kW",
        module_slots = 10,
        source_inventory_size = 1,
        fixed_recipe = "aop-core-mining",
        show_recipe_icon = false,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        vector_to_place_result = {0, 5.75},
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/core-miner/core-miner-hr-shadow.png",
                      priority = "high",
                      width = 1400,
                      height = 1400,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 120,
                      animation_speed = 1,
                      shift = util.by_pixel(0, -8),
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  animationLayer()
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          animationLayer(),
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 704,
                              height = 704,
                              frame_count = 120,
                              lines_per_file = 8,
                              animation_speed = 1,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/core-miner/core-miner-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/core-miner/core-miner-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 7
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          --[[{
        },
      },
          --[[{
            light = {
              type = "basic",
              intensity = 1,
              size = 15
            }
          }]]
        --},
        working_sound =
        {
          sound = {filename = "__space-age__/sound/entity/big-mining-drill/big-mining-drill-loop.ogg", volume = 0.8},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-core-miner-created",
              },
            }
          }
        },
      }
    }