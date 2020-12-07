#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- this one takes around 1 minute

main = putStrLn (show (head [t | t <- map triangleNum [1..], numDivs t > 500]))
triangleNum i = i * (i + 1) `div` 2
numDivs n = sum [2 | x <- takeWhile(\x -> x*x < n)[1..], mod n x == 0]
