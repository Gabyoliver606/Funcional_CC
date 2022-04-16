quadPerfeito :: Int -> Bool
quadPerfeito n = (length [x | x <- [1..n], n `mod` x == 0, x /= n]) == 2
main = do
    print(quadPerfeito 9)
    print(quadPerfeito 10)
    print(quadPerfeito 11)
    print(quadPerfeito 12)
    