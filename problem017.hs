#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum (map numberLetters [1..1000])))

numberLetters n
  | n == 0 = 0
  | n == 1 = length "one"
  | n == 2 = length "two"
  | n == 3 = length "three"
  | n == 4 = length "four"
  | n == 5 = length "five"
  | n == 6 = length "six"
  | n == 7 = length "seven"
  | n == 8 = length "eight"
  | n == 9 = length "nine"
  | n == 10 = length "ten"
  | n == 11 = length "eleven"
  | n == 12 = length "twelve"
  | n == 13 = length "thirteen"
  | n == 14 = length "fourteen"
  | n == 15 = length "fifteen"
  | n == 16 = length "sixteen"
  | n == 17 = length "seventeen"
  | n == 18 = length "eighteen"
  | n == 19 = length "nineteen"
  | n == 20 = length "twenty"
  | n == 30 = length "thirty"
  | n == 40 = length "forty"
  | n == 50 = length "fifty"
  | n == 60 = length "sixty"
  | n == 70 = length "seventy"
  | n == 80 = length "eighty"
  | n == 90 = length "ninety"
  | n == 1000 = length "onethousand"
  | n >= 100 && mod n 100 == 0 = (length "hundred") + (numberLetters (div n 100))
  | n >= 100 = (length "hundredand") + (numberLetters (div n 100)) + (numberLetters (mod n 100))
  | n > 20 = (numberLetters (n - mod n 10)) + (numberLetters (mod n 10))
  | otherwise = -9999999999
