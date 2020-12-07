#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum [x | x <- [0..999], mod x 3 == 0 || mod x 5 == 0]))
