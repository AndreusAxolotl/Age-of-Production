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

  local function add_machine_crafting_categories(entity_type, entity_name, categories)
    local entity = data.raw[entity_type][entity_name]
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end

local function is_in_table(table_, value)
  for _, item in pairs(table_) do
    if item == value then
      return true
    end
  end
  return false
end

local function add_crafting_categories(recipe_name, categories)
  local recipe = data.raw.recipe[recipe_name]
  recipe.categories = recipe.categories or {"crafting"}
  for _, category_to_insert in pairs(categories) do
    if not is_in_table(recipe.categories, category_to_insert) then
      table.insert(recipe.categories, category_to_insert)
    end
  end
end


if mods["maraxsis"] then 
    add_machine_crafting_categories("assembling-machine", "maraxsis-hydro-plant", {"hydraulics"})
    add_machine_crafting_categories("assembling-machine", "maraxsis-hydro-plant-extra-module-slots", {"hydraulics"})
    add_machine_crafting_categories("assembling-machine", "aop-hydraulic-plant", {"maraxsis-hydro-plant"})
    add_crafting_categories("maraxsis-petroleum-gas-cracking", {"petrochemistry"})
    add_crafting_categories("maraxsis-fat-man", {"advanced-centrifuging"})
    add_crafting_categories("maraxsis-holmium-recrystalization", {"synthesis"})
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
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 4700, max = 4700}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-maraxsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-maraxsian-crushing", change = 0.05})
    end
    
    if mods["corrundum"] then 
    data.raw.planet["corrundum"].surface_properties["deep-crustal-stability"] = 4000
     add_crafting_categories("asphalt-c", {"petrochemistry"})
     add_crafting_categories("asphalt-c-alt", {"petrochemistry"})
     add_crafting_categories("pressurized-acid-neutralization", {"hydraulics"})
     add_crafting_categories("pressurized-acid-neutralization-alt", {"hydraulics"})
     add_crafting_categories("hot-water-to-steam", {"hydraulics"})
     add_crafting_categories("calcium-sulfate", {"synthesis"})
     add_crafting_categories("stone-production", {"synthesis"})
     add_crafting_categories("controlled-petrol-combustion", {"hydraulics"})
     add_crafting_categories("sulfur-combustion", {"hydraulics"})
     add_crafting_categories("hydrogen-sulfide-combustion", {"hydraulics"})
     add_crafting_categories("sulfur-reduction", {"hydraulics"})
     add_crafting_categories("sulfur-combustion", {"hydraulics"})
     add_crafting_categories("sulfuric-acid-concentration", {"hydraulics"})
     add_crafting_categories("sulfuric-acid-concentration-alt", {"hydraulics"})
     add_crafting_categories("sulfuric-acid-dilution", {"hydraulics"})
     add_crafting_categories("petroleum-alkylation", {"petrochemistry"})
     add_crafting_categories("light-oil-alkylation", {"petrochemistry"})
     add_crafting_categories("destructive-dilute-acid-neutralization", {"hydraulics"})
     add_crafting_categories("dilute-acid-neutralization", {"hydraulics"})
     add_crafting_categories("kinetic-reactive-displacement", {"synthesis"})
     add_crafting_categories("reactive-displacement", {"synthesis"})
     add_crafting_categories("force-reduction-copper", {"synthesis"})
     add_crafting_categories("force-reduction-iron", {"synthesis"})
     add_crafting_categories("blue-rocket", {"ammunition"})
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
            {type = "item", name = "gold-ore", amount = 2, independent_probability = 0.2}, 
        },
        allow_productivity = true,
        categories = {"crushing"},
        auto_recycle = false,
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 3100, max = 3100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-frozetan-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-frozetan-crushing", change = 0.05})
    end
    
    if mods["tenebris-prime"] or mods["tenebris"] then 
    data.raw.planet["tenebris"].surface_properties["deep-crustal-stability"] = 5100
    -- awaiting fix 
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
        
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 5100, max = 5100}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-tenebrisian-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-tenebrisian-crushing", change = 0.05})
    end
    
    if mods["castra"] or mods["castra-prime"] then

