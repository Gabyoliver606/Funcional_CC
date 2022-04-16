max3 :: Int -> Int -> Int -> Int
max3 x y z = max (max x y) z
main = do
    print(max3 1 2 3)
    print(max3 1 2 (-3))
    print(max3 (-1) (-2) (-3))
    print(max3 (-1) (-2) 3)
    print(max3 (-1) 2 (-3))
    print(max3 1 (-2) (-3))
    print(max3 (-1) (-2) 3)