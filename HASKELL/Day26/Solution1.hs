main = interact $ show . bookReturnFine . map read . words
bookReturnFine [ad,am,ay,ed,em,ey]
  | ay<ey || (ay==ey && am<em) || (ay==ey && am==em && ad<=ed) = 0
  | ay==ey && am==em && ad>ed = 15*(ad-ed)
  | ay==ey && am>em = 500*(am-em)
  | ay>ey = 10000
  | otherwise = 0
