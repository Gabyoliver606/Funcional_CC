import Data.List

gerador5 num = unfoldr fn num
    where fn n | n == 0 = Nothing
                | n == x = Just (x, x 'div' 2)

digitos num = reverse $ unfoldr fn num
    where fn n | n == 0 = Nothing
                | n == x = Just (x 'mod' 10, x 'div' 10)

ehPrimo :: Int -> Bool
ehPrimo n = null [x | x <- [2..(floor . sqtr . fromIntegral) n], n `mod` x == 0]

listPrimos :: [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

expoentes :: Integral a => a -> a -> [Int]
expoentes number elem = lenght . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
            where sequencia = iterate (\(v,r) -> divMod v elem ) (number 0)

dobra :: (Int -> [Int]) -> Maybe ((Int, Int), (Int, Int))
dobra (value, p:ps)   |value == 1 = Nothing
                      |otherwise = Just ((p, res), (value 'div' p ^ res, ps))
                       where res = expoentes value p

factors value = filter (\(v,r) -> v /= 0) $ unfoldr (dobra) (value, listPrimos)

main = do
    print $ factors 5 == [(5,1),(2,1),(1,1)]
    print $ factors 6 == [(6,1),(2,1),(1,1)]