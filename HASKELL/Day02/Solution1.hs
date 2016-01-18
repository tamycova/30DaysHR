-- Day 2 = Arithmatic

module Main where
main = do
    name_M <- getLine
    name_T <- getLine
    name_X <- getLine
    let m = read name_M :: Double
    let t = read name_T :: Integer
    let x = read name_X :: Integer
    putStr "The final price of the meal is $"
    putStr . show . round $ (m * (1 + 0.01 * (fromInteger t + fromInteger x)) )
    putStr ".\n"
