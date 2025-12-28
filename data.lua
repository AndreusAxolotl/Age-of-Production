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

  add_crafting_categories("assembling-machine", "assembling-machine-1", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "ammunition-or-crafting", "woodworking-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"})
  add_crafting_categories("assembling-machine", "assembling-machine-2", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "biochemistry-or-organic-or-assembling", "woodworking-or-organic-or-assembling", "petrochemistry-or-organic-or-assembling" , "electronics-or-electromechanics", "pressing-or-electromechanics", "quantum-assembling-or-crafting-with-fluid", "advanced-centrifuging-or-crafting-with-fluid", "ammunition-or-crafting", "synthesis-or-crafting-with-fluid", "organic-or-assembling-or-electromechanics", "ammunition-or-crafting-with-fluid", "biochemistry-or-organic-or-hand-crafting"})
  add_crafting_categories("assembling-machine", "assembling-machine-3", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "biochemistry-or-organic-or-assembling", "woodworking-or-organic-or-assembling", "petrochemistry-or-organic-or-assembling" , "electronics-or-electromechanics", "pressing-or-electromechanics", "quantum-assembling-or-crafting-with-fluid", "advanced-centrifuging-or-crafting-with-fluid", "ammunition-or-crafting", "synthesis-or-crafting-with-fluid", "organic-or-assembling-or-electromechanics", "ammunition-or-crafting-with-fluid", "biochemistry-or-organic-or-hand-crafting"})
  add_crafting_categories("assembling-machine", "chemical-plant", {"hydraulics-or-chemistry", "hydraulics-or-chemistry-or-cryogenics", "petrochemistry-or-organic-or-chemistry", "petrochemistry-or-chemistry", "petrochemistry-or-chemistry-or-cryogenics", "synthesis-or-chemistry", "synthesis-or-cryogenics-or-chemistry"})
  add_crafting_categories("assembling-machine", "centrifuge", {"advanced-centrifuging-or-centrifuging"})
  add_crafting_categories("assembling-machine", "oil-refinery", {"petrochemistry-or-oil-processing"})
  add_crafting_categories("assembling-machine", "biochamber", {"biochemistry-or-organic", "biochemistry-or-organic-or-hand-crafting", "biochemistry-or-organic-or-assembling", "woodworking-or-organic", "woodworking-or-organic-or-assembling", "hydraulics-or-organic", "petrochemistry-or-organic-or-chemistry", "petrochemistry-or-organic-or-assembling", "petrochemistry-or-organic", "organic-or-electromechanics", "organic-or-assembling-or-electromechanics"})
  add_crafting_categories("assembling-machine", "cryogenic-plant", {"hydraulics-or-chemistry-or-cryogenics", "petrochemistry-or-chemistry-or-cryogenics", "synthesis-or-cryogenics-or-chemistry", "metallurgy-or-cryogenics"})
  add_crafting_categories("assembling-machine", "electromagnetic-plant", {"electronics-or-electromechanics"})
  add_crafting_categories("assembling-machine", "foundry", {"pressing-or-electromechanics", "metallurgy-2-the-return", "metallurgy-or-cryogenics"})

