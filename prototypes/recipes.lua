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
    category = "organic-or-hand-crafting",
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
    category = "organic-or-hand-crafting",
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
    category = "hydraulics",
    additional_categories = {"chemistry", "cryogenics"},
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
    category = "synthesis",
    additional_categories = {"chemistry"},
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
    category = "synthesis",
    additional_categories = {"chemistry"},
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