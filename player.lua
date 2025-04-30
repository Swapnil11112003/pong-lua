local Player = {}
Player.__index = Player

function Player.new(xPos, yPos)
    local player = setmetatable({}, Player)

    player.pos = {
        x = xPos,
        y = yPos
    }

    player.edge = {
        left = player.pos.x,
        right = player.pos.x + GAME.paddle.w,
        top = player.pos.y,
        bottom = player.pos.y + GAME.paddle.l,
    }

    player.speed = 400
    player.velocity = 0

    return player
end

function Player:update(dt)
    self.pos.y = self.pos.y + self.speed * self.velocity * dt
    self.edge.top = self.pos.y
    self.edge.bottom = self.pos.y + GAME.paddle.l
end

function Player:draw()
    love.graphics.rectangle("fill", self.pos.x, self.pos.y, GAME.paddle.w, GAME.paddle.l)
end

return Player