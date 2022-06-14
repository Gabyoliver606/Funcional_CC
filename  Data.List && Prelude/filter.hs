MyFilter :: (a -> Bool) -> [a] -> [a]
MyFilter _ [] = []
MyFilter f (x:xs)
    | f x = x : MyFilter f xs
    | otherwise = MyFilter f xs

main = do 
    print $ MyFilter (>3) [0...10] == [4,5,6,7,8,9,10]
    print $ MyFilter (odd) [0...10] == [1,3,5,7,9]