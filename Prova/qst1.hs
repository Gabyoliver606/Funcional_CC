index_of :: Eq a => a -> [a] -> Int
index_of _ [] = -1
index_of x (y:ys)
    | x == y = 0
    | otherwise = 1 + index_of x ys
main = do
    print $ index_of 'a' "abc"
    print $ index_of 'a' "abcd"
    print $ index_of 'a' "ab"

