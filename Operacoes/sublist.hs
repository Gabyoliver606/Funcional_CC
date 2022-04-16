sublist :: Int -> Int -> [a] -> [a]
sublist _ _ [] = []
sublist i f l = take (f-i) (drop i l)
main = do
    print (sublist 0 2 [1,2,3,4,5])
    print (sublist 1 3 [1,2,3,4,5])
    print (sublist 2 4 [1,2,3,4,5])
    print (sublist 3 5 [1,2,3,4,5])
    