-- waiting for 2.1 to update

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
        
        maximum_productivity = 1,
        surface_conditions = {{property = "deep-crustal-stability", min = 5000, max = 5000}},
    }}
    add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-castran-crushing"})
    add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-castran-crushing", change = 0.05})
    end
    if mods["planet-muluna"] then 
        data.raw.planet["muluna"].surface_properties["deep-crustal-stability"] = 3400
        add_crafting_categories("silicon-carbide", {"synthesis"})
        add_crafting_categories("cellulose", {"synthesis"})
        add_crafting_categories("muluna-oxygen-from-oxidizer", {"hydraulics"})
        add_crafting_categories("wood-gasification", {"petrochemistry"})
        add_crafting_categories("crude-oil-from-tar", {"petrochemistry"})
        add_crafting_categories("solid-fuel-from-tar", {"petrochemistry"})
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
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3400, max = 3400}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-mulunan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-mulunan-crushing", change = 0.05})
    end

    if mods["Cerys-Moon-of-Fulgora"] then 
        data.raw.planet["cerys"].surface_properties["deep-crustal-stability"] = 1200
        add_crafting_categories("plutonium-fuel", {"advanced-centrifuging"})
        add_crafting_categories("cerys-nitric-acid", {"hydraulics"})
        add_crafting_categories("mixed-oxide-fuel-cell", {"advanced-centrifuging"})
        add_crafting_categories("mixed-oxide-cell-reprocessing", {"advanced-centrifuging"})
        add_crafting_categories("cerys-nitrogen-rich-mineral-processing", {"synthesis"})
        add_crafting_categories("cerys-lubricant-synthesis", {"synthesis"})
        add_crafting_categories("maraxsis-holmium-recrystalization", {"synthesis"})
        add_crafting_categories("plutonium-rounds-magazine", {"ammunition"})
        add_crafting_categories("cerys-neutron-bomb", {"ammunition"})
        add_crafting_categories("cerys-hydrogen-bomb", {"ammunition"})
    end

    if mods["lignumis"] then 
        add_machine_crafting_categories("assembling-machine", "aop-lumber-mill", {"wood-processing"})
        data.raw.planet["lignumis"].surface_properties["deep-crustal-stability"] = 2000
    end

    if mods["metal-and-stars"] then 

        --awaiting 2.1 release 

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
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3600, max = 3600}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-nixan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-nixan-crushing", change = 0.05})
    end

    if mods["dea-dia-system"] then 

-- awaiting 2.1 release

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
        add_crafting_categories("silicon", {"synthesis"})
        add_crafting_categories("silicon-carbide", {"synthesis"})
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
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 10000, max = 10000}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-naufulglebunusiloan-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-naufulglebunusiloan-crushing", change = 0.05})
    end

    if mods["Paracelsin"] then 
        data.raw.planet["paracelsin"].surface_properties["deep-crustal-stability"] = 6300
        add_crafting_categories("nitrogen-nitric-acid", {"hydraulics"})
        add_crafting_categories("lubricant-from-nitric-acid", {"hydraulics"})
        add_crafting_categories("zinc", {"synthesis"})
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
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 6300, max = 6300}},
}}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-paracelsian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-paracelsian-crushing", change = 0.05})
    end    

    if mods["rubia"] then 
        data.raw.planet["rubia"].surface_properties["deep-crustal-stability"] = 2420
        add_crafting_categories("rubia-holmium-craptalysis", {"synthesis"})
    end

    if mods["skewer_shattered_planet"] then 
        data.raw.planet["skewer_shattered_planet"].surface_properties["deep-crustal-stability"] = 0

        --awaiting 2.1 release
    end

    if mods["skewer_planet_vesta"] then 
        data.raw.planet["vesta"].surface_properties["deep-crustal-stability"] = 200
        add_crafting_categories("ske_h2o", {"hydraulics"})
        add_crafting_categories("ske_carbon_seperation", {"hydraulics"})
        add_crafting_categories("ske_co2_filter_carbon", {"hydraulics"})
        add_crafting_categories("ske_co2_filter_oxygen", {"hydraulics"})
        add_crafting_categories("ske_ammonia_vesta", {"hydraulics"})
        add_crafting_categories("ske_algea_filter_cleaning", {"hydraulics"})
        add_crafting_categories("sand", {"synthesis"})
        add_crafting_categories("ceramic", {"synthesis"})
        add_crafting_categories("ske_mesh", {"synthesis"})
        add_crafting_categories("ske_algea_water", {"hydraulics"})
        add_crafting_categories("ske_crude_solution", {"hydraulics"})
        add_crafting_categories("ske_lithium", {"synthesis"})
        add_crafting_categories("ske_heavy_water", {"hydraulics"})
        add_crafting_categories("ske_dt_fuel", {"advanced-centrifuging"})
        add_crafting_categories("ske_water_electrolysis", {"hydraulics"})
        add_crafting_categories("deuterium", {"advanced-centrifuging"})
        add_crafting_categories("ske_supermagnetic", {"hydraulics"})
        add_crafting_categories("fluorofuel", {"hydraulics"})
        add_crafting_categories("fusion-missile", {"ammunition"})
    end

