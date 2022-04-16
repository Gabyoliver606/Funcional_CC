rotate :: Int -> [a] -> [a]
rotate n [] = []
rotate n xs = drop n xs ++ take n xs
main = do
    print(rotate 3 [1,2,3,4,5])
    print(rotate 3 "abcdefgh")