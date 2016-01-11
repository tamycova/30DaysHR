main = interact $ unlines . map solve . drop 1 . lines
solve = concatMap show . convert . read
convert = reverse . map (`mod` 2) . takeWhile (>0) . iterate (`div` 2)
