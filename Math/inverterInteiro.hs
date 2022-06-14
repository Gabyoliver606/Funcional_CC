rev' :: Int -> Int -> Int
rev' 0 y = y
rev' x y = rev' (div x 10) (y * 10 + mod x 10)

rev :: Int -> Int
rev x = rev' x 0

rev' :: Int -> (Int, Int)
rev' x | x < 10 = (x, 10)
      | otherwise = (digito * 10 pot + valor , pot * 10)
      where (digito, pot) = rev' (div x 10)
                digito = 'mod' x 10

rev = fst . rev'

main = do
    print $ rev 123 == 321
    print $ rev 1234 == 4321