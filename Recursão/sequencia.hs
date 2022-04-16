lista :: Int -> Int -> [Int]
lista n m = [m, m+1..m+n-1]
main = do
    print(lista 3 3)