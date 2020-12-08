#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- this one takes about 20 seconds

import Data.List.Ordered (has, minus, unionAll)
import Data.Set (fromList, deleteFindMin, insert)

main = putStrLn (show (length (filter isCirc (takeWhile (<1000000) numbers))))
primesBelowMill = takeWhile (<1000000) primes
primes = 2 : 3 : minus [5,7..] (unionAll [[p*p, p*p+2*p..] | p <- tail primes])
isCirc p = all (has primesBelowMill) (rotations p p)

numbers = 2 : f (fromList [1,3..9]) where
f s = m : f (foldl (flip insert) s' $ map (10*m +) [1,3..9])
     where (m, s') = deleteFindMin s

rotations a b
  | a < 10 = [b]
  | otherwise = b : rotations (div a 10) ((div b 10) + 10 ^ (length (show b) - 1) * (mod b 10))
