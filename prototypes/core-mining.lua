local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend(
{
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
},

data:extend {{
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
    }},

data:extend {{
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
    }}
)
data:extend {{
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
}}

data:extend {{
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
}}

data:extend {{
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
}}

data:extend {{
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
}}

data:extend {{
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
}}

data:extend {{
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
}}

data:extend {{
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
}}