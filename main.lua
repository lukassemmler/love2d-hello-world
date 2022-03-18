-- Based on https://sheepolution.com/learn/book/bonus/vscode by Sheepolution, 2022
require "lib.vec2d"
require "lib.player"

local launch_type = arg[2]
if launch_type == "test" or launch_type == "debug" then
    require "lldebugger"

    if launch_type == "debug" then lldebugger.start() end
end

local player

function love.load()
    player = Player.new(200, 200)
end

function love.draw()
    player.draw()
    love.graphics.print("Press arrow keys to move 'Character'", 200, 400)
end

function love.update(dt)
    player.update(dt)
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
