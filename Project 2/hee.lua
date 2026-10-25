-- Grace Granger
-- Holds code when I need to cut and paste


 -- Chooses the grid of shape's color
      shapeColor = random(colorChoice)
      shapeOpacity = random(alphaChoice)
        if colorChoice == 'Blue' then
         fill(risoBlueR, risoBlueG, risoBlueB,shapeOpacity)
        elseif colorChoice == 'Pink' then
         fill(risoPinkR, risoPinkG, risoPinkB,shapeOpacity)
        elseif colorChoice == 'Yellow' then
         fill(risoYellowR, risoYellowG, risoYellowB,shapeOpacity)
        end
