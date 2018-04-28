-- Equivalents:
-- max 4 5
-- (max 4) 5

multThree :: Num a => a -> a -> a -> a
multThree x y z = x * y * z

-- Partially applied functions.

-- Equivalent:
-- compareWithHundred x = compare 100 x
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

isUpperLetter :: Char -> Bool
isUpperLetter = (`elem` ['A' .. 'Z'])

divideByTen :: Floating a => a -> a
divideByTen = (/ 10)

-- Equivalents:
-- (/ 10) 200
-- 200 / 10

-- If you want partially apply function to minus operator, you need to write is as:
-- (substract 4)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Will give 16:
-- applyTwice (+3) 10

-- Will give "HEY HAHA HAHA":
-- applyTwice (++ " HAHA") "HEY"

-- Will give 144:
-- applyTwice (multThree 2 2) 9

-- Will give [3, 3, 1]:
-- applyTwice (3:) [1]

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- Will give [6, 8, 7, 9]:
-- zipWith' (+) [4, 2, 5, 6] [2, 6, 2, 3]

-- Will give [[3, 4, 6], [9, 20, 30], [10, 12, 12]]:
-- zipWith' (zipWith' (*)) [[1, 2, 3], [3, 5, 6], [2, 3, 4]] [[3, 2, 2], [3, 4, 5], [5, 4, 3]]

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

-- flip' f = g
--   where g x y = f y x

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- Will give [[1,4],[9,16,25,36],[49,64]]:
-- map (map (^2)) [[1, 2], [3, 4, 5, 6], [7, 8]]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort (filter (<= x) xs)
      biggerSorted = quicksort (filter (> x) xs)
  in smallerSorted ++ [x] ++ biggerSorted

largestDivisible :: Integral a => a
largestDivisible = head (filter p [100000, 99999 ..])
  where p x = x `mod` 3829 == 0

-- Returns elements while predicate is true.
-- Will give "Elephants":
-- takeWhile (/= ' ') "Elephants know now to party"

result3 :: Int
result3 = sum (takeWhile (< 10000) (filter odd (map (^ 2) [1 ..])))

chain :: Integral a => a -> [a]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1 .. 100]))
  where isLong xs = length xs > 15

-- Will give 20:
result4 :: Int
result4 = (map (*) [0 ..] !! 4) 5

-- Lambdas.

numLongChains' :: Int
numLongChains' = length (filter (\ xs -> length xs > 15) (map chain [1 .. 100]))

-- Will give [3, 7, 11]:
result5 = map (\ (a, b) -> a + b) [(1, 2), (3, 4), (5, 6)]

flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f = \ x y -> f y x

sum' :: Num a => [a] -> a
sum' = foldl (+) 0
-- sum' xs = foldl (\ acc x -> acc + x) 0 xs

elem' :: Eq a => a -> [a] -> Bool
elem' y ys = foldl (\ acc x -> if x == y then True else acc) False ys

map'' :: (a -> b) -> [a] -> [b]
map'' f xs = foldr (\ x acc -> f x : acc) [] xs

-- Can cause runtime error on empty list!
sum'' :: Num a => [a] -> a
sum'' = foldl1 (+)

maximum' :: Ord a => [a] -> a
maximum' = foldr1 (\ x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\ acc x -> x : acc) []

product' :: Num a => [a] -> a
product' = foldr1 (*)

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p = foldr (\ x acc -> if p x then x : acc else acc) []

head' :: [a] -> a
head' = foldr1 (\ x _ -> x)

last' :: [a] -> a
last' = foldl1 (\ _ x -> x)

-- Functions: scanl, scanr, scanl1, scanr1

-- Will give [0, 3, 8, 10, 11]
result6 :: [Int]
result6 = scanl (+) 0 [3, 5, 2, 1]

sqrtSums :: Int
sqrtSums = length (takeWhile (< 1000) (scanl1 (+) (map sqrt [1 ..]))) + 1

-- Function application operator: "$".
-- Have lowest precendence of any operator.
-- Right-associative (space operator is left-associative).
-- This operator is like writing parentheses.

-- Rewrite: sum (map sqrt [1..130])
-- sum $ map sqrt [1..130]

-- Rewrite: sqrt (3 + 4 + 9)
-- sqrt $ 3 + 4 + 9

-- Rewrite: sum (filter (> 10) (map (*2) [2..10]))
-- sum $ filter (> 10) $ map (*2) [2..10]

result7 :: [Float]
result7 = map ($ 3) [(4 +), (10 *), (^ 2), sqrt]

-- Function composition operator: ".".
-- Right-associative.

-- Will give [-5,-3,-6,-7,-3,-2]:
result8 :: [Int]
result8 = map (negate . abs) [5, -3, -6, 7, -3, 2]

-- Will give [-14,-15,-27].
result9 :: [Int]
result9 = map (negate . sum . tail) [[1 .. 5], [3 .. 6], [1 .. 7]]

result10 :: Float
result10 = sum . replicate 5 $ max 6.7 8.9

result11 :: Float -> Int
result11 = ceiling . negate . tan . cos . max 50

-- Will give 54
multTwoWithNine :: Int -> Int -> Int
multTwoWithNine = multThree 9

result1 :: Int
result1 = multTwoWithNine 2 3

-- Will give 180
multWithEighteen :: Int -> Int
multWithEighteen = multTwoWithNine  2

result2 :: Int
result2 = multWithEighteen 10
