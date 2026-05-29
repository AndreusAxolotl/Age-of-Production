local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

  add_tech_effect("cryogenic-plant", {type = "unlock-recipe", recipe = "aop-water-freezing"})

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

local function add_additional_categories(recipe_name, categories)
    local recipe = data.raw.recipe[recipe_name]
    if recipe and categories then
        recipe.additional_categories = recipe.additional_categories or {}
        for _, cat in pairs(categories) do
            table.insert(recipe.additional_categories, cat)
        end
    end
end
add_additional_categories("automation-science-pack", {"quantum-assembling"})
add_additional_categories("logistic-science-pack", {"quantum-assembling"})
add_additional_categories("chemical-science-pack", {"quantum-assembling"})
add_additional_categories("military-science-pack", {"quantum-assembling", "ammunition"})
add_additional_categories("production-science-pack", {"quantum-assembling", "advanced-centrifuging"})
add_additional_categories("utility-science-pack", {"quantum-assembling", "advanced-centrifuging"})
add_additional_categories("space-science-pack", {"quantum-assembling"})
add_additional_categories("automation-science-pack", {"quantum-assembling"})
add_additional_categories("atomic-bomb", {"advanced-centrifuging"})
add_additional_categories("centrifuge", {"advanced-centrifuging"})
add_additional_categories("nuclear-reactor", {"advanced-centrifuging"})
add_additional_categories("uranium-fuel-cell", {"advanced-centrifuging"})
add_additional_categories("wooden-chest", {"woodworking"})
add_additional_categories("small-electric-pole", {"woodworking"})
add_additional_categories("shotgun", {"woodworking"})
add_additional_categories("combat-shotgun", {"woodworking"})
add_additional_categories("agricultural-tower", {"woodworking"})
add_additional_categories("nutrients-from-spoilage", {"woodworking"})
add_additional_categories("wood-processing", {"woodworking"})
add_additional_categories("burnt-spoilage", {"woodworking"})
add_additional_categories("lubricant", {"hydraulics"})
add_additional_categories("thruster-fuel", {"hydraulics"})
add_additional_categories("thruster-oxidizer", {"hydraulics"})
add_additional_categories("advanced-thruster-fuel", {"hydraulics"})
add_additional_categories("advanced-thruster-oxidizer", {"hydraulics"})
add_additional_categories("holmium-solution", {"hydraulics"})
add_additional_categories("ice-melting", {"hydraulics"})
add_additional_categories("sulfuric-acid", {"hydraulics"})
add_additional_categories("acid-neutralisation", {"hydraulics"})
add_additional_categories("steam-condensation", {"hydraulics"})
add_additional_categories("biolubricant", {"hydraulics"})
add_additional_categories("heavy-oil-cracking", {"petrochemistry"})
add_additional_categories("light-oil-cracking", {"petrochemistry"})
add_additional_categories("solid-fuel-from-light-oil", {"petrochemistry"})
add_additional_categories("solid-fuel-from-heavy-oil", {"petrochemistry"})
add_additional_categories("solid-fuel-from-petroleum-gas", {"petrochemistry"})
add_additional_categories("flamethrower-ammo", {"petrochemistry"})
add_additional_categories("rocket-fuel", {"petrochemistry"})
add_additional_categories("firearm-magazine", {"ammunition"})
add_additional_categories("piercing-rounds-magazine", {"ammunition"})
add_additional_categories("uranium-rounds-magazine", {"ammunition"})
add_additional_categories("rocket", {"ammunition"})
add_additional_categories("explosive-rocket", {"ammunition"})
add_additional_categories("shotgun-shell", {"ammunition"})
add_additional_categories("piercing-shotgun-shell", {"ammunition"})
add_additional_categories("cannon-shell", {"ammunition"})
add_additional_categories("explosive-cannon-shell", {"ammunition"})
add_additional_categories("uranium-cannon-shell", {"ammunition"})
add_additional_categories("explosive-uranium-cannon-shell", {"ammunition"})
add_additional_categories("railgun-ammo", {"ammunition"})
add_additional_categories("artillery-shell", {"ammunition"})
add_additional_categories("grenade", {"ammunition"})
add_additional_categories("cluster-grenade", {"ammunition"})
add_additional_categories("coal-synthesis", {"synthesis"})
add_additional_categories("tungsten-carbide", {"synthesis"})
add_additional_categories("carbon", {"synthesis"})

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
data.raw.recipe["wood-processing"].surface_conditions = nil
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
require "prototypes.recipes"
require "prototypes.technology"