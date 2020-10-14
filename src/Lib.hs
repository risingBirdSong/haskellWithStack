module Lib
    ( someFunc
    ) where
import Data.List.Split        
chunked = chunksOf 1 [1,2,3,4]
someFunc :: IO ()
someFunc = putStrLn "testing with someFunc"
