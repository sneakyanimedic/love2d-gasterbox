local properties = {
  width = 640,
  height = 480,
  title = "GasterBox",
  fullscreen = false
}
function properties.load()
  love.window.setMode(properties.width, properties.height, {fullscreen = properties.fullscreen})
  love.window.setTitle(properties.title)
end
return properties