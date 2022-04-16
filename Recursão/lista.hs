acumulativo :: [Int] -> [Int]
acumulativo u = [sum (take k u) | k <- [0..length u]]
main = do
    print (acumulativo [1,2,3,4,5])