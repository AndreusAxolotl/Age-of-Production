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
    type = "fuel-category",
    name = "aop-spoilage"
  },
    {
    type = "item-subgroup",
    name = "aop-biomass",
    group = "intermediate-products",
    order = "p"
  },
  {
    type = "item-subgroup",
    name = "aop-advanced-agriculture",
    group = "intermediate-products",
    order = "q"
  },
  {
    type = "item-subgroup",
    name = "aop-woodworking",
    group = "intermediate-products",
    order = "n"
  },
  {
    type = "item-subgroup",
    name = "aop-scrubbing",
    group = "intermediate-products",
    order = "o"
  },
  {
    type = "item-subgroup",
    name = "aop-advanced-metallurgy",
    group = "intermediate-products",
    order = "l"
  },
  {
    type = "item-subgroup",
    name = "aop-core-mining",
    group = "intermediate-products",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "aop-specialized-science-pack",
    group = "intermediate-products",
    order = "z"
  },
    {
    type = "recipe",
    name = "aop-yumako-planting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/yumako-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 600,
    ingredients = {
        {type = "item", name = "yumako-seed",      amount = 4},
        {type = "item", name = "nutrients", amount = 30},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "yumako", amount = 200},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
    result_is_always_fresh= true,
    preserve_products_in_machine_output= true,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
      secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},

    }
},
{
    type = "recipe",
    name = "aop-jellynut-planting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/jellynut-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 600,
    ingredients = {
        {type = "item", name = "jellynut-seed",      amount = 4},
        {type = "item", name = "nutrients", amount = 30},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "jellynut", amount = 200},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
    result_is_always_fresh= true,
    preserve_products_in_machine_output= true,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
      secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
    }
},
{
    type = "recipe",
    name = "aop-tree-planting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/tree-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 1200,
    ingredients = {
        {type = "item", name = "tree-seed",      amount = 4},
        {type = "item", name = "aop-biomass", amount = 20},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "wood", amount = 16},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-yumako-seed-removal",
    icon = "__Age-of-Production-Graphics__/graphics/icons/yumako-seed-removal.png",
    subgroup = "agriculture-processes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yumako",      amount = 5},
    },
    results = {
        {type = "item", name = "yumako-seed", amount = 5, probability = 0.5},
    },
    allow_productivity = false,
    category = "biochemistry-or-organic-or-hand-crafting",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
      secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},

    }
},
{
    type = "recipe",
    name = "aop-jellynut-seed-removal",
    icon = "__Age-of-Production-Graphics__/graphics/icons/jellynut-seed-removal.png",
    subgroup = "agriculture-processes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "jellynut",      amount = 5},
    },
    results = {
        {type = "item", name = "jellynut-seed", amount = 5, probability = 0.5},
    },
    allow_productivity = false,
    category = "biochemistry-or-organic-or-hand-crafting",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
      secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
    }
},
{
    type = "recipe",
    name = "aop-direct-molten-copper-from-lava",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-copper-from-lava.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 64,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 1000},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 500},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-direct-molten-iron-from-lava",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-iron-from-lava.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 64,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 1000},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 500},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-lava-demineralization",
    icon = "__Age-of-Production-Graphics__/graphics/icons/lava-demineralization.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 750},
    },
    results = {
        {type = "item", name = "stone", amount_min = 25, amount_max= 75},
        {type = "fluid", name = "lava", amount = 100},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    allow_quality = false,
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-direct-molten-copper",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-copper.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "copper-ore",      amount = 100},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 750},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-direct-molten-iron",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-iron.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "iron-ore",      amount = 100},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 750},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-copper-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/copper-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "copper-plate",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-copper-cable-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/copper-cable-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "copper-cable",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 5},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-iron-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "iron-plate",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-steel-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/steel-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "steel-plate",      amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 30},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-iron-gear-wheel-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-gear-wheel-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-gear-wheel",      amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 10},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-iron-stick-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-stick-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-stick",      amount = 80},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
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
    type = "recipe",
    name = "aop-biomass-from-wood",
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-from-wood.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "wood",      amount = 2},
        {type = "item", name = "spoilage", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biomass", amount = 5},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
},
{
    type = "recipe",
    name = "aop-biomass-from-seeds",
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-from-seeds.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "yumako-seed",      amount = 2},
        {type = "item", name = "jellynut-seed",      amount = 2},
        {type = "item", name = "spoilage", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biomass", amount = 5},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
},
{
    type = "recipe",
    name = "aop-nutrients-from-biomass",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nutrients-from-biomass.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-biomass",      amount = 4},
    },
    results = {
        {type = "item", name = "nutrients", amount = 2, percent_spoiled=0.75},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
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
    type = "recipe",
    name = "aop-core-mining",
    icon = "__Age-of-Production-Graphics__/graphics/icons/core-mining.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 0.25,
    maximum_productivity = 1000.0,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",      amount = 5},
        {type = "fluid", name = "fluoroketone-cold",      amount = 5, ignored_by_stats = 5},
    },
    results = {
        {type = "item", name = "aop-deep-mineral", amount = 1},
        {type = "fluid", name = "fluoroketone-hot", amount = 5, ignored_by_stats = 5, ignored_by_productivity = 5},
    },
    allow_productivity = true,
    category = "core-mining",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-mineral-slurry",
    icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-slurry.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-deep-mineral",      amount = 4},
        {type = "fluid", name = "water",      amount = 20},
    },
    results = {
        {type = "fluid", name = "aop-mineral-slurry", amount = 20},
    },
    allow_productivity = false,
    category = "hydraulics-or-chemistry-or-cryogenics",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
        primary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        secondary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        tertiary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        quaternary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-mineral-slurry-processing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-slurry-processing.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "aop-mineral-slurry",      amount = 20},
        {type = "fluid", name = "steam",      amount = 15},
    },
    results = {
        {type = "item", name = "aop-refined-mineral", amount = 4},
        {type = "item", name = "stone", amount = 25, ignored_by_stats = 25, ignored_by_productivity = 25},
    },
    allow_productivity = true,
    category = "chemistry-or-cryogenics",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
        primary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        secondary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        tertiary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000},
        quaternary = {r = 0.35, g = 0.15, b = 0.07, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-vulcanusian-crushing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/vulcanusian-crushing.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-refined-mineral",      amount = 1},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 2, probability = 0.5},
        {type = "item", name = "copper-ore", amount = 2, probability = 0.5}, 
        {type = "item", name = "tungsten-ore", amount = 1, probability = 0.35}, 
        {type = "item", name = "sulfur", amount = 1, probability = 0.4}, 
        {type = "item", name = "coal", amount = 3, probability = 0.6}, 
        {type = "item", name = "calcite", amount = 1, probability = 0.35},
    },
    allow_productivity = true,
    category = "crushing",
    auto_recycle = false,
    show_amount_in_title = false,
    maximum_productivity = 1,
    surface_conditions = {{property = "deep-crustal-stability", min = 5200, max = 5200}},
},
{
    type = "recipe",
    name = "aop-nauvitian-crushing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nauvitian-crushing.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-refined-mineral",      amount = 1},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.8},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.8}, 
        {type = "item", name = "uranium-ore", amount = 1, probability = 0.25}, 
        {type = "item", name = "coal", amount = 2, probability = 0.3}, 
    },
    allow_productivity = true,
    category = "crushing",
    auto_recycle = false,
    show_amount_in_title = false,
    maximum_productivity = 1,
    surface_conditions = {{property = "deep-crustal-stability", min = 5500, max = 5500}},
},
{
    type = "recipe",
    name = "aop-gleban-crushing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/gleban-crushing.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-refined-mineral",      amount = 1},
    },
    results = {
        {type = "item", name = "iron-bacteria", amount = 1, probability = 0.5},
        {type = "item", name = "copper-bacteria", amount = 1, probability = 0.5}, 
        {type = "item", name = "iron-ore", amount = 1, probability = 0.2},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.2},
        {type = "item", name = "spoilage", amount = 2, probability = 0.8}, 
        {type = "item", name = "carbon", amount = 1, probability = 0.3}, 
        {type = "item", name = "yumako-seed", amount = 1, probability = 0.001}, 
        {type = "item", name = "jellynut-seed", amount = 1, probability = 0.001}, 
    },
    allow_productivity = true,
    category = "crushing",
    auto_recycle = false,
    show_amount_in_title = false,
    maximum_productivity = 1,
    surface_conditions = {{property = "deep-crustal-stability", min = 5300, max = 5300}},
},
{
    type = "recipe",
    name = "aop-fulgoran-crushing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/fulgoran-crushing.png",
    subgroup = "aop-core-mining",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-refined-mineral",      amount = 1},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.3},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.3}, 
        {type = "item", name = "holmium-ore", amount = 1, probability = 0.15}, 
        {type = "item", name = "scrap", amount = 2, probability = 0.05}, 
    },
    allow_productivity = true,
    category = "crushing",
    auto_recycle = false,
    show_amount_in_title = false,
    maximum_productivity = 1,
    surface_conditions = {{property = "deep-crustal-stability", min = 3900, max = 3900}},
},
{
    type = "recipe",
    name = "aop-water-freezing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/water-freezing.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 25},
    },
    results = {
        {type = "item", name = "ice", amount = 1},
    },
    allow_productivity = false,
    category = "cryogenics",
    order = "e",
    auto_recycle = false,
    allow_quality = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "temperature", max = 320}}
},
{
    type = "recipe",
    name = "aop-uranium-sifting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/uranium-sifting.png",
    subgroup = "uranium-processing",
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = "item", name = "stone",      amount = 10},
    },
    results = {
        {type = "item", name = "uranium-238", amount = 1, probability = 0.049},
        {type = "item", name = "uranium-235", amount = 1, probability = 0.0001},
        },
    allow_productivity = true,
    category = "advanced-centrifuging",
    auto_recycle = false
},
{
    type = "recipe",
    name = "aop-calcite-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/calcite-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone",      amount = 8},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "calcite", amount = 2},
    },
    allow_productivity = true,
    category = "synthesis-or-chemistry",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 1, max = 3999}},
    crafting_machine_tint =
    {
        primary = {r = 0.85, g = 0.85, b = 0.85, a = 1.000},
        secondary = {r = 0.85, g = 0.85, b = 0.85, a = 1.000},
        tertiary = {r = 0.85, g = 0.85, b = 0.85, a = 1.000},
        quaternary = {r = 0.85, g = 0.85, b = 0.85, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-stone-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/stone-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "calcite",      amount = 5},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "steam", amount = 50},
    },
    results = {
        {type = "item", name = "stone", amount = 5},
    },
    allow_productivity = true,
    category = "synthesis-or-chemistry",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
        primary = {r = 0.65, g = 0.53, b = 0.31, a = 1.000},
        secondary = {r = 0.65, g = 0.53, b = 0.31, a = 1.000},
        tertiary = {r = 0.65, g = 0.53, b = 0.31, a = 1.000},
        quaternary = {r = 0.65, g = 0.53, b = 0.31, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-ammoniacal-iron-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/ammoniacal-iron-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "carbon",      amount = 5},
        {type = "fluid", name = "ammoniacal-solution", amount = 100},
        {type = "fluid", name = "petroleum-gas", amount = 25},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 5},
    },
    allow_productivity = true,
    category = "synthesis",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}},
    crafting_machine_tint =
    {
        primary = {r = 0.43, g = 0.60, b = 0.69, a = 1.000},
        secondary = {r = 0.43, g = 0.60, b = 0.69, a = 1.000},
        tertiary = {r = 0.43, g = 0.60, b = 0.69, a = 1.000},
        quaternary = {r = 0.43, g = 0.60, b = 0.69, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-ammoniacal-copper-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/ammoniacal-copper-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "carbon",      amount = 5},
        {type = "fluid", name = "ammoniacal-solution", amount = 100},
        {type = "fluid", name = "petroleum-gas", amount = 25},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 5},
    },
    allow_productivity = true,
    category = "synthesis",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}},
    crafting_machine_tint =
    {
        primary = {r = 0.86, g = 0.46, b = 0.29, a = 1.000},
        secondary = {r = 0.86, g = 0.46, b = 0.29, a = 1.000},
        tertiary = {r = 0.86, g = 0.46, b = 0.29, a = 1.000},
        quaternary = {r = 0.86, g = 0.46, b = 0.29, a = 1.000}
    }
},
{
    type = "recipe",
    name = "aop-solid-fuel-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/solid-fuel-melting.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "solid-fuel",      amount = 20}
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 10},
    },
    allow_productivity = false,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-carbon-liquefaction",
    icon = "__Age-of-Production-Graphics__/graphics/icons/carbon-liquefaction.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "carbon",      amount = 25},
        {type = "item", name = "calcite",      amount = 5},
        {type = "fluid", name = "steam",      amount = 50}
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 25},
    },
    allow_productivity = true,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-petroleum-gas-dehydrogenation",
    icon = "__Age-of-Production-Graphics__/graphics/icons/petroleum-gas-dehydrogenation.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "petroleum-gas",      amount = 20},
        {type = "fluid", name = "steam",      amount = 10},
        {type = "item", name = "iron-plate",      amount = 2}
    },
    results = {
        {type = "item", name = "carbon", amount = 2},
    },
    allow_productivity = false,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-vulcanusian-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/vulcanusian-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stone",      amount = 5},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "sulfuric-acid", amount = 20, probability = 0.10},
        {type = "item", name = "carbon", amount = 3, probability = 0.05}, 
        {type = "item", name = "sulfur", amount = 2, probability = 0.02},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
},
{
    type = "recipe",
    name = "aop-nauvitian-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nauvitian-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "calcite",      amount = 2},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "carbon", amount = 2, probability = 0.05}, 
        {type = "item", name = "sulfur", amount = 1, probability = 0.01}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}, {property = "deep-crustal-stability", min = 5500, max = 5500}}
},
{
    type = "recipe",
    name = "aop-gleban-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/gleban-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",      amount = 25},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "spoilage", amount = 3, probability = 0.05}, 
        {type = "item", name = "yumako-seed", amount = 1, probability = 0.01}, 
        {type = "item", name = "jellynut-seed", amount = 1, probability = 0.01}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}, {property = "gravity", min = 20, max = 20}}
},
{
    type = "recipe",
    name = "aop-fulgoran-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/fulgoran-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "calcite",      amount = 5},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "petroleum-gas", amount = 20, probability = 0.10}, 
        {type = "item", name = "ice", amount = 3, probability = 0.05}, 
        {type = "item", name = "stone", amount = 2, probability = 0.03}, 
        {type = "item", name = "holmium-ore", amount = 1, probability = 0.005}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "magnetic-field", min = 99, max = 99}, {property = "pressure", min = 800, max = 800}}
},
{
    type = "recipe",
    name = "aop-aquiloan-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/aquiloan-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "spoilage",      amount = 2},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "ammonia", amount = 10, probability = 0.20}, 
        {type = "fluid", name = "fluorine", amount = 10, probability = 0.05}, 
        {type = "item", name = "ice", amount = 2, probability = 0.10},
        {type = "item", name = "lithium", amount = 1, probability = 0.005}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}}
},
{
    type = "recipe",
    name = "aop-charcoal",
    icon = "__Age-of-Production-Graphics__/graphics/icons/charcoal.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "wood",      amount = 10},
    },
    results = {
        {type = "item", name = "carbon", amount = 2},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-wood-rotting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/wood-rotting.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "wood",      amount = 2},
        {type = "item", name = "spoilage",      amount = 10},
    },
    results = {
        {type = "item", name = "spoilage", amount = 12},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-wooden-rails",
    icon = "__Age-of-Production-Graphics__/graphics/icons/wooden-rails.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "steel-plate",      amount = 1},
        {type = "item", name = "iron-stick",      amount = 1},
        {type = "item", name = "stone",      amount = 1},
        {type = "item", name = "wood",      amount = 2},
    },
    results = {
        {type = "item", name = "rail", amount = 4},
    },
    allow_productivity = false,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
}
}

