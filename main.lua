function love.load()
    require('utils.loadGame')
    Navigator.navigateTo('mainMap')
end

function love.update(dt)
    Player:update(dt)
    World:update(dt)
    Spawner.updateItems(dt)

    local map = Cartographer.getCurrentMap()

    local mapW = map.width * map.tilewidth
    local mapH = map.height * map.tileheight

    Cam:lookAtMap(Player.x, Player.y, mapW, mapH)
end

function love.draw()
    Cam:attach()
    Cartographer.drawMap()
    Spawner.drawItems()
    Player:draw()
    --World:draw()
    Cam:detach()
    love.graphics.print(Player.item,0,0,0,2)
end
