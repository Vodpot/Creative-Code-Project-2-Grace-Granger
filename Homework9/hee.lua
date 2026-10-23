-- Grace Granger
-- Homework 7

require("L5")

function setup()
  size(700, 500)
  windowTitle("Grace Granger Homework 7")
  xLeft = line(5,5,10,10)
  xRight = line(5,10,10,5)
  xShape = draw(xLeft,xRight)
  
end


function draw()
  background(255)
  --Line thickness and Color
  strokeWeight(8)
  stroke(0)

-- Left Side's Tic Tac Toe Grid
 for lineX = 115, 300, 115 do
    line(lineX, 5, lineX, 495)
  end

for lineY = 155,500,200 do
    line(5, lineY, 345, lineY)
  end
  
  -- Os on the grid
strokeWeight(10)
noFill()
  for x = 1, 2 do
    for y = 1, 2 do
      stroke(random({'#0078BF','#F15060', '#FF48B0','#FF6C2F','#FFE800'}))
      circleX = random({'55', '170', '290'})
      circleY = random({'75','255','420'})
      circle(circleX, circleY, 60)
    end

    -- Xs on the grid
    for x = 1, 2 do
      for y = 1, 2 do
        stroke(random({'#0078BF','#F15060', '#FF48B0','#FF6C2F','#FFE800'}))
        xShapeX = random({'55', '170', '290'})
        xShapeY = random({'75','255','420'})
        line (xShapeX-30,xShapeY-30,xShapeX+30,xShapeY+30)
        line (xShapeX-30,xShapeY+30,xShapeX+30,xShapeY-30)
      noLoop()
    end
  end
end
  -- Right Side's DartBoard
   noStroke()
   fill(64, 112, 96)
   circle(535,250,35)
   fill(255, 102, 94)
   circle(535,250,20)
function mouseClicked()
  redraw()
end
end
