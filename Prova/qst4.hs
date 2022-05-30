ehPoligono :: [Int] -> [Int] -> Bool
ehPoligono [] [] = True
ehPoligono [] _ = False
ehPoligono _ [] = False
ehPoligono (x:xs) (y:ys) = ehPoligono xs ys && ehPoligono (x:xs) ys && ehPoligono (x:xs) (y:ys)
    |   x == y = ehPoligono xs ys
    |   otherwise = True
    |   x /= y = ehPoligono xs ys
    |   otherwise = False