if settings.startup["aop-specialized-science"].value then
data:extend{
  {
    type = "fluid",
    name = "aop-lithium-fluoride",
    subgroup = "aquilo-processes",
    default_temperature = 850,
    max_temperature = 1000,
    base_color = {0.87, 0.95, 0.36},
    flow_color = {0.87, 0.95, 0.36},
    icon = "__Age-of-Production-Graphics__/graphics/icons/lithium-fluoride.png",
    auto_barrel = false
  },
{
        type = "item",
        name = "aop-hybrid-bacteria",
        icon = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-1.png",
        pictures =
        {
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-1.png",   scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-2.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-3.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-4.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-5.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-6.png", scale = 0.5}
        },
        subgroup = "agriculture-products",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 50,
        default_import_location = "gleba",
        spoil_ticks = 1800,
        spoil_result = "carbon",
        weight = 1000
    },
    {
      type = "ammo-category",
      name = "aop-explosive-core",
      icon = "__Age-of-Production-Graphics__/graphics/icons/explosive-core.png",
      subgroup = "ammo-category"
    },
    {
        type = "capsule",
        name = "aop-explosive-core",
        icon = "__Age-of-Production-Graphics__/graphics/icons/explosive-core.png",
        subgroup = "vulcanus-processes",
        inventory_move_sound = item_sounds.ammo_large_inventory_move,
        pick_sound = item_sounds.ammo_large_inventory_pickup,
        drop_sound = item_sounds.ammo_large_inventory_move,
        stack_size = 5,
        default_import_location = "vulcanus",
        capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "aop-explosive-core",
        cooldown = 600,
        projectile_creation_distance = 0.6,
        range = 7.5,
        ammo_type =
        {
          target_type = "position",
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "projectile",
                projectile = "aop-explosive-core",
                starting_speed = 0.3
              }
            },
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "play-sound",
                    sound = sounds.throw_projectile
                  },
                  {
                    type = "play-sound",
                    sound = sounds.throw_grenade
                  },
                }
              }
            }
          }
        }
      }
    },
    weight = 200000
    },
    {
    type = "projectile",
    name = "aop-explosive-core",
    flags = {"not-on-map"},
    hidden = true,
    acceleration = 0.005,
    animation =
    {
      filename = "__base__/graphics/entity/grenade/grenade.png",
      draw_as_glow = true,
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 48,
      height = 54,
      shift = util.by_pixel(0.5, 0.5),
      priority = "high",
      scale = 0.5
    },
    shadow =
    {
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 15,
      line_length = 8,
      animation_speed = 0.250,
      width = 50,
      height = 40,
      shift = util.by_pixel(2, 6),
      priority = "high",
      draw_as_shadow = true,
      scale = 0.5
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "set-tile",
            tile_name = "nuclear-ground",
            radius = 6,
            apply_projection = true,
            tile_collision_mask = { layers={water_tile=true} }
          },
          {
            type = "destroy-cliffs",
            radius = 5,
            explosion_at_trigger = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "nuke-explosion"
          },
          {
            type = "camera-effect",
            duration = 60,
            ease_in_duration = 5,
            ease_out_duration = 60,
            delay = 0,
            strength = 6,
            full_strength_max_distance = 200,
            max_distance = 800
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion(0.9),
            play_on_target_position = false,
            max_distance = 1000,
          },
          {
            type = "play-sound",
            sound = sounds.nuclear_explosion_aftershock(0.4),
            play_on_target_position = false,
            max_distance = 1000,
          },
          {
            type = "damage",
            damage = {amount = 200, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "huge-scorchmark",
            offsets = {{ 0, -0.5 }},
            check_buildability = true
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1
          },
          {
            type = "destroy-decoratives",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
            radius = 14 -- large radius for demostrative purposes
          },
          {
            type = "create-decorative",
            decorative = "nuclear-ground-patch",
            spawn_min_radius = 5.5,
            spawn_max_radius = 6.5,
            spawn_min = 30,
            spawn_max = 40,
            apply_projection = true,
            spread_evenly = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 100,
              radius = 7,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-ground-zero-projectile",
                starting_speed = 0.6 * 0.8,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
        }
    }
}
    }
},
{
    type = "item",
    name = "aop-magnetic-flow-meter",
    icon = "__Age-of-Production-Graphics__/graphics/icons/magnetic-flow-meter.png",
    subgroup = "fulgora-processes",
    inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
    pick_sound = space_age_item_sounds.rocket_inventory_pickup,
    drop_sound = space_age_item_sounds.rocket_inventory_move,
    stack_size = 5,
    default_import_location = "fulgora",
    weight = 200000
},
{
    type = "recipe",
    name = "aop-lithium-fluoride",
    icon = "__Age-of-Production-Graphics__/graphics/icons/lithium-fluoride.png",
    subgroup = "aquilo-processes",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "fluid", name = "lithium-brine",      amount = 50},
        {type = "fluid", name = "fluorine",      amount = 50},
        {type = "item", name = "carbon",      amount = 5},
    },
    results = {
        {type = "fluid", name = "aop-lithium-fluoride", amount = 500},
    },
    allow_productivity = true,
    category = "metallurgy-or-cryogenics",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-lithium-fluoride-casting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/lithium-fluoride-casting.png",
    subgroup = "aquilo-processes",
    enabled = false,
    energy_required = 6.4,
    ingredients = {
        {type = "fluid", name = "aop-lithium-fluoride",      amount = 20},
        {type = "fluid", name = "ammonia",      amount = 20},
        {type = "item", name = "holmium-plate",      amount = 3},
    },
    results = {
        {type = "item", name = "lithium-plate", amount = 3},
        {type = "fluid", name = "fluorine", amount = 5, ignored_by_stats = 5, ignored_by_productivity = 5},
    },
    allow_productivity = true,
    category = "metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-explosive-core",
    icon = "__Age-of-Production-Graphics__/graphics/icons/explosive-core.png",
    subgroup = "vulcanus-processes",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "explosives",      amount = 4},
        {type = "item", name = "tungsten-plate",      amount = 2},
        {type = "item", name = "advanced-circuit",      amount = 2},
        {type = "fluid", name = "molten-iron",      amount = 100},
        {type = "fluid", name = "heavy-oil",      amount = 10},
    },
    results = {
        {type = "item", name = "aop-explosive-core", amount = 2},
    },
    allow_productivity = true,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-advanced-artillery-shell-manufacturing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/advanced-artillery-shell-manufacturing.png",
    subgroup = "ammo",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "aop-explosive-core",      amount = 1},
        {type = "item", name = "tungsten-carbide",      amount = 2},
        {type = "item", name = "steel-plate",      amount = 5},
        {type = "item", name = "calcite",      amount = 2},
    },
    results = {
        {type = "item", name = "artillery-shell", amount = 1},
    },
    allow_productivity = false,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-magnetic-flow-meter",
    icon = "__Age-of-Production-Graphics__/graphics/icons/magnetic-flow-meter.png",
    subgroup = "fulgora-processes",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item", name = "superconductor",      amount = 2},
        {type = "item", name = "processing-unit",      amount = 1},
        {type = "item", name = "electric-engine-unit",      amount = 5},
        {type = "item", name = "copper-cable",      amount = 3},
        {type = "fluid", name = "electrolyte",      amount = 10},
    },
    results = {
        {type = "item", name = "aop-magnetic-flow-meter", amount = 2},
    },
    allow_productivity = true,
    category = "electromagnetics",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-magnetic-thruster",
    icon = "__Age-of-Production-Graphics__/graphics/icons/magnetic-thruster.png",
    subgroup = "space-platform",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "aop-magnetic-flow-meter",      amount = 1},
        {type = "item", name = "steel-plate",      amount = 10},
        {type = "fluid", name = "electrolyte",      amount = 10},
    },
    results = {
        {type = "item", name = "thruster", amount = 1},
    },
    allow_productivity = false,
    category = "electromagnetics",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-hybrid-bacteria",
    icon = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-1.png",
    subgroup = "agriculture-products",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "iron-bacteria",      amount = 2},
        {type = "item", name = "copper-bacteria",      amount = 2},
        {type = "item", name = "uranium-238",      amount = 1},
        {type = "item", name = "bioflux",      amount = 5},
    },
    results = {
        {type = "item", name = "aop-hybrid-bacteria", amount = 2},
    },
    allow_productivity = true,
    category = "biochemistry-or-organic",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
      primary = {r = 0.3, g = 0.457, b = 0.05, a = 1.000}, 
      secondary = {r = 0.3, g = 0.196, b = 0.05, a = 1.000}, 
    },
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
},
{
    type = "recipe",
    name = "aop-hybrid-bacteria-cultivation",
    icon = "__Age-of-Production-Graphics__/graphics/icons/hybrid-bacteria-cultivation.png",
    subgroup = "agriculture-products",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "aop-hybrid-bacteria",      amount = 2},
        {type = "item", name = "bioflux",      amount = 2},
    },
    results = {
        {type = "item", name = "aop-hybrid-bacteria", amount_min = 1, amount_max= 3},
    },
    allow_productivity = true,
    category = "biochemistry-or-organic",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
      primary = {r = 0.3, g = 0.457, b = 0.05, a = 1.000}, 
      secondary = {r = 0.3, g = 0.196, b = 0.05, a = 1.000}, 
    },
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
},
{
    type = "recipe",
    name = "aop-hydraulics-specialized-cryogenic-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/icons/hydraulics-specialized-cryogenic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 18,
    ingredients = {
        {type = "item", name = "rocket-fuel",      amount = 2},
        {type = "fluid", name = "ammoniacal-solution",      amount = 100},
        {type = "fluid", name = "aop-lithium-fluoride",      amount = 100},
    },
    results = {
        {type = "item", name = "cryogenic-science-pack", amount = 2},
        {type = "item", name = "ice", amount = 5, ignored_by_stats = 5, ignored_by_productivity = 5},
    },
    allow_productivity = true,
    category = "hydraulics",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 300,
        max = 300
      }
    },
},
{
    type = "recipe",
    name = "aop-military-specialized-metallurgic-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/icons/military-specialized-metallurgic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item", name = "aop-explosive-core",      amount = 2},
        {type = "item", name = "piercing-shotgun-shell",      amount = 5},
        {type = "item", name = "tungsten-carbide",      amount = 1},
        {type = "fluid", name = "lava",      amount = 200},
    },
    results = {
        {type = "item", name = "metallurgic-science-pack", amount = 2},
    },
    allow_productivity = true,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 4000,
        max = 4000
      }
    },
},
{
    type = "recipe",
    name = "aop-petrochemistry-specialized-electromagnetic-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/icons/petrochemistry-specialized-electromagnetic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "aop-magnetic-flow-meter",      amount = 2},
        {type = "item", name = "battery",      amount = 3},
        {type = "fluid", name = "holmium-solution",      amount = 15},
        {type = "fluid", name = "lubricant",      amount = 20},
        {type = "fluid", name = "petroleum-gas",      amount = 30},
    },
    results = {
        {type = "item", name = "electromagnetic-science-pack", amount = 2},
    },
    allow_productivity = true,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
},
{
    type = "recipe",
    name = "aop-hybridation-specialized-agricultural-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/icons/hybridation-specialized-agricultural-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "aop-hybrid-bacteria",      amount = 4},
        {type = "item", name = "bioflux",      amount = 3},
        {type = "item", name = "pentapod-egg",      amount = 1},
        {type = "item", name = "sulfur",      amount = 2},
    },
    results = {
        {type = "item", name = "agricultural-science-pack", amount = 4},
    },
    allow_productivity = true,
    category = "biochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
}}
end