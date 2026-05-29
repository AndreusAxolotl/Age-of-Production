local function add_crafting_categories(entity_type, entity_name, categories)
  local entity = data.raw[entity_type][entity_name]
  for _,category in pairs(categories) do
    table.insert(entity.crafting_categories, category)
  end
end

local meld = require("meld")
            data.raw["lab"]["aop-quantum-computer"].inputs = meld(data.raw["lab"]["aop-quantum-computer"].inputs, data.raw["lab"]["biolab"].inputs)

data.raw.recipe["nutrients-recycling"].results = {
                {
                  type = "item",
                  name = "spoilage",
                  amount = 2.5,
                  extra_count_fraction = 0.5
                }
          }
          data.raw.recipe["nutrients-recycling"].energy_required = 0.125

for _, type in pairs{"assembling-machine","furnace","agricultural-tower","boiler","rocket-silo","inserter","lab","mining-drill","offshore-pump","pump","radar","reactor","car","locomotive","burner-generator","fusion-reactor","generator-equipment","roboport-equipment","spider-vehicle"} do
  for _, prototype in pairs(data.raw[type] or {}) do
    local energy = prototype.energy_source
    if energy and energy.type == "burner" then
      local categories = energy.fuel_categories
      if categories and util.list_to_map(categories)["chemical"] then
        table.insert(categories, "aop-spoilage")
      end
    end
  end
end