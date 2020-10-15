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
-- rev' :: [a] -> [a]
rev' [] = []
rev' (x:xs) = (rev' xs) <> (pure x)

pured :: (Num a) => (Semigroup (f a), Applicative f) => a -> a -> a -> a -> f a
pured w x y z = (pure w)  <> (pure x) <> (pure y) <> (pure z) 

purednum :: [Int]
purednum = (pure 1)  <> (pure 2) <> (pure 3) <> (pure 4) 

-- I have this simple reverse function
-- ```
-- rev' [] = []
-- rev' (x:xs) = (rev' xs) <> (pure x)
-- ```
-- I was surprised when it worked, specifically pure here. 
-- When i've been doing little pure tests in the console, the only way it gets a structure is when I specifically give it a structure

-- examples
-- ```
-- pure 5 -> 5
-- ```
-- but giving it a specific type structure
-- ```
-- pure 5 :: [Int] -> [5]
-- ```
-- similarly ->
-- ```
-- pured = (pure 1) <> (pure 2) <> (pure 3) :: [Int]
-- ``` 
-- only works when I give it that type, otherwise error

-- So I'm curious how is rev' working properly with <> and pure without an explicit type signature?