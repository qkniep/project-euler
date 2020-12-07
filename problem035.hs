#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- this one takes around 2 minutes

import Data.List.Ordered (has, minus, unionAll)

main = putStrLn (show (length (filter isCirc primesBelowMill)))
primesBelowMill = takeWhile (<1000000) primes
primes = 2 : 3 : minus [5,7..] (unionAll [[p*p, p*p+2*p..] | p <- tail primes])
isCirc p = all (has primesBelowMill) (rotations p p)

rotations a b
  | a < 10 = [b]
  | otherwise = b : rotations (div a 10) ((div b 10) + 10 ^ (length (show b) - 1) * (mod b 10))
