data:extend {{
    type = "recipe",
    name = "aop-water-freezing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/water-freezing.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 20},
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
}}
data:extend {{
    type = "recipe",
    name = "aop-uranium-sifting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/uranium-sifting.png",
    subgroup = "uranium-processing",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "stone",      amount = 10},
    },
    results = {
        {type = "item", name = "uranium-238", amount = 5, probability = 0.1},
        {type = "item", name = "uranium-235", amount = 1, probability = 0.01},
        },
    allow_productivity = true,
    category = "advanced-centrifuging",
    auto_recycle = false
}}
data:extend {{
    type = "recipe",
    name = "aop-calcite-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/calcite-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone",      amount = 5},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "calcite", amount = 2},
    },
    allow_productivity = true,
    category = "chemistry",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 1, max = 3999}}
}}
data:extend {{
    type = "recipe",
    name = "aop-stone-synthesis",
    icon = "__Age-of-Production-Graphics__/graphics/icons/stone-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "calcite",      amount = 2},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "steam", amount = 50},
    },
    results = {
        {type = "item", name = "stone", amount = 5},
    },
    allow_productivity = true,
    category = "chemistry",
    order = "n",
    auto_recycle = false,
    show_amount_in_title = false,
}}