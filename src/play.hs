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

-- ah interesting, it works with just calling pure on x, I didn't think this would work at first
-- because when I run pure in the console on a num, I don't get [num], I just get num, which i didn't think 
-- would append without that structure, but clearly it does work like that.
rev' :: [a] -> [a]
rev' [] = []
rev' (x:xs) = (rev' xs) <> (pure x)