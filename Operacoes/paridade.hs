oddBoolList :: [Bool] -> Bool
oddBoolList = odd . length . filter id
main = do
    print(oddBoolList [True,False,True,True])
    print(oddBoolList [True,False,True,False])
    print(oddBoolList [True,False,False,True])
    print(oddBoolList [True,False,False,False])
    print(oddBoolList [False,True,True,False])
    