--IN : Duas listas a e b
--OUT: Concatenação entre a e b
concatena :: [Int] -> [Int] -> [Int]
concatena [] [] = []
concatena [] a = a
concatena a [] = a
concatena (a:as) b = a : concatena as b
main = do
    print(concatena [1,2,3] [4,5,6])
    print(concatena [1,2,3] [])
    print(concatena [] [4,5,6])
    print(concatena [] [])