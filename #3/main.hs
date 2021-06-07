-- 03. Aquecimento
--  @004 countNeg
countNeg a = length (filter (\x -> x < 0) a)

--  @005 final
final a b = drop (length(b)-a) b

--  @002 iguais - verificar se duas listas são iguais
iguais a b c 
  | (a == b && c == b) = 3
  | (a == b || c == b || c == a) = 2
  | otherwise = 0

--  @006 interior - miolo da lista
interior a = drop 1 (take ((length a)-1) a)

--  @008 gangorra
mult a b = a * b
gangorra a b c d  
  | (mult a b == mult c d) = 0
  | (a > c && b < d || a < c && b > d) = 1
  | otherwise = -1

--  @010 min2
min2 a b = min a b

--  @011 min3
min3 a b c = minimum [a,b,c]

--  @000 soma2
soma a b = a + b

----------------------------------------------------------------
-- 04. Operações básicas
--  @007 somaÍmpares
somaImpares a = sum (filter (\x -> not(even x)) a)

--  @001 max3
max3 a b c = maximum [a,b,c]

--  @012 fatorial
fatorial a  
  | a > 1 = a * fatorial (a-1) 
  | otherwise = 1

--  @014 elemento
elemento a b  
  | a >= 0 = head (drop a b) 
  | otherwise = head (drop ((length b)+a) b)

--  @015 pertence
pertence a b = elem a b

--  @016 total
total a = sum (map (\x -> 1 ) a)

--  @017 maior
maior a 
  | (length a == 1) = (a !! 0) 
  | (head a > a !! ((length a)-1)) = maior (take ((length a)-1) a)
  | otherwise = maior (drop 1 a)

--  @023 corpo
corpo a = take ((length a)-1) a

--  @028 divide
divide a b = ((take b a) , (drop b a))

--  @030 união
uniao a b = (filter (\x -> x `notElem` b || x `elem` b) a) ++ (filter (\x -> x `notElem` a) b)

--  @031 intersec - intercessão entre listas
intersec a b = filter (\x -> x `elem` b) a

--  @047 splitints
splitints a = ((filter (\x-> odd x) a), (filter(\x-> even x) a))

--  @009 sublist
sublist a b c 
  | b < 0 && a < 0 = drop ((length c)+a) (take ((length c)+b) c) --sublist (-10) (-1) [0,1,2,3,4,5,6,7,8,9,10]
  | a < 0 = drop ((length c)+a) (take (b) c)
  | b < 0 = drop a (take ((length c)+b) c)
  |otherwise = drop a (take (b) c)

--  @051 paridade
paridade a = odd (length (filter (\x-> x==True) a))

--  @054 swap - trocando dois elementos de uma lista
-- swap a b c  

--  @063 euler1 - soma dos múltiplos de 3 e 5
euler1 a = sum (filter (\x-> (x `mod` 3) == 0 || (x `mod` 5) == 0) [1..a-1])
