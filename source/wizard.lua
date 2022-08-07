import "player"

local pd <const> = playdate
local gfx <const> = playdate.graphics

class('Wizard').extends(Player)

function Wizard:init(x, y, image)
	local wizardImage = gfx.image.new("images/wizard")
	Wizard.super.init(self, x, y, wizardImage)
	self.moveSpeed = 4
	self.projectileSpeed = 8
	self.teleportDistance = 30
end

function Wizard:ability()
	if pd.buttonIsPressed(pd.kButtonLeft) then
		self:moveBy(-self.teleportDistance, 0)
	end
	if pd.buttonIsPressed(pd.kButtonRight) then
		self:moveBy(self.teleportDistance, 0)
	end
end