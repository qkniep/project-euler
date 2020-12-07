#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (smallestMultiple 20 (20*19*17*13*11*7)))
smallestMultiple a b = head [b*x | x <- [1..], divByAll (b*x) [2..a]]
divByAll n f = all (\x -> mod n x == 0) f
