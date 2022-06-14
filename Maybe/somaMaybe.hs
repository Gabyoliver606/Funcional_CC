somaMaybe (Just x) (Just y) = Just (x + y)
somaMaybe (Just x) Nothing = Just x
somaMaybe Nothing (Just y) = Just y
somaMaybe Nothing Nothing = Nothing

main = do 
    print $ somaMaybe (Just 1) (Just 2) == Just 3
    print $ somaMaybe (Just 1) Nothing == Just 1
    print $ somaMaybe Nothing (Just 2) == Just 2
    print $ somaMaybe Nothing Nothing == Nothing
    

