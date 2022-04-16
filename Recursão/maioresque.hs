maioresQue :: Int -> [Int] -> [Int]
maioresQue x u = filter (\y -> y > x) u

main = do
    print (maioresQue 5 [1,2,3,4,5,6,7,8,9,10])