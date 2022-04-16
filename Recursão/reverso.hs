inverte :: [Int] -> [Int]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]
main = do
    print(inverte [1,2,3,4,5])