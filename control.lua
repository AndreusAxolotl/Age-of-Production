local MAX_CORE_MINERS = 1

local function refresh_surfacedata()
  -- deleted old
  for surface_index, surfacedata in pairs(storage.surfacedata) do
    if surfacedata.surface.valid == false then
      storage.surfacedata[surface_index] = nil
    end
  end

  -- created new
  for _, surface in pairs(game.surfaces) do
    storage.surfacedata[surface.index] = storage.surfacedata[surface.index] or {
      surface = surface,
      core_miners = {}, -- array[unit_number = entity]
    }
  end
end

script.on_event(defines.events.on_surface_created, refresh_surfacedata)
script.on_event(defines.events.on_surface_deleted, refresh_surfacedata)

script.on_init(function()
  storage.surfacedata = {}
  refresh_surfacedata()
end)

script.on_configuration_changed(function()
  refresh_surfacedata()
end)

local function count_core_miners(surfacedata, force)
  local sum = 0
  for unit_number, entity in pairs(surfacedata.core_miners) do
    if entity.valid then
      if entity.force == force then
        sum = sum + 1
      end
    else
      surfacedata.core_miners[unit_number] = nil
    end
  end
  return sum
end

local function on_created_entity(event)
  local entity = event.entity or event.destination
  local entity_name = entity.name

  local surfacedata = storage.surfacedata[entity.surface.index]
  local total_core_miners = count_core_miners(surfacedata, entity.force)

  if MAX_CORE_MINERS > total_core_miners or event.destination then -- remove `or event.destination` to block other mods cloning the core miner.
    surfacedata.core_miners[entity.unit_number] = entity
    return
  end

  local player = nil

  -- if the drill got placed by a player, then show them the message, drills placed by bots get no message.
  if event.player_index then
    player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    player.create_local_flying_text{
      text = {"cant-build-reason.you-can-only-build-x-y-per-surface", MAX_CORE_MINERS, prototypes.entity["aop-core-miner"].localised_name},
      create_at_cursor = true,
    }
  end

  local items_to_return = {
    {name = "aop-core-miner", count = 1, quality = entity.quality},
  }

  for _, module in ipairs(entity.get_inventory(defines.inventory.crafter_modules).get_contents()) do
    table.insert(items_to_return, module)
  end

  -- for the drill itself and any modules, try to give it to the player first, then any bots, and lastly spill the items on the floor.
  for _, item_to_return in ipairs(items_to_return) do
    if player then
      local inserted = player.insert(item_to_return)
      item_to_return.count = item_to_return.count - inserted
    end
    if item_to_return.count > 0 then
      if event.robot then
        local inserted = event.robot.get_inventory(defines.inventory.robot_cargo).insert(item_to_return)
        item_to_return.count = item_to_return.count - inserted
      end
    end
    if item_to_return.count > 0 then
      entity.surface.spill_item_stack{
        position = entity.position,
        stack = item_to_return,
        force = entity.force,
        allow_belts = false,
      }
    end
  end

  entity.destroy()
end

for _, event in ipairs({
  defines.events.on_built_entity,
  defines.events.on_robot_built_entity,
  defines.events.on_space_platform_built_entity,
  defines.events.script_raised_built,
  defines.events.script_raised_revive,
  defines.events.on_entity_cloned,
}) do
  script.on_event(event, on_created_entity, {
    {filter = "name", name = "aop-core-miner"},
  })
end
