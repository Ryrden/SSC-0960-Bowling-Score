import Data.Char
import Bowling

main = do
 -- line <- getLine
 --transforma a linha numa lista
 -- frames <- return (map read $ words line :: [Int])
 
 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,6,4,8,6] --frames

 print $ getBowlingOutput 0 [1 ,4 ,4 ,5 ,6 ,4 ,5 ,5 ,10 ,0 ,1 ,7 ,3 ,6,4,10,8,6,5] --frames

 print $ getBowlingOutput 0 [10,10,10,10,10,10,10,10,10,10,10,10] --frames

