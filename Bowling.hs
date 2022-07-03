module Bowling where 

getTableScore :: Int -> Int -> [Int] -> String
getTableScore score 9 (a:b:c:[]) =  if      (a+b) == 10 then getTableScore score 9 [a] ++  " / "  ++ getTableScore (score+a+b+c)   10   [c]
                                    else if (b+c) == 10 then getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++  " / " ++ getTableScore (score+a+b+c) 10   []
                                    else if  a    == 10 then getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++   " "  ++ getTableScore (score+a+b+c) 10   [c]
                                    else                     getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++   " "  ++ getTableScore (score+a+b)   10   [c]
getTableScore score 9 (a:b:c)    =                           getTableScore score 9 [a] ++   " "   ++ getTableScore (score+a+b)     10   [b]
getTableScore score a (b:c:d:e)  =  if       b    == 10 then getTableScore score a [b] ++ " _ | " ++ getTableScore (score+b+c+d)  (a+1) (c:d:e)
                                    else if (b+c) == 10 then getTableScore score a [b] ++ " / | " ++ getTableScore (score+b+c+d)  (a+1) (d:e) 
                                    else                     getTableScore score a [b] ++   " "   ++ getTableScore  score           a   [c]      ++ " | " ++ getTableScore (score+b+c)  (a+1) (d:e)
getTableScore score 10 [10] = "X" ++ " | " ++ show(score)
getTableScore score 10 [b] = show(b) ++ " | " ++ show(score)
getTableScore score 10 [] = "| " ++ show(score)
getTableScore score a [10] = "X"
getTableScore score a [b]  = show b

getBowlingOutput :: Int -> Int -> [Int] -> String 
getBowlingOutput sum 9 (a:b:c)   =  if       a    == 10 then getBowlingOutput sum 9 [a] ++ " "   ++   getBowlingOutput sum 9     (b:c)
                                    else if (a+b) == 10 then getBowlingOutput sum 9 [a] ++ " / "  ++  getBowlingOutput sum 9      c   
                                    else                     getBowlingOutput sum 9 [a] ++ " "   ++   getBowlingOutput sum 9     (b:c)
getBowlingOutput sum a (b:c:d)   =  if       b    == 10 then getBowlingOutput sum a [b] ++ " _ | " ++ getBowlingOutput sum (a+1) (c:d)
                                    else if (b+c) == 10 then getBowlingOutput sum a [b] ++ " / | " ++ getBowlingOutput sum (a+1)  d 
                                    else                     getBowlingOutput sum a [b] ++ " "   ++   getBowlingOutput sum a     [c]   ++ " | " ++ getBowlingOutput sum (a+1) d
getBowlingOutput sum a [10] = "X"
getBowlingOutput sum a [b]  = show b
