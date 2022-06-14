concatmap :: (a -> [b]) -> [a] -> [b]
concatmap fn xs = foldl (++) [] (map fn xs)

main = do
    print $ concatmap (\x -> [x, x]) [1, 2, 3]
    print $ concatmap (\x -> [x, x]) [1, 2, 3] == [1, 1, 2, 2, 3, 3]
    