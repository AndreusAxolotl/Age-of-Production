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
    name = "aop-synthesis",
    group = "intermediate-products",
    order = "p-2"
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
    subgroup = "aop-synthesis",
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
    subgroup = "aop-synthesis",
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
    icons = {
            { icon = "__base__/graphics/icons/rail.png", icon_size = 64 },
            { icon = "__Age-of-Production-Graphics__/graphics/icons/wood-planks.png", icon_size = 64, scale = 0.25, shift = { 8, -8 } },
        },
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "steel-plate",      amount = 1},
        {type = "item", name = "iron-stick",      amount = 1},
        {type = "item", name = "stone",      amount = 1},
        {type = "item", name = "aop-wood-planks",      amount = 2},
    },
    results = {
        {type = "item", name = "rail", amount = 4},
    },
    allow_productivity = false,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-wood-planks",
    icon = "__Age-of-Production-Graphics__/graphics/icons/wood-planks.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "wood",      amount = 4},
    },
    results = {
        {type = "item", name = "aop-wood-planks", amount = 2},
    },
    allow_productivity = true,
    category = "crafting",
    additional_categories = {"woodworking"},
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-tungsten-plate-heating",
    icon = "__Age-of-Production-Graphics__/graphics/icons/tungsten-plate-heating.png",
    subgroup = "vulcanus-processes",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "tungsten-plate",      amount = 1},
    },
    results = {
        {type = "item", name = "aop-hot-tungsten-plate", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1},
    },
    allow_productivity = false,
    category = "advanced-smelting",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-quicklime",
    icon = "__Age-of-Production-Graphics__/graphics/icons/quicklime.png",
    subgroup = "vulcanus-processes",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "calcite",      amount = 1},
    },
    results = {
        {type = "item", name = "aop-quicklime", amount = 1},
    },
    allow_productivity = true,
    category = "smelting",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-bitumen",
    icon = "__Age-of-Production-Graphics__/graphics/icons/bitumen.png",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone",      amount = 2},
        {type = "fluid", name = "heavy-oil",      amount = 20},
    },
    results = {
        {type = "fluid", name = "aop-bitumen", amount = 20},
    },
    allow_productivity = true,
    category = "oil-processing",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-rubber-sheet",
    icon = "__Age-of-Production-Graphics__/graphics/icons/rubber-sheet.png",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "plastic-bar",      amount = 2},
        {type = "fluid", name = "aop-bitumen",      amount = 10},
        {type = "fluid", name = "light-oil",      amount = 20},
    },
    results = {
        {type = "item", name = "aop-rubber-sheet", amount = 2},
    },
    allow_productivity = true,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-radiation-cladding",
    icon = "__Age-of-Production-Graphics__/graphics/icons/radiation-cladding.png",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "uranium-238",      amount = 2},
        {type = "item", name = "low-density-structure",      amount = 1},
        {type = "item", name = "carbon",      amount = 5},
    },
    results = {
        {type = "item", name = "aop-radiation-cladding", amount = 1},
    },
    surface_conditions = {{property = "pressure", min = 0, max = 0}},
    allow_productivity = true,
    category = "centrifuging",
    auto_recycle = false,
    show_amount_in_title = false,
    subgroup = "uranium-processing",
},
{
    type = "recipe",
    name = "aop-uranium-233-breeding",
    icon = "__Age-of-Production-Graphics__/graphics/icons/uranium-233-breeding.png",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "uranium-235",      amount = 1},
        {type = "item", name = "stone",      amount = 20},
        {type = "fluid", name = "sulfuric-acid",      amount = 20},
    },
    results = {
        {type = "item", name = "aop-uranium-233", amount = 1},
    },
    allow_productivity = true,
    category = "centrifuging",
    auto_recycle = false,
    show_amount_in_title = false,
    subgroup = "uranium-processing",
},
{
    type = "recipe",
    name = "aop-growing-biocircuit",
    icon = "__Age-of-Production-Graphics__/graphics/icons/growing-biocircuit.png",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "aop-wood-planks",   amount = 2},
        {type = "item", name = "iron-bacteria",   amount = 5},
        {type = "item", name = "copper-bacteria",   amount = 5},
        {type = "item", name = "bioflux",   amount = 2},
        {type = "fluid", name = "water",   amount = 10},
    },
    results = {
        {type = "item", name = "aop-growing-biocircuit", amount = 1},
    },
    allow_productivity = true,
    reset_freshness_on_craft = true,
    category = "organic",
    additional_categories = {"woodworking"},
    auto_recycle = false,
    show_amount_in_title = false,
},
{
    type = "recipe",
    name = "aop-ammoniacal-solution-sifting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/ammoniacal-solution-sifting.png",
    category = "hydraulics",
    subgroup = "aop-synthesis",
    order = "a",
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "ammoniacal-solution", amount = 50},
    },
    results =
    {
      {type = "item", name = "ice", amount = 2},
      {type = "item", name = "aop-metallic-traces", amount = 2},
      {type = "fluid", name = "ammoniacal-solution", amount = 40, ignored_by_stats = 40, ignored_by_productivity = 40},
    },
    allow_productivity = true,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    allow_decomposition = false,
    crafting_machine_tint =
    {
      primary = {r = 0.596, g = 0.764, b = 0.780, a = 1.000},
      secondary = {r = 0.551, g = 0.762, b = 0.844, a = 1.000},
      tertiary = {r = 0.596, g = 0.773, b = 0.895, a = 1.000},
      quaternary = {r = 0.290, g = 0.734, b = 1, a = 1.000},
    }
  },
  {
    type = "recipe",
    name = "aop-copper-ore-from-metallic-traces",
    icon = "__Age-of-Production-Graphics__/graphics/icons/copper-ore-from-metallic-traces.png",
    category = "synthesis",
    subgroup = "aop-synthesis",
    order = "a",
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
      {type = "fluid", name = "fluorine", amount = 10},
      {type = "item", name = "aop-metallic-traces", amount = 10},
      {type = "item", name = "copper-ore", amount = 1},
    },
    results =
    {
      {type = "item", name = "copper-ore", amount = 3},
    },
    allow_productivity = true,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "aop-iron-ore-from-metallic-traces",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-ore-from-metallic-traces.png",
    category = "synthesis",
    subgroup = "aop-synthesis",
    order = "a",
    auto_recycle = false,
    energy_required = 2,
    ingredients =
    {
      {type = "fluid", name = "fluorine", amount = 10},
      {type = "item", name = "aop-metallic-traces", amount = 10},
      {type = "item", name = "iron-ore", amount = 1},
    },
    results =
    {
      {type = "item", name = "iron-ore", amount = 3},
    },
    allow_productivity = true,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "aop-water-rectification",
    icon = "__Age-of-Production-Graphics__/graphics/icons/water-rectification.png",
    category = "cryogenics",
    subgroup = "aquilo-processes",
    order = "z",
    auto_recycle = false,
    energy_required = 1,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 50},
      {type = "fluid", name = "fluoroketone-hot", amount = 5},
    },
    results =
    {
      {type = "fluid", name = "water", amount = 10},
      {type = "fluid", name = "aop-deuterium", amount = 25, probability = 0.1},
      {type = "fluid", name = "aop-tritium", amount = 5, probability = 0.01},
    },
    allow_productivity = false,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "aop-tritium-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/tritium-synthesis.png",
    category = "advanced-centrifuging",
    subgroup = "aquilo-processes",
    order = "z",
    auto_recycle = false,
    energy_required = 20,
    ingredients =
    {
      {type = "fluid", name = "aop-deuterium", amount = 10},
      {type = "item", name = "lithium-plate", amount = 5},
      {type = "item", name = "aop-uranium-233", amount = 1},
      {type = "fluid", name = "fluoroketone-cold", amount = 20},
    },
    results =
    {
      {type = "fluid", name = "aop-tritium", amount = 10},
      {type = "fluid", name = "fluoroketone-hot", amount = 20, ignored_by_stats = 20, ignored_by_productivity = 20},
    },
    allow_productivity = false,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "aop-unstable-matter",
    icon = "__Age-of-Production-Graphics__/graphics/icons/unstable-matter.png",
    category = "advanced-centrifuging",
    subgroup = "aquilo-processes",
    order = "z",
    auto_recycle = false,
    energy_required = 10,
    ingredients =
    {
     {type = "item", name = "tungsten-plate", amount = 5},
      {type = "item", name = "lithium-plate", amount = 2},
      {type = "item", name = "promethium-asteroid-chunk", amount = 2},
      {type = "fluid", name = "aop-tritium", amount = 5},
    },
    results =
    {
      {type = "item", name = "aop-unstable-matter", amount = 1},
    },
    allow_productivity = false,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
  },
  {
    type = "recipe",
    name = "aop-unheated-thermal-science-pack",
    category = "metallurgy",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 4000,
        max = 4000
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-quicklime", amount = 10},
      {type = "item", name = "heat-pipe", amount = 2},
      {type = "fluid", name = "molten-iron", amount = 200},
    },
    energy_required = 10,
    results = {{type="item", name="aop-unheated-thermal-science-pack", amount=1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "aop-thermal-science-pack-heating",
    icon = "__Age-of-Production-Graphics__/graphics/icons/thermal-science-pack-heating.png",
    category = "advanced-smelting",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-unheated-thermal-science-pack", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1},
    },
    energy_required = 2,
    results = {{type="item", name="aop-thermal-science-pack", amount=1}},
    allow_productivity = false
  },
    {
    type = "recipe",
    name = "aop-asphalt",
    icon = "__Age-of-Production-Graphics__/graphics/icons/asphalt.png",
    category = "petrochemistry",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "aop-bitumen", amount = 100},
      {type = "item", name = "aop-rubber-sheet", amount = 2},
      {type = "item", name = "stone", amount = 2},
    },
    energy_required = 4,
    results = {{type="item", name="aop-asphalt", amount=10}},
    allow_productivity = false
  },
  {
    type = "recipe",
    name = "aop-petrochemical-science-pack",
    category = "petrochemistry",
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-rubber-sheet", amount = 5},
      {type = "item", name = "holmium-plate", amount = 5},
      {type = "fluid", name = "aop-bitumen", amount = 20},
      {type = "fluid", name = "petroleum-gas", amount = 20},
    },
    energy_required = 10,
    results = {{type="item", name="aop-petrochemical-science-pack", amount=1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "aop-forestry-science-pack",
    category = "woodworking",
    subgroup = "science-pack",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 1000,
        max = 1000
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-wood-planks", amount = 5},
      {type = "item", name = "tree-seed", amount = 2},
      {type = "item", name = "spoilage", amount = 10}

    },
    energy_required = 10,
    results = {{type="item", name="aop-forestry-science-pack", amount=1}},
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "aop-quantistic-science-pack",
    category = "advanced-centrifuging",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 0,
        max = 0
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fusion-power-cell", amount = 1},
      {type = "item", name = "quantum-processor", amount = 1},
      {type = "item", name = "low-density-structure", amount = 5}
    },
    energy_required = 20,
    results =
    {
      {type = "item", name = "aop-quantistic-science-pack", amount = 5, probability = 0.5},
    },
    allow_productivity = true,
},
{
    type = "recipe",
    name = "aop-fission-science-pack",
    category = "centrifuging",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 0,
        max = 0
      }
    },
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-radiation-cladding", amount = 2},
      {type = "item", name = "aop-uranium-233", amount = 1},
      {type = "item", name = "carbon", amount = 5},
      {type = "fluid", name = "water", amount = 10},
    },
    energy_required = 10,
    results =
    {
      {type = "item", name = "aop-fission-science-pack", amount = 2},
    },
    allow_productivity = true,
},
{
    type = "recipe",
    name = "aop-explosives-from-quicklime",
    icons = {
            { icon = "__base__/graphics/icons/explosives.png", icon_size = 64 },
            { icon = "__Age-of-Production-Graphics__/graphics/icons/quicklime.png", icon_size = 64, scale = 0.25, shift = { 8, -8 } },
        },
    category = "chemistry",
    crafting_machine_tint =
    {
      primary = {r = 0.968, g = 0.381, b = 0.259, a = 1.000}, -- #f66142ff
      secondary = {r = 0.892, g = 0.664, b = 0.534, a = 1.000}, -- #e3a988ff
      tertiary = {r = 1.000, g = 0.978, b = 0.513, a = 1.000}, -- #fff982ff
      quaternary = {r = 0.210, g = 0.170, b = 0.013, a = 1.000}, -- #352b03ff
    },
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "aop-quicklime", amount = 2},
      {type = "item", name = "coal", amount = 1},
      {type = "fluid", name = "water", amount = 10}
    },
    results = {{type="item", name="explosives", amount=2}},
    allow_productivity = true
},
}

