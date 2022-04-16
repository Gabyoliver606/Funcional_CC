swap :: [a] -> Int -> Int -> [a]
swap u p q = (take p u) ++ [u!!q] ++ [u!!p] ++ (drop (p+1) u)
main = do
    print(swap [1,2,3,4,5] 1 3)