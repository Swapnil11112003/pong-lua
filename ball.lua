local Ball = {}
Ball.__index = Ball

function Ball.new()
    local ball = setmetatable({}, Ball)

    local xPos = love.math.random(GAME.window.w / 3) + GAME.window.w / 3
    local yPos = love.math.random(GAME.window.h / 2) + GAME.window.h / 4
        
    ball.pos = { 
        x = xPos, 
        y = yPos 
    }
    ball.diam = 10

    return ball
end

function Ball:update(dt)

end

function Ball:draw()
    love.graphics.circle("fill", self.pos.x, self.pos.y, self.diam)
end

return Ball