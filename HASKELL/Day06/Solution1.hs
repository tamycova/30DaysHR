-- Day 6 = Let's Review Staircase

import           Control.Applicative
import           Control.Monad
import           Data.List
import           System.IO


main :: IO ()
main = do
    input <- getLine
    drawStairUtil (read input :: Int) 1

drawStairUtil :: Int -> Int -> IO()
drawStairUtil n k
    | k == succ n = return ()
    | otherwise = do
        let str = intercalate "" $ replicate (n - k) " " ++  replicate k "#"
        putStrLn str
        drawStairUtil n $ k + 1
