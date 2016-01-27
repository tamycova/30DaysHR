cases = [[5],[3,3],[-1,0,1],[4,2],[-1,0,1,1],[5,3],[-1,0,1,1,1],[6,2],[-1,0,1,1,1,1],[7,3],[-1,0,1,1,1,1,1]]
main = putStrLn . unlines . map (unwords . map show) $ cases

sampleCases = [[2],[4,3],[-1,-3,4,2],[4,2],[0,-1,2,1]]
main' = print $ map solve . chunksOf 2 . drop 1 $ cases
chunksOf n lst | null lst = [] | otherwise = take n lst : chunksOf n (drop n lst)
solve [[n,k],as] = (<k) . length . filter (<=0) $ as
