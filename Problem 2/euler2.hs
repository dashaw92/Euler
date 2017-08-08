-- While this is not my own implementation of the fibonacci sequence,
-- I did use the standard one that goes like:
-- fib 0 = 1
-- fib 1 = 1
-- fib n = fib (n - 1) + fib (n - 2)
-- to calculate the range of numbers originally. That's where I found the bound 32 below
fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

fib n = fibs !! n

main = putStrLn $ show $ sum [y | y <- [fib x | x <- [1..32]], y `mod` 2 == 0]
