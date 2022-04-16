nthElem :: [a] -> Int -> a
nthElem [] _ = error "Lista vazia"
nthElem xs n
    | n < 0 = nthElem (reverse xs) (length xs + n)
    | otherwise = aux xs n
    where
        aux [] _ = error "Lista vazia"
        aux (x:xs) 0 = x
        aux (x:xs) n = aux xs (n-1)
main = do
    print $ nthElem [1,2,3,4,5] 2
    print $ nthElem [1,2,3,4,5] (-2)
    print $ nthElem [1,2,3,4,5] (-1)
    print $ nthElem [1,2,3,4,5] 0
    print $ nthElem [1,2,3,4,5] 1
    print $ nthElem [1,2,3,4,5] 5
    print $ nthElem [1,2,3,4,5] 6
    print $ nthElem [1,2,3,4,5] (-6)
     