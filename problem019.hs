#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (length [(m,y) | m <- [0..11], y <- [1901..2000],
                               firstDay m y == 6]))

firstDay 0 1900 = 0
firstDay m y
  | m == 0 = mod (firstDay 11 (y-1) + (numDays 11 (y-1))) 7
  | otherwise = mod (firstDay (m-1) y + (numDays (m-1) y)) 7

isLeapYear y = mod y 4 == 0 && (mod y 100 /= 0 || mod y 400 == 0)
numDays m y
  | isLeapYear y && m == 1 = d+1
  | otherwise = d
  where d = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] !! m
