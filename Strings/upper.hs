myToUpper c = head [snd x | x <- mapa c, (fst x) == c]
    where mapa c = zip ['a'...'z'] ['A'...'Z'] ++ [(c,c)]

upper s = map myToUpper s

main = do
    a <- getLine
    print $ upper a