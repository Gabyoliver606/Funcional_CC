ocorreExatamenteUmaVez :: [Int] -> Int -> Bool
ocorreExatamenteUmaVez [] _ = False
ocorreExatamenteUmaVez (x:xs) y
    | x == y = ocorreExatamenteUmaVez xs y
    | otherwise = ocorreExatamenteUmaVez xs y
main = do
    print(ocorreExatamenteUmaVez [1,2,3,4,5] 5)
    print(ocorreExatamenteUmaVez [1,2,3,4,5] 6)
    print(ocorreExatamenteUmaVez [1,2,3,4,5] 1)
   