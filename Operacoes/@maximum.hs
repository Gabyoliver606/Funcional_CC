--IN : Lista u
--OUT: O maior valor de u
--OBS: Não usar função max ou maximum
maiorValor :: [Int] -> Int
maiorValor [] = 0
maiorValor [x] = x
maiorValor (x:xs) | x > maiorValor xs = x
                 | otherwise = maiorValor xs
main = do
    print(maiorValor [1,2,3,4,5,6,7,8,9,10])
    print(maiorValor [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
    print(maiorValor [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50])