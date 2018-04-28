import Data.List

-- Import only sertain functions:
-- import Data.List (nub, sort)

-- Import all functions except some:
-- import Data.List hiding (nub)

-- Qualified import:
-- import qualified Data.Map as M
-- Then you need to call methods like this: "M.filter".
-- If you ommit "as M", then you call functions like: "Data.Map.filter".

-- Function "nub" (from Data.List) removes duplicate elements from the list.
numUniques :: Eq a => [a] -> Int
numUniques = length . nub
