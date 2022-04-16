--IN : Lista de inteiros positivos, u
--OUT: Tupla de duas listas, (A,B), onde A e B são respectivamente compostos pelos números que passam no predicado e os que não passam
splitints :: [Int] -> ([Int],[Int])
splitints [] = ([],[])
splitints (x:xs) = if x > 0 then (x:a,b) else (a,x:b)
    where (a,b) = splitints xs
main = do
    print(splitints [1,2,3,4,5,6,7,8,9,10])
