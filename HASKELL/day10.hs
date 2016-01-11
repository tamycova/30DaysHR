main = interact $ unlines . map solve . drop 1 . lines
solve = concat . map show . convert . read
convert = reverse . map (`mod` 2) . takeWhile (>0) . iterate (`div` 2)
