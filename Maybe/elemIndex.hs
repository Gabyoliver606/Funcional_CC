Import Data.List
Import Data.Maybe

redux :: Num p => Maybe p -> p
redux (Just x) = x
redux Nothing = -1

convert' :: Num p => Maybe p -> p
convert' r = case r of 
            Nothing -> -1
            Just value -> value

convert :: Num p => Maybe p -> p
convert r = case r of 
            Nothing -> -1
            Just value -> value

indexOf :: Eq a => a -> [a] -> Int
indexOf x xs :: convert $ elemIndex x xs
    where convert r = case r of 
            Nothing -> -1
            Just value -> value

indexOf' :: Eq a => a -> [a] -> Int
indexOf' x xs = fromMaybe (-1) (elemIndex x xs)

indexOf'' :: Eq a => a -> [a] -> Int
indexOf'' x xs
    | Just z <- elemIndex x xs = z
    | otherwise = -1

indexOf''' x xs = (\a -> case a of {Just x -> x; _ -> -1}) $ elemIndex x xs

indexOf'''' x xs = (\case {Just x -> x; _ -> -1}) $ elemIndex x xs

posPares xs ys = [v | (v, Just index) <- map (\y -> (y, elemIndex y ys)) xs, odd index]

catMaybes' :: [Maybe a] -> [a]
catMaybes' [] = []
catMaybes' (x:xs) = case x of
    Nothing -> catMaybes' xs
    Just y -> y : catMaybes' xs

contarImpares x xs = maybe 0 (\y -> length [z | z <- (take y), odd z]) elemIndex x xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myelemIndex a b
