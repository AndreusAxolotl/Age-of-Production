local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")
local biochamber_pictures = require("__space-age__.prototypes.entity.biochamber-pictures")

local total = 0
local profile = {}
for i = 1, 5000 do
    total = total + (2 ^ (-i + 1))
    profile[i] = total / i * 2 / 3
end

circuit_connector_definitions["aop-advanced-assembling-machine"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 17, main_offset = util.by_pixel(-47.5,  47.25), shadow_offset = util.by_pixel(-47.5,  47.25), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(-47.5,  47.25), shadow_offset = util.by_pixel(-47.5,  47.25), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(-47.5,  47.25), shadow_offset = util.by_pixel(-47.5,  47.25), show_shadow = true },
    { variation = 17, main_offset = util.by_pixel(-47.5,  47.25), shadow_offset = util.by_pixel(-47.5,  47.25), show_shadow = true },
  }
)
circuit_connector_definitions["aop-arc-furnace"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 25, main_offset = util.by_pixel(-37.75,  28.25), shadow_offset = util.by_pixel(-37.75,  28.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-37.75,  28.25), shadow_offset = util.by_pixel(-37.75,  28.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-37.75,  28.25), shadow_offset = util.by_pixel(-37.75,  28.25), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-37.75,  28.25), shadow_offset = util.by_pixel(-37.75,  28.25), show_shadow = true },
  }
)
circuit_connector_definitions["aop-armory"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation =  6, main_offset = util.by_pixel( 33.75,  49.25), shadow_offset = util.by_pixel( 33.75,  49.25), show_shadow = true },
    { variation =  6, main_offset = util.by_pixel( 33.75,  49.25), shadow_offset = util.by_pixel( 33.75,  49.25), show_shadow = true },
    { variation =  6, main_offset = util.by_pixel( 33.75,  49.25), shadow_offset = util.by_pixel( 33.75,  49.25), show_shadow = true },
    { variation =  6, main_offset = util.by_pixel( 33.75,  49.25), shadow_offset = util.by_pixel( 33.75,  49.25), show_shadow = true },
  }
)
circuit_connector_definitions["aop-atomic-enricher"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
  }
)
circuit_connector_definitions["aop-biochemical-facility"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
  }
)
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
circuit_connector_definitions["aop-electromechanic-facility"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 32, main_offset = util.by_pixel( 92.875, -89.75), shadow_offset = util.by_pixel( 92.875, -89.75), show_shadow = true },
    { variation = 32, main_offset = util.by_pixel( 92.875, -89.75), shadow_offset = util.by_pixel( 92.875, -89.75), show_shadow = true },
    { variation = 32, main_offset = util.by_pixel( 92.875, -89.75), shadow_offset = util.by_pixel( 92.875, -89.75), show_shadow = true },
    { variation = 32, main_offset = util.by_pixel( 92.875, -89.75), shadow_offset = util.by_pixel( 92.875, -89.75), show_shadow = true },
  }
)
circuit_connector_definitions["aop-greenhouse"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true },
  }
)
circuit_connector_definitions["aop-hydraulic-plant"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
  }
)
circuit_connector_definitions["aop-lumber-mill"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
  }
) 
circuit_connector_definitions["aop-mineral-synthesizer"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 24, main_offset = util.by_pixel(-56.875,  22), shadow_offset = util.by_pixel(-56.875,  22), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-56.875,  22), shadow_offset = util.by_pixel(-56.875,  22), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-56.875,  22), shadow_offset = util.by_pixel(-56.875,  22), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-56.875,  22), shadow_offset = util.by_pixel(-56.875,  22), show_shadow = true }, 
  }
)
circuit_connector_definitions["aop-petrochemical-facility"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(-27.25,  68.25), shadow_offset = util.by_pixel(-27.25,  68.25), show_shadow = true }, 
    { variation = 26, main_offset = util.by_pixel(-27.25,  68.25), shadow_offset = util.by_pixel(-27.25,  68.25), show_shadow = true }, 
    { variation = 26, main_offset = util.by_pixel(-27.25,  68.25), shadow_offset = util.by_pixel(-27.25,  68.25), show_shadow = true }, 
    { variation = 26, main_offset = util.by_pixel(-27.25,  68.25), shadow_offset = util.by_pixel(-27.25,  68.25), show_shadow = true }, 
  }
)
circuit_connector_definitions["aop-quantum-assembler"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 27, main_offset = util.by_pixel( 36, -16.625), shadow_offset = util.by_pixel( 36, -16.625), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 36, -16.625), shadow_offset = util.by_pixel( 36, -16.625), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 36, -16.625), shadow_offset = util.by_pixel( 36, -16.625), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 36, -16.625), shadow_offset = util.by_pixel( 36, -16.625), show_shadow = true }, 
  }
)
circuit_connector_definitions["aop-salvager"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 24, main_offset = util.by_pixel(-62.75,  6.25), shadow_offset = util.by_pixel(-62.75,  6.25), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-62.75,  6.25), shadow_offset = util.by_pixel(-62.75,  6.25), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-62.75,  6.25), shadow_offset = util.by_pixel(-62.75,  6.25), show_shadow = true }, 
    { variation = 24, main_offset = util.by_pixel(-62.75,  6.25), shadow_offset = util.by_pixel(-62.75,  6.25), show_shadow = true }, 
  }
)
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
circuit_connector_definitions["aop-smeltery"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 27, main_offset = util.by_pixel( 113.75, -19.75), shadow_offset = util.by_pixel( 113.75, -19.75), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 113.75, -19.75), shadow_offset = util.by_pixel( 113.75, -19.75), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 113.75, -19.75), shadow_offset = util.by_pixel( 113.75, -19.75), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel( 113.75, -19.75), shadow_offset = util.by_pixel( 113.75, -19.75), show_shadow = true }, 
  }
)

local function animationLayerSmeltery()
  return {
      priority = "high",
      width = 540,
      height = 580,
      frame_count = 120,
      lines_per_file = 8,
      animation_speed = 0.15,
      scale = 0.5,
      shift = util.by_pixel(0, -16),
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 7
          }
      }
  }
