local targetY = -57
local function digForward()
    if turtle.detect() then turtle.dig() end
    turtle.forward()
    end
    
    while not turtle.down() do turtle.digDown() end
    while turtle.getY() > targetY do turtle.down() end
    
    for i=1,50 do
    digForward()
    if turtle.detectUp() then turtle.digUp() end
    if turtle.detectDown() then turtle.digDown() end
end
