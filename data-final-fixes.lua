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

if helpers.compare_versions(helpers.game_version, "2.1.20") >= 0 then
  for type, prototypes in pairs(data.raw) do
    for _, prototype in pairs(prototypes or {}) do
      local energy = prototype.burner or prototype.energy_source
      if energy and energy.type == "burner" then
        local categories = energy.fuel_categories or {"chemical"}
        if categories and util.list_to_map(categories)["chemical"] then
          table.insert(categories, "aop-spoilage")
        end
        energy.fuel_categories = categories
      end
    end
  end
end

data.raw.item["uranium-238"].weight = 10*kg
data.raw.item["aop-uranium-233"].weight = 10*kg
data.raw.item["uranium-235"].weight = 10*kg
data.raw.item["centrifuge"].weight = 200 * kg