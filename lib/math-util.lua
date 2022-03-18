MathUtil = {}

function MathUtil.round(value)
    -- Based on https://stackoverflow.com/a/26777901/lua-rounding-numbers-and-then-truncate by ggVGc, 2014-11-06
    if value >= 0 then return math.floor(value + 0.5) end
    return math.ceil(value - 0.5)
end
