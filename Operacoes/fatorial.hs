--IN : Um natural n
--OUT: O fatorial de n
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n-1)
main = do
    print(fatorial 5)
