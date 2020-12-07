#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (primes!!10000))
primes = 2 : 3 : [x | x <- [5,7..],
                  divByNone x (takeWhile (\n -> n*n <= x) (tail primes))]
divByNone n f = all (\x -> mod n x > 0) f
