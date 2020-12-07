#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- this one takes around 50 seconds

import Data.List
import Data.Ord

main = putStrLn (show (maximumBy (comparing fst) collatzLens))
collatzLens = zip (map (\x -> collatzLen x) [1..999999]) [1..999999]
collatzLen n
  | n == 1 = 1
  | even n = 1 + collatzLen (div n 2)
  | otherwise = 1 + collatzLen (3*n+1)
