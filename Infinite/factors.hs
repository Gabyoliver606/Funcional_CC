ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], mod num x == 0]

listPrimos :: [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

expoentes :: Integral a => a -> a -> Int
expoentes number elem = lenght . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
    where sequencia = iterate (\(v,r) -> (divMod v elem)) (number,0)

