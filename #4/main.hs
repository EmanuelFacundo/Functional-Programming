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
concatena [] [] = []
concatena [] b = b
concatena a [] = a
concatena (x : xs) ys = x : concatena xs ys

--  @027 reverso
reverso [] = []
reverso xs = last xs : reverso (init xs)

--  @029 intercal - intercalar duas listas
intercal [] ys = ys
intercal xs [] = xs
intercal (x:xs) (y:ys) = x : y : intercal xs ys

--  @032 sequencia
sequencia 0 m = []
sequencia n m = m : sequencia (n-1) (m+1)

--  @037 rotEsq
rotEsq 0 xs = xs
rotEsq n (x:xs) = rotEsq (n-1) (xs++[x])

--  @038 rotDir
rotDir 0 xs = xs
rotDir n xs = rotDir (n-1) ([(last xs)]++(init xs))

--  @048 quadperf
quad a b 
    | ((a*a) > b) = False
    | ((a*a) == b) = True
    | otherwise = quad (a+1) b

quadperf n = quad 2 n

--  @059 listacc - lista acumulativa
listacc [] = []
listacc (x:xs) 
  | xs == [] = [x]
  | otherwise = x : listacc ([(x+(head xs))]++(tail xs))

--  @061 line - linhas de um triângulo aritmético
line n = [(fn)..((fn)+(n-1))]
  where fn = ((sum [1..(n-1)])+1)

--  @062 triangle - triângulo aritmético
invert 0 = [] 
invert n = line n : invert (n-1)

triangle n = reverse (invert n)

-- Ficou faltando as questões "menores","alter" e "deletee"