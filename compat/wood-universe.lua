if mods["early-agriculture"] then
  table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "woodworking-or-organic-or-assembling")
end

if mods["wood-industry"] then
  if data.raw.recipe["heavy-oil-adsorption"] then
    data.raw.recipe["heavy-oil-adsorption"].category = "petrochemistry-or-organic-or-chemistry"
  end
end

if mods["wood-logistics"] then
  if not mods["lignumis"] and settings.startup["wood-logistics-lumber-mill"] and settings.startup["wood-logistics-lumber-mill"].value then
    table.insert(data.raw["assembling-machine"]["aop-lumber-mill"].crafting_categories, "crafting-or-carpentry")
    data.raw["assembling-machine"]["lumber-mill"] = nil
    data.raw["item"]["lumber-mill"] = nil
    data.raw["recipe"]["lumber-mill"] = nil
    data.raw["recipe"]["lumber-mill-recycling"] = nil
    data.raw["technology"]["advanced-carpentry"] = nil
  end
end
