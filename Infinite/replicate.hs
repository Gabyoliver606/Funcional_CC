myReplicate n x
    | n == 0 = []
    | otherwise = x : replicate (n - 1) x

main = do
    print $ myReplicate 3 'a' == "aaa"
    print $ myReplicate 1 'b' == "b"