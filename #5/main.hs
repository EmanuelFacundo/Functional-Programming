--  06. Data.List
--  @022 tails - Data.List.tails

tails :: [a] -> [[a]]
tails [] = [[]]
tails (x:xs) = [x:xs] ++ tails xs

--  @024 unique - Data.List.nub
unique [] = []
unique (x:xs) = [x] ++ unique (filter (\y -> not(y == x)) xs)

--  07. Zip
--  @064 produtoEscalar - utilizando a função zip
produtoEscalar xs ys = sum (map (\(x,y) -> y*x) (zip xs ys))

--  @065 indices - busca posições do elemento
indices v xs = filter (\x -> x > 0) (map (\(x,y) -> position x y v ) (zip xs [0..]))
  where
    position x y v = if x == v then y else 0

--  08. Fold
--  @067 concatMap - Data.List.concatMap
concatFn:: (a -> [b]) -> [a] -> [b]
concatFn fun xs = fn (map (\x -> fun x) xs)
  where 
    fn [] = []
    fn (y:ys) = y ++ fn ys

--  09. Strings
igual z s = map (\(x,y) -> if x == z then y else if y == z then y else '.') s

--  @041 selec - apenas as chaves selecionadas
selec :: String -> [Int] -> String
selec s xs = map (\x -> (s !! x)) xs

--  @042 isPalind - verificar palíndromo
-- isPalind :: String -> Float 
isPalind s = (init s) == (reverse (tail s))