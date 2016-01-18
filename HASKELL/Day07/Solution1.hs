-- Day 7 = Arrays

import           Control.Applicative
import           Control.Monad
import           System.IO

main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Int]
    putStrLn $ unwords [show x | x <- reverse arr]
