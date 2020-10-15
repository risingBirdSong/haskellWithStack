import Data.List.Split
-- reverse without built in 
split1 xs = chunksOf 1 xs
c = split1 "abcdefg"
rev [] = []
rev (x:xs) =  rev xs ++ x

