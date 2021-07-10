import Data.List
--  @076 Gere as seguintes funções.
--  >>> gerador1
--  [0,1,-1,2,-2,3,-3...]

gerador1 = unfoldr (\x -> if x < 0 then Just (x,(x*(-1))) else Just (x, ((x+1))*(-1))) 0

--  >>> gerador2
--  [1,-2,3,-4,5,-6...]
gerador2 = concat [[x,-(x+1)] | x <- [1,3..]]

--  >>> gerador3
--  [1,2,4,8,16...]
gerador3 = iterate (\x -> x*2) 1

--  >>> gerador4 1000
--  [1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
gerador4 x = takeWhile (> 0) (iterate (\x -> div x 2) x)

--  >>> gerador5 1000
--  [1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
gerador5 x = unfoldr (\x -> if x > 0 then Just (x, (div x 2)) else Nothing) x

--  >>> digitos 1235412
--  [1,2,3,5,4,1,2]
digitos n = reverse (unfoldr (\x-> if x <= 0 then Nothing else Just ((mod x 10),(div x 10))) n)

-- Cifra de Vigenere
--  Exemplo

--  Texto: 	        ATACARBASESUL
--  Chave: 	        LIMAOLIMAOLIM
--  Texto cifrado: 	LBMCOCJMSSDCX
--  vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"

vigenere text key 
  | length key > length text = map (\(c, k) -> lookK $ lookMod c k ) $ zip text key
  | otherwise = map (\(c, k) -> lookK $ lookMod c k ) $ zip text $ cycle key
    where
      lookMod c k = ((lookN c) + (lookN k)) `mod` 26
      lookK n = [key | (key, ind) <- zip ['A'..] [0..], ind == n ] !! 0
      lookN c = [ind | (ind, val) <- zip [0..] ['A'..], val == c ] !! 0
