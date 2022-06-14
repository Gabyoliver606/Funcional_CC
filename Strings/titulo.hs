myToUpper :: Char -> Char

myToUpper c = head [snd x | x <- mapa c, (fst x) == c]
    where mapa c = zip ['A'..'Z'] ['a'..'z'] ++ [(c,c)]

myToLower :: Char -> Char
myToLower x = if x >= 'A' && x <= 'Z' then toEnum (fromEnum x + 32) else x

process :: [Char] -> [Char]
process (x::[]) = []
process (x:xs) = (if x == ' ' then myToUpper(y) else myToLower(y)) : process (xs)
    where y = head xs

titulo :: [Char] -> [Char]
titulo xs = process (' ' : xs)

main = do
    a <- getLine
    print $ titulo a