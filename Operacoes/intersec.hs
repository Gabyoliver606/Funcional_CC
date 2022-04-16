--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves que a e b possuem em comum
comum :: [Int] -> [Int] -> [Int]
comum [] _ = []
comum _ [] = []
comum (x:xs) (y:ys)
    | x == y = x : comum xs ys
    | x < y = comum xs (y:ys)
    | otherwise = comum (x:xs) ys
main = do
    print $ comum [1,2,3,4,5] [2,3,4,5,6]
    print $ comum [1,2,3,4,5] [2,3,4,5,6,7]
    print $ comum [1,2,3,4,5] [2,3,4,5,6,7,8]
    