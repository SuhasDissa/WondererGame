local fire = {}

fire.__index = fire


fire.spriteSheet = Sprites.environment.fire
fire.grid = Anim8.newGrid(16, 16, fire.spriteSheet:getWidth(), fire.spriteSheet:getHeight())
fire.anim = Anim8.newAnimation(fire.grid('1-7', 1), 0.3)

function fire:update(dt)
    self.anim:update(dt)
end

function fire:draw()
    self.anim:draw(self.spriteSheet, self.x, self.y, nil, 1)
end

function fire.new(x, y)
    local _self = {}

    _self.x = x - 8
    _self.y = y - 8
    return setmetatable(_self, fire)
end

return fire
