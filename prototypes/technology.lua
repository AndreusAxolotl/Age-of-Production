data:extend{
{
    type = "technology",
    name = "aop-arc-furnace",
    icon = "__Age-of-Production-Graphics__/graphics/technology/arc-furnace.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-arc-furnace"
      },
    },
    prerequisites = {"metallurgic-science-pack", "production-science-pack"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-atomic-enricher",
    icon = "__Age-of-Production-Graphics__/graphics/technology/atomic-enricher.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-atomic-enricher"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-uranium-sifting"
      },
    },
    prerequisites = {"atomic-bomb", "quantum-processor"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-greenhouse",
    icon = "__Age-of-Production-Graphics__/graphics/technology/greenhouse.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-greenhouse"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-yumako-planting"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-jellynut-planting"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-tree-planting"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-yumako-seed-removal"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-jellynut-seed-removal"
      },

    },
    prerequisites = {"aop-woodworking", "cryogenic-science-pack"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-hydraulics",
    icon = "__Age-of-Production-Graphics__/graphics/technology/hydraulics.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-hydraulic-plant"
      },
    },
    prerequisites = {"cryogenic-science-pack"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-petrochemistry",
    icon = "__Age-of-Production-Graphics__/graphics/technology/petrochemistry.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-petrochemical-facility"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-carbon-liquefaction"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-petroleum-gas-dehydrogenation"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-solid-fuel-melting"
      }
    },
    prerequisites = {"electromagnetic-science-pack", "coal-liquefaction"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"metallurgic-science-pack", 1},        
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-quantum-machinery",
    icon = "__Age-of-Production-Graphics__/graphics/technology/quantum-machinery.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-quantum-assembler"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-quantum-stabilizer"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-quantum-computer"
      }
    },
    prerequisites = { "promethium-science-pack", "aop-automation-4", "biolab"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 90
    }
  },
{
    type = "technology",
    name = "aop-woodworking",
    icon = "__Age-of-Production-Graphics__/graphics/technology/woodworking.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-lumber-mill"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-biomass-from-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-biomass-from-seeds"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-nutrients-from-biomass"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-charcoal"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-wood-rotting"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-wooden-rails"
      },
    },
    prerequisites = {"tree-seeding", "production-science-pack"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "aop-agriculture-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__Age-of-Production-Graphics__/graphics/technology/agriculture-productivity.png"),

    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "aop-yumako-planting",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "aop-jellynut-planting",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "aop-tree-planting",
        change = 0.1
      }
    },
    prerequisites = {"aop-greenhouse"},
    unit =
    {
      count_formula = "1.75^L*500",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
      type = "technology",
      name = "aop-advanced-recycling",
      icon = "__Age-of-Production-Graphics__/graphics/technology/advanced-recycling.png",
      icon_size = 256,
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "aop-salvager"
        },
      },
      prerequisites = {"carbon-fiber", "quality-module-3", "production-science-pack", "utility-science-pack"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1},
          {"agricultural-science-pack", 1},
          {"electromagnetic-science-pack", 1},
        },
        time = 60
      }
    },
    {
        type = "technology",
        name = "aop-automation-4",
        icon = "__Age-of-Production-Graphics__/graphics/technology/automation-4.png",
        icon_size = 256,
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "aop-advanced-assembling-machine"
          },
        },
        prerequisites = {"productivity-module-3", "speed-module-3", "efficiency-module-3", "automation-3", "utility-science-pack", "electromagnetic-science-pack"},
        unit =
        {
          count = 2500,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
          },
          time = 90
        }
      },
      {
          type = "technology",
          name = "aop-core-mining",
          icon = "__Age-of-Production-Graphics__/graphics/technology/core-mining.png",
          icon_size = 256,
          effects =
          {
            {
              type = "unlock-recipe",
              recipe = "aop-core-miner"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-core-mining"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-mineral-slurry"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-mineral-slurry-processing"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-vulcanusian-crushing"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-nauvitian-crushing"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-gleban-crushing"
            },
            {
              type = "unlock-recipe",
              recipe = "aop-fulgoran-crushing"
            },
          },
          prerequisites = {"promethium-science-pack", "aop-hydraulics"},
          unit =
          {
            count = 10000,
            ingredients =
            {
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"production-science-pack", 1},
              {"utility-science-pack", 1},
              {"space-science-pack", 1},
              {"metallurgic-science-pack", 1},
              {"agricultural-science-pack", 1},
              {"electromagnetic-science-pack", 1},
              {"cryogenic-science-pack", 1},
              {"promethium-science-pack", 1}
            },
            time = 60
          }
        },
        {
          type = "technology",
          name = "aop-core-mining-productivity",
          icons = util.technology_icon_constant_recipe_productivity("__Age-of-Production-Graphics__/graphics/technology/core-mining-productivity.png"),
      
          effects =
          {
            {
              type = "change-recipe-productivity",
              recipe = "aop-core-mining",
              change = 0.1
            },
          },
          prerequisites = {"aop-core-mining"},
          unit =
          {
            count_formula = "1.5^L*1500",
            ingredients =
            {
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"production-science-pack", 1},
              {"utility-science-pack", 1},
              {"space-science-pack", 1},
              {"metallurgic-science-pack", 1},
              {"agricultural-science-pack", 1},
              {"electromagnetic-science-pack", 1},
              {"cryogenic-science-pack", 1},
              {"promethium-science-pack", 1}
            },
            time = 30
          },
          max_level = "infinite",
          upgrade = true
        },
        {
          type = "technology",
          name = "aop-deep-mineral-refining-productivity",
          icons = util.technology_icon_constant_recipe_productivity("__Age-of-Production-Graphics__/graphics/technology/deep-mineral-refining-productivity.png"),
      
          effects =
          {
            {
              type = "change-recipe-productivity",
              recipe = "aop-mineral-slurry-processing",
              change = 0.05
            },
            {
              type = "change-recipe-productivity",
              recipe = "aop-vulcanusian-crushing",
              change = 0.05
            },
            {
              type = "change-recipe-productivity",
              recipe = "aop-nauvitian-crushing",
              change = 0.05
            },
            {
              type = "change-recipe-productivity",
              recipe = "aop-gleban-crushing",
              change = 0.05
            },
            {
              type = "change-recipe-productivity",
              recipe = "aop-fulgoran-crushing",
              change = 0.05
            },
          },
          prerequisites = {"aop-core-mining"},
          unit =
          {
            count_formula = "2^L*1500",
            ingredients =
            {
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"production-science-pack", 1},
              {"utility-science-pack", 1},
              {"space-science-pack", 1},
              {"metallurgic-science-pack", 1},
              {"agricultural-science-pack", 1},
              {"electromagnetic-science-pack", 1},
              {"cryogenic-science-pack", 1},
              {"promethium-science-pack", 1}
            },
            time = 60
          },
          max_level = "infinite",
          upgrade = true
        },
        {
            type = "technology",
            name = "aop-armory",
            icon = "__Age-of-Production-Graphics__/graphics/technology/armory.png",
            icon_size = 256,
            effects =
            {
              {
                type = "unlock-recipe",
                recipe = "aop-armory"
              },
            },
            prerequisites = {"metallurgic-science-pack", "utility-science-pack", "uranium-ammo"},
            unit =
            {
              count = 1000,
              ingredients =
              {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"metallurgic-science-pack", 1}
              },
              time = 60
            }
          },
            {
                type = "technology",
                name = "aop-synthesis",
                icon = "__Age-of-Production-Graphics__/graphics/technology/synthesis.png",
                icon_size = 256,
                effects =
                {
                  {
                    type = "unlock-recipe",
                    recipe = "aop-synthesizer"
                  },
                  {
                    type = "unlock-recipe",
                    recipe = "aop-ammoniacal-iron-synthesis"
                  },
                  {
                    type = "unlock-recipe",
                    recipe = "aop-ammoniacal-copper-synthesis"
                  },
                },
                prerequisites = {"cryogenic-science-pack"},
                unit =
                {
                  count = 1500,
                  ingredients =
                  {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"cryogenic-science-pack", 1}
                  },
                  time = 60
                }
              },
              {
                  type = "technology",
                  name = "aop-biomass-reactor",
                  icon = "__Age-of-Production-Graphics__/graphics/technology/biomass-reactor.png",
                  icon_size = 256,
                  effects =
                  {
                    {
                      type = "unlock-recipe",
                      recipe = "aop-biomass-reactor"
                    },
                  },
                  prerequisites = {"aop-woodworking"},
                  research_trigger =
                  {
                    type = "craft-item",
                    item = "aop-biomass",
                    count = 100
                  },
                },
                {
                    type = "technology",
                    name = "aop-smaller-beacons",
                    icon = "__Age-of-Production-Graphics__/graphics/technology/smaller-beacons.png",
                    icon_size = 256,
                    effects =
                    {
                      {
                        type = "unlock-recipe",
                        recipe = "aop-transmitter"
                      },
                    },
                    prerequisites = {"effect-transmission", "space-science-pack"},
                    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45
    }
                  }
                }

if mods["maraxsis"] then 
                  if settings.startup["aop-merge-hydro"].value then
                    local tech = data.raw.technology["aop-core-mining"]
                    for i, prerequisite in ipairs(tech.prerequisites) do
                      if tech.prerequisites == "aop-hydraulics" then
                        table.remove(tech.prerequisites, i)
                      end
                  end
                  local tech = data.raw.technology["aop-hydraulics"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "aop-hydraulic-plant" then
      table.remove(tech.effects, i)
    end
end
                  end
                end