if mods["pelagos"] then 
        -- waiting for 2.1
    end

if mods["panglia_planet_assets"] and mods["panglia_planet"] then 
        data.raw.planet["panglia"].surface_properties["deep-crustal-stability"] = 4600
        add_crafting_categories("universe_precursor", {"synthesis"})
        add_crafting_categories("panglia_panglite_fiber", {"synthesis"})
        add_crafting_categories("panglia_low_density_structure_from_panglite_fiber", {"synthesis"})
        add_crafting_categories("panglia_universe_precursor_volcanic", {"synthesis"})
        add_crafting_categories("panglia_universe_precursor", {"synthesis"})
        add_crafting_categories("panglia_branbalite_slurry", {"hydraulics"})
        data:extend {{
            type = "recipe",
            name = "aop-panglian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/panglian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                {type = "item", name = "panglia_panglite", amount = 1, independent_probability = 0.5},
                {type = "item", name = "uranium-238", amount = 5, independent_probability = 0.01},
                {type = "item", name = "iron-ore", amount = 5, independent_probability = 0.2}, 
                {type = "item", name = "copper-ore", amount = 5, independent_probability = 0.2}, 
                {type = "item", name = "panglia_igneous_rock", amount = 5, independent_probability = 0.9}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 4600, max = 4600}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-panglian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-panglian-crushing", change = 0.05})
    end

     if mods["shchierbin"] then 
    -- waiting for 2.1
    end

         if mods["planetaris-arig"] then 
    data.raw.planet["arig"].surface_properties["deep-crustal-stability"] = 2300
    data.raw["furnace"]["aop-arc-furnace"].result_inventory_size = 2
    add_crafting_categories("planetaris-cactus-wood", {"woodworking"})
    add_crafting_categories("planetaris-advanced-heavy-oil-cracking", {"petrochemistry"})
    end

             if mods["planetaris-hyarion"] then 
    data.raw.planet["hyarion"].surface_properties["deep-crustal-stability"] = 2990
    add_crafting_categories("planetaris-advanced-raw-quartz", {"synthesis"})
    if not mods["planetaris-arig"] then
    add_crafting_categories("planetaris-iron-metallic-ore-separation", {"synthesis"})
    add_crafting_categories("planetaris-copper-metallic-ore-separation", {"synthesis"})
    end
    add_crafting_categories("planetaris-carbon-nanotube", {"synthesis"})
end

             if mods["planetaris-tellus"] then 
    data.raw.planet["tellus"].surface_properties["deep-crustal-stability"] = 3045
    add_crafting_categories("planetaris-red-dye", {"synthesis"})
    add_crafting_categories("planetaris-blue-dye", {"synthesis"})
    add_crafting_categories("planetaris-yellow-dye", {"synthesis"})
    add_crafting_categories("planetaris-magenta-dye", {"synthesis"})
    add_crafting_categories("planetaris-cyan-dye", {"synthesis"})
    add_crafting_categories("planetaris-green-dye", {"synthesis"})
    add_crafting_categories("planetaris-compost", {"woodworking"})
    data:extend {{
            type = "recipe",
            name = "aop-tellurian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/tellurian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                 {type = "item", name = "iron-bacteria", amount = 1, independent_probability = 0.2},
        {type = "item", name = "copper-bacteria", amount = 1, independent_probability = 0.5}, 
        {type = "item", name = "iron-ore", amount = 1, independent_probability = 0.1},
        {type = "item", name = "copper-ore", amount = 1, independent_probability = 0.2},
        {type = "item", name = "spoilage", amount = 2, independent_probability = 0.8}, 
        {type = "item", name = "carbon", amount = 1, independent_probability = 0.3}, 
        {type = "item", name = "planetaris-magnesium-bacteria", amount = 1, independent_probability = 0.5},
        {type = "item", name = "planetaris-mushell-seed", amount = 1, independent_probability = 0.001}, 
        {type = "item", name = "planetaris-chloroplast-seed", amount = 1, independent_probability = 0.001}, 
        {type = "item", name = "planetaris-myceliae-seed", amount = 1, independent_probability = 0.001}, 
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            
            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3045, max = 3045}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-tellurian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-tellurian-crushing", change = 0.05})
    end

     if mods["muria"] then 
     data.raw.planet["muria"].surface_properties["deep-crustal-stability"] = 3333
    add_crafting_categories("muriatic-solution-separation", {"hydraulics"})
    add_crafting_categories("hydronium-destruction", {"hydraulics"})
    add_crafting_categories("oxyhydrogen-combustion", {"hydraulics"})
    add_crafting_categories("toxic-rounds-magazine", {"ammunition"})
    add_crafting_categories("heavy-shotgun-shells", {"ammunition"})
     data:extend {{
            type = "recipe",
            name = "aop-murian-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/murian-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                 {type = "item", name = "cotunnite", amount = 1, independent_probability = 0.25},
        {type = "item", name = "chlorine-salts", amount = 2, independent_probability = 0.7}, 
        {type = "item", name = "carbon", amount = 2, independent_probability = 0.2},
        {type = "item", name = "sulfur", amount = 2, independent_probability = 0.1},
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,

            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 3333, max = 3333}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-murian-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-murian-crushing", change = 0.05})
    end

     if mods["apia"] then 
    data.raw.planet["apia"].surface_properties["deep-crustal-stability"] = 833
    data.raw.planet["carnova"].surface_properties["deep-crustal-stability"] = 347
    add_crafting_categories("artillery-shell-with-phosphorus", {"ammunition"})
    add_crafting_categories("phosphoric-acid", {"hydraulics"})
    end

         if mods["planet-crucible"] then 
            data.raw.planet["crucible"].surface_properties["deep-crustal-stability"] = 8000
    add_crafting_categories("planet-crucible-alum", {"synthesis"})
    add_crafting_categories("planet-crucible-lithium-hydride", {"synthesis"})
    add_crafting_categories("planet-crucible-firearm-magazine", {"ammunition"})
    add_crafting_categories("planet-crucible-rocket", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-0", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-1", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-2", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-3", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-4", {"ammunition"})
    add_crafting_categories("planet-crucible-lens-5", {"ammunition"})
            data:extend {{
            type = "recipe",
            name = "aop-cruciblean-crushing",
            icon = "__Age-of-Production-Graphics__/graphics/icons/cruciblean-crushing.png",
            subgroup = "aop-core-mining",
            enabled = false,
            energy_required = 2,
            ingredients = {
                {type = "item", name = "aop-refined-mineral",      amount = 1},
            },
            results = {
                 {type = "item", name = "planet-crucible-skarn", amount = 2, independent_probability = 0.9},
        {type = "item", name = "planet-crucible-emery", amount = 2, independent_probability = 0.7}, 
        {type = "item", name = "coal", amount = 2, independent_probability = 0.5},
        {type = "item", name = "iron-ore", amount = 2, independent_probability = 0.6},
        {type = "item", name = "copper-ore", amount = 2, independent_probability = 0.6},
            },
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,

            maximum_productivity = 1,
            surface_conditions = {{property = "deep-crustal-stability", min = 8000, max = 8000}},
        }}
        add_tech_effect("aop-core-mining", {type = "unlock-recipe", recipe = "aop-cruciblean-crushing"})
        add_tech_effect("aop-deep-mineral-refining-productivity", {type = "change-recipe-productivity", recipe = "aop-cruciblean-crushing", change = 0.05})
    end

         if mods["ribbonia"] then 
     data.raw.planet["ribbonia"].surface_properties["deep-crustal-stability"] = 0
     add_crafting_categories("plasma-artillery-shell", {"ammunition"})
     add_crafting_categories("plasma-railgun-ammo", {"ammunition"})
    end