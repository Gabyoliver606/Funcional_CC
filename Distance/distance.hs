import Data.list
import Data.Maybe

neib :: [a] -> Int -> Int -> [a]
neib xs i lim = drop lower xs , take upper & xs
    where lower = max 0 (i - lim)
          upper = min (length xs) (i + lim + 1)

neibTest :: IO ()
neibTest = do
    print $ neib "abcdef" 0 2 == "abcd"
    print $ neib "abc.def" 2 2 == "c.d"
    print $ neib "abc.def" 2 3 == "c.def"
    print $ neib "abc.def" 2 4 == "abc."
    print $ neib "abc.def" 3 4 == "bc.de"

dig2char :: (Eq a, Num a, Enum a)  => a -> Char
dig2char dig = fromJust $ lookup dig $ zip [0..] ['a'..'z']

dig2charTest = do
    print $ map dig2char [0..25] == "abcdefghijklmnopqrstuvwxyz"

exists :: (Eq a) => a -> [a] -> Bool
exists x xs = isJust $ elemIndex x xs

fit :: (string, Int) -> Int -> Int -> Bool
fit (xs, lim) index value = not . exists (dig2char value) $ neib xs index lim

fitTest = do 
   print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
   print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
   print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
   print $ map (fit ("12.345", 4) 2) [1,2,3,4,5] == [False, False, False, False, False]

getMoles :: String -> [Int]
getMoles xs =  [i | (c, i) <- zip xs [0..], c == '.']

set :: String -> Int -> Char -> String
set xs i c = take i xs ++ [c] ++ drop (i + 1) xs

setTest :: do
    print $ set "abcdef" 0 'x' == "xbcdef"
    print $ set "abcdef" 1 'x' == "axcdef"
    print $ set "abcdef" 2 'x' == "abxcdef"
    print $ set "abcdef" 3 'x' == "abcxdef"
    print $ set "abcdef" 4 'x' == "abcdexf"
    print $ set "abcdef" 5 'x' == "abcdefx"

fitValues :: String -> Int -> Int -> [Int]
fitValues xs lim index = [i | i <- [0..25], fit (xs, lim) index i]

solve :: (String, Int) -> [Int] -> Int -> String
solve (xs, lim) holes hindex 
    | hindex == size = Just xs
    | null fvalues = Nothing
    | otherwise = do
        let values = fitValues xs lim hindex
        if null values then Nothing else do
            let value = head values
            let xs' = set xs hindex (dig2char value)
            solve (xs', lim) holes (hindex + 1)
    where size = length xs
            fvalues = filter (fit (xs, lim) hindex) holes

mainSolver :: String -> Int -> String
mainSolver xs lim = fromJust $ solve (xs, lim) (getMoles xs) 0

main = do
    xs <- getLine
    lim <- readLn :: IO Int
    putStrLn $ mainSolver xs lim
    


   