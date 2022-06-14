myRepeat x = x : myRepeat x

main = do 
    print $ myRepeat 'a'
    print $ myRepeat 5
    print $ myRepeat (1,2)