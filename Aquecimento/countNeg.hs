countNeg :: [Int] -> Int
countNeg [] = 0
countNeg (x:xs)
  | x < 0 = 1 + countNeg xs
  | otherwise = countNeg xs

main = do
    print $ countNeg [1,2,3,4,5,6,7,8,9,10]
    print $ countNeg [1,2,3,4,5,6,7,8,9,10,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]
    