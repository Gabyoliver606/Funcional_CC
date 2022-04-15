menor :: Int -> Int -> Int -> Int
menor x y z = if x < y && x < z then x else if y < x && y < z then y else z
main = do
    print(menor 1 2 3)
    print(menor 2 1 3)
    print(menor 3 1 2)

