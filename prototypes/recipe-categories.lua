data:extend(
{
  {
    type = "recipe-category",
    name = "advanced-centrifuging",
  },
  {
    type = "recipe-category",
    name = "quantum-assembling",
  },
  {
    type = "recipe-category",
    name = "woodworking",
  },
  {
    type = "recipe-category",
    name = "hydraulics",
  },
  {
    type = "recipe-category",
    name = "petrochemistry",
  },
    {
    type = "recipe-category",
    name = "synthesis",
  },
  {
    type = "recipe-category",
    name = "agriculture",
  },
  {
    type = "recipe-category",
    name = "core-mining"
  },
  {
    type = "recipe-category",
    name = "ammunition"
  },
  {
    type = "recipe-category",
    name = "advanced-smelting"
  },
}
)

-- "electronics" was supplied by optional deps (bobassembly / aai-industry) in the
-- 2.0 build; define it ourselves when absent so the aop-transmitter recipe's
-- category resolves in a vanilla setup. Guarded to avoid a duplicate when an
-- optional dep already provides it.
if not data.raw["recipe-category"]["electronics"] then
  data:extend({
    {
      type = "recipe-category",
      name = "electronics",
    },
  })
end