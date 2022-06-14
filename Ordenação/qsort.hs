qsort [] = []
qsort (x:xs) = 
    let menor = qsort [y | y <- xs, y <= x]
        maior = qsort [y | y <- xs, y > x]
    in menor ++ [x] ++ maior

main = do 
    a <- readLn :: IO [Int]
    print $ qsort a