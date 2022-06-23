module Bowling where

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
