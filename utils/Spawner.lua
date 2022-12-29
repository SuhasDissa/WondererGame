Spawner = {}

local fire = require('sprites.environment.fire')

local itemTable = {
  ['fire'] = fire
}

Items = {}


function Spawner.spawnItem(x, y, item)
  local spawnedItem = itemTable[item].new(x, y)
  table.insert(Items, spawnedItem)
end

function Spawner.drawItems()
  for i, obj in pairs(Items) do
    obj:draw()
  end
end

function Spawner.updateItems(dt)
  for i, obj in pairs(Items) do
    obj:update(dt/#Items)
  end
end
