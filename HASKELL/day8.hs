--Day 8 = Dictionaries
import           Control.Monad
import           Data.Char
import           Data.List
import qualified Data.Map      as Map
import           System.IO

lookUpMonad :: Maybe a -> a
lookUpMonad (Just k) = k

lookUps :: Map.Map String Int -> Int -> IO()
lookUps m loop =
    unless (loop == 0) $ do
        queryInp <- getLine
        let query = read $ show queryInp :: String
        let result = Map.lookup query m

        case result of
            Nothing -> putStrLn "Not found"
            _       -> do
                let ans = lookUpMonad result
                putStr  $ query ++ "="
                print ans
        lookUps m $ loop - 1


solve :: Map.Map String Int -> Int -> Int -> IO()
solve m 0 s  = lookUps m s
solve m t s = do
    temp <- getLine
    let name = read $ show temp :: String
    tem2p <- getLine
    let phone = read tem2p :: Int

    let mm = Map.insert name phone m
    solve mm (t - 1) s

main :: IO()
main = do
    input <- getLine
    let myMap = Map.fromList [] :: Map.Map String Int
    solve myMap (read input :: Int) (read input :: Int)


--END
