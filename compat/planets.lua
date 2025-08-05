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

if mods["maraxsis"] then 
    data:extend(
{
  {
    type = "recipe-category",
    name = "scrubbing-or-chemistry",
  },
  {
    type = "recipe-category",
    name = "hydro-or-synthesis",
  },
})
    data.raw.recipe["maraxsis-atmosphere"].category = "scrubbing-or-chemistry"
    add_crafting_categories("assembling-machine", "aop-scrubber", {"scrubbing-or-chemistry"})
    add_crafting_categories("assembling-machine", "chemical-plant", {"scrubbing-or-chemistry", "hydro-or-synthesis"}) 
    add_science_pack("aop-greenhouse", {"hydraulic-science-pack", 1})
    add_tech_prerequisites("aop-greenhouse", "hydraulic-science-pack")

    if settings.startup["aop-merge-hydro"].value then
        data.raw["assembling-machine"]["aop-hydraulic-plant"].hidden= true
        data.raw["item"]["aop-hydraulic-plant"].hidden =  true
        data.raw["item"]["aop-hydraulic-plant"].hidden_in_factoriopedia =  true
        data.raw["recipe"]["aop-hydraulic-plant"] = nil
        data.raw["recipe"]["aop-hydraulic-plant-recycling"] = nil
        data.raw["technology"]["aop-hydraulics"].hidden = true
        data.raw["assembling-machine"]["maraxsis-hydro-plant"].effect_receiver = { base_effect = { productivity = 0.25, quality = 2.5 }}
        if mods["Krastorio2-spaced-out"] then 
            data.raw.technology["aop-core-mining"].prerequisites = { "aop-electromechanics", "promethium-science-pack", "maraxsis-research-vessel" }
        else
            data.raw.technology["aop-core-mining"].prerequisites = { "aop-electromechanics", "promethium-science-pack", "maraxsis-deepsea-research" }
        end
        if settings.startup["aop-specialized-science"].value then
            if mods["Krastorio2-spaced-out"] then 
                data.raw.technology["aop-specialized-science"].prerequisites = { "aop-armory", "aop-petrochemistry", "aop-hybridation", "maraxsis-research-vessel" }
            else    
                data.raw.technology["aop-specialized-science"].prerequisites = { "aop-armory", "aop-petrochemistry", "aop-hybridation", "maraxsis-deepsea-research" }
            end 
        end
    end
    data.raw.recipe["coal-synthesis"].category = "hydro-or-synthesis"
    add_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"hydro-or-synthesis", "hydraulics", "hydraulics-or-chemistry", "hydraulics-or-organic", "hydraulics-or-chemistry-or-cryogenics", "synthesis-or-chemistry"})
    add_crafting_categories("assembling-machine", "aop-hydraulic-plant", {"hydro-or-synthesis", "maraxsis-hydro-plant", "maraxsis-hydro-plant-or-assembling", "maraxsis-hydro-plant-or-advanced-crafting", "maraxsis-hydro-plant-or-biochamber", "maraxsis-hydro-plant-or-chemistry", "maraxsis-hydro-plant-or-foundry"})
    add_crafting_categories("assembling-machine", "aop-mineral-synthesizer", {"hydro-or-synthesis"})
    add_science_pack("aop-core-mining", {"hydraulic-science-pack", 1})
    add_tech_prerequisites("aop-core-mining", "maraxsis-sonar")
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
                {type = "fluid", name = "hydrogen", amount = 4},
         }
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.4},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.4}, 
                {type = "item", name = "limestone", amount = 5, probability = 0.5}, 
                {type = "item", name = "sulfur", amount = 2, probability = 0.3}, 
                {type = "item", name = "salt", amount = 3, probability = 0.25}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 4700, max = 4700}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-maraxsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-maraxsian-crushing", change = 0.05})
    end
    
    if mods["corrundum"] then 
    add_tech_prerequisites("aop-arc-furnace", "electrochemical-science-pack")
    add_science_pack("aop-arc-furnace", {"electrochemical-science-pack", 1})
    add_tech_prerequisites("aop-petrochemistry", "electrochemical-science-pack")
    add_science_pack("aop-petrochemistry", {"electrochemical-science-pack", 1})
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
            {type = "item", name = "sulfur", amount = 3, probability = 0.9},
            {type = "item", name = "chalcopyrite-ore", amount = 2, probability = 0.5}, 
            {type = "item", name = "platinum-ore", amount = 1, probability = 0.5}, 
            {type = "item", name = "calcite", amount = 2, probability = 0.6}, 
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 4000, max = 4000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-corrundumian-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-corrundumian-crushing", change = 0.05})
    end
    
    if mods["secretas"] then 
    add_tech_prerequisites("aop-electromechanics", "planet-discovery-secretas")
    add_science_pack("aop-electromechanics", {"golden-science-pack", 1})
    add_tech_prerequisites("aop-advanced-recycling", "steam-recycler")
    add_science_pack("aop-advanced-recycling", {"golden-science-pack", 1})
    
    data.raw.recipe["aop-salvager"].surface_conditions = {{property = "pressure", min = 200, max = 280}}
    data.raw.item["aop-salvager"].default_import_location = "frozeta"
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
            {type = "item", name = "ice", amount = 6, probability = 0.9},
            {type = "item", name = "gold-ore", amount = 2, probability = 0.5}, 
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 3100, max = 3100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-frozetan-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-frozetan-crushing", change = 0.05})
    end
    
    if mods["tenebris-prime"] or mods["tenebris"] then 
    add_tech_prerequisites("aop-automation-4", "bioluminescent-science-pack")
    add_science_pack("aop-automation-4", {"bioluminescent-science-pack", 1})
    
    data.raw.recipe["aop-advanced-assembling-machine"].surface_conditions = {{property = "pressure", min = 3000, max = 3000}}
    data.raw.item["aop-advanced-assembling-machine"].default_import_location = "tenebris"

    add_science_pack("aop-quantum-machinery", {"bioluminescent-science-pack", 1})

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
        {type = "item", name = "iron-ore", amount = 1, probability = 0.8},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.8}, 
        {type = "item", name = "quartz-ore", amount = 1, probability = 0.25},
        },
        allow_productivity = true,
        category = "crushing",
        auto_recycle = false,
        show_amount_in_title = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 5100, max = 5100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-tenebrisian-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-tenebrisian-crushing", change = 0.05})
    end
    
    if mods["terrapalus"] then 
    add_tech_prerequisites("aop-hybridation", "inhibitor-lamp")
    data.raw.recipe["aop-biochemical-facility"].ingredients = {
        {type = "item", name = "quantum-processor",   amount = 50},
        {type = "item", name = "steel-plate",       amount = 40},
        {type = "item", name = "carbon-fiber", amount = 60},
        {type = "item", name = "biochamber", amount = 2},
        {type = "item", name = "nutrients", amount = 75},
        {type = "item", name = "uranium-235", amount = 50},
        {type = "item", name = "biter-egg", amount = 5},
        {type = "item", name = "pentapod-egg", amount = 5},
            {type = "item", name = "palusium-plate", amount = 25},
        }
    data.raw.item["aop-biochemical-facility"].default_import_location = "terrapalus"
    data.raw.planet["terrapalus"].surface_properties["deep-crustal-stability"] = 2200
    end
    
    if mods["castra"] then
    add_tech_prerequisites("aop-armory", "battlefield-science-pack")
    add_science_pack("aop-armory", {"battlefield-science-pack", 1})

    data.raw.item["aop-armory"].default_import_location = "castra"
    data.raw.recipe["aop-armory"].surface_conditions = {{property = "pressure", min = 1254, max = 1254}}
    data.raw.recipe["aop-armory"].ingredients = {
        {type = "item", name = "assembling-machine-2",   amount = 1},
        {type = "item", name = "advanced-circuit",   amount = 25},
        {type = "item", name = "refined-concrete", amount = 20},
            {type = "item", name = "nickel-plate", amount = 35},
            {type = "item", name = "gunpowder",   amount = 50},
        }
    data.raw["assembling-machine"]["forge"].effect_receiver = { base_effect = { productivity = 0.0, quality = 1 }}
    
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
        {type = "item", name = "gunpowder", amount = 2, probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.8}, 
        {type = "item", name = "uranium-ore", amount = 1, probability = 0.25}, 
        {type = "item", name = "millerite", amount = 3, probability = 0.4}, 
        },
        allow_productivity = true,
        category = "crushing",
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
            {type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.5},
            {type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.5}, 
            {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.5}, 
            {type = "item", name = "anorthite-chunk", amount = 1, probability = 0.25}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3400, max = 3400}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-mulunan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-mulunan-crushing", change = 0.05})
        data.raw.technology["aop-woodworking"].prerequisites = {"production-science-pack", "agricultural-science-pack"}
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

        if settings.startup["aop-merge-lignumis-lumber-mill"].value then
            data.raw["assembling-machine"]["aop-lumber-mill"].hidden= true
            data.raw["item"]["aop-lumber-mill"].hidden =  true
            data.raw["item"]["aop-lumber-mill"].hidden_in_factoriopedia =  true
            data.raw["recipe"]["aop-lumber-mill"] = nil
            data.raw["recipe"]["aop-lumber-mill-recycling"] = nil
            local tech = data.raw.technology["aop-woodworking"]
            for i, effect in ipairs(tech.effects) do
            if effect.type == "unlock-recipe" and effect.recipe == "aop-lumber-mill" then
            table.remove(tech.effects, i)
            end
            end
        end
        add_crafting_categories("assembling-machine", "burner-assembling-machine", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "ammunition-or-crafting", "woodworking-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"})
        add_crafting_categories("assembling-machine", "steam-assembling-machine", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "ammunition-or-crafting", "woodworking-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"})
        add_crafting_categories("assembling-machine", "lumber-mill", {"woodworking", "woodworking-or-organic", "woodworking-or-crafting", "woodworking-or-organic-or-assembling"})
        add_crafting_categories("assembling-machine", "aop-lumber-mill", {"wood-processing-or-assembling"})
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.6},
                {type = "item", name = "coal", amount = 1, probability = 0.3}, 
            },
            allow_productivity = true,
            category = "crushing",
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
                {type = "item", name = "iron-ore", amount = 1, probability = 0.6},
                {type = "item", name = "copper-ore", amount = 1, probability = 0.6},
                {type = "item", name = "ice", amount = 3, probability = 0.5}, 
                {type = "item", name = "fossil", amount = 1, probability = 0.2}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3300, max = 3300}},
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
                {type = "item", name = "sand", amount = 1, probability = 0.28},
                {type = "item", name = "sulfur", amount = 1, probability = 0.6},
                {type = "item", name = "iron-ore", amount = 1, probability = 0.08}, 
                {type = "item", name = "copper-ore", amount = 1, probability = 0.09}, 
                {type = "item", name = "coal", amount = 1, probability = 0.12}, 
                {type = "item", name = "neodymium", amount = 32, probability = 0.01}, 
            },
            allow_productivity = true,
            category = "crushing",
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
                {type = "item", name = "tetrahedrite", amount = 1, probability = 0.9},
                {type = "item", name = "sphalerite", amount = 1, probability = 0.9},
                {type = "item", name = "vaterite", amount = 1, probability = 0.45}, 
            },
            allow_productivity = true,
            category = "crushing",
            auto_recycle = false,
            show_amount_in_title = false,
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 6300, max = 6300}},
        }}
        data:extend {{
    type = "recipe",
    name = "aop-paracelsian-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/paracelsian-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "vaterite",      amount = 2},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "nitrogen", amount = 10, probability = 0.50}, 
        {type = "fluid", name = "steam", amount = 5, probability = 0.10}, 
        {type = "item", name = "ice", amount = 2, probability = 0.10},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 5300, max = 5300}}
}}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-paracelsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-paracelsian-crushing", change = 0.05})
        add_tech_effect("aop-additional-air-scrubbing", {type = "unlock-recipe", recipe = "aop-paracelsian-air-scrubbing"})
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
                {type = "item", name = "jahtra-ilmenite", amount = 1, probability = 0.5},
                {type = "item", name = "copper-ore", amount = 2, probability = 0.3},
            },
            allow_productivity = true,
            category = "crushing",
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
