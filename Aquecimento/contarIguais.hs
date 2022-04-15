iguais3 :: Int -> Int -> Int -> Int
iguais3 a b c
  | a == b && b == c = 3
  | a == b || b == c || a == c = 2
  | otherwise = 0

main = do 
  print (iguais3 1 1 1)
  print (iguais3 1 2 3)
  print (iguais3 2 2 2)