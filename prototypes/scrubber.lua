require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")
local biochamber_pictures = require("__space-age__.prototypes.entity.biochamber-pictures")

circuit_connector_definitions["aop-scrubber"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 17, main_offset = util.by_pixel(-8.375,  18.25), shadow_offset = util.by_pixel(-8.375,  18.25), show_shadow = true }, 
    { variation = 17, main_offset = util.by_pixel(-8.375,  18.25), shadow_offset = util.by_pixel(-8.375,  18.25), show_shadow = true }, 
    { variation = 17, main_offset = util.by_pixel(-8.375,  18.25), shadow_offset = util.by_pixel(-8.375,  18.25), show_shadow = true }, 
    { variation = 17, main_offset = util.by_pixel(-8.375,  18.25), shadow_offset = util.by_pixel(-8.375,  18.25), show_shadow = true }, 
  }
)

data:extend{
    {
        name = "aop-scrubber",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/scrubber.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-scrubber", amount=1}}
        },
        max_health = 250,
        corpse = "small-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-scrubber"],
        collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"scrubbing"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_picture =                 biochamber_pictures.pipe_pictures_1,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_2,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
              {
                flow_direction="input",
                direction = defines.direction.north,
                position = {-1, -1}
              }
            }
          },
          {
            production_type = "input",
            pipe_picture =                 biochamber_pictures.pipe_pictures_2,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_1,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
              {
                flow_direction="input",
                direction = defines.direction.north,
                position = {1, -1}
              }
            }
          },
          {
            production_type = "output",
            pipe_picture =                 biochamber_pictures.pipe_pictures_1,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_2,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
              {
                flow_direction = "output",
                direction = defines.direction.south,
                position = {1, 1}
              }
            }
          },
          {
            production_type = "output",
            pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
              {
                flow_direction = "output",
                direction = defines.direction.south,
                position = {0, 1}
              }
            }
          },
          {
            production_type = "output",
            pipe_picture =                 biochamber_pictures.pipe_pictures_2,
            mirrored_pipe_picture =        biochamber_pictures.pipe_pictures_1,
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections =
            {
              {
                flow_direction = "output",
                direction = defines.direction.south,
                position = {-1, 1}
              }
            }
          }
        },
        crafting_speed = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = -50, spores = -50 },
          drain = "100kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "1MW",
        heating_energy = "100kW",
        module_slots = 0,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "pollution"},
        graphics_set = {
          always_draw_idle_animation = true,
          idle_animation = {
            layers = {
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/scrubber/scrubber-hr-shadow.png",
                size = {400, 350},
                shift = util.by_pixel(0, -16),
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                repeat_count = 60,
                draw_as_shadow = true,
                animation_speed = 0.5,
              },
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/scrubber/scrubber-hr-animation-1.png",
                size = {210, 290},
                shift = util.by_pixel(0, -16),
                scale = 0.5,
                line_length = 8,
                lines_per_file = 8,
                frame_count = 60,
                animation_speed = 0.5,
              },
            },
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
        surface_conditions = {
          {
            property = "pressure",
            min = 1,
          }
        },
        working_sound =
        {
          sound = {filename = "__base__/sound/steam-turbine.ogg", volume = 0.7},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-scrubber-created",
              },
            }
          }
        },
      },
}