local assembler_pictures = require("__base__/prototypes/entity/assembler-pictures")

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
if mods["atan-nuclear-science"] then 

    if settings.startup["aop-merge-atomic-enricher"].value then
        data.raw["assembling-machine"]["aop-atomic-enricher"].hidden= true
        data.raw["item"]["aop-atomic-enricher"].hidden =  true
        data.raw["item"]["aop-atomic-enricher"].hidden_in_factoriopedia =  true
        data.raw["recipe"]["aop-atomic-enricher"] = nil
        data.raw["recipe"]["aop-atomic-enricher"] = nil
        local tech = data.raw.technology["aop-atomic-enricher"]
        for i, effect in ipairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == "aop-atomic-enricher" then
        table.remove(tech.effects, i)
        end
        end
    end
    data.raw["assembling-machine"]["atan-atom-forge"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler_pictures.assembler2pipepictures,
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1.5, -2.5 } } }
    },
    {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler_pictures.assembler2pipepictures,
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1.5, -2.5 } } }
    },
    {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler_pictures.assembler2pipepictures,
        secondary_draw_orders = { north = -1 },
        volume = 500,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1.5, 2.5 } } }
    },
    {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler_pictures.assembler2pipepictures,
        secondary_draw_orders = { north = -1 },
        volume = 500,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1.5, 2.5 } } }
    },
  }
  data.raw["assembling-machine"]["atan-atom-forge"].fluid_boxes_off_when_no_fluid_recipe = true
end