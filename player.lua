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

    return player
end

function Player:update(dt)

end

function Player:draw()
    love.graphics.rectangle("fill", self.pos.x, self.pos.y, GAME.paddle.w, GAME.paddle.l)
end

return Player