local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

if mods["maraxsis"] then 
    data.raw.technology["aop-greenhouse"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"hydraulic-science-pack", 1}
    }
    data.raw.technology["aop-greenhouse"].prerequisites = {"aop-woodworking", "cryogenic-science-pack","hydraulic-science-pack"}

    local function add_crafting_categories(entity_type, entity_name, categories)
        local entity = data.raw[entity_type][entity_name]
        for _,category in pairs(categories) do
          table.insert(entity.crafting_categories, category)
        end
    end
    if settings.startup["aop-merge-hydro"].value then
        data.raw["assembling-machine"]["aop-hydraulic-plant"].hidden= true
        data.raw["item"]["aop-hydraulic-plant"].hidden =  true
        data.raw["item"]["aop-hydraulic-plant"].hidden_in_factoriopedia =  true
        data.raw["recipe"]["aop-hydraulic-plant"] = nil
        data.raw["recipe"]["aop-hydraulic-plant-recycling"] = nil
        data.raw["technology"]["aop-hydraulics"] = nil

    
        add_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"hydraulics", "hydraulics-or-chemistry", "hydraulics-or-organic", "hydraulics-or-chemistry-or-cryogenics", "synthesis-or-chemistry"})
        data.raw["assembling-machine"]["maraxsis-hydro-plant"].effect_receiver = { base_effect = { productivity = 0.25, quality = 2.5 }}
        data.raw.technology["aop-specialized-science"].prerequisites = {"aop-armory", "aop-petrochemistry", "aop-hybridation", "cryogenic-science-pack", "maraxsis-deepsea-research"}
    else
        -- fix missing advanced thruster fuel/oxidizer recipes
        data:extend{{type="recipe-category", name="maraxsis-hydro-plant-or-hydraulics-or-chemistry"}}
        add_crafting_categories("assembling-machine", "aop-hydraulic-plant", {"maraxsis-hydro-plant-or-hydraulics-or-chemistry"})
        add_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"maraxsis-hydro-plant-or-hydraulics-or-chemistry", "synthesis-or-chemistry"}) -- also add stone/calcite synthesis to maraxis hydro plant
        local recipesToMove = {"advanced-thruster-fuel","advanced-thruster-oxidizer"}
        for _,rec in pairs(recipesToMove) do
            data.raw.recipe[rec].category_id = "maraxsis-hydro-plant-or-hydraulics-or-chemistry"
        end
    end
    
    data.raw.technology["aop-core-mining"].prerequisites = {"aop-electromechanics", "promethium-science-pack", "maraxsis-project-seadragon"}
    data.raw.technology["aop-core-mining"].unit.ingredients = {
                  {"automation-science-pack", 1},
                  {"logistic-science-pack", 1},
                  {"chemical-science-pack", 1},
                  {"production-science-pack", 1},
                  {"utility-science-pack", 1},
                  {"space-science-pack", 1},
                  {"metallurgic-science-pack", 1},
                  {"agricultural-science-pack", 1},
                  {"electromagnetic-science-pack", 1},
                  {"cryogenic-science-pack", 1},
                  {"hydraulic-science-pack", 1},
                  {"promethium-science-pack", 1}}
                  data.raw.recipe["aop-core-miner"].surface_conditions = {{property = "pressure", min = 400000, max = 400000}}
        data.raw.recipe["aop-quantum-stabilizer"].ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "maraxsis-conduit",       amount = 20},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 250},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 800},
        {type = "item", name = "electric-engine-unit", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 300},
                    }
         data.raw.recipe["aop-petroleum-gas-dehydrogenation"].results = {
                {type = "item", name = "carbon", amount = 2},
                {type = "fluid", name = "maraxsis-hydrogen", amount = 4},
         }
        data.raw.planet["maraxsis"].surface_properties.density = 4700
        data.raw.planet["maraxsis-trench"].surface_properties.density = 4700
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.4},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.4}, 
                {type = "item", name = "maraxsis-limestone", amount = 5, probability = 0.5}, 
                {type = "item", name = "sulfur", amount = 2, probability = 0.3}, 
                {type = "item", name = "maraxsis-salt", amount = 3, probability = 0.25}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 4700, max = 4700}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-maraxsian-crushing"})
    end
    
    if mods["corrundum"] then 
    data.raw.technology["aop-arc-furnace"].prerequisites = {"metallurgic-science-pack","electrochemical-science-pack"}
    data.raw.technology["aop-arc-furnace"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"electrochemical-science-pack",1}
    }
    
    data.raw.technology["aop-petrochemistry"].prerequisites = {"electromagnetic-science-pack", "coal-liquefaction","electrochemical-science-pack"}
    data.raw.technology["aop-petrochemistry"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"electrochemical-science-pack",1}
    }
    data.raw.planet["corrundum"].surface_properties.density = 4000
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
            {type = "item", name = "sulfur", amount = 3, probability = 0.9},
            {type = "item", name = "chalcopyrite-ore", amount = 2, probability = 0.5}, 
            {type = "item", name = "platinum-ore", amount = 1, probability = 0.5}, 
            {type = "item", name = "calcite", amount = 2, probability = 0.6}, 
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        surface_conditions = {{property = "density", min = 4000, max = 4000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-corrundumian-crushing"})
    end
    
    if mods["secretas"] then 
    data.raw.technology["aop-electromechanics"].prerequisites = {"quantum-processor","planet-discovery-secretas"}
    data.raw.technology["aop-electromechanics"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"golden-science-pack", 1},
    }
    
    
    data.raw.technology["aop-advanced-recycling"].prerequisites = {"steam-recycler"}
    data.raw.technology["aop-advanced-recycling"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"golden-science-pack", 1},
    }
    
    data.raw.recipe["aop-salvager"].surface_conditions = {{property = "pressure", min = 200, max = 200}}
    data.raw.item["aop-salvager"].default_import_location = "frozeta"
    data.raw["furnace"]["aop-salvager"].result_inventory_size = 40
    data.raw.planet["frozeta"].surface_properties.density = 3100
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
            {type = "item", name = "ice", amount = 6, probability = 0.9},
            {type = "item", name = "gold-ore", amount = 2, probability = 0.5}, 
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        surface_conditions = {{property = "density", min = 3100, max = 3100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-frozetan-crushing"})
    end
    
    if mods["tenebris-prime"] or mods["tenebris"] then 
    data.raw.technology["aop-automation-4"].prerequisites = {"productivity-module-3", "speed-module-3", "efficiency-module-3", "automation-3", "utility-science-pack", "electromagnetic-science-pack", "bioluminescent-science-pack"}
    data.raw.technology["aop-automation-4"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"bioluminescent-science-pack", 1},
    }
    
    data.raw.recipe["aop-advanced-assembling-machine"].surface_conditions = {{property = "pressure", min = 3000, max = 3000}}
    data.raw.item["aop-advanced-assembling-machine"].default_import_location = "tenebris"
    
    
    data.raw.technology["aop-quantum-machinery"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"bioluminescent-science-pack", 1},
            {"promethium-science-pack", 1}
    }
    data.raw.planet["tenebris"].surface_properties.density = 5100
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
        {type = "item", name = "iron-ore", amount = 1, probability = 0.8},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.8}, 
        {type = "item", name = "quartz-ore", amount = 1, probability = 0.25},
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        surface_conditions = {{property = "density", min = 5100, max = 5100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-tenebrisian-crushing"})
    end
    
    if mods["terrapalus"] then 
    data.raw.technology["aop-hybridation"].prerequisites = {"captive-biter-spawner", "quantum-processor","inhibitor-lamp"}
    data.raw.recipe["aop-biochemical-facility"].ingredients = {
            {type = "item", name = "quantum-processor",   amount = 150},
            {type = "item", name = "steel-plate",       amount = 100},
            {type = "item", name = "carbon-fiber", amount = 200},
            {type = "item", name = "biochamber", amount = 2},
            {type = "item", name = "nutrients", amount = 500},
            {type = "item", name = "uranium-235", amount = 200},
            {type = "item", name = "biter-egg", amount = 5},
            {type = "item", name = "pentapod-egg", amount = 5},
            {type = "item", name = "inhibitor-lamp", amount = 5},
        }
    data.raw.item["aop-biochemical-facility"].default_import_location = "terrapalus"
    data.raw.planet["terrapalus"].surface_properties.density = 2200
    end
    
    if mods["castra"] then
    data.raw.technology["aop-armory"].prerequisites = {"metallurgic-science-pack", "battlefield-science-pack"}
    data.raw.technology["aop-armory"].unit.ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1},
                    {"battlefield-science-pack", 1}
                  }
    data.raw.item["aop-armory"].default_import_location = "castra"
    data.raw.recipe["aop-armory"].surface_conditions = {{property = "pressure", min = 1254, max = 1254}}
    data.raw.recipe["aop-armory"].ingredients = {
            {type = "item", name = "assembling-machine-2",   amount = 1},
            {type = "item", name = "advanced-circuit",   amount = 50},
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "nickel-plate", amount = 35},
            {type = "item", name = "gunpowder",   amount = 100},
        }
    data.raw["assembling-machine"]["forge"].effect_receiver = { base_effect = { productivity = 0.0, quality = 1 }}
    data.raw.planet["castra"].surface_properties.density = 5000
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
        {type = "item", name = "gunpowder", amount = 2, probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.8}, 
        {type = "item", name = "uranium-ore", amount = 1, probability = 0.25}, 
        {type = "item", name = "millerite", amount = 3, probability = 0.4}, 
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        surface_conditions = {{property = "density", min = 5000, max = 5000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-castran-crushing"})
    end
    if mods["planet-muluna"] then 
        data.raw.planet["muluna"].surface_properties.density = 3400
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
            {type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.5},
            {type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.5}, 
            {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.5}, 
            {type = "item", name = "anorthite-chunk", amount = 1, probability = 0.25}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 3400, max = 3400}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-mulunan-crushing"})
    end

    if mods["Cerys-Moon-of-Fulgora"] then 
        data.raw.planet["cerys"].surface_properties.density = 1200
    end

    if mods["cubium"] then 
        data.raw.planet["cubium"].surface_properties.density = 2300
    end

    if mods["planet-arrakis"] then 
        data.raw.planet["arrakis"].surface_properties.density = 2900
    end

    if mods["erm_toss"] then 
        data.raw.planet["aiur"].surface_properties.density = 5500
    end

    if mods["erm_zerg"] then 
        data.raw.planet["char"].surface_properties.density = 5200
    end

    if mods["Factorio-Tiberium"] then 
        data.raw.planet["tiber"].surface_properties.density = 2700
    end

    if mods["janus"] then 
        data.raw.planet["janus"].surface_properties.density = 2300
    end

    if mods["lignumis"] then 
        data.raw.planet["lignumis"].surface_properties.density = 2000
    end

    if mods["metal-and-stars"] then 
        data.raw.planet["shipyard"].surface_properties.density = 100
        data.raw.planet["nix"].surface_properties.density = 3600
        data.raw.planet["ringworld"].surface_properties.density = 500
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.6},
                {type = "item", name = "coal", amount = 1, probability = 0.3}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 3600, max = 3600}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-nixan-crushing"})
    end

    if mods["dea-dia-system"] then 
        data.raw.planet["planet-dea-dia"].surface_properties.density = 1500
        data.raw.planet["lemures"].surface_properties.density = 3300
        data.raw.planet["prosephina"].surface_properties.density = 3350
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.6},
                {type = "item", name = "ice", amount = 3, probability = 0.5}, 
                {type = "item", name = "fossil", amount = 1, probability = 0.2}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 3300, max = 3300}},
        }}
        data:extend {{
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.6},
                {type = "item", name = "sulfur", amount = 1, probability = 0.3}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 3350, max = 3350}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-lemuresian-crushing"})
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-prosephinan-crushing"})
    end

    if mods["Moshine"] then 
        data.raw.planet["moshine"].surface_properties.density = 4200
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
                {type = "item", name = "sand", amount = 1, probability = 0.28},
                {type = "item", name = "sulfur", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.08}, 
                {type = "item", name = "copper-ore", amount = 1, probability = 0.09}, 
                {type = "item", name = "coal", amount = 1, probability = 0.12}, 
                {type = "item", name = "neodymium-ore", amount = 32, probability = 0.01}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 4200, max = 4200}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-moshinean-crushing"})
    end

    if mods["naufulglebunusilo"] then 
        data.raw.planet["naufulglebunusilo"].surface_properties.density = 10000
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
                {type = "item", name = "iron-ore", amount = 2, probability = 0.5},
                {type = "item", name = "copper-ore", amount = 2, probability = 0.5}, 
                {type = "item", name = "tungsten-ore", amount = 1, probability = 0.35}, 
                {type = "item", name = "sulfur", amount = 1, probability = 0.4}, 
                {type = "item", name = "coal", amount = 3, probability = 0.6}, 
                {type = "item", name = "calcite", amount = 1, probability = 0.35},
                {type = "item", name = "uranium-ore", amount = 1, probability = 0.25}, 
                {type = "item", name = "spoilage", amount = 2, probability = 0.8}, 
                {type = "item", name = "carbon", amount = 1, probability = 0.3}, 
                {type = "item", name = "yumako-seed", amount = 1, probability = 0.001}, 
                {type = "item", name = "jellynut-seed", amount = 1, probability = 0.001}, 
                {type = "item", name = "iron-bacteria", amount = 1, probability = 0.5},
                {type = "item", name = "copper-bacteria", amount = 1, probability = 0.5}, 
                {type = "item", name = "holmium-ore", amount = 1, probability = 0.15}, 
                {type = "item", name = "scrap", amount = 2, probability = 0.05}, 
                {type = "item", name = "ice", amount = 2, probability = 0.5},
                {type = "item", name = "lithium", amount = 1, probability = 0.01},
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            surface_conditions = {{property = "density", min = 10000, max = 10000}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-naufulglebunusiloan-crushing"})
    end    
