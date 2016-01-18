import Data.Array

hw@(h,w) = (6,6)
tadd (a,b) (c,d) = (a+c,b+d)
pattern = [(r,c) | r<-[0..2], c<-[0..2], (r,c) `notElem` [(1,0),(1,2)]]

main = interact $ show . solve . listArray ((1,1),hw) . map read . words

solve :: (Num a, Ord a) => Array (Integer,Integer) a -> a
solve arr = maximum . map sumPat $ [(r,c) | r<-[1..(h-2)], c<-[1..(w-2)]]
  where sumPat rc = sum $ map ((arr!) . tadd rc) pattern
