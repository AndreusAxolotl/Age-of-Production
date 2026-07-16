require "compat.galore"
require "compat.5dim"
require "compat.planets"
require "compat.qualitybiolab"
require "compat.nuclear-science"
require "compat.aai"

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
  if not recipe then return end
  recipe.categories = recipe.categories or {"crafting"}
  for _, category_to_insert in pairs(categories) do
    if not is_in_table(recipe.categories, category_to_insert) then
      table.insert(recipe.categories, category_to_insert)
    end
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
