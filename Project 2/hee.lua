-- Grace Granger
-- Holds code when I need to cut and paste


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
