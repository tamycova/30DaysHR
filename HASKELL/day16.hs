import Data.List
import Data.Function
import Data.Ord

main = interact $ unwords . map show . minDiffList . sort . map read . drop 1 . words

minDiffList :: (Num a,Ord a) => [a] -> [a]
minDiffList = concatMap snd . head . groupBy ((==) `on` fst) . sort . diff

diff :: (Num a,Ord a) => [a] -> [(a,[a])]
diff lst = zipWith f lst (tail lst)
    where f v1 v2 = (abs $ v1-v2,[v1,v2])
          
