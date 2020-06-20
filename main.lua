function love.load()
  properties = require("properties")
  properties.load()
  talking = require("talking")
end

function love.update(dt)
  timer.events()
  talking.events()
end

function love.draw()
  talking.draw()
end