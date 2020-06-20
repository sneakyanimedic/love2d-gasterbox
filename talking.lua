local talking = {currentline = "Dark, Darker, Yet Darker, Darkness Keeps Growing, Shadows cutting deeper",currentline2 = "Photons readings negative, This next experiment seems very, very interesting, What do you two think?", text = "", l=0, line={}, linesize=0, k=1}
box = require("box")
textures = require("textures")
timer = require("timer")
font = love.graphics.newFont("DeterminationSans.ttf", 30)
gastersound = love.audio.newSource("gaster.mp3", "stream")
gastersound2 = love.audio.newSource("gaster2.mp3", "stream")
gastersound3 = love.audio.newSource("gaster3.mp3", "stream")
gastersound4 = love.audio.newSource("gaster4.mp3", "stream")
ran = 1
function talking.gasterplay()
  ran = math.random(1,4)
  if ran==1 then gastersound:play() end
  if ran==2 then gastersound2:play() end
  if ran==3 then gastersound3:play() end
  if ran==4 then gastersound4:play() end
end

function talking.events()
  if talking.l==1 then
    if timer.tick then
      if talking.k <= talking.linesize then
        talking.text = talking.text .. talking.line[talking.k]
        if talking.line[talking.k] ~= " " and talking.line[talking.k] ~= "," then talking.gasterplay() end
        talking.k = talking.k + 1
      end
    end
  end
  if talking.l==2 then
    if timer.tick then
      if talking.k <= talking.linesize then
        talking.text = talking.text .. talking.line[talking.k]
        if talking.line[talking.k] ~= " " and talking.line[talking.k] ~= "," then talking.gasterplay() end
        talking.k = talking.k + 1
      end
    end
  end
end

function talking.draw()
  box.draw()
  box.drawHead(textures.mysteryman)
  talking.write(talking.currentline)
end

function talking.write(string)
  love.graphics.setFont(font)
  love.graphics.printf(talking.text, box.text.x, box.text.y, box.text.w, "left")
end

function talking.toArray(string)
  t = {}
  str = string
  str:gsub(".",function(c) table.insert(t,c) end)
  return t
end

function love.mousepressed(x,y,b)
  talking.text = ""
  talking.k = 1
  if b==1 then
    talking.say()
  end
  if b==2 then
    talking.say2()
  end
end

function talking.say()
  t = {}
  str = talking.currentline
  str:gsub(".",function(c) table.insert(t,c) end)
  talking.line = t
  talking.linesize = table.getn(talking.line)
  talking.l = 1
end

function talking.say2()
  t = {}
  str = talking.currentline2
  str:gsub(".",function(c) table.insert(t,c) end)
  talking.line = t
  talking.linesize = table.getn(talking.line)
  talking.l = 2
end

return talking