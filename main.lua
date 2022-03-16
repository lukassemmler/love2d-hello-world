-- Based on https://sheepolution.com/learn/book/bonus/vscode by Sheepolution, 2022

local launch_type = arg[2]
if launch_type == "test" or launch_type == "debug" then
    require "lldebugger"

    if launch_type == "debug" then
        lldebugger.start()
    end
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
    love.graphics.print("Hello World", 400, 400)
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
