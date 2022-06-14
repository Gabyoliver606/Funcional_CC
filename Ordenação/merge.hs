merge x [] = x
merge [] x = x
merge (x:xs) (y:ys) = if x < y then x : (merge xs (y:ys)) else y : (merge (x:xs) ys)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b