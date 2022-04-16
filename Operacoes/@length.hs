tamanho :: [Int] -> Int
tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs
main = do
    print(tamanho [1,2,3,4,5])
    print(tamanho [])