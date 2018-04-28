lucky :: Integral a => a -> String
lucky 7 = "LUCKY NUMBER!"
lucky x = "Sorry, you're out of luck!"

sayMe :: Integral a => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Integral a => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- You need to always specify catch-all pattern or error could aquaire.

addVectors :: Num a => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

three :: (a, b, c) -> c
three (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call head on empty list!"
head' (x:_) = x

tell :: Show a => [a] -> String
tell [] = "This list is empty"
tell (x:[]) = "This list has one element: " ++ show x
tell (x:y:[]) = "This list has two element, first: " ++ show x ++ " second: " ++ show y
tell (x:y:_) = "This list is long. The first element: " ++ show x ++ " second: " ++ show y

length' :: Num b => [a] -> b
length' (_:xs) = 1 + length' xs

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string!"
capital all@(x:_) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: RealFloat a => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight!"
  | bmi <= normal = "You're normal!"
  | bmi <= fat = "You're fat!"
  | otherwise = "You're a whale!"
  where bmi = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat = 30.0

-- where bmi = weight / height ^ 2
--       (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

cylinder :: RealFloat a => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + topArea * 2

calcBmis :: RealFloat a => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^2]

head'' :: [a] -> a
head'' xs = case xs of
  [] -> error "Can't call head on an empty list!"
  (x:_) -> x

describeList :: [Char] -> [Char]
describeList xs = "The list is " ++ case xs of
  [] -> "empty."
  [x] -> "a singletone list."
  xs -> "a longer list."

list1 :: [(Int, Int)]
list1 = [(1, 3), (4, 3), (2, 4), (5, 3), (5, 6), (3, 1)]

result1 :: [Int]
result1 = [a + b | (a, b) <- list1]

expression1 :: Int
expression1 = 4 * (let a = 9 in a + 1) + 2

-- Will give "[(25, 9)]".
expression2 :: [(Int, Int)]
expression2 = [let square x = x * x in (square 5, square 3)]

-- Will give "600".
expression3 :: Int
expression3 = (let (a, b, c) = (1, 2, 3) in a + b + c) * 100
