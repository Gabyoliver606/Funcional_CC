ProdutoEscalar xs ys = sum [x*y | (x , y) <- zip xs ys]

main = do
    print (ProdutoEscalar [1,2,3] [4,5,6])