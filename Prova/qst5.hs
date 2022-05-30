caixaPalitos :: [Int] -> [(Int, Int, Int)]
caixaPalitos [] = []
caixaPalitos (x:xs) = [(x,y,z) | y <- xs, z <- xs, y > x, z > y, x + y > z] ++ caixaPalitos xs