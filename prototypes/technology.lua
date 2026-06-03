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
    prerequisites = {"calcite-processing"},
    research_trigger =
    {
      type = "craft-item",
      item = "aop-quicklime",
      count = 50
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
    prerequisites = {"aop-fission-science-pack"},
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
        {"aop-fission-science-pack", 1},
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
    },
    prerequisites = {"aop-biocircuits"},
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
        {"aop-forestry-science-pack", 1},
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-hydraulic-plant",
    icon = "__Age-of-Production-Graphics__/graphics/technology/hydraulic-plant.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-hydraulic-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "aop-ammoniacal-solution-sifting"
      },
    },
    prerequisites = {"lithium-processing"},
    research_trigger =
    {
      type = "craft-item",
      item = "lithium-plate"
    }
  },
{
    type = "technology",
    name = "aop-petrochemical-facility",
    icon = "__Age-of-Production-Graphics__/graphics/technology/petrochemical-facility.png",
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
      },
      {
        type = "unlock-recipe",
        recipe = "aop-rubber-sheet"
      },
    },
    prerequisites = {"aop-bitumen-processing"},
    research_trigger =
    {
      type = "craft-fluid",
      fluid = "aop-bitumen",
      count = 200
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
        recipe = "aop-unstable-matter"
      },
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
    prerequisites = { "aop-quantistic-science-pack", "promethium-science-pack", "aop-automation-4", "biolab"},
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
        {"aop-fission-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"aop-petrochemical-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"aop-quantistic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
  },
{
    type = "technology",
    name = "aop-lumber-mill",
    icon = "__Age-of-Production-Graphics__/graphics/technology/lumber-mill.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-lumber-mill"
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
    prerequisites = {"tree-seeding"},
    research_trigger =
    {
      type = "craft-item",
      item = "aop-wood-planks",
      count = 50
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
        {"aop-forestry-science-pack", 1},
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
      prerequisites = {"quality-module-3", "production-science-pack", "utility-science-pack"},
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
          {"aop-petrochemical-science-pack", 1},
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
        prerequisites = {"productivity-module-3", "speed-module-3", "efficiency-module-3", "automation-3", "utility-science-pack", "electromagnetic-science-pack", "aop-petrochemical-science-pack"},
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
            {"aop-forestry-science-pack", 1},
            {"aop-petrochemical-science-pack", 1},
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
          prerequisites = {"aop-quantistic-science-pack"},
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
        {"aop-fission-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"aop-petrochemical-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"aop-quantistic-science-pack", 1},
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
        {"aop-fission-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"aop-petrochemical-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"aop-quantistic-science-pack", 1},
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
        {"aop-fission-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"aop-petrochemical-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"aop-quantistic-science-pack", 1},
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
            prerequisites = {"aop-thermal-science-pack", "utility-science-pack", "uranium-ammo"},
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
                {"aop-thermal-science-pack", 1}
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
                    recipe = "aop-calcite-synthesis"
                  },
                  {
                    type = "unlock-recipe",
                    recipe = "aop-stone-synthesis"
                  },
                  {
                    type = "unlock-recipe",
                    recipe = "aop-copper-ore-from-metallic-traces"
                  },
                  {
                    type = "unlock-recipe",
                    recipe = "aop-iron-ore-from-metallic-traces"
                  },
                },
                prerequisites = {"aop-hydraulic-plant"},
                research_trigger =
    {
      type = "craft-item",
      item = "aop-metallic-traces",
      count = 50
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
                  },
                  prerequisites = {"aop-forestry-science-pack"},
                  unit =
            {
              count = 500,
              ingredients =
              {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"space-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"aop-forestry-science-pack", 1}
              },
              time = 60
            }
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
                    prerequisites = {"aop-fission-science-pack", "utility-science-pack", "effect-transmission"},
                    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"aop-fission-science-pack", 1},
      },
      time = 60
    }
                  },
                  {
    type = "technology",
    name = "aop-bitumen-processing",
    icon = "__Age-of-Production-Graphics__/graphics/technology/bitumen-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-bitumen",
      },
    },
    prerequisites = {"recycling"},
    research_trigger =
    {
      type = "craft-item",
      item = "holmium-ore"
    }
  },
  {
                  type = "technology",
                  name = "aop-biocircuits",
                  icon = "__Age-of-Production-Graphics__/graphics/technology/biocircuits.png",
                  icon_size = 256,
                  effects =
                  {
                    {
                      type = "unlock-recipe",
                      recipe = "aop-growing-biocircuit"
                    }
                  },
                  prerequisites = {"aop-forestry-science-pack"},
                  unit =
            {
              count = 500,
              ingredients =
              {
                {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
                {"aop-forestry-science-pack", 1}
              },
              time = 60
            }
                },
                {
                  type = "technology",
                  name = "aop-radiation-cladding",
                  icon = "__Age-of-Production-Graphics__/graphics/technology/radiation-cladding.png",
                  icon_size = 256,
                  effects =
                  {
                    {
                      type = "unlock-recipe",
                      recipe = "aop-radiation-cladding"
                    }
                  },
                  prerequisites = {"uranium-processing", "space-science-pack", "production-science-pack"},
                  unit =
            {
              count = 200,
              ingredients =
              {
                {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"production-science-pack", 1}
              },
              time = 60
            }
                },
                {
                  type = "technology",
                  name = "aop-uranium-233-breeding",
                  icon = "__Age-of-Production-Graphics__/graphics/technology/uranium-233-breeding.png",
                  icon_size = 256,
                  effects =
                  {
                    {
                      type = "unlock-recipe",
                      recipe = "aop-uranium-233-breeding"
                    }
                  },
                  prerequisites = {"aop-radiation-cladding"},
                  research_trigger =
    {
      type = "craft-item",
      item = "aop-radiation-cladding",
      count = 10
    }
                },
                {
    type = "technology",
    name = "aop-water-rectification",
    icon = "__Age-of-Production-Graphics__/graphics/technology/water-rectification.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-water-rectification",
      },
    },
    prerequisites = {"cryogenic-science-pack", "aop-synthesis"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"space-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"aop-fission-science-pack", 1}
      },
      time = 60
    }
  },
  {
                  type = "technology",
                  name = "aop-tritium-synthesis",
                  icon = "__Age-of-Production-Graphics__/graphics/technology/tritium-synthesis.png",
                  icon_size = 256,
                  effects =
                  {
                    {
                      type = "unlock-recipe",
                      recipe = "aop-tritium-synthesis"
                    }
                  },
                  prerequisites = {"aop-water-rectification"},
                  research_trigger =
    {
      type = "craft-fluid",
      fluid = "aop-tritium",
    }
                },
                {
    type = "technology",
    name = "aop-quantistic-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/technology/quantistic-science-pack.png",
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-quantistic-science-pack",
      },
    },
    prerequisites = {"fusion-reactor"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"aop-fission-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"aop-thermal-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"aop-petrochemical-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "aop-forestry-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/technology/forestry-science-pack.png",
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-forestry-science-pack",
      },
    },
    prerequisites = {"aop-lumber-mill"},
    research_trigger =
    {
      type = "build-entity",
      entity = "aop-lumber-mill",
    }
  },
  {
    type = "technology",
    name = "aop-petrochemical-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/technology/petrochemical-science-pack.png",
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-petrochemical-science-pack",
      },
    },
    prerequisites = {"electromagnetic-plant", "aop-petrochemical-facility"},
    research_trigger =
    {
      type = "craft-item",
      item = "supercapacitor"
    }
  },
  {
    type = "technology",
    name = "aop-fission-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/technology/fission-science-pack.png",
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-fission-science-pack",
      },
    },
    prerequisites = {"aop-uranium-233-breeding"},
    research_trigger =
    {
      type = "craft-item",
      item = "aop-uranium-233"
    }
  },
  {
    type = "technology",
    name = "aop-thermal-science-pack",
    icon = "__Age-of-Production-Graphics__/graphics/technology/thermal-science-pack.png",
    icon_size = 256,
    essential = true,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-unheated-thermal-science-pack",
      },
      {
        type = "unlock-recipe",
        recipe = "aop-thermal-science-pack-heating",
      },
      {
        type = "unlock-recipe",
        recipe = "heat-pipe",
      },
    },
    prerequisites = {"tungsten-steel"},
    research_trigger =
    {
      type = "craft-item",
      item = "tungsten-plate"
    }
  },
  {
    type = "technology",
    name = "aop-quicklime-explosives",
    icon = "__Age-of-Production-Graphics__/graphics/technology/quicklime-explosives.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-explosives-from-quicklime",
      },
    },
    prerequisites = {"aop-thermal-science-pack", "explosives"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"aop-thermal-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "aop-asphalt",
    icon = "__Age-of-Production-Graphics__/graphics/technology/asphalt.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aop-asphalt",
      },
    },
    prerequisites = {"aop-petrochemical-science-pack", "utility-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"utility-science-pack", 1},
        {"aop-petrochemical-science-pack", 1}
      },
      time = 60
    }
  },
}

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
  -- If `tech.unit` doesn't exist then it is a trigger tech rather than a science tech, cannot modify it in this way
  if tech.unit then
    tech.unit.ingredients = tech.unit.ingredients or {}
    table.insert(tech.unit.ingredients, science_pack)
  else
    log("Age of Production: Unable to add science to tech `" .. tech_name .. "` due to it being a trigger technology, skipped.")
  end