table.insert(data.raw.recipe["big-mining-drill"].ingredients, {type = "item", name = "aop-quicklime",       amount = 10})
table.insert(data.raw.recipe["supercapacitor"].ingredients, {type = "item", name = "aop-rubber-sheet", amount = 2})
data.raw.recipe["superconductor"].ingredients = {
      {type = "item", name = "holmium-plate", amount = 1},
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "fluid", name = "aop-bitumen", amount = 5},
    }
data.raw.recipe["cliff-explosives"].ingredients = {
      {type = "item", name = "explosives", amount = 10},
      {type = "item", name = "aop-quicklime", amount = 10},
      {type = "item", name = "grenade", amount = 1},
      {type = "item", name = "barrel", amount = 1}
    }
data.raw.recipe["metallurgic-science-pack"].ingredients = {
      {type = "item", name = "tungsten-carbide", amount = 3},
      {type = "item", name = "aop-hot-tungsten-plate", amount = 2},
      {type = "fluid", name = "molten-copper", amount = 200},
    }
data.raw.recipe["artillery-shell"].ingredients = {
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "calcite", amount = 1},
      {type = "item", name = "aop-hot-tungsten-plate", amount = 4},
      {type = "item", name = "explosives", amount = 8}
    }
data.raw.recipe["nuclear-reactor"].ingredients = {
      {type = "item", name = "concrete", amount = 500},
      {type = "item", name = "aop-radiation-cladding", amount = 250},
      {type = "item", name = "advanced-circuit", amount = 500},
      {type = "item", name = "copper-plate", amount = 500}
    }
