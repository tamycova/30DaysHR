-- Day 3 = If / Else
import           Control.Applicative
import           Control.Monad
import           System.IO

solve :: Int -> String
solve n
    | odd n || even n && n `elem` [6..20]  = "Weird"
    | even n && n > 20 || n `elem` [2..5] = "Not Weird"
    | otherwise = "I don't care"

main :: IO ()
main = do
    input <- getLine
    putStrLn $ solve (read input :: Int)
