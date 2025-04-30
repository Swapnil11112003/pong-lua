local Player = require("player")
local Ball = require("ball")

function love.load()
    GAME = {
        window = {
            w = 900,
            h = 600,
        },
        bounds = {
            left = 0,
            right = 900,
            top = 0,
            bottom = 600,
        },
        paddle = {
            w = 15,
            l = 100,
        },
    }

    GAME.players = {
        Player.new(GAME.paddle.w, GAME.window.h/2),
        Player.new(GAME.bounds.right - 2*GAME.paddle.w, GAME.window.h/2),
    }
    
    GAME.ball = Ball.new()  
    love.window.setMode(GAME.window.w, GAME.window.h)
end


function love.update(dt)
    GAME.players[1]:update(dt)
    GAME.players[2]:update(dt)
    GAME.ball:update(dt)
end

function love.draw()

    GAME.players[1]:draw()
    GAME.players[2]:draw()
    GAME.ball:draw()
end

function love.keypressed(key)
    if key == "w" then
        GAME.players[1].velocity = -1
    elseif key == "s" then
        GAME.players[1].velocity = 1
    end

    if key == "up" then
        GAME.players[2].velocity = -1
    elseif key == "down" then
        GAME.players[2].velocity = 1
    end
end

function love.keyreleased(key)
    if not love.keyboard.isDown("w") and not love.keyboard.isDown("s") then
        GAME.players[1].velocity = 0
    end

    if not love.keyboard.isDown("up") and not love.keyboard.isDown("down") then
        GAME.players[2].velocity = 0
    end
end