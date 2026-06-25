local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

  local function add_tech_prerequisites(tech_name, prerequisites)
    local tech = data.raw.technology[tech_name]
    tech.prerequisites = tech.prerequisites or {}
    for _, prereq in ipairs(tech.prerequisites) do
      if prereq == prerequisites then
        return
      end
    end
    table.insert(tech.prerequisites, prerequisites)
  end


  local function add_science_pack(tech_name, science_pack)
    local tech = data.raw.technology[tech_name]
    tech.unit.ingredients = tech.unit.ingredients or {}
    table.insert(tech.unit.ingredients, science_pack)
  end

  local function add_crafting_categories(entity_type, entity_name, categories)
    local entity = data.raw[entity_type][entity_name]
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end

local function add_additional_categories(recipe_name, categories)
    local recipe = data.raw.recipe[recipe_name]
    if recipe and categories then
        recipe.categories = recipe.categories or (recipe.category and {recipe.category}) or {"crafting"}
        recipe.category = nil
        for _, cat in pairs(categories) do
            table.insert(recipe.categories, cat)
        end
    end
end


if mods["maraxsis"] then 
    add_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"hydraulics"})
    add_crafting_categories("assembling-machine", "maraxsis-hydro-plant-extra-module-slots", {"hydraulics"})
    add_crafting_categories("assembling-machine", "aop-hydraulic-plant", {"maraxsis-hydro-plant", "maraxsis-hydro-plant-or-assembling", "maraxsis-hydro-plant-or-advanced-crafting", "maraxsis-hydro-plant-or-biochamber", "maraxsis-hydro-plant-or-chemistry", "maraxsis-hydro-plant-or-foundry"})
        data.raw.planet["maraxsis"].surface_properties["deep-crustal-stability"] = 4700
        data.raw.planet["maraxsis-trench"].surface_properties["deep-crustal-stability"] = 4700
    data:extend {{
            type = "recipe",
            name = "aop-maraxsian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/maraxsian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.4},
                {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.4}, 
                {type = "item", name = "limestone", amount = 5, independent_probability = 0.5}, 
                {type = "item", name = "sulfur", amount = 2, independent_probability = 0.3}, 
                {type = "item", name = "salt", amount = 3, independent_probability = 0.25}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 4700, max = 4700}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-maraxsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-maraxsian-crushing", change = 0.05})
    end
    
    if mods["corrundum"] then 
    data.raw.planet["corrundum"].surface_properties["deep-crustal-stability"] = 4000
    data:extend {{
        type = "recipe",
        name = "aop-corrundumian-crushing",
        icon = "__Age-of-Production-Graphics__/graphics/icons/corrundumian-crushing.png",
        subgroup = "aop-core-mining",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "aop-refined-mineral",      amount = 1},
        },
        results = {
            {type = "item", name = "sulfur", amount = 3, independent_probability = 0.9},
            {type = "item", name = "chalcopyrite-ore", amount = 2, independent_probability = 0.5}, 
            {type = "item", name = "platinum-ore", amount = 1, independent_probability = 0.5}, 
            {type = "item", name = "calcite", amount = 2, independent_probability = 0.6}, 
        },
        allow_productivity = true,
        categories = {"crushing"},
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 4000, max = 4000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-corrundumian-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-corrundumian-crushing", change = 0.05})
    end
    
    if mods["secretas"] then 
    data.raw["furnace"]["aop-salvager"].result_inventory_size = 40
    data.raw.planet["frozeta"].surface_properties["deep-crustal-stability"] = 3100
    data:extend {{
        type = "recipe",
        name = "aop-frozetan-crushing",
        icon = "__Age-of-Production-Graphics__/graphics/icons/frozetan-crushing.png",
        subgroup = "aop-core-mining",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "aop-refined-mineral",      amount = 1},
        },
        results = {
            {type = "item", name = "ice", amount = 6, independent_probability = 0.9},
            {type = "item", name = "gold-ore", amount = 2, independent_probability = 0.5}, 
        },
        allow_productivity = true,
        categories = {"crushing"},
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 3100, max = 3100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-frozetan-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-frozetan-crushing", change = 0.05})
    end
    
    if mods["tenebris-prime"] or mods["tenebris"] then 
    data.raw.planet["tenebris"].surface_properties["deep-crustal-stability"] = 5100
    data:extend {{
        type = "recipe",
        name = "aop-tenebrisian-crushing",
        icon = "__Age-of-Production-Graphics__/graphics/icons/tenebrisian-crushing.png",
        subgroup = "aop-core-mining",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "aop-refined-mineral",      amount = 1},
        },
        results = {
        {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.8},
        {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.8}, 
        {type = "item", name = "quartz-ore", amount = 1, independent_probability = 0.25},
        },
        allow_productivity = true,
        categories = {"crushing"},
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 5100, max = 5100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-tenebrisian-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-tenebrisian-crushing", change = 0.05})
    end
    
    if mods["terrapalus"] then 
    data.raw.planet["terrapalus"].surface_properties["deep-crustal-stability"] = 2200
    end
    
    if mods["castra"] then
    data.raw.planet["castra"].surface_properties["deep-crustal-stability"] = 5000
    data:extend {{
        type = "recipe",
        name = "aop-castran-crushing",
        icon = "__Age-of-Production-Graphics__/graphics/icons/castran-crushing.png",
        subgroup = "aop-core-mining",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "item", name = "aop-refined-mineral",      amount = 1},
        },
        results = {
        {type = "item", name = "gunpowder", amount = 2, independent_probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.8}, 
        {type = "item", name = "uranium-ore", amount = 1, independent_probability = 0.25}, 
        {type = "item", name = "millerite", amount = 3, independent_probability = 0.4}, 
        },
        allow_productivity = true,
        categories = {"crushing"},
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 5000, max = 5000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-castran-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-castran-crushing", change = 0.05})
    end
    if mods["planet-muluna"] then 
        data.raw.planet["muluna"].surface_properties["deep-crustal-stability"] = 3400
    data:extend {{
            type = "recipe",
            name = "aop-mulunan-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/mulunan-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
            {type = "item", name = "oxide-asteroid-chunk", amount = 1, independent_probability = 0.05},
            {type = "item", name = "carbonic-asteroid-chunk", amount = 1, independent_probability = 0.05}, 
            {type = "item", name = "metallic-asteroid-chunk", amount = 1, independent_probability = 0.05}, 
            {type = "item", name = "anorthite-chunk", amount = 1, independent_probability = 0.025}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3400, max = 3400}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-mulunan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-mulunan-crushing", change = 0.05})
    end

    if mods["Cerys-Moon-of-Fulgora"] then 
        data.raw.planet["cerys"].surface_properties["deep-crustal-stability"] = 1200
    end

    if mods["cubium"] then 
        data.raw.planet["cubium"].surface_properties["deep-crustal-stability"] = 2300
    end

    if mods["planet-arrakis"] then 
        data.raw.planet["arrakis"].surface_properties["deep-crustal-stability"] = 2900
    end

    if mods["erm_toss"] then 
        data.raw.planet["aiur"].surface_properties["deep-crustal-stability"] = 5500
    end

    if mods["erm_zerg"] then 
        data.raw.planet["char"].surface_properties["deep-crustal-stability"] = 5200
    end

    if mods["Factorio-Tiberium"] then 
        if common.whichPlanet == "nauvis" or common.whichPlanet == "pure-nauvis" then return end
        data.raw.planet["tiber"].surface_properties["deep-crustal-stability"] = 2700
    end 

    if mods["janus"] then 
        data.raw.planet["janus"].surface_properties["deep-crustal-stability"] = 2300
    end

    if mods["lignumis"] then 
        add_crafting_categories("assembling-machine", "aop-lumber-mill", {"wood-processing"})
        data.raw.planet["lignumis"].surface_properties["deep-crustal-stability"] = 2000
    end

    if mods["metal-and-stars"] then 
        data.raw.planet["shipyard"].surface_properties["deep-crustal-stability"] = 0
        data.raw.planet["nix"].surface_properties["deep-crustal-stability"] = 3600
        data.raw.planet["ringworld"].surface_properties["deep-crustal-stability"] = 0
    data:extend {{
            type = "recipe",
            name = "aop-nixan-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/nixan-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "coal", amount = 1, independent_probability = 0.3}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3600, max = 3600}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-nixan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-nixan-crushing", change = 0.05})
    end

    if mods["dea-dia-system"] then 
        data.raw.planet["planet-dea-dia"].surface_properties["deep-crustal-stability"] = 50
        data.raw.planet["lemures"].surface_properties["deep-crustal-stability"] = 3300
        data.raw.planet["prosephina"].surface_properties["deep-crustal-stability"] = 3350
        data:extend {{
            type = "recipe",
            name = "aop-lemuresian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/lemuresian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "ice", amount = 3, independent_probability = 0.5}, 
                {type = "item", name = "fossil", amount = 1, independent_probability = 0.2}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3300, max = 3300}},
        },
        {
            type = "recipe",
            name = "aop-prosephinan-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/prosephinan-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.6},
                {type = "item", name = "sulfur", amount = 1, independent_probability = 0.3}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3350, max = 3350}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-lemuresian-crushing"})
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-prosephinan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-lemuresian-crushing", change = 0.05})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-prosephinan-crushing", change = 0.05})
    end

    if mods["Moshine-assets"] and mods["Moshine"] then 
        data.raw.planet["moshine"].surface_properties["deep-crustal-stability"] = 4200
        data:extend {{
            type = "recipe",
            name = "aop-moshinean-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/moshinean-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "sand", amount = 1, independent_probability = 0.28},
                {type = "item", name = "sulfur", amount = 1, independent_probability = 0.6},
                {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.08}, 
                {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.09}, 
                {type = "item", name = "coal", amount = 1, independent_probability = 0.12}, 
                {type = "item", name = "neodymium", amount = 32, independent_probability = 0.01}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 4200, max = 4200}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-moshinean-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-moshinean-crushing", change = 0.05})
    end

    if mods["naufulglebunusilo"] then 
        data.raw.planet["naufulglebunusilo"].surface_properties["deep-crustal-stability"] = 10000
        data:extend {{
            type = "recipe",
            name = "aop-naufulglebunusiloan-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/naufulglebunusiloan-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "iron-ore", amount = 2, independent_probability = 0.5},
                {type = "item", name = "copper-ore", amount = 2, independent_probability = 0.5}, 
                {type = "item", name = "tungsten-ore", amount = 1, independent_probability = 0.35}, 
                {type = "item", name = "sulfur", amount = 1, independent_probability = 0.4}, 
                {type = "item", name = "coal", amount = 3, independent_probability = 0.6}, 
                {type = "item", name = "calcite", amount = 1, independent_probability = 0.35},
                {type = "item", name = "uranium-ore", amount = 1, independent_probability = 0.25}, 
                {type = "item", name = "spoilage", amount = 2, independent_probability = 0.8}, 
                {type = "item", name = "carbon", amount = 1, independent_probability = 0.3}, 
                {type = "item", name = "yumako-seed", amount = 1, independent_probability = 0.001}, 
                {type = "item", name = "jellynut-seed", amount = 1, independent_probability = 0.001}, 
                {type = "item", name = "iron-bacteria", amount = 1, independent_probability = 0.5},
                {type = "item", name = "copper-bacteria", amount = 1, independent_probability = 0.5}, 
                {type = "item", name = "holmium-ore", amount = 1, independent_probability = 0.15}, 
                {type = "item", name = "scrap", amount = 2, independent_probability = 0.05}, 
                {type = "item", name = "ice", amount = 2, independent_probability = 0.5},
                {type = "item", name = "lithium", amount = 1, independent_probability = 0.01},
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 10000, max = 10000}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-naufulglebunusiloan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-naufulglebunusiloan-crushing", change = 0.05})
    end

    if mods["Paracelsin"] then 
        data.raw.planet["paracelsin"].surface_properties["deep-crustal-stability"] = 6300
    data:extend {{
            type = "recipe",
            name = "aop-paracelsian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/paracelsian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "tetrahedrite", amount = 1, independent_probability = 0.9},
                {type = "item", name = "sphalerite", amount = 1, independent_probability = 0.9},
                {type = "item", name = "vaterite", amount = 1, independent_probability = 0.45}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 6300, max = 6300}},
}}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-paracelsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-paracelsian-crushing", change = 0.05})
    end    

    if mods["rubia"] then 
        data.raw.planet["rubia"].surface_properties["deep-crustal-stability"] = 2420
    end

    if mods["Igrys"] then 
        data.raw.planet["igrys"].surface_properties["deep-crustal-stability"] = 2934
    end

    if mods["jahtra"] then 
        data.raw.planet["jahtra"].surface_properties["deep-crustal-stability"] = 9001 
        -- ITS OVER 9000 
data:extend {{
            type = "recipe",
            name = "aop-jahtran-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/jahtran-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "jahtra-ilmenite", amount = 1, independent_probability = 0.5},
                {type = "item", name = "copper-ore", amount = 2, independent_probability = 0.3},
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 9001, max = 9001}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-jahtran-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-jahtran-crushing", change = 0.05})
    end

    if mods["skewer_shattered_planet"] then 
        data.raw.planet["skewer_shattered_planet"].surface_properties["deep-crustal-stability"] = 0
    end
