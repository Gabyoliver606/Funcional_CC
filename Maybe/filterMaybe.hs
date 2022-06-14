filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = [x | (Just x) <- xs]

countNothing xs = length [1 | (Nothing) <- xs]

main = do
    print $ filterMaybe [Just 1, Nothing, Just 2, Nothing, Just 3] == [1, 2, 3]
    print $ countNothing [Just 1, Nothing, Just 2, Nothing, Just 3] == 2
