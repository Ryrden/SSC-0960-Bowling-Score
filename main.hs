import Data.Char
main = do
 line <- getLine
 --transforma a linha numa lista
 frames <- return (map digitToInt $ filter (/=' ') line)
 
 print $ getBowlingScore frames

getBowlingScore :: [Int] -> Int 
getBowlingScore ([]) = 0
getBowlingScore (h:[]) = h
getBowlingScore (h:b:[]) = h + b
getBowlingScore (h:b:l:[]) = h + b + l
getBowlingScore (h:b:l:t) = if (h == 10)                then h + b + l + getBowlingScore(b:l:t)
                            else if (((h + b) == 10))   then h + b + l + getBowlingScore(l:t)
                            else h + b + getBowlingScore(l:t) 


