ehTriangulo :: Double -> Double -> Double -> Bool
ehTriangulo a b c = (a + b > c) && (a + c > b) && (b + c > a)
    || (a == b) && (b == c)
    || (a == b) && (a == c)
    || (a == c) && (b == c)
    || (b == c) && (a == c)
main = do
    print(ehTriangulo 1 2 3)
    print(ehTriangulo 1 1 1)
    print(ehTriangulo 1 1 2)
    print(ehTriangulo 1 2 1)
    print(ehTriangulo 2 1 1)
    print(ehTriangulo 2 2 2)
    print(ehTriangulo 2 2 3)
    print(ehTriangulo 3 2 2)
    print(ehTriangulo 3 2 3)
    print(ehTriangulo 3 3 2)
    print(ehTriangulo 3 3 3)
    
