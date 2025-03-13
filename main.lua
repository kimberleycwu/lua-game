game = { state = 'main-menu' }
windowX, windowY = 1440, 810

local mainMenu = require('main-menu')

-- LOAD =====
function love.load()
    if game.state == 'main-menu' then
        mainMenu.load()
    end
end

-- UPDATE =====
function love.update(dt)
    if game.state == 'main-menu' then
        mainMenu.update(dt)
    end
end

-- DRAW =====
function love.draw()
    if game.state == 'main-menu' then
        mainMenu.draw()
    elseif game.state == 'playing' then
        love.graphics.print('pardon our dust!! press ESC to quit', 600, 400)
    end

    -- game.state DEBUG
    love.graphics.setColor(1,1,1)
    love.graphics.print("game.state: "..game.state, windowX - 180, windowY - 30)
end

-- MOUSEPRESSED =====
function love.mousepressed(x, y, button)
    if game.state == 'main-menu' then
        local newState = mainMenu.mousepressed(x, y, button)
        if newState then
            game.state = newState
        end
    end
end

-- KEYS =====
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
    if key == 'tab' then
        game.state = 'main-menu'
    end
end