end
local function animationLayerCoreMiner()
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
local function animationLayerEMech()
  return {
      priority = "high",
      width = 590,
      height = 640,
      frame_count = 80,
      lines_per_file = 8,
      animation_speed = 0.15,
      scale = 0.5,
      shift = util.by_pixel(0, -12),
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 2
          }
      }
  }
end
local function animationLayerGreenhouse()
  return {
      priority = "high",
      width = 340,
      height = 355,
      frame_count = 128,
      lines_per_file = 8,
      animation_speed = 0.15,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 8
          }
      }
  }
end
local function animationLayerSynth()
  return {
      priority = "high",
      width = 270,
      height = 310,
      frame_count = 80,
      lines_per_file = 8,
      animation_speed = 0.5,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 8
          }
      }
  }
end
local function animationLayerSalvager()
    return {
        priority = "high",
        width = 270,
        height = 282,
        frame_count = 128,
        lines_per_file = 8,
        animation_speed = 1,
        shift = util.by_pixel(0, -8),
        scale = 0.5,
        stripes = {
            {
                filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-animation-1.png",
                width_in_frames = 8,
                height_in_frames = 8
            },
            {
                filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-animation-2.png",
                width_in_frames = 8,
                height_in_frames = 8
            }
        }
    }
  end


