tails :: [a] -> [a]
tails [] = []
tails (x:xs) = xs : tails xs

main = do
    print $ tails [1,2,3]
    print $ tails "abc"
    print $ tails [1]