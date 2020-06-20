local box = {
  x = 30,
  y = 320,
  w = 578,
  h = 152,
}
box.subbox = {
  x = box.x+6,
  y = box.y+6,
  w = box.w-12,
  h = box.h-12
}
box.head = {
  x = box.subbox.x,
  y = box.subbox.y,
  w = 140,
  h = 140,
}
box.text = {
  x = box.head.x+box.head.w,
  y = box.subbox.y,
  w = box.subbox.w - box.head.w,
  h = box.subbox.h,
}
function box.draw()
  love.graphics.setColor(1,1,1)
  love.graphics.rectangle("fill", box.x, box.y, box.w, box.h)
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle("fill", box.subbox.x, box.subbox.y, box.subbox.w, box.subbox.h)
  love.graphics.setColor(1,1,1)
end

function box.drawHead(string)
  love.graphics.draw(string, box.head.x, box.head.y)
end

return box