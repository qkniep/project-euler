#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show curiosFractions)
curiosFractions = [(a, b) | a <- [11..99], b <- [11..99], a < b, isCurios a b]
isCurios a b = mod a 10 == div b 10 && (fromIntegral a)/(fromIntegral b) == (fromIntegral (div a 10)) / (fromIntegral (mod b 10))
