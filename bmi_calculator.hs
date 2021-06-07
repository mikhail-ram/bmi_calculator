main :: IO ()

introduction = "Welcome to the BMI calculator.\nTo calculate your BMI, please type in bmi, followed\
\by your weight (in kg) and height (in m)."

bmi :: (RealFloat a, Show a) => a -> a -> String
bmi weight height
   | calculated < 18.5 = "You're underweight - your BMI is " ++ show calculated
   | calculated < 25 = "You have a healthy weight - your BMI is " ++ show calculated
   | calculated < 30 = "You're overweight - your BMI is " ++ show calculated
   | otherwise = "You're morbidly obese, get some help. Your BMI is " ++ show calculated
   where calculated = weight / height ^ 2

main = putStrLn introduction
