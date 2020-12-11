#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum [n | n <- [1..9999], isAmicable n]))
d = [sum [d | d <- [1..n-1], mod n d == 0] | n <- [1..]]
isAmicable n = n > 0 && d!!(n-1) > 0 && d!!(n-1) /= n && d!!((d!!(n-1))-1) == n
