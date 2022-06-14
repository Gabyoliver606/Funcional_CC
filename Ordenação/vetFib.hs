soma_ultimos_2 = sum . reverse . take 2 . reverse

vetFib 0 = []
vetFib 1 = [1]
vetFib 2 = [0, 1]
vetFib n = prefix ++ [soma_ultimos_2 prefix]
    where prefix = vetFib (n - 1)

main = do
     a <- readLn :: IO Int
     print $ vetFib a
