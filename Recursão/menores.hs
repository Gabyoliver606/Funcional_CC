--IN : Natural n e lista u
--OUT: Lista com os n menores elementos de u na ordem que aparecem em u
menores :: Int -> [Int] -> [Int]
menores 0 _ = []
menores n [] = []
menores n (x:xs) = menoresAux n x xs
main = do
    print(menores 3 [1,2,3,4,5,6,7,8,9,10])
    print(menores 3 [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
   