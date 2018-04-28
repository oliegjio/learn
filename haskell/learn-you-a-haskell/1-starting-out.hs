doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = if x > 100
  then x
  else x * 2

-- Single quotation mark denotes not-lazy function or slightly modified version of athother function.
doubleSmallNumber' :: (Ord a, Num a) => a -> a
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- Odd and even numbers can be filtered by "odd" and "even" functions.
boomBang :: Integral a => [a] -> [[Char]]
boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

-- "_" means that we don't care what we'll draw from the list.
length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A' .. 'Z'] ]

number :: Double
number = (50 * 100) / 2 - 15 + 6  ^ 3

logic1 :: Bool
logic1 = True && False

logic2 :: Bool
logic2 = False || False

logic3 :: Bool
logic3 = not False

logic4 :: Bool
logic4 = not (True && True)

comparison1 :: Bool
comparison1 = "hello" == "hello"

comparison2 :: Bool
comparison2 = 5 /= 5

comparison3 :: Bool
comparison3 = 3 > 5

comparison4 :: Bool
comparison4 = 6 <= 3

-- Successor. Will give 10.
successor :: Int
successor = succ 9

minMax1 :: Int
minMax1 = min 9 10

minMax2 :: Int
minMax2 = max 5 8

-- This is equal to: (succ 9) + (max 5 4) +1.
statement :: Int
statement = succ 9 + max 5 4 + 1

-- First "9 * 10" and then "succ".
statement2 :: Int
statement2 = succ (9 * 10)

-- Integer division.
intDiv :: Int
intDiv = 100 `div` 9

double :: Int
double = doubleMe 10

double2 :: Int
double2 = doubleUs 3 6

statement3 :: Int
statement3 = doubleUs 13 2 + doubleMe 3

doubleSmall :: Int
doubleSmall = doubleSmallNumber 3

-- Lists contains elements of the same type. Length is unknown.
list1 :: [Int]
list1 = [1, 2, 3, 4, 10]

list2 :: [Int]
list2 = [3, 2, 4, 5]

-- Will be: [1, 2, 3, 4, 10, 3, 2, 4, 5]
concatLists :: [Int]
concatLists = list1 ++ list2

-- Strings are just lists.

-- Add element "5" to the begining of the list.
list3 :: [Int]
list3 = 5:[1, 3, 5]

list8 :: [Char]
list8 = 'A':"String"

-- Operator "!!" gets the element at the index. Counts from 0. Will give "3".
elementAt :: Int
elementAt = [1, 2, 3, 4, 5] !! 2

multiList :: [[Int]]
multiList = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

fromMultiList :: [Int]
fromMultiList = multiList !! 1

-- Compare first elements, then second etc. Will give "False".
comparison5 :: Bool
comparison5 = list1 > list2

-- Gives first element. Will give "5".
list4 :: Int
list4 = head [5, 3, 1]

-- Gives everything except first element. Will give: [7, 8].
list5 :: [Int]
list5 = tail [3, 7, 8]

-- Gives the last element. Will give "9".
list6 :: Int
list6 = last [10, 6, 9]

-- Gives everything except last element. Will give: [5, 4].
list7 :: [Int]
list7 = init [5, 4, 6]

-- Will give "3".
theLength :: Int
theLength = length list7

-- Checks if list contains items. Will give "True".
emptyList :: Bool
emptyList = null []

-- Reverses list. Will give: [3, 2, 1].
reverseList :: [Int]
reverseList = reverse [1, 2, 3]

-- Extract that many elements from the list. Will give: [1, 2]
takeFromList :: [Int]
takeFromList = take 2 [1, 2, 3, 4, 5]

-- Drops that many elements from the begining of the list. Will give: [3, 4, 5]
dropFromList :: [Int]
dropFromList = drop 2 [1, 2, 3, 4, 5]

-- Gives the biggest/smallest element. Will give "10".
maxFromList :: Int
maxFromList = maximum [3, 10, 9]

minFromList :: Int
minFromList = minimum [3, 10, 9]

-- Will give "6".
sumTheList :: Int
sumTheList = sum [1, 2, 3]

-- Will give "24".
multTheList :: Int
multTheList = product [2, 3, 4]

-- Checks if that thing is an element of the list. Will give "True".
isElem :: Bool
isElem = 4 `elem` [2, 3, 4, 5]

-- Will give list of all elements from 1 to 20, eg [1, 2, 3, ..., 18, 19, 20].
range1 :: [Int]
range1 = [1 .. 20]

range2 :: [Char]
range2 = ['a' .. 'z']

range3 :: [Char]
range3 = ['A' .. 'Z']

-- Defines a step. Will give every even number...
range4 :: [Int]
range4 = [2, 4 .. 20]

-- Don't use ranges with floating numbers!

-- Repeat the list infinite times, so you need to cut is somewhere.
-- Will give: [1, 2, 3, 1, 2, 3, 1, 2, 3, 1].
cycleList :: [Int]
cycleList = take 10 (cycle [1, 2, 3])

-- Repeat number infinite times.
repeatNumber :: [Int]
repeatNumber = take 10 (repeat 5)

-- Will give [2 ,4, 6, 8, 10, 12, 14, 16, 18, 20].
comprehension1 :: [Int]
comprehension1 = [ x * 2 | x <- [1 .. 10] ]

-- Will be evaluated only if all conditions are met.
comprehension2 :: [Int]
comprehension2 = [ x | x <- [50 .. 100], x `mod` 7 == 3 ]

comprehension3 :: [Int]
comprehension3 = [ x | x <- [10 .. 20], x /= 13, x /= 15, x /= 19 ]

comprehension4 :: [Int]
comprehension4 = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11], x * y > 50]

nouns :: [[Char]]
nouns = ["hobo", "frog", "pope"]

adjectives :: [[Char]]
adjectives = ["lazy", "grouchy", "scheming"]

stringCombination :: [[Char]]
stringCombination = [ adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns ]

-- Tuples can contain certain number of elements with different types.
tuple1 :: ([Char], [Char], Int)
tuple1 = ("Christopher", "Walken", 55)

-- Takes first element from 2x tuple. Will give "8".
firstFromTuple :: Int
firstFromTuple = fst (8, "Yes")

-- Takes second element from 2x tuple. Will give "3".
secondFromTuple :: Int
secondFromTuple = snd ("Wow", 3)

-- Zips two lists by joining matching elements. Will give: [(1, 5), (2, 5), (3, 5), (4, 5), (5, 5)].
zipLists1 :: [(Int, Int)]
zipLists1 = zip [1, 2, 3, 4, 5] [5, 5, 5, 5, 5]

-- Will give: [(5, "im"), (3, "a"), (2, "turtle")].
zipLists2 :: [(Int, [Char])]
zipLists2 = zip [5, 3, 2, 6, 2, 7, 2, 5, 4, 6, 6] ["im", "a", "turtle"]

-- Will give: [(1, "apple"), (2, "orange"), (3, "cherry"), (4, "mango")].
zipLists3 :: [(Int, [Char])]
zipLists3 = zip [1 ..] ["apple", "orange", "cherry", "mango"]

rightTriangles :: [(Int, Int, Int)]
rightTriangles = [ (a, b, c) | c <- [1 .. 10], b <- [1 .. c], a <- [1 .. b], a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 24 ]

main :: IO ()
main = do
  print("Some text message...")
