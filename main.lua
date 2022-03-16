-- Based on https://sheepolution.com/learn/book/bonus/vscode by Sheepolution, 2022

if arg[2] == "debug" then
    require("lldebugger").start()
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
    love.graphics.print("Hello World", 400, 400)
end

local love_errorhandler = love.errhand

function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end
