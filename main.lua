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


function love.update()
    GAME.players[1]:update(dt)
    GAME.players[2]:update(dt)
    GAME.ball:update(dt)
end

function love.draw()

    GAME.players[1]:draw()
    GAME.players[2]:draw()
    GAME.ball:draw()
end

function love.keypressed()
    -- ...
end

function love.keyreleased()
    -- ...
end