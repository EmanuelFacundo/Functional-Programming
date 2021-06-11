-- 05. Recursão
--  @013 fibonacci
fib a 
  | a == 0 = 0
  | a == 1 = 1
  | otherwise = fib (a-1) + fib (a-2)

-- @018 frequencia
frequencia a b 
  | length b == 0 = 0
  | head b == a = 1 + frequencia a (tail b)
  | otherwise = frequencia a (filter (\x -> x == a) b)

--  @019 unico
unico a u
  | length u == 0 = False
  | a == head u && length u == 1 = True
  | not(a == head u) = unico a (filter (\x -> x == a) u)
  | otherwise = False

--  @020 maioresQue
maioresQue a b
  | length b == 0 = []
  | otherwise = filter (\x -> x > a) b

--  @021 concatena
concatena a b = a ++ b




