require "lib.vec2d"

ControlUtil = {}

function ControlUtil.getInputVector(upKey, downKey, leftKey, rightKey)
    local direction = Vector2.new(0, 0)
    if love.keyboard.isDown(rightKey or "right") then
        direction.x = 1
    elseif love.keyboard.isDown(leftKey or "left") then
        direction.x = -1
    end
    if love.keyboard.isDown(upKey or "up") then
        direction.y = -1
    elseif love.keyboard.isDown(downKey or "down") then
        direction.y = 1
    end
    return direction.clampMagnitude(1)
end