data.raw.recipe["atomic-bomb"].ingredients = {
      {type = "item", name = "processing-unit", amount = 10},
      {type = "item", name = "explosives", amount = 10},
      {type = "item", name = "uranium-235", amount = 80},
      {type = "item", name = "aop-uranium-233", amount = 5}
    }
data.raw.recipe["fission-reactor-equipment"].ingredients = {
      {type = "item", name = "processing-unit", amount = 200},
      {type = "item", name = "aop-radiation-cladding", amount = 50},
      {type = "item", name = "uranium-fuel-cell", amount = 4}
    }
table.insert(data.raw.recipe["fusion-reactor"].ingredients, {type = "item", name = "aop-radiation-cladding",       amount = 200})
table.insert(data.raw.recipe["fusion-generator"].ingredients, {type = "item", name = "aop-radiation-cladding",       amount = 100})
table.insert(data.raw.recipe["fusion-power-cell"].ingredients, {type = "fluid", name = "aop-deuterium",       amount = 20})
table.insert(data.raw.recipe["fusion-power-cell"].ingredients, {type = "fluid", name = "aop-tritium",       amount = 5})
data.raw.recipe["capture-robot-rocket"].ingredients = {
      {type = "item", name = "flying-robot-frame", amount = 1},
      {type = "item", name = "steel-plate", amount = 2},
      {type = "item", name = "bioflux", amount = 10},
      {type = "item", name = "processing-unit", amount = 2},
      {type = "item", name = "aop-biocircuit", amount = 5},
    }
data.raw.recipe["biolab"].ingredients = {
      {type = "item", name = "lab", amount = 1},
      {type = "item", name = "biter-egg", amount = 10},
      {type = "item", name = "refined-concrete", amount = 25},
      {type = "item", name = "capture-robot-rocket", amount = 2},
      {type = "item", name = "aop-biocircuit", amount = 10},
      {type = "item", name = "aop-uranium-233", amount = 1}
    }
data.raw.recipe["captive-biter-spawner"].ingredients = {
      {type = "item", name = "biter-egg", amount = 10},
      {type = "item", name = "capture-robot-rocket", amount = 1},
      {type = "item", name = "uranium-235", amount = 15},
      {type = "item", name = "aop-biocircuit", amount = 5},
      {type = "fluid", name = "fluoroketone-cold", amount = 100},
    }