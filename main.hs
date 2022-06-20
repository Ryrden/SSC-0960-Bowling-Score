import Data.Char
main = do
 -- line <- getLine
 --transforma a linha numa lista
 -- frames <- return (map read $ words line :: [Int])
 
 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,6,4,8,6] --frames

 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,10,8,6,5] --frames

 print $ getBowlingOutput 0 [10,10,10,10,10,10,10,10,10,10,10,10] --frames

getBowlingScore :: [Int] -> Int
--Não é necessário o que está comentado
--getBowlingScore ([]) = 0
--getBowlingScore (h:[]) = h
--getBowlingScore (h:b:[]) = h + b
getBowlingScore (h:b:l:[]) = h + b + l
getBowlingScore (h:b:l:t) = if h == 10                then h + b + l + getBowlingScore(b:l:t)
                            else if (h + b) == 10   then h + b + l + getBowlingScore(l:t)
                            else h + b + getBowlingScore(l:t) 




getBowlingOutput :: Int -> [Int] -> String
getBowlingOutput 9 (10:t) = "X " ++ getBowlingOutput 9 t
getBowlingOutput 9 (h:b:t) =  if (h+b) == 10 then show h ++ " / " ++ getBowlingOutput 9 t
                              else show h ++ " " ++ show b ++ " " ++ getBowlingOutput 9 t
getBowlingOutput 9 [a] = show a
getBowlingOutput a (10:t) = "X _|" ++ getBowlingOutput (a+1) t
getBowlingOutput a (h:b:t) =  if (h+b) == 10 then show h ++ " /|" ++ getBowlingOutput (a+1) t
                              else show h ++ " " ++ show b ++ "|" ++ getBowlingOutput (a+1) t
getBowlingOutput _ _ = ""
