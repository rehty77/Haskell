bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
        | bmi <= 18.5 = "You're underweight, you emo, you!!!!"
        | bmi <= 25.0 = "Your BMI is normal. Pfft. I bet you're ugly!"
        | bmi <= 30.0 = "You're fat! Lose some weight, fatty!!!"
        | otherwise = "You're a whale! Congratulations!"
        where bmi = weight / height ^ 2