{-Defina a função interior tal que (interior xs) é uma lista obtida eliminando os extremos da lista xs.-}
interior :: [a] -> [a]
interior xs = drop 1 (take (length xs - 1) xs)

main = do
    print (interior [1,2,3,4,5])
    print (interior [1,2,3,4,5,6])
    print (interior [1,2,3,4,5,6,7])
    print (interior [1,2,3,4,5,6,7,8])
    print (interior [1,2,3,4,5,6,7,8,9])
    print (interior [1,2,3,4,5,6,7,8,9,10])
