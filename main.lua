-- hi there
-- i found out
-- that YOU
-- are indeed a SKID!

-- initialization
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Venyx", 5013109572)
venyx:Notify("Jailbricked", "Successfully loaded!")

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Main")
local section2 = page:addSection("Miscellaneous")

section1:addToggle(
  "Autofarm",
  nil,
  function(value)
    -- Code below this line
while value == true do
      loadstring(game:HttpGet("https://jailbricked.github.io/autofarm"))()
   end
end)

section2:addSlider(
  "WalkSpeed",
  0,
  100,
  function(value)
   -- Code below this line
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- second page
local theme = venyx:addPage("Themes", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- get page
venyx:SelectPage(venyx.pages[1], true)
