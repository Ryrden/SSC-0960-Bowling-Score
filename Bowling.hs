module Bowling where 

getTableScore :: Int -> Int -> [Int] -> String
getTableScore score 9 (a:b:[])   =     getTableScore score 9 [a] ++   " "   ++ getTableScore (score+a+b)     10   [b]
getTableScore score 9 (a:b:c:[]) = 
            if        (a+b) == 10 then getTableScore score 9 [a] ++  " / "  ++ getTableScore (score+a+b+c)   10   [c]
            else if   (b+c) == 10 then getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++  " / " ++ getTableScore (score+a+b+c) 10   []
            else if    a    == 10 then getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++   " "  ++ getTableScore (score+a+b+c) 10   [c]
            else                       getTableScore score 9 [a] ++   " "   ++ getTableScore  score          9    [b]     ++   " "  ++ getTableScore (score+a+b)   10   [c]
getTableScore score a (b:c:d:e)  = 
            if         b    == 10 then getTableScore score a [b] ++ " _ | " ++ getTableScore (score+b+c+d)  (a+1) (c:d:e)
            else if   (b+c) == 10 then getTableScore score a [b] ++ " / | " ++ getTableScore (score+b+c+d)  (a+1) (d:e) 
            else                       getTableScore score a [b] ++   " "   ++ getTableScore  score           a   [c]      ++ " | " ++ getTableScore (score+b+c)  (a+1) (d:e)
getTableScore score 10 [10] = "X" ++ " | " ++ show(score)
getTableScore score 10 [b] = show(b) ++ " | " ++ show(score)
getTableScore score 10 [] = "| " ++ show(score)
getTableScore score a [10] = "X"
getTableScore score a [b]  = show b