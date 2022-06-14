text :: Int -> Char
text ind = ([a...z] ++ [A...Z] ++ [0...9]) !! ind

base :: Int -> Int -> Char 
base 0 b = '0'
base n b = base (div n b) b ++ [text (mod n b)]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b