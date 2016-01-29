import Control.Applicative
import Data.Char
main = interact $ unlines . map (bToS . isFunny) . drop 1 . lines
bToS False = "Not Funny"
bToS True = "Funny"
isFunny = ((==) <*> reverse) . map abs . (zipWith subtract <*> tail) . map ord
