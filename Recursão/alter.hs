fatorial :: Int -> [Int]
fatorial 0 = [1]
fatorial n = [1] ++ [(-1) * x | x <- fatorial (n-1)] ++ [x * y | x <- fatorial (n-1), y <- fatorial (n-2)]
main = do
    print (fatorial 5)