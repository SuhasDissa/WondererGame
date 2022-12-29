Navigator ={}

function Navigator.navigateTo(map)

    Cartographer.initMap(map)
    local player = require 'sprites/player'

    if Player == nil then
        Player = player.new(Cartographer.map.layers.Player.objects[1].x, Cartographer.map.layers.Player.objects[1].y)
    else
        Player.collider:setX(Cartographer.map.layers.Player.objects[1].x)
        Player.collider:setY(Cartographer.map.layers.Player.objects[1].y)
    end
end