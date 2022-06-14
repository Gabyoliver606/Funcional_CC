ehPrimo :: Int -> Bool
ehPrimo num = null [x | x <- [2..(floor . sqrt . fromIntegral) num], mod num x == 0]

listPrimos :: [Int]
listPrimos = [x | x <- [2..], ehPrimo x]

expoentes :: Integral a => a -> a -> Int
expoentes number elem = lenght . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ sequencia
    where sequencia = iterate (\(v,r) -> (divMod v elem)) (number,0)

factors' :: Int -> Int -> [(Int,Int)]
factors' 1_ = []
factors' v i           
    | ehPrimo i && res /= 0 = (i,res) : factors' sobra (i+1)
    | otherwise = factors' v (i+1)
    where res = maxPot v i
            sobra = div v(res^i)

fatorate num (x:xs)     | num = 1
                        | f == 0 = fatorate num xs
                        | otherwise = (x,f) : fatorate resto xs   
    where f = expoentes num x
    resto = div num (x^f)

factors' num = fatorate num listPrimos

fn :: Integral b1 => (b1,b2,c) -> b1 -> (b1,b1,Int)
fn (num, primo, fat) p = (if f == 0 then num else num `div` (primo^f), primo, f)
    where f = expoentes num primo

factors :: Int -> [(Int,Int)]
factors num = [(p, e) | (n, p, e) <- lista, e /= 0]
    where lista = takeWhile (\(n,p,e) -> n /= 1 || e /= 0) $ scanl (fn) (num,0,0) listPrimos

factors :: Int -> [(Int,Int)]
factors v = factors' v 2

main = do
    a <- readLn :: IO Int
    print $ factors a