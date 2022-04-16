removeUltimo :: [a] -> [a]
removeUltimo [] = []
removeUltimo [x] = []
removeUltimo (x:xs) = x : removeUltimo xs
main = do
    print(removeUltimo [1,2,3,4,5])
    print(removeUltimo [1])
    print(removeUltimo [1,2,3,4,5,6,7,8,9,10])