data:extend {{
    type = "item",
    name = "aop-arc-furnace",
    subgroup = "smelting-machine",
    order = "f[aop-arc-furnace]",
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/arc-furnace.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 200000,
    place_result = "aop-arc-furnace"
},
{
    type = "recipe",
    name = "aop-arc-furnace",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "copper-cable",       amount = 35},
        {type = "item", name = "tungsten-carbide", amount = 30},
        {type = "item", name = "refined-concrete", amount = 20},
        {type = "item", name = "advanced-circuit", amount = 20},
        {type = "item", name = "electric-furnace", amount = 1},
    },
    results = {
        {type = "item", name = "aop-arc-furnace", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-arc-furnace",
    category = "metallurgy-2-the-return",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-atomic-enricher",
    subgroup = "production-machine",
    order = "g[aop-atomic-enricher]",
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/atomic-enricher.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-atomic-enricher"
},
{
    type = "recipe",
    name = "aop-atomic-enricher",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 50},
        {type = "item", name = "tungsten-plate",       amount = 40},
        {type = "item", name = "refined-concrete", amount = 40},
        {type = "item", name = "centrifuge", amount = 5},
    },
    results = {
        {type = "item", name = "aop-atomic-enricher", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-atomic-enricher",
    category = "advanced-centrifuging-or-centrifuging",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-biochemical-facility",
    subgroup = "agriculture",
    order = "h[aop-biochemical-facility]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/biochemical-facility.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-biochemical-facility"
},
{
    type = "recipe",
    name = "aop-biochemical-facility",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 50},
        {type = "item", name = "steel-plate",       amount = 40},
        {type = "item", name = "carbon-fiber", amount = 60},
        {type = "item", name = "biochamber", amount = 2},
        {type = "item", name = "nutrients", amount = 75},
        {type = "item", name = "uranium-235", amount = 50},
        {type = "item", name = "biter-egg", amount = 5},
        {type = "item", name = "pentapod-egg", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biochemical-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 2000}},
    main_product = "aop-biochemical-facility",
    category = "cryogenics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-electromechanic-facility",
    subgroup = "production-machine",
    order = "h[aop-electromechanic-facility]",
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/electromechanic-facility.png",
    icon_size = 64,
    stack_size = 5,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-electromechanic-facility"
},
{
    type = "recipe",
    name = "aop-electromechanic-facility",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 100},
        {type = "item", name = "lithium-plate",       amount = 50},
        {type = "item", name = "refined-concrete", amount = 250},
        {type = "item", name = "tungsten-plate", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 50},
    },
    results = {
        {type = "item", name = "aop-electromechanic-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 100, max = 600}},
    main_product = "aop-electromechanic-facility",
    category = "electromagnetics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-greenhouse",
    subgroup = "agriculture",
    order = "i[aop-greenhouse]",
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/greenhouse.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-greenhouse"
},
{
    type = "recipe",
    name = "aop-greenhouse",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "agricultural-tower",   amount = 1},
        {type = "item", name = "landfill",       amount = 20},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "processing-unit", amount = 20},
        {type = "item", name = "iron-gear-wheel", amount = 20},
    },
    results = {
        {type = "item", name = "aop-greenhouse", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 2000}},
    main_product = "aop-greenhouse",
    category = "woodworking",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-hydraulic-plant",
    subgroup = "production-machine",
    order = "i[aop-hydraulic-plant]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/hydraulic-plant.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-hydraulic-plant"
},
{
    type = "recipe",
    name = "aop-hydraulic-plant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "pump",   amount = 5},
        {type = "item", name = "tungsten-plate",       amount = 30},
        {type = "item", name = "lithium-plate",       amount = 30},
        {type = "item", name = "processing-unit", amount = 40},
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "item", name = "aop-hydraulic-plant", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 100, max = 600}},
    main_product = "aop-hydraulic-plant",
    category = "hydraulics-or-chemistry",
    crafting_machine_tint =
    {
        primary = {r = 0.433, g = 0.773, b = 1.000, a = 1.000},
        secondary = {r = 0.591, g = 0.856, b = 1.000, a = 1.000},
        tertiary = {r = 0.381, g = 0.428, b = 0.436, a = 0.502},
        quaternary = {r = 0.499, g = 0.797, b = 0.793, a = 0.733},
    },
    auto_recycle = true
},
{
    type = "item",
    name = "aop-lumber-mill",
    subgroup = "agriculture",
    order = "g[aop-lumber-mill]",
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/lumber-mill.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-lumber-mill"
},
{
    type = "recipe",
    name = "aop-lumber-mill",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 30},
        {type = "item", name = "iron-gear-wheel",       amount = 20},
        {type = "item", name = "wood", amount = 50},
        {type = "item", name = "landfill", amount = 20},
    },
    results = {
        {type = "item", name = "aop-lumber-mill", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-lumber-mill",
    category = "woodworking-or-crafting",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-petrochemical-facility",
    subgroup = "production-machine",
    order = "g[aop-petrochemical-facility]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/petrochemical-facility.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-petrochemical-facility"
},
{
    type = "recipe",
    name = "aop-petrochemical-facility",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "pump",   amount = 5},
        {type = "item", name = "pipe",       amount = 20},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "steel-plate", amount = 50},
        {type = "fluid", name = "heavy-oil", amount = 300},
    },
    results = {
        {type = "item", name = "aop-petrochemical-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 300, max = 800}},
    main_product = "aop-petrochemical-facility",
    category = "hydraulics-or-chemistry",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, 
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000},
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000},
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000},
    },
    auto_recycle = true
},
{
    type = "item",
    name = "aop-quantum-assembler",
    subgroup = "production-machine",
    order = "w[aop-quantum-assembler]",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-assembler.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-quantum-assembler"
},
{
    type = "recipe",
    name = "aop-quantum-assembler",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 100},
        {type = "item", name = "tungsten-plate",       amount = 200},
        {type = "item", name = "refined-concrete", amount = 100},
        {type = "item", name = "superconductor", amount = 75},
        {type = "item", name = "supercapacitor",   amount = 50},
        {type = "item", name = "aop-advanced-assembling-machine",       amount = 2},
        {type = "item", name = "promethium-asteroid-chunk", amount = 1},
        {type = "item", name = "raw-fish", amount = 1},
        {type = "fluid", name = "fluoroketone-cold", amount = 50},
    },
    results = {
        {type = "item", name = "aop-quantum-assembler", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-assembler",
    category = "electromechanics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-quantum-computer",
    order = "z[aop-quantum-computer]",
    subgroup = "production-machine",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-computer.png",
    icon_size = 64,
    stack_size = 1,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-quantum-computer"
},
{
    type = "recipe",
    name = "aop-quantum-computer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "biolab",       amount = 10},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 200},
        {type = "item", name = "tungsten-plate",       amount = 500},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 100},
        {type = "item", name = "electric-engine-unit", amount = 100},
        {type = "fluid", name = "fluoroketone-cold", amount = 200},
    },
    results = {
        {type = "item", name = "aop-quantum-computer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-computer",
    category = "electromechanics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-quantum-stabilizer",
    subgroup = "module",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-stabilizer.png",
    icon_size = 64,
    stack_size = 5,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-quantum-stabilizer"
},
{
    type = "recipe",
    name = "aop-quantum-stabilizer",
    enabled = false,
    energy_required = 240,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "beacon",       amount = 20},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 250},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 800},
        {type = "item", name = "electric-engine-unit", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 300},
    },
    results = {
        {type = "item", name = "aop-quantum-stabilizer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-stabilizer",
    category = "electromechanics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-scrubber",
    subgroup = "production-machine",
    order = "g[aop-scrubber]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/scrubber.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-scrubber"
},
{
    type = "recipe",
    name = "aop-scrubber",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "iron-gear-wheel",       amount = 25},
        {type = "item", name = "pipe", amount = 5},
        {type = "item", name = "copper-cable", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 20},
    },
    results = {
        {type = "item", name = "aop-scrubber", amount = 1}
    },
    allow_productivity = false,
    main_product = "aop-scrubber",
    category = "crafting",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-smeltery",
    subgroup = "smelting-machine",
    order = "f[aop-smeltery]",
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/smeltery.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 1000000,
    place_result = "aop-smeltery"
},
{
    type = "recipe",
    name = "aop-smeltery",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "tungsten-plate",   amount = 100},
        {type = "item", name = "iron-gear-wheel",       amount = 70},
        {type = "item", name = "tungsten-carbide", amount = 60},
        {type = "item", name = "refined-concrete", amount = 35},
        {type = "item", name = "quantum-processor", amount = 20},
        {type = "item", name = "foundry", amount = 1},
        {type = "fluid", name = "lubricant", amount = 100},
    },
    results = {
        {type = "item", name = "aop-smeltery", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-smeltery",
    category = "metallurgy-2-the-return",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-salvager",
    subgroup = "smelting-machine",
    order = "e[aop-salvager]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/salvager.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-salvager"
},
{
    type = "recipe",
    name = "aop-salvager",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "recycler",   amount = 1},
        {type = "item", name = "quality-module-3",       amount = 4},
        {type = "item", name = "carbon-fiber", amount = 20},
        {type = "item", name = "refined-concrete", amount = 30},
    },
    results = {
        {type = "item", name = "aop-salvager", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 800, max = 800}},
    main_product = "aop-salvager",
    category = "electromagnetics",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-advanced-assembling-machine",
    subgroup = "production-machine",
    order = "h[aop-advanced-assembling-machine]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/advanced-assembling-machine.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-advanced-assembling-machine"
},
{
    type = "recipe",
    name = "aop-advanced-assembling-machine",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "assembling-machine-3",   amount = 4},
        {type = "item", name = "efficiency-module-3",       amount = 3},
        {type = "item", name = "productivity-module-3", amount = 3},
        {type = "item", name = "speed-module-3", amount = 3},
        {type = "item", name = "refined-concrete", amount = 30},
        {type = "item", name = "supercapacitor", amount = 15},
        {type = "item", name = "steel-plate", amount = 50},
    },
    results = {
        {type = "item", name = "aop-advanced-assembling-machine", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 800, max = 800}},
    main_product = "aop-advanced-assembling-machine",
    category = "electromagnetics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-core-miner",
    subgroup = "extraction-machine",
    order = "a[items]-d[aop-core-miner]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/core-miner.png",
    icon_size = 64,
    stack_size = 1,
    default_import_location = "vulcanus",
    weight = 1000000,
    place_result = "aop-core-miner"
},
{
    type = "recipe",
    name = "aop-core-miner",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "big-mining-drill",   amount = 5},
        {type = "item", name = "quantum-processor",   amount = 750},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 200},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 300},
        {type = "fluid", name = "molten-iron", amount = 500},
        {type = "fluid", name = "molten-copper", amount = 500},
    },
    results = {
        {type = "item", name = "aop-core-miner", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-core-miner",
    category = "electromechanics",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-armory",
    subgroup = "production-machine",
    order = "h[aop-armory]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/armory.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 200000,
    place_result = "aop-armory"
},
{
    type = "recipe",
    name = "aop-armory",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "assembling-machine-2",   amount = 1},
        {type = "item", name = "advanced-circuit",   amount = 25},
        {type = "item", name = "refined-concrete", amount = 20},
        {type = "item", name = "tungsten-plate", amount = 35},
        {type = "fluid", name = "molten-copper",   amount = 100},
    },
    results = {
        {type = "item", name = "aop-armory", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-armory",
    category = "metallurgy-2-the-return",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-mineral-synthesizer",
    subgroup = "production-machine",
    order = "i[aop-mineral-synthesizer]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-synthesizer.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-mineral-synthesizer"
},
{
    type = "recipe",
    name = "aop-mineral-synthesizer",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "electric-furnace",   amount = 1},
        {type = "item", name = "chemical-plant",   amount = 1},
        {type = "item", name = "tungsten-plate",       amount = 20},
        {type = "item", name = "lithium-plate",       amount = 30},
        {type = "item", name = "processing-unit", amount = 40},
        {type = "item", name = "copper-plate", amount = 35},
    },
    results = {
        {type = "item", name = "aop-mineral-synthesizer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}},
    main_product = "aop-mineral-synthesizer",
    category = "crafting",
    auto_recycle = true
},
{
    type = "item",
    name = "aop-biomass-reactor",
    subgroup = "energy",
    order = "e[aop-biomass-reactor]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-reactor.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-biomass-reactor"
},
{
    type = "recipe",
    name = "aop-biomass-reactor",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "heating-tower",       amount = 1},
        {type = "item", name = "refined-concrete", amount = 25},
        {type = "item", name = "steam-turbine", amount = 2},
        {type = "item", name = "heat-pipe", amount = 10},
        {type = "item", name = "advanced-circuit", amount = 20},
    },
    results = {
        {type = "item", name = "aop-biomass-reactor", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-biomass-reactor",
    category = "crafting",
    auto_recycle = false
},
{
    type = "item",
    name = "aop-transmitter",
    subgroup = "module",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/transmitter.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-transmitter"
},
{
    type = "recipe",
    name = "aop-transmitter",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 10},
        {type = "item", name = "processing-unit",       amount = 5},
        {type = "item", name = "copper-cable", amount = 10},
        {type = "item", name = "iron-stick", amount = 5},
    },
    results = {
        {type = "item", name = "aop-transmitter", amount = 1}
    },
    allow_productivity = false,
    main_product = "aop-transmitter",
    category = "electronics",
    auto_recycle = true
},
{
        name = "aop-advanced-assembling-machine",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/advanced-assembling-machine.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-advanced-assembling-machine", amount=1}}
        },
        max_health = 500,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-advanced-assembling-machine"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories,
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 1 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "1MW",
        heating_energy = "500kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.1
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-shadow.png",
                      priority = "high",
                      width = 520,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 100,
                      animation_speed = 0.35,
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 320,
                      height = 320,
                      frame_count = 100,
                      lines_per_file = 8,
                      animation_speed = 0.35,
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 5
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 320,
                              height = 320,
                              frame_count = 100,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 5
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 320,
                              height = 320,
                              frame_count = 100,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/advanced-assembling-machine/advanced-assembling-machine-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 5
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/advanced-assembling-machine.ogg", volume = 0.45},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-advanced-assembling-machine-created",
              },
            }
          }
        },
      },
      {
        name = "aop-arc-furnace",
        type = "furnace",
        icon = "__Age-of-Production-Graphics__/graphics/icons/arc-furnace.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-arc-furnace", amount=1}}
        },
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-arc-furnace"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = {"smelting"},
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 40 },
          drain = "300kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "5MW",
        heating_energy = "300kW",
        module_slots = 5,
        source_inventory_size = 1,
        result_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          always_draw_idle_animation = true,
          idle_animation = {
            layers = {
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-shadow.png",
                size = {600, 400},
                shift = {0, 0},
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                repeat_count = 50,
                draw_as_shadow = true,
                animation_speed = 0.25,
              },
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-animation-1.png",
                size = {320, 320},
                shift = {0, 0},
                scale = 0.5,
                line_length = 8,
                lines_per_file = 8,
                frame_count = 50,
                animation_speed = 0.25,
              },
            },
          },
          working_visualisations = {{
            fadeout = true,
            secondary_draw_order = 1,
            animation = {
              layers = {
                {
                  filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-animation-emission-1.png",
                  size = {320, 320},
                  shift = {0, 0},
                  scale = 0.5,
                  line_length = 8,
                  lines_per_file = 8,
                  frame_count = 40,
                  draw_as_glow = true,
                  blend_mode = "additive",
                  animation_speed = 0.25,
                },
              },
            },
          }},
        },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/arc-furnace.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-arc-furnace-created",
              },
            }
          }
        },
      },
      {
        name = "aop-smeltery",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/smeltery.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-smeltery", amount=1}}
        },
        max_health = 1000,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-smeltery"],
        collision_box = {{-3.6, -3.6}, {3.6, 3.6}},
        selection_box = {{-4, -4}, {4, 4}},
        
        crafting_categories = {"advanced-metallurgy"},
        fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { -1.5, 3.5 } } }
    },
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 1.5, 3.5 } } }
    },
    {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 100,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { -1.5, -3.5 } } }
    },
    {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 100,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 1.5, -3.5 } } }
    }
    },
        crafting_speed = 4,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 45 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "8MW",
        heating_energy = "500kW",
        module_slots = 8,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.25
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-shadow.png",
                      priority = "high",
                      width = 900,
                      height = 800,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 120,
                      animation_speed = 0.15,
                      draw_as_shadow = true,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5
                  },
                  animationLayerSmeltery()
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          animationLayerSmeltery(),
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 540,
                              height = 580,
                              frame_count = 120,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              scale = 0.5,
                              shift = util.by_pixel(0, -16),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-emission-2.png",
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
            
        working_sound =
        {
          sound = {filename = "__space-age__/sound/entity/foundry/foundry.ogg", volume = 0.7},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-smeltery-created",
              },
            }
          }
        },
      },
      {
        name = "aop-armory",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/armory.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-armory", amount=1}}
        },
        max_health = 450,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-armory"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = {"ammunition", "ammunition-or-crafting", "ammunition-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 5 },
          drain = "200kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "2MW",
        heating_energy = "500kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-shadow.png",
                      priority = "high",
                      width = 600,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.4,
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 360,
                      height = 350,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.4,
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 2
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 360,
                              height = 350,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.4,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 360,
                              height = 350,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.4,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__base__/sound/steam-turbine.ogg", volume = 0.65},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-armory-created",
              },
            }
          }
        },
      },
      {
        name = "aop-transmitter",
        type = "beacon",
        icon = "__Age-of-Production-Graphics__/graphics/icons/transmitter.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-transmitter", amount=1}}
        },
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-1, -1}, {1, 1}},
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "200kW",
        heating_energy = "150kW",
        module_slots = 1,
        supply_area_distance = 2,
        distribution_effectivity = 3,
        distribution_effectivity_bonus_per_quality_level = 0.75,
        allowed_effects = {"consumption", "speed", "pollution"},
        profile = profile,
        beacon_counter = "same_type",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
    close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
    animation = {
      layers = {
        {
          filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-shadow.png",
          priority = "high",
          width = 400,
          height = 350,
          frame_count= 1,
          line_length = 1,
          repeat_count = 20,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -16),
          draw_as_shadow = true,
          scale = 0.375
      },
          {
              priority = "high",
              width = 160,
              height = 290,
              frame_count = 20,
              animation_speed = 0.5,
              scale = 0.375,
              shift = util.by_pixel(0, -26),
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 3,
                  },
              },
          },
          {
              priority = "high",
              width = 160,
              height = 290,
              frame_count = 20,
              draw_as_glow = true,
              scale = 0.375,
              animation_speed = 0.5,
              blend_mode = "additive",
              shift = util.by_pixel(0, -26),
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 3,
                  },
              },
          },
      },
  },
  radius_visualisation_picture =
  {
    filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
    priority = "extra-high-no-scale",
    width = 3.5,
    height = 3.5
  }, 
  
  working_sound =
        {
          sound = {filename = "__base__/sound/combinator.ogg", volume = 0.3},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-transmitter-created",
              },
            }
          }
        },
      },
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
                  animationLayerCoreMiner()
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          animationLayerCoreMiner(),
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
      },
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
      {
        name = "aop-salvager",
        type = "furnace",
        icon = "__Age-of-Production-Graphics__/graphics/icons/salvager.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        fast_transfer_modules_into_module_slots_only = true,
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-salvager", amount=1}}
        },
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-salvager"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        
        crafting_categories = {"recycling", "recycling-or-hand-crafting"},
        crafting_speed = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 15 },
          drain = "300kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        vector_to_place_result = {2.35, -0.5},
        energy_usage = "5MW",
        heating_energy = "300kW",
        module_slots = 5,
        source_inventory_size = 1,
        result_inventory_size = 12,
        custom_input_slot_tooltip_key = "recycler-input-slot-tooltip",
        allowed_effects = {"consumption", "speed", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            quality = 1
          }
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-shadow.png",
                        priority = "high",
                        width = 1200,
                        height = 700,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 128,
                        animation_speed = 1,
                        shift = util.by_pixel(4, -8),
                        draw_as_shadow = true,
                        scale = 0.375
                    },
                    animationLayerSalvager()
                }
            },
            working_visualisations = {
                {
                    fadeout = true,
                    animation = {
                        layers = {
                            animationLayerSalvager(),
                            {
                                priority = "high",
                                draw_as_glow = true,
                                blend_mode = "additive",
                                width = 270,
                                height = 282,
                                frame_count = 128,
                                lines_per_file = 8,
                                animation_speed = 1,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
          
        working_sound =
    {
      sound = { filename = "__quality__/sound/recycler/recycler-loop.ogg", volume = 0.7 },
      sound_accents =
      {
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 14, audible_distance_modifier = 0.2 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-vox", 5, 0.2 )}, frame = 20, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-mechanic", 3, 0.3 )}, frame = 45, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 60, audible_distance_modifier = 0.2 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-trash", 5, 0.6 )}, frame = 61, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-shut", 6, 0.3 )}, frame = 63, audible_distance_modifier = 0.6 },
      },
      max_sounds_per_type = 2,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-salvager-created",
              },
            }
          }
        },
      },
      {
        name = "aop-atomic-enricher",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/atomic-enricher.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-atomic-enricher", amount=1}}
        },
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-atomic-enricher"], 
        collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
        selection_box = {{-3, -3}, {3, 3}},
        
        crafting_categories = {"centrifuging", "advanced-centrifuging", "advanced-centrifuging-or-centrifuging", "advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "advanced-centrifuging-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1.5, -2.5 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1.5, -2.5 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1.5, 2.5 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1.5, 2.5 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 4,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 15 },
          drain = "75kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/nuclear-open.ogg", volume = 0.8},
    close_sound = {filename = "__base__/sound/open-close/nuclear-close.ogg", volume = 0.8},
        energy_usage = "4MW",
        heating_energy = "500kW",
        module_slots = 4,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-shadow.png",
                      priority = "high",
                      width = 900,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 400,
                      height = 480,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 2
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 400,
                              height = 480,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 400,
                              height = 480,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__base__/sound/nuclear-reactor-1.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-atomic-enricher-created",
              },
            }
          }
        },
      },
      {
        name = "aop-biochemical-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biochemical-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-biochemical-facility", amount=1}}
        },
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-biochemical-facility"],
        collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        
        crafting_categories = {"biochemistry", "biochemistry-or-organic", "biochemistry-or-organic-or-hand-crafting", "biochemistry-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"},
        crafting_speed = 3,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = -5 },
          drain = "160kW",
        },
        impact_category = "organic",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "5MW",
        heating_energy = "1000kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.25
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 500,
                      height = 500,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-animation.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 500,
                              height = 500,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-animation.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                      }
                  }
              }
          },
      },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/biochemical-facility.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-biochemical-facility-created",
              },
            }
          }
        },
      },
      {
        name = "aop-biomass-reactor",
        type = "burner-generator",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-reactor.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-biomass-reactor", amount=1}}
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},
        max_power_output = "2.5MW",
       burner =
  {
    type = "burner",
    fuel_categories = {"nutrients", "aop-spoilage"},
    effectivity = 5,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = { pollution = 1 },
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-output"
  },
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        animation =
        {
            layers =
            {                  
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -36),
                  animation_speed = 1.25,
                  scale = 0.5,
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },         
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -36),
                  draw_as_glow = true,
                  scale = 0.5,
                  animation_speed = 1.25,
                  blend_mode = "additive",
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },                   
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-shadow.png",
                    width = 900,
                    height = 500,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 80,
                    animation_speed = 1.25,
                    shift = util.by_pixel(13, -9),
                    scale = 0.5,
                    draw_as_shadow = true
                },   
            }
        },
        idle_animation =
        {
            layers =
            {                  
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -36),
                  animation_speed = 1.25,
                  scale = 0.5,
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },                              
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-shadow.png",
                    width = 900,
                    height = 500,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 80,
                    animation_speed = 1.25,
                    shift = util.by_pixel(13, -9),
                    scale = 0.5,
                    draw_as_shadow = true
                },   
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
                effect_id = "aop-biomass-reactor-created",
              },
            }
          }
        },
      },
      {
        name = "aop-electromechanic-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/electromechanic-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-electromechanic-facility", amount=1}}
        },
        max_health = 1300,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-electromechanic-facility"],
        collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        
        crafting_categories = {"electromechanics", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "organic-or-electromechanics", "advanced-centrifuging-or-crafting-or-electromechanics", "organic-or-assembling-or-electromechanics"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -4 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -4 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 4 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 4 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 10 },
          drain = "1MW",
        },
        impact_category = "metal",
        open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
        energy_usage = "50MW",
        heating_energy = "1000kW",
        module_slots = 10,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            quality = 5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-shadow.png",
                      priority = "high",
                      width = 1200,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.15,
                      draw_as_shadow = true,
                      scale = 0.5,
                      shift = util.by_pixel(0, -12),
                  },
                  animationLayerEMech()
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          animationLayerEMech(),
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 590,
                              height = 640,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              scale = 0.5,
                              shift = util.by_pixel(0, -12),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg", volume = 0.8},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-electromechanic-facility-created",
              },
            }
          }
        },
      },
      {
        name = "aop-greenhouse",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/greenhouse.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-greenhouse", amount=1}}
        },
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-greenhouse"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = {"agriculture"},
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = -10, spores = 10 },
          drain = "100kW",
        },
        impact_category = "organic",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        fluid_boxes =
        {
          {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {-2, 2} }}
            },
            {
              production_type = "input",
              pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
              always_draw_covers = true, 
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {0, 2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {2, 2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {-2, -2} }}
            },
            {
              production_type = "input",
              pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
              always_draw_covers = true, 
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {0, -2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {2, -2} }}
            }
      },
        energy_usage = "100kW",
        heating_energy = "100kW", 
        module_slots = 2,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
            base_effect = {
              productivity = 0.50
            }
          },
          graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-shadow.png",
                        priority = "high",
                        width = 700,
                        height = 500,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 128,
                        animation_speed = 0.15,
                        shift = util.by_pixel(0, -8),
                        draw_as_shadow = true,
                        scale = 0.5
                    },
                    animationLayerGreenhouse()
                }
            },
            recipe_not_set_tint = { primary = {r = 0.6, g = 0.6, b =  0.5, a = 1}},
            working_visualisations = {
                {
                    fadeout = true,
                    animation = {
                        layers = {
                            animationLayerGreenhouse(),
                            {
                                priority = "high",
                                draw_as_glow = true,
                                blend_mode = "additive",
                                width = 340,
                                height = 355,
                                frame_count = 128,
                                lines_per_file = 8,
                                animation_speed = 0.15,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            },
                            {
                              priority = "high",
                              fadeout = true,
                              blend_mode = "additive",
                              apply_recipe_tint = "primary",
                              width = 340,
                              height = 355,
                              frame_count = 128,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-color3-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-color3-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          }
                        }
                    }
                }
            }
        },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/greenhouse.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-greenhouse-created",
              },
            }
          }
        },
      },
      {
        name = "aop-hydraulic-plant",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/hydraulic-plant.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-hydraulic-plant", amount=1}}
        },
        max_health = 350,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-hydraulic-plant"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        
        crafting_categories = {"hydraulics", "hydraulics-or-chemistry", "hydraulics-or-organic", "hydraulics-or-chemistry-or-cryogenics"},
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.south, flow_direction = "input-output", position = {-0.5, 1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.east, flow_direction = "input-output", position = {1.5, -0.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.north, flow_direction = "input-output", position = {0.5, -1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.west, flow_direction = "input-output", position = {-1.5, 0.5}}},
                secondary_draw_orders = {north = -1},
            },
        },
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 4 },
          drain = "50kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "1.5MW",
        heating_energy = "300kW",
        module_slots = 4,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-shadow.png",
                      priority = "high",
                      width = 1200,
                      height = 800,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 1,
                      shift = util.by_pixel(4, -12),
                      draw_as_shadow = true,
                      scale = 0.25,
                  },
                  {
                      priority = "high",
                      width = 280,
                      height = 320,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 1,
                      scale = 0.5,
                      shift = util.by_pixel(0, -14),
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          }
                      }
                  },
              }
          },
          recipe_not_set_tint = { primary = {r = 0.0, g = 0.6, b =  0.6, a = 1}},          
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 280,
                              height = 320,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 1,
                              scale = 0.5,
                              shift = util.by_pixel(0, -14),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 280,
                              height = 320,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 1,
                              scale = 0.5,
                              shift = util.by_pixel(0, -14),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                          {
                            priority = "high",
                            fadeout = true,
                            blend_mode = "additive",
                            apply_recipe_tint = "primary",
                            width = 280,
                            height = 320,
                            frame_count = 60,
                            lines_per_file = 8,
                            animation_speed = 1,
                            scale = 0.5,
                            shift = util.by_pixel(0, -14),
                            stripes = {
                                {
                                    filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-color.png",
                                    width_in_frames = 8,
                                    height_in_frames = 8
                                }
                            }
                        }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/hydraulic-plant.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-hydraulic-plant-created",
              },
            }
          }
        },
      },
      {
        name = "aop-lumber-mill",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/lumber-mill.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-lumber-mill", amount=1}}
        },
        max_health = 450,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-lumber-mill"],
        collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        
        crafting_categories = {"woodworking", "woodworking-or-organic", "woodworking-or-crafting", "woodworking-or-organic-or-assembling"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -3 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 3 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 },
          drain = "100kW",
        },
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        energy_usage = "100kW",
        heating_energy = "50kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.50
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.25,
                      shift = util.by_pixel(0, -18),
                      draw_as_shadow = true,
                      scale = 0.45
                  },
                  {
                      priority = "high",
                      width = 525,
                      height = 557,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.25,
                      shift = util.by_pixel(0, -18),
                      scale = 0.45,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 2
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 525,
                              height = 557,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.25,
                              shift = util.by_pixel(0, -18),
                              scale = 0.45,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 525,
                              height = 557,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.25,
                              shift = util.by_pixel(0, -18),
                              scale = 0.45,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/lumber-mill.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-lumber-mill-created",
              },
            }
          }
        },
      },
      {
        name = "aop-mineral-synthesizer",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-synthesizer.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-mineral-synthesizer", amount=1}}
        },
        max_health = 300,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-mineral-synthesizer"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        
        crafting_categories = {"synthesis", "synthesis-or-chemistry", "synthesis-or-crafting-with-fluid", "synthesis-or-cryogenics-or-chemistry"},
        crafting_speed = 1.5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 10 },
          drain = "100kW",
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.south, flow_direction = "input-output", position = {-0.5, 1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.east, flow_direction = "input-output", position = {1.5, -0.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.north, flow_direction = "input-output", position = {0.5, -1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.west, flow_direction = "input-output", position = {-1.5, 0.5}}},
                secondary_draw_orders = {north = -1},
            },
        },
        energy_usage = "2MW",
        heating_energy = "300kW", 
        module_slots = 4,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
            base_effect = {
              productivity = 0.20
            }
          },
          graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-shadow.png",
                        priority = "high",
                        width = 500,
                        height = 350,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 80,
                        animation_speed = 0.5,
                        draw_as_shadow = true,
                        scale = 0.5
                    },
                    animationLayerSynth()
                }
            },
            recipe_not_set_tint = { primary = {r = 0, g = 0, b =  0, a = 1}},
            working_visualisations = {
                {
                    fadeout = true,
                    animation = {
                        layers = {
                            animationLayerSynth(),
                            {
                                priority = "high",
                                draw_as_glow = true,
                                blend_mode = "additive",
                                width = 270,
                                height = 310,
                                frame_count = 80,
                                lines_per_file = 8,
                                animation_speed = 0.5,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            },
                            {
                              priority = "high",
                              fadeout = true,
                              apply_recipe_tint = "primary",
                              width = 270,
                              height = 310,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.5,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-color2-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-color2-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          }
                        }
                    }
                }
            }
        },
          
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/arc-furnace.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-mineral-synthesizer-created",
              },
            }
          }
        },
      },
      {
        name = "aop-petrochemical-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/petrochemical-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-petrochemical-facility", amount=1}}
        },
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-petrochemical-facility"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = {"oil-processing", "petrochemistry", "petrochemistry-or-oil-processing", "petrochemistry-or-organic-or-chemistry", "petrochemistry-or-chemistry", "petrochemistry-or-organic-or-assembling", "petrochemistry-or-chemistry-or-cryogenics", "petrochemistry-or-organic"},
        fluid_boxes =
    {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-2, 2} }}
          },
          {
            production_type = "input",
            pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            always_draw_covers = true, 
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }}
          },
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {2, 2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-2, -2} }}
          },
          {
            production_type = "output",
            pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            always_draw_covers = true, 
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, -2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {2, -2} }}
          }
    },
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 60 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "4MW",
        heating_energy = "300kW",
        module_slots = 5,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.25
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 600,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 0.3,
                      draw_as_shadow = true,
                      scale = 0.45,
                      shift = util.by_pixel(0, -10),
                  },
                  {
                      priority = "high",
                      width = 400,
                      height = 400,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 0.3,
                      scale = 0.45,
                      shift = util.by_pixel(0, -10),
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 400,
                              height = 400,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.3,
                              scale = 0.45,
                              shift = util.by_pixel(0, -10),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 400,
                              height = 400,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.3,
                              scale = 0.45,
                              shift = util.by_pixel(0, -10),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
        working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/petrochemical-facility.ogg", volume = 0.9},
          apparent_volume = 0.5,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-petrochemical-facility-created",
              },
            }
          }
        },
      },
      {
        name = "aop-quantum-assembler",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-assembler.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-quantum-assembler", amount=1}}
        },
        max_health = 500,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-quantum-assembler"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        
        crafting_categories = {"quantum-assembling", "quantum-assembling-or-crafting", "quantum-assembling-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "5MW",
        heating_energy = "500kW",
        module_slots = 6,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 1
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-shadow.png",
                      priority = "high",
                      width = 1200,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.35,
                      draw_as_shadow = true,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 330,
                      height = 390,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.35,
                      scale = 0.5,
                      shift = util.by_pixel(0, -16),
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 2
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 330,
                              height = 390,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              shift = util.by_pixel(0, -16),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 330,
                              height = 390,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.35,
                              scale = 0.5,
                              shift = util.by_pixel(0, -16),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-assembler/quantum-assembler-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
          
        working_sound =
        {
          sound = {filename = "__space-age__/sound/entity/cryogenic-plant/cryogenic-plant.ogg", volume = 0.45},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-quantum-assembler-created",
              },
            }
          }
        },
      },
      {
        name = "aop-quantum-computer",
        type = "lab",
        icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-computer.png",
        icon_size = 64,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = {
            mining_time = 0.5,
            results = { { type = "item", name = "aop-quantum-computer", amount = 1 } }
        },
        max_health = 1500,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 0,
                max = 0
            }
        },
        collision_box = { { -2.6, -2.6 }, { 2.6, 2.6 } },
        selection_box = { { -3, -3 }, { 3, 3 } },
        
        researching_speed = 20,
        inputs = {},
        science_pack_drain_rate_percent = 10,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "75MW",
        heating_energy = "500kW",
        module_slots = 10,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        open_sound = { filename = "__base__/sound/open-close/lab-open.ogg", volume = 0.6 },
        close_sound = { filename = "__base__/sound/open-close/lab-close.ogg", volume = 0.6 },
        icons_positioning =
        {
            { inventory_index = defines.inventory.lab_modules, shift = { 0, 1.6 } },
            { inventory_index = defines.inventory.lab_input,   shift = { 0, 0.4 }, max_icons_per_row = 6, separation_multiplier = 1 / 1.1 }
        },
        on_animation =
        {
            layers =
            {                  
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -8.5),
                    scale = 0.5
                },         
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-emission-1.png",
                    blend_mode = "additive",
                    draw_as_glow = true,
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -10),
                    scale = 0.5
                },                
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                    width = 700,
                    height = 600,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 60,
                    animation_speed = 0.5,
                    shift = util.by_pixel(13, 1),
                    scale = 0.5,
                    draw_as_shadow = true
                },   

            }
        },
        off_animation =
        {
            layers =
            {
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, -8.5),
                    scale = 0.5
                },
                {filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                width = 700,
                height = 600,
                animation_speed = 0.5,
                shift = util.by_pixel(13, 1),
                draw_as_shadow = true,
                scale = 0.5
                }
            }
        },
        working_sound =
        {
            sound = { filename = "__space-age__/sound/entity/fusion/fusion-generator.ogg", volume = 0.9},
            apparent_volume = 0.3,
        },
        created_effect = {
            type = "direct",
            action_delivery = {
                type = "instant",
                source_effects = {
                    {
                        type = "script",
                        effect_id = "aop-quantum-computer-created",
                    },
                }
            }
        },
    },
{
        name = "aop-quantum-stabilizer",
        type = "beacon",
        icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-stabilizer.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-quantum-stabilizer", amount=1}}
        },
        max_health = 800,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
        selection_box = {{-3, -3}, {3, 3}},
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "25MW",
        heating_energy = "800kW",
        module_slots = 8,
        supply_area_distance = 18,
        distribution_effectivity = 2,
        distribution_effectivity_bonus_per_quality_level = 0.5,
        allowed_effects = {"consumption", "speed", "pollution", "quality"},
        profile = {1.00, 0.5, 0.3333, 0.25, 0.2, 0.1667, 0.1429, 0.125, 0.1111, 0.1, 0.0909, 0.0833, 0.0769, 0.0714, 0.0667, 0.0625, 0.0588, 0.0556, 0.0526, 0.05, 0.0476, 0.0455, 0.0435, 0.0417, 0.04, 0.0385, 0.037, 0.0357, 0.0345, 0.0333, 0.0323, 0.0312, 0.0303, 0.0294, 0.0286, 0.0278, 0.027, 0.0263, 0.0256, 0.025, 0.0244, 0.0238, 0.0233, 0.0227, 0.0222, 0.0217, 0.0213, 0.0208, 0.0204, 0.02, 0.0196, 0.0192, 0.0189, 0.0185, 0.0182, 0.0179, 0.0175, 0.0172, 0.0169, 0.0167, 0.0164, 0.0161, 0.0159, 0.0156, 0.0154, 0.0152, 0.0149, 0.0147, 0.0145, 0.0143, 0.0141, 0.0139, 0.0137, 0.0135, 0.0133, 0.0132, 0.013, 0.0128, 0.0127, 0.0125, 0.0123, 0.0122, 0.012, 0.0119, 0.0118, 0.0116, 0.0115, 0.0114, 0.0112, 0.0111, 0.011, 0.0109, 0.0108, 0.0106, 0.0105, 0.0104, 0.0103, 0.0102, 0.0101, 0.01},
        beacon_counter = "same_type",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
    close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
    animation = {
      layers = {
        {
          filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-shadow.png",
          priority = "high",
          width = 900,
          height = 420,
          frame_count= 1,
          line_length = 1,
          repeat_count = 100,
          animation_speed = 0.3,
          draw_as_shadow = true,
          scale = 0.5
      },
          {
              priority = "high",
              width = 410,
              height = 410,
              frame_count = 100,
              shift = util.by_pixel_hr(0, -16),
              animation_speed = 0.3,
              scale = 0.5,
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-2.png",
                      width_in_frames = 8,
                      height_in_frames = 5,
                  },
              },
          },
          {
              priority = "high",
              width = 410,
              height = 410,
              frame_count = 100,
              shift = util.by_pixel_hr(0, -16),
              draw_as_glow = true,
              scale = 0.5,
              animation_speed = 0.3,
              blend_mode = "additive",
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-emission-2.png",
                      width_in_frames = 8,
                      height_in_frames = 5,
                  },
              },
          },
      },
  },
  radius_visualisation_picture =
  {
    filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
    priority = "extra-high-no-scale",
    width = 10,
    height = 10
  }, 
  
  working_sound =
        {
          sound = {filename = "__Age-of-Production-Graphics__/sounds/quantum-stabilizer.ogg", volume = 0.2},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-quantum-stabilizer-created",
              },
            }
          }
        },
      }
    }