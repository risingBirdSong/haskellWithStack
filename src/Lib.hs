module Lib
    ( someFunc
    ) where
import Data.List.Split        
chunked = chunksOf 1 [1,2,3,4]
someFunc :: IO ()
-- cool so this worked much than last night... started a new fresh project after realizing that new packages belong in package.yaml. then after adding them there, running stack build again, then using the package. I was still getting a vs code squiggly with import Data.List.Split and the recommendation was to restart vs code and cyrus also pointed out that in control panel i can run Haskell restart Haskell LSP server good to know and be up and running with thrd party packages :)
someFunc = putStrLn "testing with someFunc"
