#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum (digits (fact 100))))

digits n
  | n < 10 = [n]
  | otherwise = digits (div n 10) ++ [mod n 10]

fact n
  | n < 2 = 1
  | otherwise = n * fact (n-1)
