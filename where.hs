bmiTell :: Double -> Double -> String
bmiTell weight height
        | bmi <= skinny = "You're underweight, you emo, you!"
        | bmi <= normal = "You're fine."
        | bmi <= fat = "Lose some weight, Garfield!"
        | otherwise = error "You're a whale, congratulations!"
        where bmi = weight / height ^ 2
              skinny = 18.5
              normal = 25.0
              fat = 30.0
greet :: String -> String
greet name
      | name == "Nicholas" = niceGreeting ++ " Nick!"
      | name == "Kevin" = niceGreeting ++ " Kev!"
      | name == "Nicolas" = rudeGreeting ++ " Kirkwood!"
      | otherwise = badGreeting ++ " " ++ name
      where niceGreeting = "Hi! It's nice to see you,"
            badGreeting = "Pfft. It's you,"
            rudeGreeting = "Get the heck out of here,"