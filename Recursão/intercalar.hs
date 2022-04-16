intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar [] b = b
intercalar a [] = a
intercalar (a:as) (b:bs) = a : b : intercalar as bs
main = do
    print(intercalar [1,2,3] [4,5,6])