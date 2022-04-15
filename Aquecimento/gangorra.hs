gangorra :: Int -> Int -> Int -> Int -> Int
gangorra p1 c1 p2 c2
    | (p1 * c1) > (p2 * c2) = -1
    | (p1 * c1) < (p2 * c2) = 1
    | otherwise = 0

main = do
    print $ gangorra 1 2 3 4
    print $ gangorra 1 2 1 2
    print $ gangorra 1 1 1 1

