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

-- very temp literally joke code
data.raw.planet["nauvis"].platform_surface_render_parameters.platform_backdrop.planet_surface={
      filename = "__Age-of-Production__/mario-earth.png",
      width = 2048,
      height = 1024
    }
data.raw.planet["nauvis"].platform_surface_render_parameters.platform_backdrop.planet_normal=nil
data.raw.planet["nauvis"].platform_surface_render_parameters.platform_backdrop.planet_reflectivity=nil