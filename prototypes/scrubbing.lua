data:extend {{
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
}}
data:extend {{
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
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}, {property = "density", min = 5500, max = 5500}}
}}
data:extend {{
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
}}
data:extend {{
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
}}
data:extend {{
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
}}