end
local function add_tech_effect(tech_name, effect)
  local tech = data.raw.technology[tech_name]
  tech.effects = tech.effects or {}
  table.insert(tech.effects, effect)
end

data.raw.technology["nuclear-power"].prerequisites = { "aop-fission-science-pack" }
data.raw.technology["nuclear-power"].unit =
{
  count = 1000,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"aop-fission-science-pack", 1},
  },
  time = 30
}
data.raw.technology["kovarex-enrichment-process"].prerequisites = {"aop-fission-science-pack"}
data.raw.technology["kovarex-enrichment-process"].unit =
{
  count = 1000,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"aop-fission-science-pack", 1},
  },
  time = 30
}
data.raw.technology["atomic-bomb"].prerequisites = {"aop-fission-science-pack", "military-4", "rocketry"}
data.raw.technology["atomic-bomb"].unit =
{
  count = 5000,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"aop-fission-science-pack", 1},
  },
  time = 45
}
data.raw.technology["fission-reactor-equipment"].unit =
{
  count = 200,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"aop-fission-science-pack", 1},
  },
  time = 30
}
data.raw.technology["nuclear-fuel-reprocessing"].prerequisites = {"nuclear-power"}
data.raw.technology["nuclear-fuel-reprocessing"].unit =
{
  count = 50,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"aop-fission-science-pack", 1},
  },
  time = 30
}
data.raw.technology["artillery"].prerequisites = {"military-4", "aop-thermal-science-pack","radar"}
data.raw.technology["artillery"].unit =
{
  count = 1500,
  ingredients =
  {
    {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"military-science-pack", 1},
  {"utility-science-pack", 1},
  {"space-science-pack", 1},
  {"aop-thermal-science-pack", 1}
  },
  time = 30
}
data.raw.technology["artillery-shell-range-1"].unit =
{
  count_formula = "2^(L-1)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"aop-thermal-science-pack", 1}
  },
  time = 60
}
data.raw.technology["artillery-shell-speed-1"].unit =
{
  count_formula = "2^(L-1)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"aop-thermal-science-pack", 1}
  },
  time = 60
}
data.raw.technology["artillery-shell-damage-1"].unit =
{
  count_formula = "2^(L-1)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"aop-thermal-science-pack", 1}
  },
  time = 60
}
data.raw.technology["cliff-explosives"].prerequisites ={"aop-quicklime-explosives","military-science-pack","aop-thermal-science-pack"}
data.raw.technology["cliff-explosives"].unit =
{
  count = 500,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"space-science-pack", 1},
    {"aop-thermal-science-pack", 1}
  },
  time = 30
}
add_science_pack("rail-support-foundations", { "aop-thermal-science-pack", 1 })
add_tech_prerequisites("rail-support-foundations", "aop-thermal-science-pack")
add_science_pack("rail-support-foundations", { "aop-petrochemical-science-pack", 1 })
add_tech_prerequisites("rail-support-foundations", "aop-petrochemical-science-pack")
add_science_pack("asteroid-reprocessing", { "aop-thermal-science-pack", 1 })
add_tech_prerequisites("asteroid-reprocessing", "aop-thermal-science-pack")
add_science_pack("planet-discovery-aquilo", { "aop-thermal-science-pack", 1 })
add_science_pack("planet-discovery-aquilo", { "aop-petrochemical-science-pack", 1 })
add_tech_prerequisites("planet-discovery-aquilo", "aop-petrochemical-science-pack")
add_science_pack("planet-discovery-aquilo", { "aop-forestry-science-pack", 1 })
add_tech_prerequisites("planet-discovery-aquilo", "aop-forestry-science-pack")
add_science_pack("planet-discovery-aquilo", { "aop-fission-science-pack", 1 })
add_tech_prerequisites("planet-discovery-aquilo", "aop-fission-science-pack")
data.raw.technology["captivity"].prerequisites ={"aop-biocircuits", "military-3", "rocketry"}
data.raw.technology["captivity"].unit =
{
  count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"aop-forestry-science-pack", 1}

      },
      time = 60
}
data.raw.technology["fish-breeding"].prerequisites ={"aop-forestry-science-pack"}
add_science_pack("fish-breeding", { "aop-forestry-science-pack", 1 })
add_science_pack("biolab", { "aop-forestry-science-pack", 1 })
add_science_pack("captive-biter-spawner", { "aop-forestry-science-pack", 1 })
add_science_pack("captive-biter-spawner", { "aop-fission-science-pack", 1 })
add_science_pack("overgrowth-soil", { "aop-forestry-science-pack", 1 })
add_science_pack("productivity-module-3", { "aop-forestry-science-pack", 1 })
add_science_pack("quality-module-3", { "aop-petrochemical-science-pack", 1 })
add_tech_prerequisites("quality-module-3", "aop-petrochemical-science-pack")
add_tech_prerequisites("big-mining-drill", "aop-arc-furnace")
add_tech_prerequisites("fusion-reactor", "aop-tritium-synthesis")
add_tech_prerequisites("electromagnetic-plant", "aop-bitumen-processing")
add_tech_effect("metallurgic-science-pack", {type = "unlock-recipe", recipe = "aop-tungsten-plate-heating"})
add_tech_effect("calcite-processing", {type = "unlock-recipe", recipe = "aop-quicklime"})
add_tech_effect("tree-seeding", {type = "unlock-recipe", recipe = "aop-wood-planks"})
data.raw.technology["uranium-ammo"].prerequisites = {"aop-fission-science-pack", "military-4", "tank"}
data.raw.technology["biolab"].prerequisites = {"biter-egg-handling", "utility-science-pack", "aop-fission-science-pack"}
add_science_pack("uranium-ammo", { "aop-fission-science-pack", 1 })
add_science_pack("spidertron", { "aop-fission-science-pack", 1 })
add_science_pack("quantum-processor", { "aop-fission-science-pack", 1 })
add_science_pack("quantum-processor", { "aop-thermal-science-pack", 1 })
add_science_pack("quantum-processor", { "aop-forestry-science-pack", 1 })
add_science_pack("quantum-processor", { "aop-petrochemical-science-pack", 1 })
add_science_pack("fusion-reactor", { "aop-fission-science-pack", 1 })
add_science_pack("fusion-reactor", { "aop-thermal-science-pack", 1 })
add_science_pack("fusion-reactor", { "aop-forestry-science-pack", 1 })
add_science_pack("fusion-reactor", { "aop-petrochemical-science-pack", 1 })
add_science_pack("fusion-reactor-equipment", { "aop-fission-science-pack", 1 })
add_science_pack("fusion-reactor-equipment", { "aop-thermal-science-pack", 1 })
add_science_pack("fusion-reactor-equipment", { "aop-forestry-science-pack", 1 })
add_science_pack("fusion-reactor-equipment", { "aop-petrochemical-science-pack", 1 })
add_science_pack("promethium-science-pack", { "aop-fission-science-pack", 1 })
add_science_pack("promethium-science-pack", { "aop-thermal-science-pack", 1 })
add_science_pack("promethium-science-pack", { "aop-forestry-science-pack", 1 })
add_science_pack("promethium-science-pack", { "aop-petrochemical-science-pack", 1 })
add_science_pack("research-productivity", { "aop-fission-science-pack", 1 })
add_science_pack("research-productivity", { "aop-thermal-science-pack", 1 })
add_science_pack("research-productivity", { "aop-forestry-science-pack", 1 })
add_science_pack("research-productivity", { "aop-petrochemical-science-pack", 1 })
add_science_pack("foundation", { "aop-fission-science-pack", 1 })
add_science_pack("foundation", { "aop-thermal-science-pack", 1 })
add_science_pack("foundation", { "aop-forestry-science-pack", 1 })
add_science_pack("foundation", { "aop-petrochemical-science-pack", 1 })
add_science_pack("legendary-quality", { "aop-fission-science-pack", 1 })
add_science_pack("legendary-quality", { "aop-thermal-science-pack", 1 })
add_science_pack("legendary-quality", { "aop-forestry-science-pack", 1 })
add_science_pack("legendary-quality", { "aop-petrochemical-science-pack", 1 })
add_science_pack("railgun", { "aop-fission-science-pack", 1 })
add_science_pack("railgun", { "aop-thermal-science-pack", 1 })
add_science_pack("railgun", { "aop-forestry-science-pack", 1 })
add_science_pack("railgun", { "aop-petrochemical-science-pack", 1 })
add_science_pack("railgun-damage-1", { "aop-fission-science-pack", 1 })
add_science_pack("railgun-damage-1", { "aop-thermal-science-pack", 1 })
add_science_pack("railgun-damage-1", { "aop-forestry-science-pack", 1 })
add_science_pack("railgun-damage-1", { "aop-petrochemical-science-pack", 1 })
add_science_pack("railgun-shooting-speed-1", { "aop-fission-science-pack", 1 })
add_science_pack("railgun-shooting-speed-1", { "aop-thermal-science-pack", 1 })
add_science_pack("railgun-shooting-speed-1", { "aop-forestry-science-pack", 1 })
add_science_pack("railgun-shooting-speed-1", { "aop-petrochemical-science-pack", 1 })
add_science_pack("rocket-part-productivity", { "aop-thermal-science-pack", 1 })