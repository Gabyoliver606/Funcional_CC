--IN : Lista u e valor x
--OUT: Verdadeiro se x ∈ u e falso do contrário
pertence :: Eq a => [a] -> a -> Bool
pertence [] _ = False
pertence (x:xs) y
    | x == y = True
    | otherwise = pertence xs y
main = do
    print (pertence [1,2,3,4,5] 5)
    print (pertence [1,2,3,4,5] 6)