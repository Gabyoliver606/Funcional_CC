split :: (Ord a) => [(a,b)] -> ( [(a,b)], [(a,b)] )
split [] = ([],[])
split (x:xs) = (x:a,b)
    where (a,b) = split xs
main = do
    print(split [(1,2),(3,4),(5,6),(7,8),(9,10)])