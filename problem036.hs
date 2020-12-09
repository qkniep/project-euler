#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum [x | x <- [1..999999],
                            palin (intToDigits x 10),
                            palin (intToDigits x 2)]))

palin l = l == reverse l
intToDigits n base
  | n < base = [n]
  | otherwise = (intToDigits (div n base) base) ++ [mod n base]
