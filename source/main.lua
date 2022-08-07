import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "characters/player"
import "characters/knight"
import "characters/giant"
import "characters/wizard"

local pd <const> = playdate
local gfx <const> = playdate.graphics

local function initialize()
    local playerInstance = Wizard(200, 200, knightImage)
    playerInstance:add()
end

initialize()

function pd.update()
    gfx.sprite.update()
    pd.timer.updateTimers()
    playdate.drawFPS(10, 10)
end
