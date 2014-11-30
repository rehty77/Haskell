lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"
sayFrenchNumbers :: Int -> String
sayFrenchNumbers 1 = "Un!"
sayFrenchNumbers 2 = "Deux!"
sayFrenchNumbers 3 = "Trois!"
sayFrenchNumbers 4 = "Quatre!"
sayFrenchNumbers 5 = "Cinq!"
sayFrenchNumbers x = "Il n'est pas entre un et cinq!"
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
lotteryChances :: Integer
lotteryChances = (factorial 49) `div` ((factorial 6) * (factorial 43))


{- Element extraction functions similar to fst and second for 
***TRIPLES***
    ~~~~~
     ~~~
      ~
-}
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

{- Some List Comp. Examples -}
xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
daListCompExample = [a + b | (a, b) <- xs]

{- My implementation of the Head function -}
head' :: [a] -> a
head' [] = error "patterns.head: Attempted to chop head off of empty list"
head' (x:_) = x

{- More list examples -}

tell :: (Show a) => [a] -> String
tell [] = "The list is empty."
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "*** Exception: patterns.tell: This list is too long. The first two elements are: " ++ show x ++ " and " ++ show y

-- This one doesn't work very well. Use with caution.
badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z

{- As-patterns -}
firstLetter :: String -> String
firstLetter "" = error "patterns.firstLetter: Cannot take first letter of empty string"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
{- GUARDS!!!! -}
bmiTell ::  Double -> String
bmiTell bmi
        | bmi <= 18.5 = "You're underweight. Do you eat enough?!"
        | bmi == 21.0 = "PERFECT BMI! Stay fit!"
        | bmi <= 25.0 = "Nothing to worry about. You're normal."
        | bmi <= 30.0 = "Lose some weight, Garfield!"
        | otherwise = error "Why aren't you breaking the keyboard?!"
bmiCalculate :: Double -> Double -> String
bmiCalculate weight height
             | weight / height ^ 2 <= 18.5 = "You're underweight. Do you eat enough?"
             | weight / height ^ 2 == 21.0 = "PERFECT BMI! Stay fit!"
             | weight / height ^ 2 <= 25.0 = "Nothing to worry about. You're normal. (Pfft, I bet you're ugly!)"
             | weight / height ^ 2 <= 30.0 = "Lose some weight, Garfield!"
             | otherwise = error "Why aren't you breaking the keyboard?!"