-- 'a' :: Char
-- True :: Bool
-- "Hello!" :: [Char]
-- (True, 'a') :: (Bool, Char)
-- 4 == 5 :: Bool

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A' .. 'Z'] ]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Types:
-- 1. Int. Bounded.
-- 2. Integer. Unbounded.
-- 3. Float. Single precision.
-- 4. Double. Double precision.
-- 5. Bool.
-- 6. Char.
-- 7. Ordering. Can be: "GT", "LT", "EQ".

-- Type variable:
-- head :: [a] -> a
-- fst :: (a, b) -> a

-- (==) :: (Eq a) => a -> a -> Bool

-- Typeclasses:
-- 1. Eq. Functions: "==" and "/=".
-- 2. Ord. Functions: ">", "<", ">=", "<=". To be a member of "Ord", type must have membership in "Eq".
-- 3. Show. Members of "Show" can be presented as strings. Function: show.
-- 4. Read. Function: "show", takes string and return type.
-- 5. Enum. Sequentially ordered types. Can be enumerated. Have successors and predecesors. Types in this class: (), Bool, Char, Ordering, Int, Integer, Float, Double.
-- 6. Bounded. Have upper and lower bound.
-- 7. Num. Act like numbers. Contains all numbers: Int, Integer, Float etc. Must be member of "Show" and "Eq".
-- 8. Integral. Includes only integral (whole) numbers.
-- 9. Floating. Includes only floating numbers.

-- Polymorphic constant. Will give -2147483648.
-- minBound :: Int

-- Will give '\1114111' .
-- maxBound :: Char

-- Will give True.
-- maxBound :: Bool

-- Explicit type annotation:
-- "5" :: Int

-- Will give (True, 2147483647, '\1114111').
-- maxBound :: (Bool, Int, Char)

-- (*) :: (Num a) => a -> a -> a

-- Will give "GT".
compareNumbers :: Ordering
compareNumbers = 5 `compare` 3

-- Will give "LT".
compareStrings :: Ordering
compareStrings = "Abrakadabra" `compare` "Zebra"

-- "length" returns Integral, so you need to convert it to Num to add Float to it.
-- fromIntegral :: (Num b, Integral a) => a -> b
lengthOfString :: Float
lengthOfString = fromIntegral (length [1, 2, 3, 4]) + 3.2
