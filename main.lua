-- Based on https://sheepolution.com/learn/book/bonus/vscode by Sheepolution, 2022
require "lib.vec2d"

local launch_type = arg[2]
if launch_type == "test" or launch_type == "debug" then
    require "lldebugger"

    if launch_type == "debug" then lldebugger.start() end
end

function love.load()
    SPEED = 100
    DIRECTION = Vector2.new(0, 0)
    MOVEMENT = Vector2.new(0, 0)
    POSITION = Vector2.new(400, 300)
end

function love.draw()
    love.graphics.print("Character", POSITION.x, POSITION.y)
    love.graphics.print("Press arrow keys to move 'Character'", 200, 400)
end

function love.update(dt)
    DIRECTION = Vector2.Zero()
    MOVEMENT = Vector2.Zero()
    if love.keyboard.isDown("right") then
        DIRECTION.x = 1
    elseif love.keyboard.isDown("left") then
        DIRECTION.x = -1
    end
    if love.keyboard.isDown("up") then
        DIRECTION.y = -1
    elseif love.keyboard.isDown("down") then
        DIRECTION.y = 1
    end
    DIRECTION = DIRECTION.clampMagnitude(1)
    MOVEMENT = DIRECTION * SPEED * dt
    POSITION = POSITION + MOVEMENT
end

local love_errorhandler = love.errhand

function love.errorhandler(msg)
    if lldebugger then
        lldebugger.start() -- Add this
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end
