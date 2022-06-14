ordenada [] = True
ordenada [x] = True
ordenada u = if (head u) <= (head (tail u)) then ordenada (tail u) else False

main = do
    print (ordenada [1,2,3,4,5]) == True
    print (ordenada [1,2,3,5,4]) == False