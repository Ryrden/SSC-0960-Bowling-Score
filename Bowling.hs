module Bowling where 

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
getBowlingOutput 9 (a:b:c) =  if       a    == 10 then getBowlingOutput 9 [a] ++ " "   ++ getBowlingOutput 9     (b:c) 
                              else if (a+b) == 10 then getBowlingOutput 9 [a] ++ " /"  ++ getBowlingOutput 9      c
                              else                     getBowlingOutput 9 [a] ++ " "   ++ getBowlingOutput 9     (b:c)
getBowlingOutput a (b:c:d) =  if       b    == 10 then getBowlingOutput a [b] ++ " _|" ++ getBowlingOutput (a+1) (c:d)
                              else if (b+c) == 10 then getBowlingOutput a [b] ++ " /|" ++ getBowlingOutput (a+1)  d 
                              else                     getBowlingOutput a [b] ++ " "   ++ getBowlingOutput a     [c]   ++ "|" ++ getBowlingOutput (a+1) d
getBowlingOutput a [10] = "X"
getBowlingOutput a [b]  = show b
getBowlingOutput _  _   = ""
