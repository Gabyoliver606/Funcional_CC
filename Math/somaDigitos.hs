somaDigitos 0 = 0
somaDigitos n = (mod n 10) + (somaDigitos (div n 10))

main = do
    print(somaDigitos 12345) == 15
    print(somaDigitos 1234) == 10
    print(somaDigitos 123) == 6