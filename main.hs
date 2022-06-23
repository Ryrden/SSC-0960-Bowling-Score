import Data.Char
main = do
 -- line <- getLine
 --transforma a linha numa lista
 -- frames <- return (map read $ words line :: [Int])
 
 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,6,4,8,6] --frames

 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,10,8,6,5] --frames

 print $ getBowlingOutput 0 [10,10,10,10,10,10,10,10,10,10,10,10] --frames

getBowlingOutput :: Int -> [Int] -> String
getBowlingOutput 9 (a:b:c) =  if       a    == 10 then getBowlingOutput 9 [a] ++ " "   ++ getBowlingOutput 9     (b:c) 
                              else if (a+b) == 10 then getBowlingOutput 9 [a] ++ " /"  ++ getBowlingOutput 9      c
                              else                     getBowlingOutput 9 [a] ++ " "   ++ getBowlingOutput 9     (b:c)
getBowlingOutput a (b:c:d) =  if       b    == 10 then getBowlingOutput a [b] ++ " _|" ++ getBowlingOutput (a+1) (c:d)
                              else if (b+c) == 10 then getBowlingOutput a [b] ++ " /|" ++ getBowlingOutput (a+1)  d 
                              else                     getBowlingOutput a [b] ++ " "   ++ getBowlingOutput a     [c]   ++ "|" ++ getBowlingOutput (a+1) d
getBowlingOutput a [10] = "X"
getBowlingOutput a [b]  = show b
getBowlingOutput _  _   = ""
