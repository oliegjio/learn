import qualified Data.Map as Map

-- Export module:
-- module Shapes (Point, Shape (Circle)) where

-- Type "Maybe" represents an option of either having nothing or having one of something.
-- Type "Maybe" is used when there is a possibility of no output can be calculated.
-- data Maybe a = Nothing | Just a
-- --
-- Can produce something like "Maybe Int".
-- --
-- Just 10 :: Maybe Double

type AssocList k v = [(k, v)]

data Point = Point Float Float deriving Show
data Shape = Circle Point Float | Rectangle Point Point deriving Show

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface ((Rectangle (Point x1 y1) (Point x2 y2))) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- To pattern-match whole Point you could use "name @ (Point x1 y1)".

-- Will give 314.15927:
-- surface $ Circle 10 20 10

result1 :: [Shape]
result1 = map (Circle (Point 10 20)) [4, 5, 6, 6]

data Vector a = Vector a a a deriving Show

vPlus :: Num a => Vector a -> Vector a -> Vector a
(Vector i j k) `vPlus` (Vector l m n) = Vector (i + l) (j + m) (k + n)

vMult :: Num a => Vector a -> a -> Vector a
(Vector i j k) `vMult` n = Vector (i * n) (j * n) (k * n)

vScalarMult :: Num a => Vector a -> Vector a -> a
(Vector i j k) `vScalarMult` (Vector l m n) = (i * l) + (j * m) + (k * n)

-- If we add "Ord" typeclass then values specified first will be greater then values after it:
-- data Bool = True | False deriving (Ord)
-- ---
-- Will give "GT":
-- True `compare` False

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Eq, Ord, Show, Read, Bounded, Enum)

-- Type synonyms:
-- type String = [Char]

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]

phoneBook :: PhoneBook
phoneBook = [
  ("betty", "555-2938"),
  ("bonnie", "452-2928"),
  ("patsy", "493-2928"),
  ("lucille", "205-2928"),
  ("wendy", "939-8282"),
  ("penny", "853-2492")]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name phoneNumber phoneBook = (name, phoneNumber) `elem` phoneBook

data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int
} deriving (Show, Eq, Read)

result2 :: Person
result2 = read "Person {firstName = \"Michael\", lastName = \"Diamond\", age = 43}"

personName :: Person -> String
personName (Person {firstName = fn, lastName = ln}) = "First name: " ++ fn ++ ". Last name: " ++ ln

person1 :: Person
person1 = Person {
  firstName = "John",
  lastName = "Doe",
  age = 32
}

-- So far, we've seen that Maybe a was mostly used to represent the results of
-- computations that could have either failed or not. But somtimes, Maybe a
-- isn't good enough because Nothing doesn't really convey much information
-- other than that something has failed. That's cool for functions that can fail
-- in only one way or if we're just not interested in how and why they failed.
-- However, when we're interested in how some function failed or why, we usually
-- use the result type of Either a b, where a is some sort of type that can tell
-- us something about the possible failure and b is the type of a successful
-- computation. Hence, errors use the Left value constructor while results use Right.
-- data Either a b = Left a | Right b deriving (Eq, Ord, Read, Show)

-- :t Right 'a'
-- Right 'a' :: Either a Char

data LockerState = Taken | Free deriving (Show, Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber lockerMap =
  case Map.lookup lockerNumber lockerMap of
    Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!"
    Just (state, code) -> if state /= Taken
      then Right code
      else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"

-- Recursive data structures.

infixr 5 :-:
data List a = EmptyList | a :-: (List a) deriving (Show, Read, Eq, Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
EmptyList .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: Ord a => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node a left right
  | x < a = Node a (treeInsert x left) right
  | x > a = Node a left (treeInsert x right)
