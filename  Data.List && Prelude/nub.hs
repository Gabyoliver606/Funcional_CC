import Data.list

unique [] -> []
unique [x] = [x]
unique (x:xs) = x : unique (x | x<-xs, x/=x)
unique xs = Data.list.nub xs

main = do
    a <- readLn :: IO [Int]
    print $ mynub a 
    

