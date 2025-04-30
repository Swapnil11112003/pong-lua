local Ball = {}
Ball.__index = Ball

function Ball.new()
    local ball = setmetatable({}, Ball)

    return Ball
end

function Ball:update(dt)

end

function Ball:draw()

end

return Ball