#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (largestPrimeFactor 600851475143))
largestPrimeFactor n = largestFactor n 2
largestFactor n k =
    let
        f = smallestFactor n k
    in
        if f==n then f
        else largestFactor (div n f) f
smallestFactor n k = head [x | x <- [k..n], mod n x == 0]
