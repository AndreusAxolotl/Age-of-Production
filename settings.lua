
data:extend({
  {
      type = "bool-setting",
      name = "aop-prevent-loops",
      setting_type = "startup",
      default_value = true
  },
})

if mods["maraxsis"] then
  data:extend({
    {
        type = "bool-setting",
        name = "aop-merge-hydro",
        setting_type = "startup",
        default_value = true
    }
  })
end

if mods["lignumis"] then
  data:extend({
    {
        type = "bool-setting",
        name = "aop-merge-lignumis-lumber-mill",
        setting_type = "startup",
        default_value = false
    }
  })
end

if mods["atan-nuclear-science"] then
  data:extend({
    {
        type = "bool-setting",
        name = "aop-merge-atomic-enricher",
        setting_type = "startup",
        default_value = true
    }
  })
end