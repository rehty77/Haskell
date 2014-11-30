{- The type class -}
class Additive a where
      add :: a -> a -> a
      zero :: a

total :: Additive a => [a] -> a
total [] = zero
total (x : xs) = x `add` total xs

{- The instances -}
instance Additive Integer where
         add x y = x + y
         zero = 0
instance Additive Double where
         add x y = x + y
         zero = 0.0