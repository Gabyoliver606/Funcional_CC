{-index_of xs x 
    | xs == [] = -1
    | x == head xs = 0
    | otherwise = 1 + index_of (tail xs) x -}
    
{-Faça a função index_of que retorna o index da primeira vez que um elemento aparece em uma lista. Caso o elemento não exista, retorne -1.-}

index_of :: Eq a => [a] -> a -> Int
index_of [] _ = -1
index_of (x:xs) y
    | x == y = 0
    | otherwise = 1 + index_of xs y else -1

main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    y <- readLn :: IO Int
    print $ index_of xs y
