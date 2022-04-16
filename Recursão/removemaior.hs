removeMaior :: [Int] -> [Int]
removeMaior [] = []
removeMaior [x] = [x]
removeMaior (x:xs) = if x > (head xs) then x : removeMaior xs else removeMaior xs
main = do
    print(removeMaior [1,2,3,4,5,6,7,8,9,10])
    print(removeMaior [1,2,3,4,5,6,7,8,9,10,11])
    