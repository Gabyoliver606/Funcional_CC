ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..num-1], mod num x == 0]

main = do
    print (ehPrimo 2) == True
    print (ehPrimo 3) == True
    print (ehPrimo 4) == False
    print (ehPrimo 5) == True
    print (ehPrimo 6) == False