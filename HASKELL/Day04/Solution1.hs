-- Day 4 = Logical Operators + Class/ Instance
--  No object oriented support in Hackerrank
-- Although You could try and build up on the following
import           Control.Monad

-- Our Custom Data Type i.e pseudoClass
data Person = Person {age :: Int } deriving (Show, Eq, Ord)

-- Emulates Person.amIOld()
amIOld :: Person -> IO()
amIOld Person {age = a}
    | a < 13 = putStrLn "You are young."
    | a < 18 = putStrLn "You are a teenager."
    | otherwise = putStrLn "You are old."

-- Emulates Person.yearPasses
yearPasses :: Person -> Person
-- This will refer to a new person but wouldn't make changes in the passed
-- person because of Haskell's immutability. Hence we create a new person.
yearPasses Person {age = a}
    | a < 0   = Person {age = 1 }
    | otherwise = Person {age = a +1 }


solve :: Int -> IO()
solve 0 = return ()
solve t = do
    ageInput <- getLine
    let personAge = read ageInput :: Int
    -- Verify Age
    when (personAge < 0) $ putStrLn "This person is not valid, setting age to 0."
    let p = Person personAgeS
    amIOld p
    amIOld $ last [yearPasses Person {age = personAge + x} | x <- [0..2] ]
    solve $ t - 1

main = do
    input <- getLine
    let testcases = read input :: Int
    solve testcases
