local player = {}

player.__index = player

player.spriteSheet = Sprites.playerSheet
player.grid = Anim8.newGrid(16, 32, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

player.animations = { walk = {}, swim = {}, fight = {} }
player.animations.walk.down = Anim8.newAnimation(player.grid('1-4', 1), 0.1)
player.animations.walk.right = Anim8.newAnimation(player.grid('1-4', 2), 0.1)
player.animations.walk.up = Anim8.newAnimation(player.grid('1-4', 3), 0.1)
player.animations.walk.left = Anim8.newAnimation(player.grid('1-4', 4), 0.1)

player.animations.swim.down = Anim8.newAnimation(player.grid('5-8', 1), 0.1)
player.animations.swim.right = Anim8.newAnimation(player.grid('5-8', 2), 0.1)
player.animations.swim.up = Anim8.newAnimation(player.grid('5-8', 3), 0.1)
player.animations.swim.left = Anim8.newAnimation(player.grid('5-8', 4), 0.1)


function player.new(x, y)
    local self = {}

    self.x = x
    self.y = y
    self.collider = World:newCircleCollider(x, y, 5)
    self.collider:setFixedRotation(true)
    self.collider:setCollisionClass("Player")

    self.isMoving = false
    self.vx = 0
    self.vy = 0

    self.item = 'fire'

    self.activity = 1 -- 1:walk , 2:fight, 3:swim
    self.swim = false
    self.speed = 64
    self.anim = player.animations.walk.down

    return setmetatable(self, player)
end

function player:move(vx, vy)
    self.isMoving = true
    if vx ~= 0 and vy ~= 0 then
        vx = vx / math.sqrt(2)
        vy = vy / math.sqrt(2)
    end
    self.vx, self.vy = vx, vy
end

function player:update(dt)
    self.isMoving = false
    local animation

    if Cartographer.isWater(self.x,self.y + 8) then
        animation = self.animations.swim
    else
        animation = self.animations.walk
    end

    if self.collider:enter("Navigation") then
        local collision_data = self.collider:getEnterCollisionData("Navigation")
        if collision_data.collider.enabled then
            Navigator.navigateTo(collision_data.collider.destination)
        end
    end

    if self.swim then
        animation = self.animations.swim
    end

    function love.keyreleased(key)
        if key == 'lctrl' then
            Spawner.spawnItem(self.x, self.y, self.item)
        end
    end

    if love.keyboard.isDown("right") then
        self:move(self.speed, self.vy)
        self.anim = animation.right
    end

    if love.keyboard.isDown("left") then
        self:move(self.speed * -1, self.vy)
        self.anim = animation.left
    end

    if love.keyboard.isDown("down") then
        self:move(self.vx, self.speed)
        self.anim = animation.down
    end

    if love.keyboard.isDown("up") then
        self:move(self.vx, self.speed * -1)
        self.anim = animation.up
    end

    if self.isMoving == false then
        self.vx = 0
        self.vy = 0
        self.anim:gotoFrame(2)
    end
    self.collider:setLinearVelocity(self.vx, self.vy)

    self.x = self.collider:getX()
    self.y = self.collider:getY() - 8

    self.anim:update(dt)
end

function player:draw()
    self.anim:draw(self.spriteSheet, self.x, self.y, nil, 1, nil, 8, 16)
end

return player
