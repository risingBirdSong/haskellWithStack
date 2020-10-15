import Data.List.Split
-- reverse without built in 
split1 xs = chunksOf 1 xs
c = split1 "abcdefg"
-- rev' x = [x]
-- rev' (x:xs) =  (rev' xs) <> ([x])   

purify :: Int -> [Int]
purify x = pure x

-- rev' 

-- ah, useful example of id, the recursive condition can result in an empty array and that composes well with purify
-- [] <> (purify 3) <> (purify 4)