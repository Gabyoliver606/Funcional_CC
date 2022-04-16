total :: Eq a => [a] -> a -> Int
total [] _ = 0
total (x:xs) y
    | x == y = 1 + total xs y
    | otherwise = total xs y
main = do
    print(total [1,2,3,4,5,6,7,8,9,10] 1)
    print(total [1,2,3,4,5,6,7,8,9,10] 10)
    print(total [1,2,3,4,5,6,7,8,9,10] 5)