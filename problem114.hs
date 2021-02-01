#! /usr/bin/env runghc

-- Copyright (C) 2021 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (combinations 50))

combinations = (map blockCombinations [0..] !!)

blockCombinations n
  | n < 3 = 1
  | otherwise = 1 + sum (map (\s -> sum (map (\p -> safeLookup combinations (n-s-p-1)) [0..n-s])) [3..n])

safeLookup l i
  | i < 0 = 1
  | otherwise = l i
