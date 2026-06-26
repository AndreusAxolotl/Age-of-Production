table.insert(data.raw.lab["lab"].inputs, "aop-fission-science-pack")
table.insert(data.raw.lab["biolab"].inputs, "aop-fission-science-pack")
table.insert(data.raw.lab["lab"].inputs, "aop-thermal-science-pack")
table.insert(data.raw.lab["biolab"].inputs, "aop-thermal-science-pack")
table.insert(data.raw.lab["lab"].inputs, "aop-forestry-science-pack")
table.insert(data.raw.lab["biolab"].inputs, "aop-forestry-science-pack")
table.insert(data.raw.lab["lab"].inputs, "aop-petrochemical-science-pack")
table.insert(data.raw.lab["biolab"].inputs, "aop-petrochemical-science-pack")
table.insert(data.raw.lab["lab"].inputs, "aop-quantistic-science-pack")
table.insert(data.raw.lab["biolab"].inputs, "aop-quantistic-science-pack")

local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

  local function add_crafting_categories(entity_type, entity_name, categories)
    local entity = data.raw[entity_type][entity_name]
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end

local function add_player_crafting_categories(categories)
    local entity = data.raw.character.character
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end
  

data.raw["assembling-machine"]["crusher"].surface_conditions = nil

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
add_crafting_categories("automation-science-pack", {"quantum-assembling"})
add_crafting_categories("logistic-science-pack", {"quantum-assembling"})
add_crafting_categories("chemical-science-pack", {"quantum-assembling", "chemistry"})
add_crafting_categories("military-science-pack", {"quantum-assembling", "ammunition"})
add_crafting_categories("production-science-pack", {"quantum-assembling", "advanced-centrifuging"})
add_crafting_categories("utility-science-pack", {"quantum-assembling", "advanced-centrifuging"})
add_crafting_categories("space-science-pack", {"quantum-assembling"})
add_crafting_categories("automation-science-pack", {"quantum-assembling"})
add_crafting_categories("atomic-bomb", {"advanced-centrifuging"})
add_crafting_categories("centrifuge", {"advanced-centrifuging"})
add_crafting_categories("nuclear-reactor", {"advanced-centrifuging"})
add_crafting_categories("uranium-fuel-cell", {"advanced-centrifuging"})
add_crafting_categories("wooden-chest", {"woodworking"})
add_crafting_categories("small-electric-pole", {"woodworking"})
add_crafting_categories("shotgun", {"woodworking"})
add_crafting_categories("combat-shotgun", {"woodworking"})
add_crafting_categories("agricultural-tower", {"woodworking"})
add_crafting_categories("nutrients-from-spoilage", {"woodworking"})
add_crafting_categories("tree-seed", {"woodworking"})
add_crafting_categories("burnt-spoilage", {"woodworking"})
add_crafting_categories("lubricant", {"hydraulics"})
add_crafting_categories("thruster-fuel", {"hydraulics"})
add_crafting_categories("thruster-oxidizer", {"hydraulics"})
add_crafting_categories("advanced-thruster-fuel", {"hydraulics"})
add_crafting_categories("advanced-thruster-oxidizer", {"hydraulics"})
add_crafting_categories("holmium-solution", {"hydraulics"})
add_crafting_categories("ice-melting", {"hydraulics"})
add_crafting_categories("sulfuric-acid", {"hydraulics"})
add_crafting_categories("acid-neutralisation", {"hydraulics"})
add_crafting_categories("steam-condensation", {"hydraulics"})
add_crafting_categories("biolubricant", {"hydraulics"})
add_crafting_categories("heavy-oil-cracking", {"petrochemistry"})
add_crafting_categories("light-oil-cracking", {"petrochemistry"})
add_crafting_categories("solid-fuel-from-light-oil", {"petrochemistry"})
add_crafting_categories("solid-fuel-from-heavy-oil", {"petrochemistry"})
add_crafting_categories("solid-fuel-from-petroleum-gas", {"petrochemistry"})
add_crafting_categories("flamethrower-ammo", {"petrochemistry"})
add_crafting_categories("rocket-fuel", {"petrochemistry"})
add_crafting_categories("firearm-magazine", {"ammunition"})
add_crafting_categories("piercing-rounds-magazine", {"ammunition"})
add_crafting_categories("uranium-rounds-magazine", {"ammunition"})
add_crafting_categories("rocket", {"ammunition"})
add_crafting_categories("explosive-rocket", {"ammunition"})
add_crafting_categories("shotgun-shell", {"ammunition"})
add_crafting_categories("piercing-shotgun-shell", {"ammunition"})
add_crafting_categories("cannon-shell", {"ammunition"})
add_crafting_categories("explosive-cannon-shell", {"ammunition"})
add_crafting_categories("uranium-cannon-shell", {"ammunition"})
add_crafting_categories("explosive-uranium-cannon-shell", {"ammunition"})
add_crafting_categories("railgun-ammo", {"ammunition"})
add_crafting_categories("artillery-shell", {"ammunition"})
add_crafting_categories("grenade", {"ammunition"})
add_crafting_categories("cluster-grenade", {"ammunition"})
add_crafting_categories("coal-synthesis", {"synthesis"})
add_crafting_categories("tungsten-carbide", {"synthesis"})
add_crafting_categories("carbon", {"synthesis"})

data.raw.recipe["coal-synthesis"].crafting_machine_tint =
{
    primary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    secondary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    tertiary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    quaternary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000}
}
data.raw.recipe["tungsten-carbide"].crafting_machine_tint =
{
    primary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    secondary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    tertiary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    quaternary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000}
}
data.raw.recipe["carbon"].crafting_machine_tint =
{
    primary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    secondary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    tertiary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    quaternary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000}
}
data.raw.recipe["tree-seed"].surface_conditions = nil
data.raw.item["spoilage"].fuel_category = "aop-spoilage"

data:extend({
    {
        type = "surface-property",
        name = "deep-crustal-stability",
        default_value = 2900,
    },
})
data.raw.surface["space-platform"].surface_properties["deep-crustal-stability"] = 0
data.raw.planet["nauvis"].surface_properties["deep-crustal-stability"] = 5500
data.raw.planet["vulcanus"].surface_properties["deep-crustal-stability"] = 5200
data.raw.planet["fulgora"].surface_properties["deep-crustal-stability"] = 3900
data.raw.planet["gleba"].surface_properties["deep-crustal-stability"] = 5300
data.raw.planet["aquilo"].surface_properties["deep-crustal-stability"] = 2000

require "prototypes.recipe-categories"
require "prototypes.entities"
require "prototypes.items"
require "prototypes.tiles"
require "prototypes.recipes"
require "prototypes.technology"