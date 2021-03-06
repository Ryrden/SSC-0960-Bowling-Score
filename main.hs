import Bowling
import Data.Char

main :: IO ()
main = do
  line <- getLine
  frames <- return (map read $ words line :: [Int])

  print $ getTableScore 0 0 frames
  --testCases

testCases :: IO ()
testCases = do
  print $ getTableScore 0 0 [1,4,4,5,6,4,5,5,10,0,1,7,3,6,4,10,2,8,6] 
  print $ getTableScore 0 0 [10,10,10,10,10,10,10,10,10,10,10,10]
  print $ getTableScore 0 0 [10,10,10,10,10,10,10,10,10,5,2]
  print $ getTableScore 0 0 [10,10,10,10,10,10,10,10,10,10,5,2]
  print $ getTableScore 0 0 [10,10,10,10,10,10,10,10,10,10,5,5]
  print $ getTableScore 0 0 [10,10,10,10,10,10,10,10,10,6,4,6]
  print $ getTableScore 0 0 [10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  print $ getTableScore 0 0 [10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  print $ getTableScore 0 0 [1,4,4,5,6,4,5,5,10,0,1,7,3,6,4,10,8,2,5]
  print $ getTableScore 0 0 [8,0,7,0,5,3,9,1,9,1,10,8,0,5,1,3,7,9,0]
  print $ getTableScore 0 0 [8,2,9,0,4,4,7,2,9,0,10,10,8,0,3,5,9,1,7]