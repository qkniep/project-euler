#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (squareOfSum 100 - sumOfSquares 100))
squareOfSum n = (sum [x | x <- [1..100]]) ^ 2
sumOfSquares n = sum [x*x | x <- [1..100]]
