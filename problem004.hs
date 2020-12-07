#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show largestPalindrome)
largestPalindrome = maximum (palindromes 100 999)
palindromes l h = [a*b | a <- [l..h], b <- [l..h], isPalindrome (a*b)]
isPalindrome n = (show n) == (reverse (show n))
