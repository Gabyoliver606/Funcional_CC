{-soma :: Int -> Int -> Int
soma x y = x + y
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma a b-}

soma :: Int -> Int -> Int 
soma x y = x + y
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ soma a b