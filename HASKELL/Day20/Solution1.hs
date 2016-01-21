import Control.Applicative
import qualified Data.ByteString.Char8 as B
import Data.Char

main = do
    s<-filter (isAsciiLetter . B.head) . B.groupBy groupTest <$> B.getLine
    print $ length s
    mapM B.putStrLn s
  where isAsciiLetter c = any ($c) [isAsciiUpper,isAsciiLower]
        groupTest a b = isAsciiLetter a == isAsciiLetter b
