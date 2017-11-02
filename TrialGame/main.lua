--Check it out I know how to write comments!
--[[
Here is how we write block comments! Add another
dash to take out the comment
--]]

--Love is based around callbacks
--This function is called once on loadup
function love.load()
  x, y, w , h = 20, 20, 60, 20
  x2, y2, w2 , h2 = 20, 20, 60, 20
  r, g, b = 0, 0, 0
  love.graphics.setNewFont(12)
  love.graphics.setBackgroundColor(255,255,255)
  --Yay for languages that don't use semicolons
end

function love.update(dt)
  --Scope of variables is by file?
  if love.keyboard.isDown("up") then
    y = y - 1
  end --Ifs have to be closed with ends!

  --Down is up! Top left coord is 0, 0
  if love.keyboard.isDown("down") then
    y = y + 1
  end
  if love.keyboard.isDown("left") then
    x = x - 1
  end
  if love.keyboard.isDown("right") then
    x = x + 1
  end
    if love.keyboard.isDown("w") then
    y2 = y2 - 1
  end --Ifs have to be closed with ends!

  --Down is up! Top left coord is 0, 0
  if love.keyboard.isDown("s") then
    y2 = y2 + 1
  end
  if love.keyboard.isDown("a") then
    x2 = x2 - 1
  end
  if love.keyboard.isDown("d") then
    x2 = x2 + 1
  end

  if love.keyboard.isDown("r") and not love.keyboard.isDown("-") then
    r = r + 1
  elseif love.keyboard.isDown("r") then
    r = r - 1
  end 

 if love.keyboard.isDown("g") and not love.keyboard.isDown("-") then
    g = g + 1
  elseif love.keyboard.isDown("g") then
    g = g - 1
  end

  if (love.keyboard.isDown("b") and not love.keyboard.isDown("-")) then
    b = b + 1
  elseif love.keyboard.isDown("b") then
    b = b - 1
  end
end
  --All graphics are drawn here
function love.draw()
  love.graphics.setColor(r,g,b)
  love.graphics.rectangle("fill", x, y, w, h)
  love.graphics.rectangle("fill", x2, y2, w, h)
end
