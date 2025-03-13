local mainMenu = {}
local scale = 0.75

-- LOAD =====
function mainMenu.load()
    love.window.setTitle('Hop To It!')
    love.window.setMode(1440, 810)

    local r,g,b = love.math.colorFromBytes(80,50,0)
    love.graphics.setBackgroundColor(r,g,b)

    titleAsset = love.graphics.newImage('assets/title-icon.png')
    startAsset = love.graphics.newImage('assets/start-v1.png')

    mainMenu.startButton = {
        width = startAsset:getWidth() * (scale/3),
        height = startAsset:getHeight() * (scale/3),
        x = 850,
        y = 520,
        hovered = false
    }
end

-- UPDATE =====
function mainMenu.update()
    local mouseX, mouseY = love.mouse.getPosition()

    local btn = mainMenu.startButton
    btn.hovered = mouseX >= btn.x and mouseX <= btn.x + btn.width and
                  mouseY >= btn.y and mouseY <= btn.y + btn.height
end

-- DRAW =====
function mainMenu.draw()
    love.graphics.draw(titleAsset, 130, 50, 0, scale, scale)

    local btn = mainMenu.startButton
    love.graphics.setColor(btn.hovered and {0.9, 0.9, 0.9} or {1, 1, 1})
    love.graphics.draw(startAsset, btn.x, btn.y, 0, scale/3, scale/3)
    love.graphics.setColor(1,1,1)
end

-- MOUSEPRESSED =====
function mainMenu.mousepressed(x, y, button)
    if button == 1 then
        local btn = mainMenu.startButton
        if x >= btn.x and x <= btn.x + btn.width and
           y >= btn.y and y <= btn.y + btn.height then
            return 'playing' -- game.state = 'playing'
        end
        return nil
    end
end

-- DO NOT DELETE =====
return mainMenu

--[[

windowX, windowY = 1440, 810
game = {}
game.state = 'main-menu'
game.mouseX = 0
game.mouseY = 0
scale = 0.75    -- for asset use
startButton = {}
startButton.hovered= false

-- ===== LOAD ====================
function love.load()
    love.window.setTitle('Hop To It!')
    love.window.setMode(windowX, windowY)

    local r,g,b = love.math.colorFromBytes(80,50,0)
    love.graphics.setBackgroundColor(r,g,b)

    titleAsset = love.graphics.newImage('assets/title-icon.png')
    startAsset = love.graphics.newImage('assets/start-v1.png')

    startButton.width = startAsset:getWidth() * (scale/3)
    startButton.height = startAsset:getHeight() * (scale/3)
    startButton.x = 850
    startButton.y = 520
end

-- ===== UPDATE ====================
function love.update(dt)
    game.mouseX, game.mouseY = love.mouse.getPosition()

    -- check if mouse hovering startButton
    if game.mouseX >= startButton.x and game.mouseX <= startButton.x + startButton.width and
       game.mouseY >= startButton.y and game.mouseY <= startButton.y + startButton.height then
        startButton.hovered = true
    else
        startButton.hovered = false
    end
end

-- ===== DRAW ====================
function love.draw()
    love.graphics.draw(titleAsset, 130, 50, 0, scale, scale)
    -- love.graphics.draw(startAsset, 850, 520, 0, scale/3, scale/3)
    if startButton.hovered then
        love.graphics.setColor(0.9, 0.9, 0.9) -- light tint
    else
        love.graphics.setColor(1,1,1) -- no tint
    end
    love.graphics.draw(startAsset, startButton.x, startButton.y, 0, scale/3, scale/3)
    love.graphics.setColor(1,1,1)

    -- DEBUG
    love.graphics.setColor(1,1,1)
    love.graphics.print("game.state: "..game.state, windowX - 180, windowY - 30)
end

-- ===== MOUSE CLICK ====================
function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then -- left click
        if x >= startButton.x and x <= startButton.x + startButton.width and
           y >= startButton.y and y <= startButton.y + startButton.height then
            game.state = "playing"
        end
    end
end

-- ===== KEYS ====================
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

]]