local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")
local sounds = require("__base__.prototypes.entity.sounds")
local max_nuke_shockwave_movement_distance_deviation = 2
local max_nuke_shockwave_movement_distance = 19 + max_nuke_shockwave_movement_distance_deviation / 6
local nuke_shockwave_starting_speed_deviation = 0.075

data:extend {
{
        type = "item",
        name = "aop-biomass",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biomass.png",
        subgroup = "aop-biomass",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "nutrients",
        fuel_value = "0.75MJ",
        stack_size = 100,
        default_import_location = "nauvis",
        spoil_ticks = 36000,
        spoil_result = "spoilage",
        weight = 100 
},
{
    type = "fluid",
    name = "aop-mineral-slurry",
    subgroup = "aop-core-mining",
    default_temperature = 50,
    max_temperature = 200,
    heat_capacity = "10kJ",
    base_color = {0.35, 0.15, 0.07},
    flow_color = {0.35, 0.15, 0.07},
    icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-slurry.png",
    auto_barrel = false
},
{
        type = "item",
        name = "aop-deep-mineral",
        icon = "__Age-of-Production-Graphics__/graphics/icons/deep-mineral-1.png",
        pictures =
        {
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/deep-mineral-1.png",   scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/deep-mineral-2.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/deep-mineral-3.png", scale = 0.5}
        },
        subgroup = "aop-core-mining",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "nauvis",
        weight = 100000000 
    },
    {
        type = "item",
        name = "aop-refined-mineral",
        icon = "__Age-of-Production-Graphics__/graphics/icons/refined-mineral-1.png",
        pictures =
        {
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/refined-mineral-1.png",   scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/refined-mineral-2.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/refined-mineral-3.png", scale = 0.5}
        },
        subgroup = "aop-core-mining",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "nauvis",
        weight = 100000000 
    },
{
        type = "item",
        name = "aop-growing-biocircuit",
        icon = "__Age-of-Production-Graphics__/graphics/icons/growing-biocircuit.png",
        subgroup = "agriculture-processes",
        order = "z-1",
        inventory_move_sound = item_sounds.wood_inventory_move,
        pick_sound = item_sounds.wood_inventory_pickup,
        drop_sound = item_sounds.wood_inventory_move,
        stack_size = 100,
        default_import_location = "gleba",
        spoil_ticks = 10*minute,
        spoil_result = "aop-biocircuit",
        weight = 1*kg
},
{
        type = "item",
        name = "aop-biocircuit",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biocircuit.png",
        subgroup = "agriculture-processes",
        order = "z-2",
        inventory_move_sound = item_sounds.wood_inventory_move,
        pick_sound = item_sounds.wood_inventory_pickup,
        drop_sound = item_sounds.wood_inventory_move,
        stack_size = 100,
        default_import_location = "gleba",
        weight = 1*kg
},
{
        type = "item",
        name = "aop-wood-planks",
        icon = "__Age-of-Production-Graphics__/graphics/icons/wood-planks.png",
        subgroup = "aop-woodworking",
        order = "a",
        inventory_move_sound = item_sounds.wood_inventory_move,
        pick_sound = item_sounds.wood_inventory_pickup,
        drop_sound = item_sounds.wood_inventory_move,
        stack_size = 100,
        default_import_location = "nauvis",
        weight = 500 * grams
},
{
    type = "fluid",
    name = "aop-bitumen",
    subgroup = "fluid",
    default_temperature = 120,
    max_temperature = 150,
    base_color = {0.21, 0.19, 0.17},
    flow_color = {0.21, 0.19, 0.17},
    icon = "__Age-of-Production-Graphics__/graphics/icons/bitumen.png",
    auto_barrel = true
  },
  {
    type = "fluid",
    name = "aop-deuterium",
    subgroup = "fluid",
    default_temperature = 0,
    max_temperature = 200,
    base_color = {0.78, 0.78, 0.78},
    flow_color = {0.78, 0.78, 0.78},
    icon = "__Age-of-Production-Graphics__/graphics/icons/deuterium.png",
    auto_barrel = true
  },
  {
    type = "fluid",
    name = "aop-tritium",
    subgroup = "fluid",
    default_temperature = 0,
    max_temperature = 200,
    base_color = {0.80, 0.80, 0.80},
    flow_color = {0.80, 0.80, 0.80},
    icon = "__Age-of-Production-Graphics__/graphics/icons/tritium.png",
    auto_barrel = true
  },
  {
    type = "item",
    name = "aop-hot-tungsten-plate",
    icon = "__Age-of-Production-Graphics__/graphics/icons/hot-tungsten-plate.png",
    subgroup = "vulcanus-processes",
    order = "c[tungsten]-c[tungsten-plate]-b",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    stack_size = 50,
    default_import_location = "vulcanus",
    spoil_ticks = 0.5*minute,
    spoil_result = "tungsten-plate",
    weight = 4*kg
  },
  {
    type = "item",
    name = "aop-metallic-traces",
    icon = "__Age-of-Production-Graphics__/graphics/icons/metallic-traces.png",
    subgroup = "aop-synthesis",
    order = "a",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    stack_size = 50,
    default_import_location = "aquilo",
    weight = 10*kg
  },
  {
    type = "item",
    name = "aop-quicklime",
    icon = "__Age-of-Production-Graphics__/graphics/icons/quicklime.png",
    subgroup = "vulcanus-processes",
    order = "a[melting]-a[calcite]-b",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = "vulcanus",
    weight = 2*kg
  },
  {
    type = "item",
    name = "aop-radiation-cladding",
    icon = "__Age-of-Production-Graphics__/graphics/icons/radiation-cladding.png",
    subgroup = "uranium-processing",
    order = "d",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    stack_size = 20,
    weight = 20*kg
  },
  {
    type = "item",
    name = "aop-uranium-233",
    icon = "__Age-of-Production-Graphics__/graphics/icons/uranium-233.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__Age-of-Production-Graphics__/graphics/icons/uranium-233.png",
          scale = 0.5,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          blend_mode = "additive",
          size = 64,
          filename = "__Age-of-Production-Graphics__/graphics/icons/uranium-233.png",
          scale = 0.5,
          tint = {0.3, 0.3, 0.3, 0.3}
        }
      }
    },
    subgroup = "uranium-processing",
    color_hint = { text = "+" },
    order = "a[uranium-processing]-c",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    stack_size = 100,
    weight = 50*kg,
    spoil_ticks = 45*minute,
    spoil_result = "uranium-238",
  },
  {
    type = "item",
    name = "aop-rubber-sheet",
    icon = "__Age-of-Production-Graphics__/graphics/icons/rubber-sheet.png",
    subgroup = "raw-material",
    order = "b[chemistry]-b[plastic-bar]-b",
    inventory_move_sound = item_sounds.plastic_inventory_move,
    pick_sound = item_sounds.plastic_inventory_pickup,
    drop_sound = item_sounds.plastic_inventory_move,
    stack_size = 100,
    weight = 500 * grams,
  },
  {
    type = "item",
    name = "aop-unstable-matter",
    icon = "__Age-of-Production-Graphics__/graphics/icons/unstable-matter.png",
    subgroup = "aquilo-processes",
    order = "z",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    stack_size = 10,
    weight = 50*kg,
    spoil_ticks = 0.5 * minute,
    spoil_to_trigger_result =
    {
      items_per_trigger = 1, 
      trigger =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-entity",
              entity_name = "medium-explosion",
            },
            {
              type = "damage",
              damage = {amount = 237, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "medium-scorchmark-tintable",
              check_buildability = true
            },
          }
        }
      }
    }
  },
  {type = "item",
    name = "aop-unheated-thermal-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/icons/unheated-thermal-science-pack.png",
    subgroup = "vulcanus-processes",
    color_hint = { text = "M" },
    order = "z",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "vulcanus",
    weight = 1*kg,
    random_tint_color = item_tints.bluish_science,
},
  {type = "tool",
    name = "aop-thermal-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Age-of-Production-Graphics__/graphics/icons/thermal-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "h-3",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "vulcanus",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science,
    spoil_ticks = 15 * minute,
    spoil_result = "aop-quicklime",
},
{
  type = "tool",
    name = "aop-fission-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Age-of-Production-Graphics__/graphics/icons/fission-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "g-2",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "nauvis",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science,
  },
  {
  type = "tool",
    name = "aop-forestry-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Age-of-Production-Graphics__/graphics/icons/forestry-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "i-2",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "nauvis",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science,
  },
{
  type = "tool",
    name = "aop-petrochemical-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Age-of-Production-Graphics__/graphics/icons/petrochemical-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "j-2",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "nauvis",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science,
  },
  {
  type = "tool",
    name = "aop-quantistic-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantistic-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "k-2",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "aquilo",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science,
  },
    {
    type = "item",
    name = "aop-asphalt",
    icon = "__Age-of-Production-Graphics__/graphics/icons/asphalt.png",
    subgroup = "terrain",
    order = "z",
    inventory_move_sound = item_sounds.concrete_inventory_move,
    pick_sound = item_sounds.concrete_inventory_pickup,
    drop_sound = item_sounds.concrete_inventory_move,
    stack_size = 100,
    weight = 20 * kg,
    place_as_tile =
    {
      result = "aop-asphalt",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    },
  },
}