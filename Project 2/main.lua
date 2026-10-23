-- Grace Granger
-- Project 2

require("L5")
  
function setup()
  size(1500, 900)
  windowTitle("Grace Granger Project 2")
end


-- Defines movable and scalable Squiggle shape
function drawSquiggle(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  noFill()
  bezier(10,10,50,25,-25,12.5,25,35)
  circle(10,10,1)
  circle(25,35,1)
  pop()
end

-- Defines movable and scalable Diamond shape
function drawRhombus(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  noFill()
  quad(0,10,10,20,20,10,10,0)
  pop()
end

-- Defines movable and scalable Square shape
function drawSquare(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  square(0,0,5)
  pop()
end
-- Defines movable and scalable Circle shape
function drawCircle(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  circle(0,0,5)
  pop()
end

-- Defines movable and scalable Heart shape
function drawHeart(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  bezier(20,10,-3,-5,10,20,20,30)
  bezier(20,10,43,-5,30,20,20,30)
  pop()
end

-- Defines movable and scalable Flower shape
function drawClover(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  bezier(10,0,-10,20,30,20,10,0)
  bezier(10,0,-10,-20,30,-20,10,0)
  bezier(10,0,-10,-20,-10,20,10,0)
  bezier(10,0,30,-20,30,20,10,0)
  pop()
end

-- Defines movable and scalable Triangle shape
function drawTriangle(x1,y1,x2,y2)
  push()
  translate(x1,y1)
  scale(x2,y2)
  triangle(0,8,5,0,10,8)
  pop()
end

-- Draw the sketch
function draw()
  drawSquiggle(300,300,5,5)
  drawRhombus(500,500,5,5)
  drawSquare(500,200,5,5)
  drawCircle(100,300,5,5)
  drawHeart(800,300,5,5)
  drawClover(800,800,5,5)
  drawTriangle(100,800,5,5)
end