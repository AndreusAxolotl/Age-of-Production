if not mods["aai-industry"] then return end

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

  local function add_player_crafting_categories(categories)
    local entity = data.raw.character.character
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end

data.raw.recipe["aop-arc-furnace"].ingredients = {
  {type = "item", name = "steel-plate",   amount = 200},
  {type = "item", name = "copper-cable",       amount = 150},
  {type = "item", name = "tungsten-carbide", amount = 100},
  {type = "item", name = "refined-concrete", amount = 50},
  {type = "item", name = "advanced-circuit", amount = 50},
  {type = "item", name = "industrial-furnace", amount = 1},
}
add_tech_prerequisites("aop-arc-furnace", "industrial-furnace")
if mods["corrundum"] then 
    add_tech_prerequisites("aop-arc-furnace", "electrochemical-science-pack")
    add_tech_prerequisites("aop-arc-furnace",  "industrial-furnace")
end
