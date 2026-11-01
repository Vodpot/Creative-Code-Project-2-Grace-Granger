-- Grace Granger
-- Project 2

require("L5")
  
function setup()
  size(800, 550)
  windowTitle("Stereogram Generator")
end

-- Define all my potential colors and opacities
  -- Define Fluorescent Pink
  risoPinkR = 255
  risoPinkG = 72
  risoPinkB = 176

  -- Define Yellow
  risoYellowR = 255
  risoYellowG = 232
  risoYellowB = 0

  -- Define potential Alpha values
  patternAlpha40 = 40
  patternAlpha50 = 50
  patternAlpha60 = 60
  patternAlpha70 = 70

-- Defined Alpha and Color variables
  alphaChoice = {patternAlpha40,patternAlpha50,patternAlpha60,patternAlpha70}
  colorChoice = {'Pink','Yellow'}

  -- Shape array for the generative grid
  ShapeOptions = {'drawSquiggle','drawRhombus','drawSquare','drawCircle','drawHeart','drawClover','drawTriangle'}

-- Defines movable and scalable Diamond shape
function drawRhombus(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  quad(0,10,10,20,20,10,10,0)
  pop()
end

-- Defines movable and scalable Square shape
function drawSquare(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  square(0,0,10)
  pop()
end
-- Defines movable and scalable Circle shape
function drawCircle(xLoc,yLoc,scaleShape)
  push()
  translate(xLoc,yLoc)
  scale(scaleShape)
  circle(5,5,20)
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
  triangle(0,16,10,0,20,16)
  pop()
end

function mousePressed()
  -- Resets background so iterations don't layer up
  
  
  background(0,120,191)

 
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
    scaleShape = math.floor(random(2,4))
      xLoc = 0
      yLoc = 0
      
      -- Chooses the grid of shape's color
      shapeColor = random(colorChoice)
      shapeOpacity = random(alphaChoice)
        if shapeColor == 'Pink' then
         fill(risoPinkR, risoPinkG, risoPinkB,shapeOpacity)
        elseif shapeColor == 'Yellow' then
         fill(risoYellowR, risoYellowG, risoYellowB,shapeOpacity)
        end

      -- Nested for loop that chooses a shape and places it
  for x = 0, randomXGrid do
    for y = 0, randomYGrid do

      
      if shape == 'drawCircle' then
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
  img = loadImage(random{'Assets/Star.png','Assets/Smile.png','Assets/Heart.png','Assets/Clover.png','Assets/Diamond.png'})
  -- Draw Image
  image(img,0, 0, 800, 550)
  
  -- Saves sketches
  save('myStereogram.png')
end