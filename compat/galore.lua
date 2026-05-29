if not mods["space_age_galore"] then return end

local exclusions = { "vgal-big-mining-drill-calcite-metallurgic-science-pack", "vgal-ammonia-agricultural-science-pack", "vgal-sulfur-petroleum-gas-agricultural-science-pack", "vgal-electronic-circuit-agricultural-science-pack"  } -- Add recipe names to exclude

for _, recipe in pairs(data.raw.recipe) do
    if recipe.name:find("^vgal-.*%-science%-pack$") then
        local exclude = false
        for _, excluded_name in ipairs(exclusions) do
            if recipe.name == excluded_name then
                exclude = true
                break
            end
        end
        if not exclude then
            recipe.additional_categories = {"quantum-assembling"}
        end
    end
end

local function set_recipe_category(recipe_names, category)
  for _, recipe_name in pairs(recipe_names) do
    if data.raw.recipe[recipe_name] then
      data.raw.recipe[recipe_name].category = category
    end
  end
end

set_recipe_category({"vgal-wood-electronic-circuit"}, "woodworking")
set_recipe_category({"vgal-wood-heavy-oil-electronic-circuit"}, "woodworking")
set_recipe_category({"vgal-steam-heavy-oil-light-oil"}, "petrochemistry")
set_recipe_category({"vgal-steam-light-oil-petroleum-gas"}, "petrochemistry")
set_recipe_category({"vgal-steam-advanced-oil-processing"}, "petrochemistry")
set_recipe_category({"vgal-steam-crude-oil-sulfur"}, "petrochemistry")
set_recipe_category({"vgal-coal-uranium-235-nuclear-fuel"}, "advanced-centrifuging")
set_recipe_category({"vgal-crude-oil-thruster-fuel"}, "hydraulics")
set_recipe_category({"vgal-ammonia-thruster-oxidizer"}, "hydraulics")

local function add_additional_categories(recipe_name, categories)
    local recipe = data.raw.recipe[recipe_name]
    if recipe and categories then
        recipe.additional_categories = recipe.additional_categories or {}
        for _, cat in pairs(categories) do
            table.insert(recipe.additional_categories, cat)
        end
    end
end

add_additional_categories("vgal-processing-unit-nuclear-reactor", {"advanced-centrifuging"})
add_additional_categories("vgal-processing-unit-centrifuge", {"advanced-centrifuging"})
add_additional_categories("vgal-uranium-238-low-density-structure", {"advanced-centrifuging"})
add_additional_categories("vgal-steel-plate-uranium-fuel-cell", {"advanced-centrifuging"})
add_additional_categories("vgal-low-density-structure-uranium-fuel-cell", {"advanced-centrifuging"})
add_additional_categories("vgal-wood-carbon", {"woodworking"})
add_additional_categories("vgal-carbon-sulfur-lubricant", {"hydraulics"})
add_additional_categories("vgal-carbon-lubricant", {"hydraulics"})
add_additional_categories("vgal-plastic-bar-lubricant", {"hydraulics"})
add_additional_categories("vgal-calcite-stone-holmium-solution", {"hydraulics"})
add_additional_categories("vgal-jelly-sulfur-lubricant", {"hydraulics"})
add_additional_categories("vgal-water-coal-ammonia", {"hydraulics"})
add_additional_categories("vgal-calcite-sulfuric-acid-ammonia", {"hydraulics"})
add_additional_categories("vgal-sulfuric-acid-sulfur", {"hydraulics"})
add_additional_categories("vgal-ice-solid-fuel-ammonia", {"hydraulics"})
add_additional_categories("vgal-scrap-sulfuric-acid-holmium-solution", {"hydraulics"})
add_additional_categories("vgal-thruster-oxidizer-thruster-fuel-steam", {"hydraulics"})
add_additional_categories("vgal-ammonia-water-crude-oil", {"petrochemistry"})
add_additional_categories("vgal-petroleum-gas-coal-heavy-oil", {"petrochemistry"})
add_additional_categories("vgal-solid-fuel-carbon", {"petrochemistry"})
add_additional_categories("vgal-solid-fuel-sulfuric-acid-carbon", {"petrochemistry"})
add_additional_categories("vgal-petroleum-gas-rocket-fuel", {"petrochemistry"})
add_additional_categories("vgal-tungsten-plate-piercing-rounds-magazine", {"ammunition"})
add_additional_categories("vgal-tungsten-plate-cannon-shell", {"ammunition"})
add_additional_categories("vgal-tungsten-plate-explosive-cannon-shell", {"ammunition"})
add_additional_categories("vgal-tungsten-plate-piercing-shotgun-shell", {"ammunition"})
add_additional_categories("vgal-plastic-bar-railgun-ammo", {"ammunition"})
add_additional_categories("vgal-explosives-grenade", {"ammunition"})
add_additional_categories("vgal-holmium-plate-railgun-ammo", {"ammunition"})
add_additional_categories("vgal-superconductor-railgun-ammo", {"ammunition"})

local tech = data.raw.technology["electronics"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-heavy-oil-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-crude-oil-sulfur" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-advanced-oil-processing" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-heavy-oil-light-oil" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-light-oil-petroleum-gas" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["kovarex-enrichment-process"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-coal-uranium-235-nuclear-fuel" then
      table.remove(tech.effects, i)
    end
end

local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end
  
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-electronic-circuit"})
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-heavy-oil-electronic-circuit"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-crude-oil-sulfur"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-advanced-oil-processing"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-heavy-oil-light-oil"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-light-oil-petroleum-gas"})
  add_tech_effect("aop-atomic-enricher", {type = "unlock-recipe", recipe = "vgal-coal-uranium-235-nuclear-fuel"})

  local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-crude-oil-thruster-fuel" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-ammonia-thruster-oxidizer" then
      table.remove(tech.effects, i)
    end
end
  if mods["maraxsis"] then
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  else
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  end
