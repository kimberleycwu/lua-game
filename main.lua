game = {}
windowX, windowY = 1440, 810
game.rotation = 0   -- stored in degrees (0-359)
game.mouseX = 0
game.mouseY = 0

game.pipes = {
    {   image = nil, 
        file = "assets/trash-can.png",
        x = windowX/3,
        y = windowY/2,
        rotation = 0    },
    {   image = nil,
        file = "assets/trash-can.png",
        x = 2*windowX/3,
        y = windowY/2,
        rotation = 0    }
}

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

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        for _, pipe in ipairs(game.pipes) do
            local imgWidth, imgHeight = pipe.image:getWidth() * 0.5, pipe.image:getHeight() * 0.5
            local halfWidth, halfHeight = imgWidth / 2, imgHeight / 2
            if x >= pipe.x - halfWidth and x <= pipe.x + halfWidth and
               y >= pipe.y - halfHeight and y <= pipe.y + halfHeight then
                pipe.rotation = (pipe.rotation + 45) % 360 -- Rotate independently
            end
        end
    end
    -- 
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    -- draw pipes
    for i, pipe in ipairs (game.pipes) do
        love.graphics.draw(
            pipe.image, 
            pipe.x, pipe.y,
            math.rad(pipe.rotation),
            0.5, 0.5,
            pipe.image:getWidth()/2, pipe.image:getHeight()/2
        )
    local text = string.format("Pipe %d Rotation: %d°", i, pipe.rotation)
    love.graphics.print(text, 10, 10 + (i - 1) * 20)  -- vertical offset text
    end
    --
end