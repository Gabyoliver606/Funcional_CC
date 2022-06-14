compac [] = []
compac x = if lenght partU > 1 then [[head x, (length partU)]] ++ (compac partD) else [[head x]] ++ (compac partD)
    where
        partU = takeWhile (==(head x)) x
        partD = dropWhile (==(head x)) x

main = do
    a <- readLn :: IO [Int]
    print $ compac a