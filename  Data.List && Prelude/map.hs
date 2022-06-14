MyMap_ [] = []
myMap f (x:xs) = f x : myMap f xs

main = do
    print $ myMap (\x -> x + 1) [1,2,3] = [2,3,4]
    print $ myMap (odd) [1,2,3] = [True,False,True]
    
