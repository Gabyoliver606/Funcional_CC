minimo :: Int -> Int -> Int
minimo x y
    | x < y = x
    | otherwise = y

main = do
    print(minimo 2 3)
    print(minimo 3 2)
    print(minimo 3 3)