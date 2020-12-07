#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- closed form: https://oeis.org/A000984

main = putStrLn (show (choose (2*20) 20))
choose n 0 = 1
choose 0 k = 0
choose n k = choose (n-1) (k-1) * n `div` k
