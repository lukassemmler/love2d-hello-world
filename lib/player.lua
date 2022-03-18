require "lib.vec2d"
require "lib.control-util"

Player = {}

function Player.new(x, y)
    local this = {}
    this.position = Vector2.new(x or 0, y or 0)
    this.speed = 100
    this.controllable = true

    function this.update(dt)
        if not this.controllable then return end
        local direction = ControlUtil.getInputVector()
        local movement = direction * this.speed * dt
        this.position = this.position + movement
    end

    function this.draw()
        love.graphics.print("Character", this.position.x, this.position.y)
    end

    return this
end
