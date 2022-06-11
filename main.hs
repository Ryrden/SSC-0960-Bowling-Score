import Data.Char
main = do
 line <- getLine
 --transforma a linha numa lista
 frames <- return (map digitToInt $ filter (/=' ') line)
 
 print $ getBowlingScore frames 0 0

getBowlingScore :: [Int] -> Int -> Int -> Int
getBowlingScore [] strike spare = 0
getBowlingScore (h:t) strike spare = h + (getBowlingScore t 0 0)


