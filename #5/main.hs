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