-- Grace Granger
-- Project 2

require("L5")
  
function setup()
  size(800, 550)
  windowTitle("Grace Granger Project 2")
end

-- Define all my potential colors and opacities
  


  -- Define Risograph Blue
  risoBlueR = 0
  risoBlueG = 120
  risoBlueB = 191

  -- Define Fluorescent Pink
  risoPinkR = 255
  risoPinkG = 72
  risoPinkB = 176

  -- Define Yellow
  risoYellowR = 255
  risoYellowG = 232
  risoYellowB = 0

  -- Define potential Alpha values
  patternAlpha1 = 10
  patternAlpha2 = 20
  patternAlpha3 = 30
  patternAlpha4 = 40
  patternAlpha5 = 50
  patternAlpha6 = 60
  patternAlpha7 = 70
  patternAlpha8 = 80
  patternAlpha9 = 90
  patternAlpha10 = 100

-- Defined Alpha and Color variables
  alphaChoice = {patternAlpha1,patternAlpha2,patternAlpha3,patternAlpha4,patternAlpha5,patternAlpha6,patternAlpha7,patternAlpha8,patternAlpha9,patternAlpha10}
  colorChoice = {'Blue','Pink','Yellow'}

  -- Shape array for the generative grid
  ShapeOptions = {'drawSquiggle','drawRhombus','drawSquare','drawCircle','drawHeart','drawClover','drawTriangle'}


-- Defines movable and scalable Squiggle shape
function drawSquiggle(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  noFill()
  bezier(10,10,50,25,-25,12.5,25,35)
  circle(10,10,1)
  circle(25,35,1)
  pop()
end

-- Defines movable and scalable Diamond shape
function drawRhombus(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  noFill()
  quad(0,10,10,20,20,10,10,0)
  pop()
end

-- Defines movable and scalable Square shape
function drawSquare(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  square(0,0,5)
  pop()
end
-- Defines movable and scalable Circle shape
function drawCircle(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  circle(0,0,5)
  pop()
end

-- Defines movable and scalable Heart shape
function drawHeart(xLoc,yLoc, scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  bezier(20,10,-3,-5,10,20,20,30)
  bezier(20,10,43,-5,30,20,20,30)
  pop()
end

-- Defines movable and scalable Flower shape
function drawClover(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  bezier(10,0,-10,20,30,20,10,0)
  bezier(10,0,-10,-20,30,-20,10,0)
  bezier(10,0,-10,-20,-10,20,10,0)
  bezier(10,0,30,-20,30,20,10,0)
  pop()
end

-- Defines movable and scalable Triangle shape
function drawTriangle(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  triangle(0,8,5,0,10,8)
  pop()
end

function mousePressed()
  -- Resets background so iterations don't layer up
  
  
  background(255)

 
  -- Fisher-Yates method to randomize my array while making sure each shape is used every time
   for i = #ShapeOptions, 2, -1 do
    j = math.random(i)
    ShapeOptions[i], ShapeOptions[j] = ShapeOptions[j], ShapeOptions[i] -- Swap elements
  end
 
  -- Chooses the # of shapes and their size that will appear in a single generated grid
  for index, shape in ipairs(ShapeOptions) do
    randomXGrid = math.floor(random(10,24))
    randomYGrid = math.floor(random(10,24))
    randomShape = ShapeOptions[i]
    scaleShape = math.floor(random(1,3))
      xLoc = 0
      yLoc = 0
      
      -- Chooses the grid of shape's color
      shapeColor = random(colorChoice)
      shapeOpacity = random(alphaChoice)
        if shapeColor == 'Blue' then
         fill(risoBlueR, risoBlueG, risoBlueB,shapeOpacity)
        elseif shapeColor == 'Pink' then
         fill(risoPinkR, risoPinkG, risoPinkB,shapeOpacity)
        elseif shapeColor == 'Yellow' then
         fill(risoYellowR, risoYellowG, risoYellowB,shapeOpacity)
        end

      -- Nested for loop that chooses a shape and places it
  for x = 0, randomXGrid do
    for y = 0, randomYGrid do

      
      if shape == 'drawSquiggle' then
        drawSquiggle(xLoc,yLoc,scaleShape)
      elseif shape == 'drawCircle' then
        noStroke()
        drawCircle(xLoc,yLoc,scaleShape)
      elseif shape == 'drawHeart' then
        noStroke()
        drawHeart(xLoc,yLoc,scaleShape)
      elseif shape == 'drawClover' then
        noStroke()
        drawClover(xLoc,yLoc,scaleShape)
      elseif shape == 'drawTriangle' then
        noStroke()
        drawTriangle(xLoc,yLoc, scaleShape)
      elseif shape == 'drawRhombus' then
        noStroke()
        drawRhombus(xLoc,yLoc,scaleShape)
      elseif shape == 'drawSquare' then
        noStroke()
        drawSquare(xLoc,yLoc,scaleShape)
      end
      -- Spreads out the grid to take up the entire sketch
      yLoc = yLoc + 550/randomYGrid
    end
    yLoc = 0
    xLoc = xLoc + 800/randomXGrid
    end
  end
end