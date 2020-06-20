local timer = {
  objectA = {x = 1},
  speed = 1,
  tick = false,
  distance = 7
}
function timer.events()
  timer.objectA.x = timer.objectA.x + timer.speed
  if timer.tick then
    timer.tick = false
  end
  if timer.objectA.x > timer.distance then
    timer.objectA.x = 0
    timer.tick = true
  end
end
return timer