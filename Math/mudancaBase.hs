text :: Int -> Char
text ind = (['A'..'Z'] ++ ['a'..'z'] ++ ['0'..'9']) !! ind

base :: Int -> Int -> [Char]
base 0 b = []
base n b = base (n `div` b) b ++ [text (n `mod` b)]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b
    