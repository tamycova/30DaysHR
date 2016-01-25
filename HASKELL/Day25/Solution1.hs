main = interact $ unlines . map (bToS . isPrime . read) . drop 1 . lines
bToS True = "Prime"
bToS False = "Not prime"
isPrime 1 = False
isPrime n = all ((/=0) . mod n) . takeWhile ((<=n) . (^2)) $ [2..]
