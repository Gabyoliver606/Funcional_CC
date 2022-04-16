--IN : Valor x e lista u
--OUT: Versão de u removendo primeira aparição de x
removeFirst :: Eq a => a -> [a] -> [a]
removeFirst x [] = []
removeFirst x (y:ys)
    | x == y = ys
    | otherwise = y : removeFirst x ys
main = do
    print(removeFirst 'a' "abacate")
    print(removeFirst 'a' "banana")
    print(removeFirst 'a' "")
    print(removeFirst 'a' "a")