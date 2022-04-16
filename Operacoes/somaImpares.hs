{-Defina uma função somaImpares tal que somaImpares xs devolve a soma dos elementos ímpares de uma lista-}
somaImpares::[Int]->Int
somaImpares [] = 0
somaImpares (x:xs) | odd x = x + somaImpares xs
                  | otherwise = somaImpares xs
main = do
    print(somaImpares [1,2,3,4,5,6,7,8,9])
    print(somaImpares [1,2,3,4,5,6,7,8,9,10])
    print(somaImpares [1,2,3,4,5,6,7,8,9,10,11])
    print(somaImpares [1,2,3,4,5,6,7,8,9,10,11,12])
    print(somaImpares [1,2,3,4,5,6,7,8,9,10,11,12,13])
    