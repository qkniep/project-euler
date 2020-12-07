#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (digitSum (2 ^ 1000)))
digitSum n
  | n < 10 = n
  | otherwise = (mod n 10) + digitSum (div n 10)
