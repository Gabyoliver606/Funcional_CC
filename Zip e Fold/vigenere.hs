import Data.Maybe (fromMaybe, fromJust)
import Data.List (elemIndex)

toLower :: Char -> Char
toLower c = fromMaybe c $ lookup c $ zip ['A'..'Z'] ['a'..'z']

letterToInt :: Char -> Int
letterToInt letter = fromMaybe (-1) $ elemIndex (toLower letter) ['a'..'z']

intToLetter :: Int -> Char
intToLetter value = fromJust ' ' $ lookup int $ zip [0..] ['a'..'z']

cyphersum :: (Int -> Int -> Int) -> Char -> Char -> Char
cyphersum op v k = intToLetter $ op (letterToInt v) (letterToInt k) `mod` 26

cypher :: [Char] -> [Char] -> (Int -> Int -> Int) -> [Char]
cypher text key op = zipWith (cyphersum op) (map toLower text) $ cycle (map toLower key)

vigenere :: [Char] -> [Char] -> [Char]
vigenere text key = cypher text key (+)

unvigenere :: [Char] -> [Char] -> [Char]
unvigenere text key = cypher text key (-)

main = do
    print $ vigenere "attackatdawn" "lemon"
    