-- PlanetsLib 1.19.2's science-pack name sorter (lib/technology.lua) indexes
-- data.raw[subtype] for every subtype in defines.prototypes.item with no nil
-- guard. Under Factorio 2.1.8 several item subtypes (item-with-inventory,
-- item-with-label, item-with-tags) have zero prototypes, so data.raw[subtype]
-- is nil and PlanetsLib crashes in data-final-fixes. Ensure the tables exist so
-- the lookup returns nil cleanly. Runs in data-updates, before any
-- data-final-fixes. (Upstream fix belongs in PlanetsLib.)
do
  local subtypes = {
    "item-with-inventory", "item-with-label", "item-with-tags", "tool",
  }
  if defines and defines.prototypes and defines.prototypes.item then
    for subtype in pairs(defines.prototypes.item) do
      subtypes[#subtypes + 1] = subtype
    end
  end
  for _, subtype in pairs(subtypes) do
    data.raw[subtype] = data.raw[subtype] or {}
  end
end

require "compat.galore"
require "compat.5dim"
require "compat.planets"
require "compat.qualitybiolab"
require "compat.nuclear-science"
require "compat.aai"

local function add_crafting_categories(entity_type, entity_name, categories)
  local entity = data.raw[entity_type][entity_name]
  for _,category in pairs(categories) do
    table.insert(entity.crafting_categories, category)
  end
end

if settings.startup["aop-prevent-loops"].value then
    data.raw["recipe"]["aop-calcite-synthesis"].allow_productivity = false
    data.raw["recipe"]["aop-stone-synthesis"].allow_productivity = false
    end
if data.raw.fluid["hydrogen"] then

data.raw.recipe["aop-petroleum-gas-dehydrogenation"].results = {
                {type = "item", name = "carbon", amount = 2},
                {type = "fluid", name = "hydrogen", amount = 4},
         }    
end

if mods["scraptk"] then 
    ScrapIndustry.categories["advanced-smelting"] = {ignore=true}
end