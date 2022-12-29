Cartographer = {}

local sti = require 'libraries/sti'
require('utils.destroyAll')
Cartographer.maps = {
    ['mainMap'] = {
        map = sti('maps/mainMap.lua')
    },
    ['house'] = {
        map = sti('maps/house.lua')
    }
}
Cartographer.map = {}
Cartographer.waterbodies = {}
Barriers = {}
Water = {}
Navigation = {}
function Cartographer.initMap(mapname)
    DestroyAll()

    Cartographer.map = Cartographer.maps[mapname].map
    if Cartographer.map.layers["Barriers"] then
        for i, obj in pairs(Cartographer.map.layers.Barriers.objects) do
            local barrier = World:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            barrier:setType('static')
            barrier:setCollisionClass("Barrier")
            table.insert(Barriers, barrier)
        end
    end
    if Cartographer.map.layers["Water"] then
        for i, obj in pairs(Cartographer.map.layers.Water.objects) do
            local waterbodies = { x = obj.x, y = obj.y, w = obj.width, h = obj.height }
            local water = World:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            water:setCollisionClass("Water")
            water:setType('static')
            table.insert(Water, water)
            table.insert(Cartographer.waterbodies, waterbodies)
        end
    end
    if Cartographer.map.layers["Doors"] then
        for i, obj in pairs(Cartographer.map.layers.Doors.objects) do
            local navigation = World:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            navigation:setCollisionClass("Navigation")
            navigation:setType('static')
            navigation.destination = obj.properties.destination
            navigation.enabled = obj.properties.enabled
            table.insert(Navigation, navigation)
        end
    end
end

function Cartographer.getCurrentMap()
    return Cartographer.map
end

function Cartographer.drawMap()
    Cartographer.map:drawLayer(Cartographer.map.layers[1])
    Cartographer.map:drawLayer(Cartographer.map.layers[2])
    Cartographer.map:drawLayer(Cartographer.map.layers[3])
end

function Cartographer.isWater(x, y)
    for _, water in ipairs(Cartographer.waterbodies) do
        if water.x <= x and x <= (water.w + water.x) and water.y <= y and y <= (water.y + water.h) then
            return true
        end
    end
    return false
end

return Cartographer
