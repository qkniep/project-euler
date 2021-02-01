#! /usr/bin/env runghc

-- Copyright (C) 2021 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

import Data.List (findIndex)

main = putStrLn (show (findIndex (>= 1000000) combinations))

combinations = map blockCombinations [0..]

blockCombinations n
  | n < 50 = 1
  | otherwise = 1 + sum (map (\s -> sum (map (\p -> safeLookup combinations (n-s-p-1)) [0..n-s])) [50..n])

safeLookup l i
  | i < 0 = 1
  | otherwise = l!!i
