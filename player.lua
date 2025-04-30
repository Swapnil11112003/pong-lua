local Player = {}
Player.__index = Player

function Player.new(xPos, yPos)
    local player = setmetatable({}, Player)

    return player
end

function Player:update(dt)

end

function Player:draw()

end

return Player