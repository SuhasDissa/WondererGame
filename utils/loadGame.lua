local camera = require 'libraries.camera'
Cam = camera()
Cam:zoomTo(5)

local wf = require 'libraries.windfield'
World = wf.newWorld(0, 0)
World:addCollisionClass("Water")
World:addCollisionClass("Navigation")
World:addCollisionClass("Player", { ignores = { "Water", "Navigation" } })
World:addCollisionClass("Barrier")

Anim8 = require 'libraries.anim8'
love.graphics.setDefaultFilter("nearest", "nearest")

require('utils.Cartographer')
require('utils.Navigator')
require('utils.spriteloader')
require('utils.Spawner')
