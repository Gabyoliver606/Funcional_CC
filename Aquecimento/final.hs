final :: Int -> [Int] -> [Int]
final n xs = drop (length xs - n) xs
main = do
    print $ final 10 [1,2,3,4,5,6,7,8,9,10]
