
data:extend({
  {
      type = "bool-setting",
      name = "aop-prevent-loops",
      setting_type = "startup",
      default_value = true
  },
})

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