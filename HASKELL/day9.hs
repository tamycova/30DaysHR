--day 9 = Recursions
import           Control.Monad
import           Data.List

gcd' :: Integral a => a -> a -> a
gcd' n m
    | b == 0 = a
    | otherwise = gcd' b $ mod a b
    where
        b = min n m
        a = max n m


main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
