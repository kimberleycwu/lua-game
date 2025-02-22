game = {}
windowX, windowY = 1440, 810
game.state = "play"
game.rotation = 0   -- stored in degrees (0-359)
game.mouseX = 0
game.mouseY = 0

-- ===== GAME.PIPES ====================
-- shift as necessary (costmetic)
pipeLocationScaleX = 103
pipeLocationScaleY = 110
-- set image scale (used in mousepressed and draw)
img_scale = 0.15

game.pipes = {
    -- PIPES 1 TO 6
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 150,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 100,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 50,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 50,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 100,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 180
    },
    -- PIPES 7 TO 13
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 150,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 180
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 100,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 50,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 90
    },
    -- XPIPE
    {
        image = nil,
        file = "assets/x-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 50,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 100,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 150,
        y = windowY/4 - pipeLocationScaleY + 157,
        rotation = 0
    },
    -- PIPES 14 TO 20
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 150,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 100,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 50,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 180
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 180
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 50,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 100,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 150,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 90
    },
    -- PIPES 21 TO 27
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 150,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 180
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 100,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 50,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 90
    },
    -- XPIPE
    {
        image = nil,
        file = "assets/x-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 50,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 100,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 150,
        y = windowY/4 - pipeLocationScaleY + 471,
        rotation = 90
    },
    -- PIPES 28 TO 30
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 50,
        y = windowY/4 - pipeLocationScaleY + 628,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 628,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 50,
        y = windowY/4 - pipeLocationScaleY + 628,
        rotation = 270
    },
    -- FAUCET
    {
        image = nil,
        file = "assets/faucet.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 100,
        y = windowY/4 - pipeLocationScaleY + 628,
        rotation = 0
    },
    -- ANCHOR PIPE
    {
        image = nil,
        file = "assets/anchor-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 150,
        y = windowY/4 - pipeLocationScaleY,
        rotation = 90
    }
}

-- ===== LOAD ====================
function love.load()
    love.window.setTitle('pipes_minigame')
    love.window.setMode(windowX, windowY)
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    -- loads images dynamically from game.pipes
    for _, pipe in ipairs(game.pipes) do
        pipe.image = love.graphics.newImage(pipe.file)
    end
    -- 
end

function love.update(dt)
    game.mouseX, game.mouseY = love.mouse.getPosition()
    -- 
end

-- ===== MOUSE_PRESSED ====================
function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        for _, pipe in ipairs(game.pipes) do
            local imgWidth = pipe.image:getWidth() * img_scale
            local imgHeight = pipe.image:getHeight() * img_scale
            local halfWidth, halfHeight = imgWidth / 2, imgHeight / 2
            -- check image bounding box
            if x >= pipe.x - halfWidth and x <= pipe.x + halfWidth and
               y >= pipe.y - halfHeight and y <= pipe.y + halfHeight then
                pipe.rotation = (pipe.rotation + 90) % 360 -- saves as degrees
            end
        end
        -- after rotation, check for pipesSolved
        if pipesSolved() then
            game.state = "win"
        end
    end
    -- 
end

-- ===== PIPES_SOLVED ====================
function pipesSolved()
    -- check pipes:
    -- DONE 4, 5, 6
    -- DONE 7, 8, 9, 11, 12
    -- DONE 14, 15, 17, 18
    -- DONE 21, 22, 23, 25
    -- 28, 29, 30
    local validRotations = {
        [4] = {270}, [5] = {90, 270}, [6] = {90},
        [7] = {270}, [8] = {90}, [9] = {90, 270}, [11] = {90, 270}, [12] = {90},
        [14] = {0}, [15] = {90}, [17] = {180}, [18] = {0},
        [21] = {180}, [22] = {90, 270}, [23] = {0}, [25] = {0, 180},
        [28] = {270}, [29] = {90, 270}, [30] = {90}
    }
    for pipeIndex, validAngles in pairs(validRotations) do
        local isCorrect = false
        for _, angle in ipairs(validAngles) do
            if game.pipes[pipeIndex].rotation == angle then
                isCorrect = true
                break
            end
        end
        if not isCorrect then
            return false
        end
    end
    return true
end

-- ===== DRAW ====================
function love.draw()
    love.graphics.setColor(1, 1, 1)
    -- draw pipes
    for i, pipe in ipairs (game.pipes) do
        love.graphics.draw(
            pipe.image,
            pipe.x, pipe.y,
            math.rad(pipe.rotation),
            img_scale, img_scale,
            pipe.image:getWidth()/2, pipe.image:getHeight()/2
        )
    -- DEBUG
        local text_1 = string.format("Pipe %d Rotation: %d°", i, pipe.rotation)
        -- local text_2 = string.format("Pipe %d X: %d°", i, pipe.x)
        -- local text_3 = string.format("Pipe %d Y: %d°", i, pipe.y)
        local factor = 10+ (i - 1) * 20
        love.graphics.print(text_1, 10, factor)  -- vertical offset text
        -- love.graphics.print(text_2, 10, factor + 20)
        -- love.graphics.print(text_3, 10, factor + 40)
        love.graphics.print("game.state: "..game.state, windowX - 180, windowY - 30)
    end
    --
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end