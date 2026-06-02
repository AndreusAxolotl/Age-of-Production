local tile_trigger_effects = require("__space-age__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local base_sounds = require("__base__/prototypes/entity/sounds")
local base_tile_sounds = require("__base__/prototypes/tile/tile-sounds")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")
local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

local patch_for_inner_corner_of_transition_between_transition = tile_graphics.patch_for_inner_corner_of_transition_between_transition

base_tiles_util = base_tiles_util or {}
water_tile_type_names = water_tile_type_names or {}
out_of_map_tile_type_names = out_of_map_tile_type_names or {}

default_transition_group_id = default_transition_group_id or 0
water_transition_group_id = water_transition_group_id or 1
out_of_map_transition_group_id = out_of_map_transition_group_id or 2

local concrete_to_out_of_map_transition =
{
  to_tiles = out_of_map_tile_type_names,
  transition_group = out_of_map_transition_group_id,

  background_layer_offset = 1,
  background_layer_group = "zero",
  offset_background_layer_by_tile_layer = true,

  spritesheet = "__base__/graphics/terrain/out-of-map-transition/concrete-out-of-map-transition.png",
  layout = tile_spritesheet_layout.transition_4_4_8_1_1,
}

local concrete_transitions =
{
  {
    to_tiles = water_tile_type_names,
    transition_group = water_transition_group_id,

    spritesheet = "__base__/graphics/terrain/water-transitions/concrete.png",
    layout = tile_spritesheet_layout.transition_8_8_8_4_4,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-mask.png",
      inner_corner_count = 1,
      outer_corner_count = 1,
      side_count = 1,
      u_transition_count = 1,
      o_transition_count = 1
    }
  },
  concrete_to_out_of_map_transition
}

local concrete_transitions_between_transitions =
{
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = water_transition_group_id,

    spritesheet = "__base__/graphics/terrain/water-transitions/concrete-transitions.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    background_enabled = false,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-land-mask.png",
      o_transition_count = 0
    }
  },
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/concrete-out-of-map-transition-b.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
  },
  {
    transition_group1 = water_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__base__/graphics/terrain/out-of-map-transition/concrete-shore-out-of-map-transition.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    effect_map_layout =
    {
      spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-out-of-map-mask.png",
      u_transition_count = 0,
      o_transition_count = 0
    }
  }
}

data:extend(
{
    -- asphalt tile --------------------------------------------------------------------
    {
    
        type = "tile",
        name = "aop-asphalt",
        needs_correction = false,
        minable = {mining_time = 0.1, result = "aop-asphalt"},
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        collision_mask = { layers = {ground_tile = true} },
        walking_speed_modifier = 1.1,
        layer_group = "ground-artificial",
        layer = 15,
        decorative_removal_probability = 1,
        variants =
        {
            main =
            {
                {
                    picture = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt2.png",
                    count = 4,
                    size = 2,
                    probability = 0.3,
                },
                {
                    picture = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt4.png",
                    count = 4,
                    size = 4,
                    probability = 0.8,
                },
            },
            transition = {
                layout = {
                    overlay = {
                        inner_corner =
                        {
                            spritesheet = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt-inner-corner.png",
                            count = 8
                        },
                        outer_corner =
                        {
                            spritesheet = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt-outer-corner.png",
                            count = 8
                        },
                        side =
                        {
                            spritesheet = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt-side.png",
                            count = 8
                        },
                        u_transition =
                        {
                            spritesheet = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt-u.png",
                            count = 8
                        },
                            o_transition =
                        {
                            spritesheet = "__Age-of-Production-Graphics__/graphics/tiles/asphalt/asphalt-o.png",
                            count = 1
                        }
                    }
                }
            }
        },
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-1.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-2.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-3.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-4.ogg",
                volume = 1.2
            }
        },
        transitions = concrete_transitions,
    transitions_between_transitions = concrete_transitions_between_transitions,

    driving_sound = tile_sounds.driving.concrete,
    build_sound = tile_sounds.building.concrete,
    map_color={63, 61, 59},
    scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
    vehicle_friction_modifier = 2,
    trigger_effect = tile_trigger_effects.concrete_trigger_effect()
    }
})