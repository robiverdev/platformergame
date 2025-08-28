function love.load()
  wf = require "libraries/windfield/windfield" -- Windfield lib
  world = wf.newWorld(0, 800) -- Creating a "world" with gravity

  player = world:newRectangleCollider(360, 100, 80, 80) -- Collider = physics object
  platform = world:newRectangleCollider(250, 400, 300, 100)
  platform:setType("static")
end

function love.update(dt)
  world:update(dt)
end

function love.draw()
  world:draw()
end