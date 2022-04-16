--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves de a e b sem repetição
uniao :: Eq a => [a] -> [a] -> [a]
uniao [] [] = []
uniao [] b = b
uniao a [] = a
uniao (a:as) b
    | elem a b = uniao as b
    | otherwise = a : uniao as b
main = do
    print (uniao [1,2,3] [2,3,4])
    print (uniao [1,2,3] [2,3,4,5])
    print (uniao [1,2,3] [2,3,4,5,6])
    print (uniao [1,2,3] [2,3,4,5,6,7])
