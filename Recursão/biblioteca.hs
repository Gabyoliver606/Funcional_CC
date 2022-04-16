main = do
    print $ replicate 4 0 == [0, 0, 0, 0]
    print $ replicate 2 True == [True, True]
    print $ replicate 3 "banana" == ["banana", "banana", "banana"]