local function add_player_crafting_categories(categories)
    local entity = data.raw.character.character
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end
  
  add_player_crafting_categories({"advanced-centrifuging-or-crafting", "quantum-assembling-or-crafting", "biochemistry-or-organic-or-hand-crafting", "woodworking-or-crafting", "woodworking-or-organic-or-assembling", "electromechanics-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "ammunition-or-crafting"})

data.raw["assembling-machine"]["crusher"].surface_conditions = nil

data.raw.recipe["automation-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["logistic-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["chemical-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["military-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["production-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["utility-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["space-science-pack"].category = "quantum-assembling-or-crafting"
data.raw.recipe["atomic-bomb"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["centrifuge"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["nuclear-reactor"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["uranium-fuel-cell"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["nutrients-from-yumako-mash"].category = "biochemistry-or-organic"
data.raw.recipe["nutrients-from-bioflux"].category = "biochemistry-or-organic"
data.raw.recipe["copper-bacteria-cultivation"].category = "biochemistry-or-organic"
data.raw.recipe["copper-bacteria-cultivation"].auto_recycle = false
data.raw.recipe["iron-bacteria-cultivation"].category = "biochemistry-or-organic"
data.raw.recipe["iron-bacteria-cultivation"].auto_recycle = false
data.raw.recipe["bioplastic"].category = "biochemistry-or-organic"
data.raw.recipe["biosulfur"].category = "biochemistry-or-organic"
data.raw.recipe["bioflux"].category = "biochemistry-or-organic"
data.raw.recipe["carbon-fiber"].category = "biochemistry-or-organic"
data.raw.recipe["nutrients-from-fish"].category = "biochemistry-or-organic-or-assembling"
data.raw.recipe["nutrients-from-biter-egg"].category = "biochemistry-or-organic-or-assembling"
data.raw.recipe["iron-bacteria"].category = "biochemistry-or-organic-or-hand-crafting"
data.raw.recipe["copper-bacteria"].category = "biochemistry-or-organic-or-hand-crafting"
data.raw.recipe["yumako-processing"].category = "biochemistry-or-organic-or-hand-crafting"
data.raw.recipe["jellynut-processing"].category = "biochemistry-or-organic-or-hand-crafting"
data.raw.recipe["wooden-chest"].category = "woodworking-or-crafting"
data.raw.recipe["small-electric-pole"].category = "woodworking-or-crafting"
data.raw.recipe["shotgun"].category = "woodworking-or-crafting"
data.raw.recipe["combat-shotgun"].category = "woodworking-or-crafting"
data.raw.recipe["agricultural-tower"].category = "woodworking-or-crafting"
data.raw.recipe["nutrients-from-spoilage"].category = "woodworking-or-organic-or-assembling"
data.raw.recipe["wood-processing"].category = "woodworking-or-organic-or-assembling"
data.raw.recipe["burnt-spoilage"].category = "woodworking-or-organic"
data.raw.recipe["lubricant"].category = "hydraulics-or-chemistry"
data.raw.recipe["thruster-fuel"].category = "hydraulics-or-chemistry"
data.raw.recipe["thruster-oxidizer"].category = "hydraulics-or-chemistry"
data.raw.recipe["advanced-thruster-fuel"].category = "hydraulics-or-chemistry"
data.raw.recipe["advanced-thruster-oxidizer"].category = "hydraulics-or-chemistry"
data.raw.recipe["holmium-solution"].category = "hydraulics-or-chemistry"
data.raw.recipe["ice-melting"].category = "hydraulics-or-chemistry"
data.raw.recipe["sulfuric-acid"].category = "hydraulics-or-chemistry-or-cryogenics"
data.raw.recipe["acid-neutralisation"].category = "hydraulics-or-chemistry-or-cryogenics"
data.raw.recipe["steam-condensation"].category = "hydraulics-or-chemistry-or-cryogenics"
data.raw.recipe["biolubricant"].category = "hydraulics-or-organic"
data.raw.recipe["heavy-oil-cracking"].category = "petrochemistry-or-organic-or-chemistry"
data.raw.recipe["light-oil-cracking"].category = "petrochemistry-or-organic-or-chemistry"
data.raw.recipe["solid-fuel-from-light-oil"].category = "petrochemistry-or-chemistry"
data.raw.recipe["solid-fuel-from-heavy-oil"].category = "petrochemistry-or-chemistry"
data.raw.recipe["solid-fuel-from-petroleum-gas"].category = "petrochemistry-or-chemistry"
data.raw.recipe["flamethrower-ammo"].category = "petrochemistry-or-chemistry"
data.raw.recipe["rocket-fuel"].category = "petrochemistry-or-organic-or-assembling"
data.raw.recipe["car"].category = "electromechanics-or-crafting"
data.raw.recipe["tank"].category = "electromechanics-or-crafting"
data.raw.recipe["spidertron"].category = "electromechanics-or-crafting"
data.raw.recipe["logistic-robot"].category = "electromechanics-or-crafting"
data.raw.recipe["construction-robot"].category = "electromechanics-or-crafting"
data.raw.recipe["locomotive"].category = "electromechanics-or-crafting"
data.raw.recipe["cargo-wagon"].category = "electromechanics-or-crafting"
data.raw.recipe["fluid-wagon"].category = "electromechanics-or-crafting"
data.raw.recipe["defender-capsule"].category = "electromechanics-or-crafting"
data.raw.recipe["distractor-capsule"].category = "electromechanics-or-crafting"
data.raw.recipe["destroyer-capsule"].category = "electromechanics-or-crafting"
data.raw.recipe["solar-panel-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["battery-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["battery-mk2-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["battery-mk3-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["fusion-reactor-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["fission-reactor-equipment"].category = "advanced-centrifuging-or-crafting-or-electromechanics"
data.raw.recipe["belt-immunity-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["exoskeleton-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["personal-roboport-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["personal-roboport-mk2-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["night-vision-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["toolbelt-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["energy-shield-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["energy-shield-mk2-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["personal-laser-defense-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["discharge-defense-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["roboport"].category = "electromechanics-or-crafting"
data.raw.recipe["modular-armor"].category = "electromechanics-or-crafting"
data.raw.recipe["power-armor"].category = "electromechanics-or-crafting"
data.raw.recipe["power-armor-mk2"].category = "electromechanics-or-crafting"
data.raw.recipe["mech-armor"].category = "electromechanics-or-crafting"
data.raw.recipe["firearm-magazine"].category = "ammunition-or-crafting"
data.raw.recipe["piercing-rounds-magazine"].category = "ammunition-or-crafting"
data.raw.recipe["uranium-rounds-magazine"].category = "ammunition-or-crafting"
data.raw.recipe["rocket"].category = "ammunition-or-crafting"
data.raw.recipe["explosive-rocket"].category = "ammunition-or-crafting"
data.raw.recipe["shotgun-shell"].category = "ammunition-or-crafting"
data.raw.recipe["piercing-shotgun-shell"].category = "ammunition-or-crafting"
data.raw.recipe["cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["explosive-cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["uranium-cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["explosive-uranium-cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["railgun-ammo"].category = "ammunition-or-crafting"
data.raw.recipe["artillery-shell"].category = "ammunition-or-crafting"
data.raw.recipe["grenade"].category = "ammunition-or-crafting"
data.raw.recipe["cluster-grenade"].category = "ammunition-or-crafting"
data.raw.recipe["coal-synthesis"].category = "synthesis-or-chemistry"
data.raw.recipe["coal-synthesis"].crafting_machine_tint =
{
    primary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    secondary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    tertiary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    quaternary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000}
}
data.raw.recipe["tungsten-carbide"].category = "synthesis-or-crafting-with-fluid"
data.raw.recipe["tungsten-carbide"].crafting_machine_tint =
{
    primary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    secondary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    tertiary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    quaternary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000}
}
data.raw.recipe["carbon"].category = "synthesis-or-cryogenics-or-chemistry"
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