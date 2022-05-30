index_of :: (Eq a) => a -> [a] -> Int
index_of x foldr (0, y)
  | x == y = 0
  | otherwise = 1 + index_of x foldr (1, y)
  



