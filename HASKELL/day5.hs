-- Day 5 Loops

solve :: Int -> IO()
solve 0 = return ()
solve t = do
    input <- getLine
    let [a, b, n] = map (read :: String -> Int) . words $ input
    let list = [ solveUtil  a b x | x <- [1..n]]
    putStrLn $ unwords [show x | x<- list]
    solve $ t - 1

solveUtil :: Int -> Int -> Int -> Int
solveUtil a b n =  a + sum  [ b* 2^x | x <- [0.. n-1]]

main :: IO ()
main = do
    input <- getLine
    solve (read input :: Int)
