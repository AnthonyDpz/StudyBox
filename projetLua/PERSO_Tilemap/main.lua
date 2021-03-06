-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

--Atelier tilemap
local myGame = require("game")

function love.load()
  
  love.window.setMode(1024,768)
  love.graphics.setFont(love.graphics.newFont(24))
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  
  --Atelier tilemap
  myGame.Load()
  
end

function love.update(dt)

end

function love.draw()
  
  --Atelier tilemap
  myGame.Draw()

end

function love.keypressed(key)
  
  print(key)
  
end
  