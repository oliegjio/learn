main :: IO ()
main = do
  print $ max <$> Just 4 <*> Just 3